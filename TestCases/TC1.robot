*** Settings ***
Library    SeleniumLibrary
Documentation    This is the web automation test

*** Variables ***
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html
${browser}  chrome

*** Test Cases ***
MytestCase
    valid login

*** Keywords ***
valid login
    #Login from
    open browser    ${url}    ${browser}
    maximize browser window
    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    ${a}=   get location
    log to console    ${a}

    go to    http://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']
     ${b}=   get location
    log to console    ${b}

    go to    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    id:box6    id:box106
    drag and drop    id:box7    id:box107
    drag and drop    id:box6    id:capitals
    drag and drop    id:box7    id:capitals
    ${c}=   get location
    log to console    ${c}

    sleep    3s
    close all browsers

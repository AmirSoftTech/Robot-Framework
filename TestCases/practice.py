#Sum odd value
'''
a = int(input("enter into value:"))
sum= 0
for x in range(a):
    if x%2==1:
        print(x)
        sum = sum + x

print("result",sum)
'''
import datetime
now = datetime.datetime.now()
print ("Current date and time : ")
print (now.strftime("%d-%m-%Y %H:%M:%S"))
print("---------------------------------------------------------")

tips = float(input("Total tip:"))
hour = float(input("Total hour"))
cal = tips/hour
print("Tip per hour:", cal)

print("---------------------------------------------------------")
a = float(input("Start working time:"))
b = float(input("End working time:"))
c = abs(float(a-b))
print("Total working hour:", c)

print("---------------------------------------------------------")
final = cal * c
print("Total tip is:", final)
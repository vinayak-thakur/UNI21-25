class checkpalin:
 def _init_(self,data):
 self.data=str(data)
 def ispalin(self, data):
 y=len(self.data)-1
 palin=True
 for x in range(int(y/2)):
 if self.data[x]!=self.data[y]:
 palin=False
 break
 y-=1
 
 if palin:
 return True
 else:
 return False
data1=int(input("Enter Number : "))
num1=checkpalin(data1)
if num1.ispalin(data1):
 print('Yes, %d is a palinfdrome.' % data1)
else:
 print('No, %d is not a palinfdrome.' % data1)
data2=input("Enter string : ")
str1=checkpalin(data2)
if str1.ispalin(data2):
 print('Yes, %s is a palinfdrome.' % data2)
else:
 print('No, %s is not a palinfdrome.' % data2)

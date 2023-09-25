from collections import Counter 
number=input("enter the number :")
try :
    rev_num=number[::-1]
    if number==rev_num :
        print("palindrome:")
    else :
        print("not palindrome :")
except :
    print("enter the number:")
print(Counter(number))

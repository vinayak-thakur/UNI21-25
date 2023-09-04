class Palindrome :
    def __init__(self, data) :
        self.data = str(data)
    def ispalindrome(self, data ) :
        y = len(self.data)-1
        palin = True
        for x in range(int(y/2)) :
            if self.data[x]!=self.data[y] :
                palin = False
                break
            y -= 1
        if palin:
            return True
        else :
            return False
        
n = int(input("enter the number "))
n1 = Palindrome(n)
if n1.ispalindrome(n) :
    print(f"yes {n} is a palindrome")
else :
    print("not a palindrome ")

n2= input ("enter the string ")
s1= Palindrome(n2)
if s1.ispalindrome(n2) :
    print("yes palindrome ")
else :
    print("not a palindrome")
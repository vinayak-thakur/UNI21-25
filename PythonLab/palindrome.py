n = int(input("Enter number: "))
freq = {}

copy = n
temp = 0
while copy > 0:
    rem = copy % 10
    try:
        freq[rem] += 1
    except KeyError:
        freq[rem] = 1

    temp = (temp * 10) + rem
    copy = copy // 10

if temp == n:
    print("Palindrome")
else:
    print("Not palindrome")

print(freq)
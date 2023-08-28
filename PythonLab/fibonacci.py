def fibonacci(n):
    if n <= 1:
        return n
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)


num = int(input("Enter number: "))
if num < 0:
    print("Enter positive number")
    exit()
for i in range(0, num):
    print(fibonacci(i), end=" ")
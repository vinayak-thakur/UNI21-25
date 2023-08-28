t1 = int(input("Enter test marks 1: "))
t2 = int(input("Enter test marks 2: "))
t3 = int(input("Enter test marks 3: "))

total = t1 + t2 + t3
average = total - min(t1, t2, t3)
average = average / 2

print(average)
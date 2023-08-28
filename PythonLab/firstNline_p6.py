n = int(input("Enter number of lines to be read: "))

with open("test.txt", "r") as f:
    lines = f.readlines()
    for line in lines[0 : n]:
        print(line)

f = open("test.txt", "r")
word = input("Enter word to be searched: ")
data = f.read()
print(f"The count is: {data.count(word)}")
f.close()
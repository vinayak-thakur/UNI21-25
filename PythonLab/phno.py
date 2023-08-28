import re


def isphno(s):

    print("using regular expression: ")
    phn = r"\d{3}[-]{1}\d{3}[-]{1}\d{4}"
    if re.match(phn, s):
        print(f"{s} is a phone number")
    else:
        print(f"{s} is not a phone number")


def is_phone_number(s):

    s = str(s)
    flag = True
    if len(s) != 12:
        flag = False
    for i in range(0, 3):
        if not s[i].isdigit():
            flag = False
    if s[3] != '-':
        flag = False
    for i in range(4, 7):
        if not s[i].isdigit():
            flag = False
    if s[7] != '-':
        flag = False
    for i in range(8, 12):
        if not s[i].isdigit():
            flag = False

    print("Without using regular expression: ")
    if flag:
        print("valid phone number")
    else:
        print("Invalid phone number")


s = input("Enter pattern: ")
is_phone_number(s)
isphno(s)








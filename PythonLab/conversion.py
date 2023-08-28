def b2d(binary):
    dec = 0
    power = 0
    while binary > 0:
        dec = dec + ((binary % 10) * (2 ** power))
        binary = binary // 10
        power += 1

    return dec


def o2h(octal):
    dec = 0
    power = 0
    while octal > 0:
        dec = dec + ((octal % 10) * (8 ** power))
        octal = octal // 10
        power += 1

    return hex(dec)
    

b = int(input("Enter binary number: "))
print(f"decimal equivalent is: {b2d(b)}")

o = int(input("Enter octal number: "))
print(f"hexa equivalent is: {o2h(o)}")

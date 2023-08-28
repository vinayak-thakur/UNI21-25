sentence = input("Enter a sentence: ")

digits, uc, lc = 0, 0, 0

words = len(sentence.split())

for char in sentence:
    if char.islower():
        lc += 1
    elif char.isupper():
        uc += 1
    elif char.isdigit():
        digits += 1

print(f"Words : {words}, digits : {digits}, uppercase : {uc}, lowercase : {lc}")
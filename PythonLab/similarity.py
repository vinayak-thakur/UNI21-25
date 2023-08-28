import difflib


def string_similarity(s1, s2):
    result = difflib.SequenceMatcher(a=s1.lower(), b=s2.lower())
    return result.ratio()


str1 = input("Enter string 1: ")
str2 = input("Enter string 2: ")
print(f"The similarity is: {string_similarity(str1, str2)}")
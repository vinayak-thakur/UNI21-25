def validate(string):
    import re
    print(bool(re.search(r"^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$", string)))


roman = input("Enter roman number: ")
validate(roman.upper())

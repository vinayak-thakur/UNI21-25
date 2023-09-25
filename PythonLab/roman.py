import re
import string

def valid_roman(roman):
    return bool(re.search(r"^M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$",roman))


def roman_to_integer(s):
        roman_no = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
        integer_no = 0
        for i in range(len(s)):
            if i > 0 and roman_no[s[i]] > roman_no[s[i - 1]]:
                integer_no += roman_no[s[i]] - 2 * roman_no[s[i - 1]]
            else:
                integer_no += roman_no[s[i]]
        return integer_no


roman=input("enter the roman numeral(IVXLCDM)")
if valid_roman(roman):
     integer_no = roman_to_integer(roman)
     print('the equivalent',integer_no)
else:
     print("Inavalid roman numeral")
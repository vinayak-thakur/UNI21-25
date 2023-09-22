class PalindomeChecker:

  def __init__(self, value):
    self.value = value

  def is_palindrome():
    pass


class IntegerChecker(PalindomeChecker):

  def is_palindrome(self):
    copy = self.value

    rev = 0
    while copy > 0:
      rev = (rev * 10) + (copy % 10)
      copy //= 10

    return rev == self.value
  
class StringChecker(PalindomeChecker):

  def is_palindrome(self):
    
    cleaned_string = "".join(self.value.split()).lower()

    return cleaned_string == cleaned_string[::-1]


value = input("Enter value: ")

if value.isdigit():
  v = IntegerChecker(int(value))
else:
  v = StringChecker(value)

if v.is_palindrome():
  print("It is palindrome")
else:
  print("It is not a palindrome")

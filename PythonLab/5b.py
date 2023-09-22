import re

phone = r"\d{3}[-]\d{3}[-]\d{4}"
email = r"\w+@\w+[.]com"
with open("sample.txt", "r") as file:
  data = file.read()
  print(re.findall(phone, data))
  print(re.findall(email, data))

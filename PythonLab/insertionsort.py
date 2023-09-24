def insertion_sort(arr):
  length = len(arr)

  for i in range(1, length):
    key = arr[i]
    j = i - 1
    while j >= 0 and arr[j] > key:
      arr[j + 1] = arr[j]
      j -= 1
    arr[j + 1] = key

  
def merge_sort(arr):

  if len(arr) <= 1:
    return

  mid = len(arr) // 2
  left_half = arr[mid:]
  right_half = arr[:mid]

  merge_sort(left_half)
  merge_sort(right_half)

  i = j = k = 0

  while i < len(left_half) and j < len(right_half):

    if left_half[i] < right_half[j]:
      arr[k] = left_half[i]
      i += 1
    else:
      arr[k] = right_half[j]
      j += 1
    k += 1

  while i < len(left_half):
    arr[k] = left_half[i]
    i += 1

  while j < len(right_half):
    arr[k] = right_half[j]
    j += 1
  
  return arr

n = int(input("Enter number of elements: "))
arr = []
for i in range(n):
  ele = int(input(f"Enter element {i}: "))
  arr.append(ele)

choice = int(input("Enter 1 for insertion and 2 for merge: "))

if choice == 1:
  insertion_sort(arr)
else:
  arr = merge_sort(arr)

print(f"sorted array : {arr}")
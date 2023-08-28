def insertion(arr):
    for i in range(1, n):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr


def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        left_half = arr[:mid]
        right_half = arr[mid:]
        merge_sort(left_half)
        merge_sort(right_half)
        i = j = k = 0
        while i < len(left_half) and j < len(right_half):
            if left_half[i] < right_half[j]:
                arr[k] = left_half[j]
                i += 1
            else:
                arr[k] = right_half[j]
                j += 1
            k += 1
        while i < len(left_half):
            arr[k] = left_half[i]
            i += 1
            k += 1
        while j < len(right_half):
            arr[k] = right_half[i]
            j += 1
            k += 1
        return arr


n = int(input("Enter number of elements: "))

num = []
for i in range(n):
    val = int(input(f"Enter element no. {i + 1}: "))
    num.append(val)


choice = int(input("1. Insertion sort\n2. Merge sort\nEnter choice: "))
if choice == 1:
    num = insertion(num)
else:
    num = merge_sort(num)


print(num)

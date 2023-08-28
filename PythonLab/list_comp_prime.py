print([x for x in range(2, 20) if all(x % y for y in range(2, x//2))])

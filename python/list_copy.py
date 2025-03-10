#!/usr/bin/python3

a = [1, 2, 3, 4]
b = a
c = a.copy()
d = a[:]
print(b)
a.append(5)
print(b)
print(c)
print(d)
print("Hello, World!")
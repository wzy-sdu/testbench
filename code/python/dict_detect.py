#!/usr/bin/python3

str = ["import", "is", "with", "if", "file", "exception", "shim", "lucy"]
dict = {k:v for v,k in enumerate(str)}
print(dict)
dict2 = {k:v for vk,v in str}
print(dict2)
print("Hello, World!")
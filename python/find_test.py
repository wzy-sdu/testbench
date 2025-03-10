#!/usr/bin/python3

a="qwertyuio"
print(len(a),#字符串长度
        a.startswith("qwe"),#判断开头是。。。
        a.endswith("yuio"),#判断结尾是
        a.find("e"),#查找字符串第一次出现的位置
        a.rfind("u"),#查找最后一次出现的位置
        a.count("t"),#字符串出现几次
        a.isalnum())#所有字符全是字母或数字
print("END!")
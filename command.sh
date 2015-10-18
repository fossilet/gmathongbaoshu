#! /bin/bash

# 先把Excel文件另存为TAB分隔的文件"Gmat单词.csv"，然后执行如下命令，生成乱序的
# 单词列表，用于粘贴到vocabulary.com。

<Gmat单词.csv gsed -e '/^list[0-9]\+/d' -e '/^[^a-zA-Z]/d' |
    cut -d'	' -f1 | gshuf | split -l 250

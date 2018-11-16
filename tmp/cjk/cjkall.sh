# 下载最新“新世纪版五笔字型 Unicode CJK 超大字符集编码数据库”
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK-A.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK-B.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK-C.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK-D.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK-E.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJK-F.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJKCompatibilityIdeographs.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CountingRodNumerals.txt
wget https://github.com/CNMan/UnicodeCJK-WuBi06/raw/master/CJKSymbolsandPunctuation.txt

# 取第三列、第二列并合并到一个文件
awk '{print $3 "\t" $2}' CJK.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >cjkall.txt
awk '{print $3 "\t" $2}' CJK-A.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJK-B.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJK-C.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJK-D.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJK-E.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJK-F.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJKCompatibilityIdeographs.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CountingRodNumerals.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt
awk '{print $3 "\t" $2}' CJKSymbolsandPunctuation.txt | tr A-Z a-z | sed 's/[ \t]*$//g' | tr -s '\n' >>cjkall.txt

# 删除Unicode未定稿发布的工尺谱
sed -i 's/\t鿰//g' cjkall.txt
sed -i 's/\t鿱//g' cjkall.txt
sed -i 's/\t鿲//g' cjkall.txt
sed -i 's/\t鿳//g' cjkall.txt
sed -i 's/\t鿴//g' cjkall.txt
sed -i 's/\t鿵//g' cjkall.txt
sed -i 's/\t鿶//g' cjkall.txt

# 删除无用的文件
rm CJK.txt CJK-A.txt CJK-B.txt CJK-C.txt CJK-D.txt CJK-E.txt CJK-F.txt CJKCompatibilityIdeographs.txt CountingRodNumerals.txt CJKSymbolsandPunctuation.txt

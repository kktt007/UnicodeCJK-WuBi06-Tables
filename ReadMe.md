# 新世纪版五笔字型 Unicode CJK 超大字符集(单字)

* 含 Unicode 11.0.0 已定义 CJK/CJK-A/CJK-B/CJK-C/CJK-D/CJK-E/CJK-F 编码区共 87875 个单字

* 含 Unicode 11.0.0 已定义 CJK Compatibility Ideographs 编码区 12 个非相容字符单字

* 含 Unicode 11.0.0 已定义 Counting Rod Numerals 编码区 5 个正字算筹字符单字

* 含 Unicode 11.0.0 已定义 CJK Symbols and Punctuation 编码区 1 个汉字“〇”

* 专为输入“生僻字”而生，日常使用请购买正版[王码五笔字型大一统 2018 高级版](http://www.wangma.net.cn/prodetail.aspx?sm=2&p=7)(人民币 9.90 元)

## 生成过程

1. 在Linux或Mac中生成未去重排序的`tmp/table_unsorted.txt`
```
cd UnicodeCJK-WuBi06-Tables/tmp/cjk/
sh cjkall.sh
cd ..
sh table_unsorted.sh
```

2. 将生成的`tmp/table_unsorted.txt`在Excel里去重排序，保存为需要的格式
  * 字前码后，单行单义：[unicodecjk_character_code_single.txt](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/unicodecjk_character_code_single.txt)
  * 字前码后，单行多义
  * 码前字后，单行单义：[unicodecjk_code_character_single.txt](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/unicodecjk_code_character_single.txt)
  * 码前字后，单行多义

## 字序

目前按官方原版1、2、3、4码首选字和Unicode编码排序

## [中州韻(Linux)、鼠鬚管(Mac)、小狼毫(Win)輸入法](https://rime.im/)

* [共享文件夾](https://github.com/rime/home/wiki/SharedData)
  * 小狼毫：`<安裝目錄>\data`
  * 鼠鬚管：`/Library/Input Methods/Squirrel.app/Contents/SharedSupport`
  * 中州韻：`/usr/share/rime-data`
* [用戶文件夾](https://github.com/rime/home/wiki/UserData)
  * 小狼毫：`%APPDATA%\Rime`
  * 鼠鬚管：`~/Library/Rime`
  * 中州韻：
    * ibus-rime: `~/.confg/ibus/rime`
    * fcitx-rime: `~/.confg/fcitx/rime`

1. 下载并安装超大字符集字体[中华书局宋体](http://www.ancientbooks.cn/helpcore?font)；(Win)下载[SurrogateFallback.reg](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/tmp/regedit/SurrogateFallback.reg)导入注册表，并重启计算机。

2. 下载[unicodecjk_wubi06.schema.yaml](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/unicodecjk_wubi06.schema.yaml)、[unicodecjk_wubi06.dict.yaml](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/unicodecjk_wubi06.dict.yaml)，放入`用戶文件夾`

3. (Win)下载[weasel.custom.yaml](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/tmp/rime/weasel.custom.yaml)、[default.custom.yaml](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/tmp/rime/default.custom.yaml)，放入`用戶文件夾`或参考修改你的配置

4. (Mac)下载[squirrel.custom.yaml](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/tmp/rime/squirrel.custom.yaml)、[default.custom.yaml](https://github.com/CNMan/UnicodeCJK-WuBi06-Tables/raw/master/tmp/rime/default.custom.yaml)，放入`用戶文件夾`或参考修改你的配置

5. `重新部署`即可开始使用

## iBus 输入法

1. 下载并安装超大字符集字体[中华书局宋体](http://www.ancientbooks.cn/helpcore?font)

2. 生成ibus码表
```
cd UnicodeCJK-WuBi06-Tables/tmp/ibus/
sh wubi06.sh
```

3. 区域和语言设置中添加`wubi06`即可开始使用

## 反馈

* 字序相关问题请反馈至：https://github.com/CNMan/UnicodeCJK-WuBi06-Tables

* 编码相关问题请反馈至：https://github.com/CNMan/UnicodeCJK-WuBi06

## 版权

所有权利归[王码公司](http://www.wangma.com.cn/)！请勿商用！

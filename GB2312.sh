#!/bin/sh

# 查看语言支持文件：
if [ -e "/var/lib/locales/supported.d/local" ];then
    echo "/var/lib/locales/supported.d/local 文件已经存在"
    echo "请查看该文件中是否有: zh_CN.GBK GBK"
    echo "                      zh_CN GB2312"
    echo "如果没有，请手动添加"
    echo "然后运行 sudo locale-gen"
else
    echo "无 /var/lib/locales/supported.d/local 文件，正在创建..."
    sudo touch /var/lib/locales/supported.d/local
    echo "创建完毕:)"
    # 内容是：
    echo "<------------ 开始写入内容 ------------>"
    echo "en_US.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
    echo "zh_CN.UTF-8 UTF-8" >> /var/lib/locales/supported.d/local
    echo "zh_CN.GBK GBK" >> /var/lib/locales/supported.d/local
    echo "zh_CN GB2312" >> /var/lib/locales/supported.d/local
    echo "<-------------- 写入完毕 -------------->"
    # 保存后 ，执行命令：
    sudo locale-gen
fi

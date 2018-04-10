#!/bin/sh

#需要接受3个参数 1、scheme名 2、工程目录 3、工程名字

#project目录PROJECT_PATH=$1

#project名称

PROJECT_NAME=$2

#scheme名称SCHEME_NAME=$3

#现在时间（做文件夹名称使用）DATE=`date +%Y%m%d%H%M`

#归档文件地址

ARCHIVE_PATH=$PROJECT_PATH/$DATE/$SCHEME_NAME

#通过archive归档出对应的xcarchive文件

#对应步骤:

#1、清理工程

#2、归档工程

#3、工程名称

#4、设置工程Scheme

#5、设置Debug或者Release模式

#6、归档输出地址

#7、特殊设置，可忽略，为了让过程更清晰

xcodebuild clean \

archive \

-project"$PROJECT_PATH/$PROJECT_NAME"\

-scheme"$SCHEME_NAME"\

-configuration"Release"\

-archivePath"$ARCHIVE_PATH"\

| xcprettyecho"--------------------------------------"

#通过归档文件打包出对应的ipa文件#对应步骤：

#1、打包命令

#2、归档文件地址

#3、ipa输出地址

#4、ipa打包设置文件地址xcodebuild -exportArchive \

-archivePath"$ARCHIVE_PATH.xcarchive"\

-exportPath"$PROJECT_PATH/$DATE"\-exportOptionsPlist"$PROJECT_PATH/

ExportOptions.plist"open$PROJECT_PATH

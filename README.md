# setup_pack


一、具体流程

        

        准备

        

        打包

        

        上传

        1. 准备

        

        创建一个项目，比如HGPGY。生成一个 ExportOptions.plist 文件
打包步骤为:构建 .xcarchive 再导出 .ipa 。

2.1 构建 .xcarchive 文件
xcodebuild archive -project HGPGY.xcodeproj -scheme HGPGY -configuration Release -archivePath HGPGY.xcarchive

 2.2 导出 .ipa 包
xcodebuild -exportArchive -archivePath HGPGY.xcarchive -exportPath HGPGY.ipa -exportOptionsPlist ExportOptions.plist



sh UploadPackage2PGY.sh  

蒲公英上传命令格式：

curl -F "file=@{$filePath}" \
-F "uKey={$uKey}" \
-F "_api_key={$apiKey}" \
http://www.pgyer.com/apiv1/app/upload
其中：

{$filePath}是应用安装包文件的路径
{$uKey}是开发者的用户 Key，在应用管理-API中查看
{$apiKey}是开发者的 API Key，在应用管理-API中查看
例如：

curl -F "file=@/tmp/example.ipa" \
-F "uKey=4a5bc52e6763795e18b69bd82dd23a9e" \
-F "_api_key=82c8dfb1f5f8999b9b5641b42b84adbf" \
http://www.pgyer.com/apiv1/app/upload





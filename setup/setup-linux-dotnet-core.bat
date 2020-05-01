::@echo off

set version=5.6
set dst=wexflow
set zip=wexflow-%version%-linux-netcore.zip
set dstDir=.\%dst%
set backend=Backend

if exist %zip% del %zip%
if exist %dstDir% rmdir /s /q %dstDir%
mkdir %dstDir%
mkdir %dstDir%\Wexflow\
mkdir %dstDir%\Wexflow\Database\
mkdir %dstDir%\WexflowTesting\
mkdir %dstDir%\%backend%\
mkdir %dstDir%\%backend%\images\
mkdir %dstDir%\%backend%\css\
mkdir %dstDir%\%backend%\css\images\
mkdir %dstDir%\%backend%\js\
mkdir %dstDir%\Wexflow.Scripts.MongoDB
mkdir %dstDir%\Wexflow.Scripts.MongoDB\Workflows
mkdir %dstDir%\Documentation\

:: WexflowTesting
xcopy ..\samples\WexflowTesting\* %dstDir%\WexflowTesting\ /s /e
xcopy ..\samples\netcore\linux\WexflowTesting\* %dstDir%\WexflowTesting\ /s /e

:: Wexflow
xcopy ..\samples\netcore\linux\Wexflow\* %dstDir%\Wexflow\ /s /e
copy ..\src\netcore\Wexflow.Core\Workflow.xsd %dstDir%\Wexflow\

:: Wexflow backend
copy "..\src\backend\Wexflow.Backend\index.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\forgot-password.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\dashboard.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\manager.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\designer.html" %dstDir%\%backend%\
::copy "..\src\backend\Wexflow.Backend\editor.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\history.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\users.html" %dstDir%\%backend%\
copy "..\src\backend\Wexflow.Backend\profiles.html" %dstDir%\%backend%\

xcopy "..\src\backend\Wexflow.Backend\images\*" %dstDir%\%backend%\images\ /s /e

xcopy "..\src\backend\Wexflow.Backend\assets\*" %dstDir%\%backend%\assets\ /s /e

xcopy "..\src\backend\Wexflow.Backend\css\images\*" %dstDir%\%backend%\css\images`\ /s /e
copy "..\src\backend\Wexflow.Backend\css\login.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\forgot-password.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\dashboard.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\manager.min.css" %dstDir%\%backend%\css
::copy "..\src\backend\Wexflow.Backend\css\editor.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\designer.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\history.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\users.min.css" %dstDir%\%backend%\css
copy "..\src\backend\Wexflow.Backend\css\profiles.min.css" %dstDir%\%backend%\css

copy "..\src\backend\Wexflow.Backend\js\settings.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\language.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\login.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\forgot-password.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\dashboard.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\manager.min.js" %dstDir%\%backend%\js

copy "..\src\backend\Wexflow.Backend\js\ace.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\worker-xml.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\mode-xml.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\worker-json.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\mode-json.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\ext-searchbox.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\ext-prompt.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\ext-keybinding_menu.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\ext-settings_menu.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\theme-*.js" %dstDir%\%backend%\js
::copy "..\src\backend\Wexflow.Backend\js\editor.min.js" %dstDir%\%backend%\js

copy "..\src\backend\Wexflow.Backend\js\blockly_compressed.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\blocks_compressed.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\en.js" %dstDir%\%backend%\js

copy "..\src\backend\Wexflow.Backend\js\designer.min.js" %dstDir%\%backend%\js

copy "..\src\backend\Wexflow.Backend\js\history.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\users.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\profiles.min.js" %dstDir%\%backend%\js

:: Wexflow server
net publish ..\src\netcore\Wexflow.Server\Wexflow.Server.csproj --force --output %~dp0\%dstDir%\Wexflow.Server
copy netcore\linux\appsettings.json %dstDir%\Wexflow.Server

:: MongoDB script
net publish ..\src\netcore\Wexflow.Scripts.MongoDB\Wexflow.Scripts.MongoDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.MongoDB
copy netcore\linux\MongoDB\appsettings.json %dstDir%\Wexflow.Scripts.MongoDB
xcopy "..\samples\netcore\linux\Wexflow\Workflows\*" %dstDir%\Wexflow.Scripts.MongoDB\Workflows /s /e

:: RavenDB script
net publish ..\src\netcore\Wexflow.Scripts.RavenDB\Wexflow.Scripts.RavenDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.RavenDB
copy netcore\linux\RavenDB\appsettings.json %dstDir%\Wexflow.Scripts.RavenDB

:: CosmosDB script
net publish ..\src\netcore\Wexflow.Scripts.CosmosDB\Wexflow.Scripts.CosmosDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.CosmosDB
copy netcore\linux\CosmosDB\appsettings.json %dstDir%\Wexflow.Scripts.CosmosDB

:: PostgreSQL script
net publish ..\src\netcore\Wexflow.Scripts.PostgreSQL\Wexflow.Scripts.PostgreSQL.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.PostgreSQL
copy netcore\linux\PostgreSQL\appsettings.json %dstDir%\Wexflow.Scripts.PostgreSQL

:: SQLServer script
net publish ..\src\netcore\Wexflow.Scripts.SQLServer\Wexflow.Scripts.SQLServer.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.SQLServer
copy netcore\linux\SQLServer\appsettings.json %dstDir%\Wexflow.Scripts.SQLServer

:: MySQL script
net publish ..\src\netcore\Wexflow.Scripts.MySQL\Wexflow.Scripts.MySQL.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.MySQL
copy netcore\linux\MySQL\appsettings.json %dstDir%\Wexflow.Scripts.MySQL

:: SQLite script
net publish ..\src\netcore\Wexflow.Scripts.SQLite\Wexflow.Scripts.SQLite.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.SQLite
copy netcore\linux\SQLite\appsettings.json %dstDir%\Wexflow.Scripts.SQLite

:: Firebird script
net publish ..\src\netcore\Wexflow.Scripts.Firebird\Wexflow.Scripts.Firebird.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.Firebird
copy netcore\linux\Firebird\appsettings.json %dstDir%\Wexflow.Scripts.Firebird

:: Oracle script
net publish ..\src\netcore\Wexflow.Scripts.Oracle\Wexflow.Scripts.Oracle.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.Oracle
copy netcore\linux\Oracle\appsettings.json %dstDir%\Wexflow.Scripts.Oracle

:: MariaDB script
net publish ..\src\netcore\Wexflow.Scripts.MariaDB\Wexflow.Scripts.MariaDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.MariaDB
copy netcore\linux\MariaDB\appsettings.json %dstDir%\Wexflow.Scripts.MariaDB

:: Wexflow.Clients.CommandLine
net publish ..\src\netcore\Wexflow.Clients.CommandLine\Wexflow.Clients.CommandLine.csproj --force --output %~dp0\%dstDir%\Wexflow.Clients.CommandLine

:: License
copy ..\LICENSE.txt %dstDir%

:: Documentation
copy "netcore\doc\_README.txt" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Core\Workflow.xml" %dstDir%\Documentation\_Workflow.xml
copy "..\src\net\Wexflow.Tasks.CsvToXml\CsvToXml.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FileExists\FileExists.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesConcat\FilesConcat.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesCopier\FilesCopier.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesExist\FilesExist.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesInfo\FilesInfo.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesLoader\FilesLoader.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesMover\FilesMover.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesRemover\FilesRemover.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesRenamer\FilesRenamer.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Ftp\Ftp.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Http\Http.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ImagesTransformer\ImagesTransformer.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ListEntities\ListEntities.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ListFiles\ListFiles.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.MailsReceiver\MailsReceiver.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.MailsSender\MailsSender.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Md5\Md5.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.MediaInfo\MediaInfo.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Mkdir\Mkdir.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Movedir\Movedir.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ProcessLauncher\ProcessLauncher.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Rmdir\Rmdir.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Sha1\Sha1.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Sha256\Sha256.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Sha512\Sha512.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Sql\Sql.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Sync\Sync.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Tar\Tar.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Template\Template.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Tgz\Tgz.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Touch\Touch.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Twitter\Twitter.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Wait\Wait.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Wmi\Wmi.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.XmlToCsv\XmlToCsv.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Xslt\Xslt.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Zip\Zip.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Now\Now.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Workflow\Workflow.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesSplitter\FilesSplitter.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ProcessKiller\ProcessKiller.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Unzip\Unzip.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Untar\Untar.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Untgz\Untgz.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ProcessInfo\ProcessInfo.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.TextToPdf\TextToPdf.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HtmlToPdf\HtmlToPdf.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.SqlToXml\SqlToXml.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.SqlToCsv\SqlToCsv.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Guid\Guid.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesEqual\FilesEqual.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesDiff\FilesDiff.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Torrent\Torrent.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ImagesResizer\ImagesResizer.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ImagesCropper\ImagesCropper.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.CsvToSql\CsvToSql.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ImagesConcat\ImagesConcat.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ImagesOverlay\ImagesOverlay.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Unrar\Unrar.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.UnSevenZip\UnSevenZip.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesEncryptor\FilesEncryptor.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesDecryptor\FilesDecryptor.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.TextsEncryptor\TextsEncryptor.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.TextsDecryptor\TextsDecryptor.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.DatabaseBackup\DatabaseBackup.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.DatabaseRestore\DatabaseRestore.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.IsoCreator\IsoCreator.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.IsoExtractor\IsoExtractor.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.SevenZip\SevenZip.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.TextToSpeech\TextToSpeech.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.SpeechToText\SpeechToText.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FileMatch\FileMatch.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Ping\Ping.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.WebToScreenshot\WebToScreenshot.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.WebToHtml\WebToHtml.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ExecCs\ExecCs.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ExecVb\ExecVb.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HttpPost\HttpPost.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HttpPut\HttpPut.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HttpPatch\HttpPatch.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HttpDelete\HttpDelete.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.UglifyJs\UglifyJs.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.UglifyCss\UglifyCss.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.UglifyHtml\UglifyHtml.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HtmlToText\HtmlToText.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.HttpGet\HttpGet.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.ScssToCss\ScssToCss.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.YamlToJson\YamlToJson.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.JsonToYaml\JsonToYaml.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.CsvToJson\CsvToJson.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.CsvToYaml\CsvToYaml.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.EnvironmentVariable\EnvironmentVariable.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.MessageCorrect\MessageCorrect.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.InstagramUploadImage\InstagramUploadImage.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.InstagramUploadVideo\InstagramUploadVideo.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FolderExists\FolderExists.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FileContentMatch\FileContentMatch.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Approval\Approval.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.VimeoListUploads\VimeoListUploads.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Vimeo\Vimeo.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Slack\Slack.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesLoaderEx\FilesLoaderEx.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FilesJoiner\FilesJoiner.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.Twilio\Twilio.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.SshCmd\SshCmd.xml" %dstDir%\Documentation\
copy "..\src\net\Wexflow.Tasks.FileSystemWatcher\FileSystemWatcher.xml" %dstDir%\Documentation\

:: compress
7z.exe a -tzip %zip% %dstDir%

:: Cleanup
rmdir /s /q %dstDir%

pause
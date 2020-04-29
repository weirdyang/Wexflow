::@echo off

set version=5.6
set dst=wexflow
set zip=wexflow-%version%-macos-dotnet-core.zip
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
xcopy ..\samples\dotnet-core\macos\WexflowTesting\* %dstDir%\WexflowTesting\ /s /e

:: Wexflow
xcopy ..\samples\dotnet-core\macos\Wexflow\* %dstDir%\Wexflow\ /s /e
copy ..\src\dotnet-core\Wexflow.Core\Workflow.xsd %dstDir%\Wexflow\

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

copy "..\src\backend\Wexflow.Backend\js\blockly_compressed.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\blocks_compressed.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\en.js" %dstDir%\%backend%\js
::copy "..\src\backend\Wexflow.Backend\js\editor.min.js" %dstDir%\%backend%\js

copy "..\src\backend\Wexflow.Backend\js\designer.min.js" %dstDir%\%backend%\js

copy "..\src\backend\Wexflow.Backend\js\history.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\users.min.js" %dstDir%\%backend%\js
copy "..\src\backend\Wexflow.Backend\js\profiles.min.js" %dstDir%\%backend%\js

:: Wexflow server
dotnet publish ..\src\dotnet-core\Wexflow.Server\Wexflow.Server.csproj --force --output %~dp0\%dstDir%\Wexflow.Server
copy dotnet-core\macos\appsettings.json %dstDir%\Wexflow.Server

:: MongoDB script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.MongoDB\Wexflow.Scripts.MongoDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.MongoDB
copy dotnet-core\macos\MongoDB\appsettings.json %dstDir%\Wexflow.Scripts.MongoDB
xcopy "..\samples\workflows\dotnet-core\macos\*" %dstDir%\Wexflow.Scripts.MongoDB\Workflows /s /e

:: RavenDB script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.RavenDB\Wexflow.Scripts.RavenDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.RavenDB
copy dotnet-core\macos\RavenDB\appsettings.json %dstDir%\Wexflow.Scripts.RavenDB

:: CosmosDB script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.CosmosDB\Wexflow.Scripts.CosmosDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.CosmosDB
copy dotnet-core\macos\CosmosDB\appsettings.json %dstDir%\Wexflow.Scripts.CosmosDB

:: PostgreSQL script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.PostgreSQL\Wexflow.Scripts.PostgreSQL.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.PostgreSQL
copy dotnet-core\macos\PostgreSQL\appsettings.json %dstDir%\Wexflow.Scripts.PostgreSQL

:: SQLServer script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.SQLServer\Wexflow.Scripts.SQLServer.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.SQLServer
copy dotnet-core\macos\SQLServer\appsettings.json %dstDir%\Wexflow.Scripts.SQLServer

:: MySQL script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.MySQL\Wexflow.Scripts.MySQL.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.MySQL
copy dotnet-core\macos\MySQL\appsettings.json %dstDir%\Wexflow.Scripts.MySQL

:: SQLite script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.SQLite\Wexflow.Scripts.SQLite.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.SQLite
copy dotnet-core\macos\SQLite\appsettings.json %dstDir%\Wexflow.Scripts.SQLite

:: Firebird script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.Firebird\Wexflow.Scripts.Firebird.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.Firebird
copy dotnet-core\macos\Firebird\appsettings.json %dstDir%\Wexflow.Scripts.Firebird

:: Oracle script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.Oracle\Wexflow.Scripts.Oracle.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.Oracle
copy dotnet-core\macos\Oracle\appsettings.json %dstDir%\Wexflow.Scripts.Oracle

:: MariaDB script
dotnet publish ..\src\dotnet-core\Wexflow.Scripts.MariaDB\Wexflow.Scripts.MariaDB.csproj --force --output %~dp0\%dstDir%\Wexflow.Scripts.MariaDB
copy dotnet-core\macos\MariaDB\appsettings.json %dstDir%\Wexflow.Scripts.MariaDB

:: Wexflow.Clients.CommandLine
dotnet publish ..\src\dotnet-core\Wexflow.Clients.CommandLine\Wexflow.Clients.CommandLine.csproj --force --output %~dp0\%dstDir%\Wexflow.Clients.CommandLine

:: License
copy ..\LICENSE.txt %dstDir%

:: Documentation
copy "dotnet-core\doc\_README.txt" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Core\Workflow.xml" %dstDir%\Documentation\_Workflow.xml
copy "..\src\dotnet\Wexflow.Tasks.CsvToXml\CsvToXml.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FileExists\FileExists.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesConcat\FilesConcat.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesCopier\FilesCopier.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesExist\FilesExist.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesInfo\FilesInfo.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesLoader\FilesLoader.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesMover\FilesMover.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesRemover\FilesRemover.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesRenamer\FilesRenamer.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Ftp\Ftp.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Http\Http.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ImagesTransformer\ImagesTransformer.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ListEntities\ListEntities.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ListFiles\ListFiles.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.MailsReceiver\MailsReceiver.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.MailsSender\MailsSender.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Md5\Md5.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.MediaInfo\MediaInfo.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Mkdir\Mkdir.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Movedir\Movedir.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ProcessLauncher\ProcessLauncher.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Rmdir\Rmdir.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Sha1\Sha1.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Sha256\Sha256.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Sha512\Sha512.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Sql\Sql.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Sync\Sync.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Tar\Tar.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Template\Template.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Tgz\Tgz.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Touch\Touch.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Twitter\Twitter.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Wait\Wait.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Wmi\Wmi.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.XmlToCsv\XmlToCsv.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Xslt\Xslt.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Zip\Zip.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Now\Now.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Workflow\Workflow.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesSplitter\FilesSplitter.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ProcessKiller\ProcessKiller.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Unzip\Unzip.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Untar\Untar.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Untgz\Untgz.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ProcessInfo\ProcessInfo.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.TextToPdf\TextToPdf.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HtmlToPdf\HtmlToPdf.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.SqlToXml\SqlToXml.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.SqlToCsv\SqlToCsv.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Guid\Guid.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesEqual\FilesEqual.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesDiff\FilesDiff.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Torrent\Torrent.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ImagesResizer\ImagesResizer.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ImagesCropper\ImagesCropper.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.CsvToSql\CsvToSql.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ImagesConcat\ImagesConcat.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ImagesOverlay\ImagesOverlay.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Unrar\Unrar.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.UnSevenZip\UnSevenZip.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesEncryptor\FilesEncryptor.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesDecryptor\FilesDecryptor.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.TextsEncryptor\TextsEncryptor.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.TextsDecryptor\TextsDecryptor.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.DatabaseBackup\DatabaseBackup.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.DatabaseRestore\DatabaseRestore.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.IsoCreator\IsoCreator.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.IsoExtractor\IsoExtractor.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.SevenZip\SevenZip.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.TextToSpeech\TextToSpeech.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.SpeechToText\SpeechToText.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FileMatch\FileMatch.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Ping\Ping.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.WebToScreenshot\WebToScreenshot.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.WebToHtml\WebToHtml.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ExecCs\ExecCs.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ExecVb\ExecVb.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HttpPost\HttpPost.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HttpPut\HttpPut.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HttpPatch\HttpPatch.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HttpDelete\HttpDelete.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.UglifyJs\UglifyJs.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.UglifyCss\UglifyCss.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.UglifyHtml\UglifyHtml.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HtmlToText\HtmlToText.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.HttpGet\HttpGet.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.ScssToCss\ScssToCss.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.YamlToJson\YamlToJson.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.JsonToYaml\JsonToYaml.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.CsvToJson\CsvToJson.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.CsvToYaml\CsvToYaml.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.EnvironmentVariable\EnvironmentVariable.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.MessageCorrect\MessageCorrect.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.InstagramUploadImage\InstagramUploadImage.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.InstagramUploadVideo\InstagramUploadVideo.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FolderExists\FolderExists.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FileContentMatch\FileContentMatch.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Approval\Approval.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.VimeoListUploads\VimeoListUploads.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Vimeo\Vimeo.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Slack\Slack.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesLoaderEx\FilesLoaderEx.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FilesJoiner\FilesJoiner.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.Twilio\Twilio.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.SshCmd\SshCmd.xml" %dstDir%\Documentation\
copy "..\src\dotnet\Wexflow.Tasks.FileSystemWatcher\FileSystemWatcher.xml" %dstDir%\Documentation\

:: compress
7z.exe a -tzip %zip% %dstDir%

:: Cleanup
rmdir /s /q %dstDir%

pause
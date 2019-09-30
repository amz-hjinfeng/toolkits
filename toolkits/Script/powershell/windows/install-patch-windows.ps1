$downloadurl= "http://download.windowsupdate.com/d/msdownload/update/software/secu/2019/09/windows10.0-kb4522010-x64_1b49068c61469a4680733c9f1ddee5f1c17ab499.msu"
$msupackage="C:\package\kb4522010-x64.msu"
mkdir C:\package
Invoke-WebRequest -uri $downloadurl -OutFile $msupackage
Unblock-File $msupackage
wusa $msupackage  /quiet /norestart
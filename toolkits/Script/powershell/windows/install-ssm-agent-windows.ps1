mkdir C:\ssmagent
Invoke-WebRequest -uri https://s3.cn-north-1.amazonaws.com.cn/public-bucket-itop-bj/ssm-agent/AmazonSSMAgentSetup.exe -OutFile c:\ssmagent\AmazonSSMAgentSetup.exe
Unblock-File c:\ssmagent\AmazonSSMAgentSetup.exe
cmd.exe /c c:\ssmagent\AmazonSSMAgentSetup.exe /s /v /qn
Restart-Service AmazonSSMAgent
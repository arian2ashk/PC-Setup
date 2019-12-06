Set-ExecutionPolicy Bypass -Scope Process -Force;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

choco feature enable -n=useRememberedArgumentsForUpgrades

choco install vscode
choco install visualstudio2019enterprise
choco install conemu
choco install git
choco install notepadplusplus
choco install spotify
choco install adobereader
choco install steam
choco install virtualbox
choco install firefox
choco install googlechrome
choco install linqpad
choco install postman
choco install screentogif
choco install telegram
choco install resharper
choco install 7zip 
choco install ravendb --params="'/setup-as-service /start-service'"
choco install sql-server-management-studio
choco install wixedit
choco install kdiff3
choco install nodejs
choco install sql-server-2019
#choco install skype
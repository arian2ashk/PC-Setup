Set-ExecutionPolicy Bypass;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

choco feature enable -n=useRememberedArgumentsForUpgrades
choco feature enable -n=allowGlobalConfirmation

choco install googlechrome
choco install vscode
#choco install visualstudio2019enterprise
#choco install visualstudio2019professional
choco install conemu
choco install git
choco install notepadplusplus
#choco install spotify
choco install adobereader
choco install steam
#choco install virtualbox
choco install firefox
#choco install linqpad
choco install postman
#choco install screentogif
choco install telegram
choco install resharper
choco install 7zip
#choco install ravendb #--params="'/setup-as-service /start-service'"
#choco install sql-server-2019
#choco install sql-server-management-studio
choco install kdiff3
choco install nodejs-lts
choco install nordvpn
choco install openvpn
choco install logitechgaming
choco install geforce-experience
#choco install ngrok
choco install hackfont
#choco install microsoft-teams
#choco install powertoys
#choco install zoom
choco install docker-desktop
choco install discord
#choco install slack

choco pin add -n=docker-desktop
choco pin add -n=googlechrome
choco pin add -n=vscode
choco pin add -n="vscode.install"
choco pin add -n=visualstudio2019enterprise
choco pin add -n=visualstudio2019professional
choco pin add -n=conemu
choco pin add -n=spotify
choco pin add -n=steam
choco pin add -n=firefox
choco pin add -n=telegram
choco pin add -n="telegram.install"
choco pin add -n=resharper
choco pin add -n=resharper-platform
choco pin add -n=nordvpn
choco pin add -n=microsoft-teams

# WixEdit, Office 2019, Kmplayer, Free download manager needs manual installation

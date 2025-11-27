Set-ExecutionPolicy Bypass;
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'));

choco feature enable -n=useRememberedArgumentsForUpgrades
choco feature enable -n=allowGlobalConfirmation

choco install googlechrome
choco pin add -n=googlechrome
choco install vscode
choco pin add -n=vscode
choco pin add -n="vscode.install"
choco install visualstudio2022professional
choco pin add -n=visualstudio2022professional
#choco install visualstudio2019enterprise
#choco pin add -n=visualstudio2019enterprise
#choco install visualstudio2019professional
#choco pin add -n=visualstudio2019professional
#choco install visualstudio2019community
#choco pin add -n=visualstudio2019community
#choco install resharper
#choco pin add -n=resharper
#choco pin add -n=resharper-platform
choco install jetbrains-rider
choco install conemu
choco pin add -n=conemu
choco install git
choco install notepadplusplus
#choco install spotify
#choco pin add -n=spotify
#choco install adobereader
choco install steam
choco pin add -n=steam
#choco install virtualbox
choco install firefox
choco pin add -n=firefox
#choco install linqpad
# choco install postman
# choco pin add -n=postman
#choco install screentogif
choco install telegram
choco pin add -n=telegram
choco pin add -n="telegram.install"
choco install 7zip
#choco install ravendb #--params="'/setup-as-service /start-service'"
choco install sql-server-2022
choco install sql-server-management-studio
choco install kdiff3
choco install nodejs-lts
#choco install nordvpn
#choco pin add -n=nordvpn
#choco install openvpn
#choco install logitechgaming
#choco install lghub
choco install geforce-experience
choco pin add -n=geforce-experience
choco install ngrok
#choco install hackfont
choco install microsoft-teams
choco pin add -n=microsoft-teams
choco install powertoys
choco pin add -n=powertoys
choco install zoom
#choco install docker-desktop
#choco pin add -n=docker-desktop
choco install discord
#choco install slack
choco install vlc
choco install freedownloadmanager
#choco install nzxt
#choco install gopro-quik
#choco install azure-functions-core-tools
choco install ubisoft-connect
choco install epicgameslauncher
choco install tomatoad
choco install whatsapp
choco install pwsh
choco install nerdfont-hack # https://www.nerdfonts.com/font-downloads
choco install jetbrainsmononf # https://www.nerdfonts.com/font-downloads
choco install firacodenf # https://www.nerdfonts.com/font-downloads
winget install Microsoft.WindowsTerminal
winget install JanDeDobbeleer.OhMyPosh -s winget
choco install azure-data-studio
winget install microsoft.azd
choco install azure-cli
choco install insomnia-rest-api-client


# WixEdit, Office 2019, AORUS ENGINE, needs manual installation
# NVIDIA Control Panel, MSI Dragon Center needs manual installation from windows store

Set-ExecutionPolicy Bypass;

# the file path and name is used in pwsh profile, be careful if you change it
(New-Object System.Net.WebClient).DownloadFile('https://gist.githubusercontent.com/shanselman/1f69b28bfcc4f7716e49eb5bb34d7b2c/raw/8e9c9a8736ff4e9e5a863c20833d614549ccbc32/ohmyposhv3-v2.json', "$env:POSH_THEMES_PATH\ohmyposhv3-v2.json")

# create a pwsh profile that is digitally signed
pwsh -command {New-Item -Path $PROFILE -Type File -Force}

# PowerShellGet is needed for installing modules
pwsh -command {Update-Module PowerShellGet -Force}

pwsh -command {Install-Module -Name Terminal-Icons -Repository PSGallery -Force}
pwsh -command {Install-Module PSReadLine -AllowPrerelease -Force}
pwsh -command {Install-Module Posh-Git -Force}

# copies the settings to windows terminal
pwsh -command {Copy-Item -Path ".\settings.json" -Destination "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\" -force}

# copies the profile configuration to the profile file
pwsh -command { (Get-Content -Path ".\Microsoft.PowerShell_profile.ps1") | Out-File -Append -Encoding default -FilePath $PROFILE}

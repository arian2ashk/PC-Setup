# Enable remote access to server

```powershell
# enable remoting

$ Enable-PSRemoting

# Create a self signed certificate and register it on the https listener

$ $Certificate = New-SelfSignedCertificate -CertstoreLocation Cert:\LocalMachine\My -DnsName <DOMAIN NAME e.g. example.westeurope.cloudapp.azure.com>
$ New-Item -Path WSMan:\LocalHost\Listener -Transport HTTPS -Address * -CertificateThumbPrint $Certificate.Thumbprint -Force

# Checking the WSMan listener registration

$ winrm enumerate winrm/config/listener

# Open the firewall for port 5986

$ New-NetFirewallRule -DisplayName 'WinRM HTTPS-In' -Name 'WinRM HTTPS-In' -Profile Any -LocalPort 5986 -Protocol TCP
```

# Testing remote access to server

```powershell
# Creating the remote session

$ $credentials = New-Object System.Management.Automation.PSCredential ( "<USERNAME>", ( ConvertTo-SecureString "<USERNAME>" -AsPlainText -Force ) )
$ $options = New-PSSessionOption -SkipCACheck -SkipCNCheck -SkipRevocationCheck -OperationTimeout 7200000
$ $remoteSession = New-PSSession -ConnectionUri https://<SERVER IP>:5986 -Credential $credentials -SessionOption $options

# Copying an item from local to remote server

$ Copy-Item -Path "<PATH TO LOCAL FILE>" -Destination "<PATH ON THE SERVER TO COPY TO>" -ToSession $remoteSession

# Invoking a script file located on remote server with Powershell 7.0

$ invoke-command { pwsh.exe -noprofile -executionpolicy Bypass "<SCRIPT PATH ON THE SERVER>" } -Session $remoteSession
```

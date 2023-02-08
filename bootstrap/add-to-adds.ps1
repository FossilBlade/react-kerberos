
Param (
    [string]$adUser,
    [string]$adUserPass,
    [string]$domainName
)
$securePassword = ConvertTo-SecureString -String $adUserPass -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ($adUser, $securePassword)
Add-Computer -DomainName $domainName -Restart -Credential $credential
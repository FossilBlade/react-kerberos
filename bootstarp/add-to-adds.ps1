
Param (
    [string]$adUser,
    [string]$adUserPass,
    [string]$domainName
)
$credential = New-Object System.Management.Automation.PSCredential ($adUser, $adUserPass)
Add-Computer -DomainName $domainName -Restart -Credential $credential
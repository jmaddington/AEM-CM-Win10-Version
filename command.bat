#Get min Windows version to test against
$MinVersion = If ($env:MinVersion -eq $null ) {"1803"} Else {$env:MinVersion}

#Get current Windows version
$ver = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ReleaseId

#Current version to stdout
#Exit 1 = error
#Exit 0 = OK

If ($ver -lt $MinVersion)
{
    Write-Host "<-Start Result->"
    Write-Host  "$ver"
    Write-Host "<-End Result->"

    Write-Host "<-Start Diagnostic->"

    $sysinfo = systeminfo

    Write-Host $sysinfo

    Write-Host "<-End Diagnostic->"

    Exit 1

} Else {
    Write-Host "<-Start Result->"
    Write-Host "$ver"
    Write-Host "<-End Result->"""

    Exit 0
}
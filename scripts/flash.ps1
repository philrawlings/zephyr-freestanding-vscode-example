& $PSScriptRoot\init.ps1

Write-Host "Flashing target" -ForegroundColor DarkCyan
$command = "west flash"
Write-Host $command -ForegroundColor Yellow
Invoke-Expression($command)
& $PSScriptRoot\init.ps1

Write-Host "Flashing target" -ForegroundColor DarkCyan
# Note: west flash -H can be used to show info about the current build folder, including supported runners
#$command = "west flash -r jlink" # If selecting a specific runner. Although this doesnt seem to be needed? (Note nrfjprog for nrf boards is the default and works with JLink)
$command = "west flash"
Write-Host $command -ForegroundColor Yellow
Invoke-Expression($command)
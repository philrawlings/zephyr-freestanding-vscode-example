& $PSScriptRoot\init.ps1

$boardRootArg = ""
if (Test-Path -Path boards) {
    $boardRootArg = " --board-root ."
}

Write-Host "Generating board list..." -ForegroundColor DarkCyan
$command = "west boards" + $boardRootArg
Write-Host $command -ForegroundColor Yellow
$board = Invoke-Expression($command) | Out-GridView -OutputMode Single -Title "Select Board"

#$board = west boards | Out-GridView -OutputMode Single -Title "Select Board"
if ([string]::IsNullOrWhitespace($board)) {
    throw "Board selection cancelled."
}

$board | Out-File -FilePath $PSScriptRoot\board.txt
Write-Host "Selected board: $board" -ForegroundColor Green
return $board
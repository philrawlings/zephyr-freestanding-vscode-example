& $PSScriptRoot\init.ps1

if ($args.Length -gt 0) {
    $board = $args[0]
}
elseif (Test-Path -Path $PSScriptRoot\board.txt) {
    $board = Get-Content $PSScriptRoot\board.txt
}
else {
    $board = & $PSScriptRoot\select-board.ps1
}

$boardRootArg = ""
if (Test-Path -Path boards) {
    $boardRootArg = ' -- -DBOARD_ROOT="."'
}

Write-Host "Generating build for ${board}..." -ForegroundColor DarkCyan
$command = "west build -p always -b " + $board + $boardRootArg
Write-Host $command -ForegroundColor Yellow
Invoke-Expression($command)
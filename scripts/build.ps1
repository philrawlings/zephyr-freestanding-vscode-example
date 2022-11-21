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
Write-Host "Generating build for ${board}" -ForegroundColor Yellow
west build -p always -b ${board}
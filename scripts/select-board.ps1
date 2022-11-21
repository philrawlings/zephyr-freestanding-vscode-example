& $PSScriptRoot\init.ps1

$board = west boards | Out-GridView -OutputMode Single -Title "Select Board"
$board | Out-File -FilePath $PSScriptRoot\board.txt
Write-Host "Selected board: $board" -ForegroundColor Green
return $board
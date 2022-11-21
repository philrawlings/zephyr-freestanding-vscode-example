# Activate virtual environment if exists
$zephyr_folder = "$HOME\\zephyrproject\\.venv"
if (Test-Path -Path $zephyr_folder) {
    & $HOME\\zephyrproject\\.venv\\Scripts\\activate.ps1
}

# Set Zephyr base environment variable
$env:ZEPHYR_BASE = "${env:HOMEDRIVE}${env:HOMEPATH}\\zephyrproject\\zephyr"
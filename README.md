# Zephyr Freestanding VS Code Example

As per standard [blinky](https://github.com/zephyrproject-rtos/zephyr/tree/main/samples/basic/blinky) sample with the following additions:
- Added `.vscode/settings.json` which defines ZEPHYR_BASE environment variable and a new terminal type (Zephyr Terminal) which activates the venv to enable the use of `west` commands.
- Added `.vscode/tasks.json` which defines `Select Board`, `Build` and `Flash` tasks (these call PowerShell scripts in the `scripts` directory.
- Added `.vscode/c_cpp_properties.json` to define locations for zephyr include files.
- Added `boards` directory with a custom nRF52840 board

## Usage

- Install Zephyr as per the [getting started guide](https://docs.zephyrproject.org/latest/develop/getting_started/index.html).
- This example is designed to live in an arbitrary location on disk as a *freestanding application* (see [here](https://docs.zephyrproject.org/3.1.0/develop/application/index.html) for more details).
- This will only work on Windows at present. It could be extended to support MacOS and Linux in future.

## Tasks

Enter `CTRL+SHIFT+P` >> Tasks: Run Task >> \<Select task name\>

### Select Board

Uses the `west` tool to get a list of supported boards. The list is shown in a GUI and the selected board is written to `scripts/board.txt`. This is so that the build and flash tasks can use this without having to select the board every time. The list of boards will contain any custom boards created in the project (in this case: `waveshare_nrf52840_eval`).

### Build

Issues the `west build` command for the selected board (and shows the selection GUI is not board selected).

### Flash

Issues the `west flash` command for the selected board (and shows the selection GUI is not board selected).
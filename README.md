# esxcli-ahk

AHK script to expand short hands for esxcli commands.

## Installation

- No installation required. Download the script and [run it with ahk](https://www.howtogeek.com/56481/the-beginners-guide-to-using-an-autohotkey-script/)
- To run the script at startup, open a explorer window, enter `shell:startup` in the adress bar and create a shortcut which points ahk to the script:

```text
"C:\Program Files\AutoHotkey\AutoHotkeyU64.exe" "C:\your\path\to\esxcli.ahk"
```

## Usage

Type `!` followed by the beginning two letters of each namespace, that you want to expand. Each namespace is identified, by its first two letters.

```text
!essysycoge --> [es]xcli [sy]stem [sy]slog [co]nfig [ge]t
```

If a command is ambigous, a gui will show all possible resolutions of the command.

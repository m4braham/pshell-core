# pshell-core

This repository contains various core Windows PowerShell scripts.

## Prerequisites

Windows PowerShell, see https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#winget.


## Windows

### Caffeinate

This is a script that prevents Windows from entering sleep, by simulating key strokes at regular time intervals.

The following command caffeinates Windows for 60 minutes (optional; default: `36000`).

```
./scripts/sys_win/caffeinate.ps1 60
```

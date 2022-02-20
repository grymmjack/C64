# Setup

## Notes
> To exit the VICE debugger, close the emulator, not the debugger, because the breakpoint will keep opening the debugger.

## Usage
| Shortcut | Description |
|----------|-------------|
| `F6` | Build and Run in Emulator |
| `SHIFT+F6` | Build and Debug |
| `.break` | Add break point |

## Download
- [Kick Assembler](http://theweb.dk/KickAssembler/Main.html#frontpage)
- [OpenJDK 11](https://adoptium.net/?variant=openjdk11)
- [C64 Debugger](https://sourceforge.net/projects/c64-debugger/)
- [VICE](https://vice-emu.sourceforge.io/)


## Visual Studio Code Extension

```
Name: Kick Assembler 8-Bit Retro Studio
Id: paulhocker.kick-assembler-vscode-ext
Description: This extension supercharges your 8-bit Retro Development experience using the awesome Kick Assembler. It helps you code, build, run and debug for many of the different 8-Bit systems using the 6502 family of Processors like Commodore 64, Atari 2600, Atari Computers and many more.
Version: 0.16.0
Publisher: Paul Hocker
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=paulhocker.kick-assembler-vscode-ext
```

## Visual Studio Code Configuration (Working)
```json
{
    "kickassembler.assembler.jar": "c:\\C64\\Applications\\KickAssembler\\KickAss.jar",
    "kickassembler.debugger.runtime": "c:\\C64\\Applications\\C64Debugger.exe",
    "kickassembler.emulator.runtime": "c:\\C64\\Emulators\\GTK3VICE-3.6.0-win64\\bin\\x64sc.exe",
    "kickassembler.java.runtime": "C:\\Program Files\\Eclipse Adoptium\\jdk-11.0.14.101-hotspot\\bin\\java.exe"
}
```
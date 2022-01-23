# Visual Studio Code BASIC(ish) Workspace

> NOTE: This README assumes you are using Windows 10

## How does it work?

By using custom extension directories and user data directories, we can launch VSCode in a way that is customized specific to our needs; in this case programming in BASIC, compiling it using VICE emulators `petcat` utility, and testing our work using the VICE emulator itself.

### The `.vscode` Folder
This special folder is a convention of VSCode which when it exists, can have specific things per workspace. To understand a little about how this works, consider that when you add a folder to a VSCode that is running, the folder you add is considered the root folder for the workspace. If the workspace contains a `.vscode` directory, there are special files inside that let you configure your workspace further.

### `.vscode/extensions.json` File
The `extensions.json` file allows us to (among other things) recommend extensions for installation in this workspace. In this case, I've recommended XCBasic extension because it adds support for XCBasic, which is a fantastic extension/separate dialect of Basic in it's own right, but it also registers a `.bas` file extension, which makes it easy to customize VSCode based on having a `.bas` file open in the editor. Why would we want to do this? Because you can customize the font, and we can use a font like Style's C64 Pro Mono (recommended).

### `.vscode/tasks.json` File
The `tasks.json` file is a simple way to add custom tasks for a workspace. 

| Keyboard Shortcut | Purpose |
|-------------------|---------|
| CTRL+SHIFT+B | Build / Compile the source code |
| CTRL+ALT+SHIFT+B | Test the built file in VICE

The `tasks.json` file needs to be customized to support your specific setup and where you have VICE installed.

> To keep things super simple you might want to just add the VICE emulator `bin` directory to your user path in Windows. To do so, find out where you installed VICE and copy the path to it's `/bin` directory to your clipboard. Press Windows key, then type "Edit env" then let it auto-complete and click "Edit environment variables for your account". This will bring up the editor. Now highlight the "PATH" row, and click the "Edit..." button. On the right click the "New" button. Highlight the row that it created at the bottom, and choose Edit. Now paste your VICE bin directory path. For me it's this: `C:\C64\Emulators\GTK3VICE-3.6.0-win64\bin`. Now click "OK" button to close the variable editor, and then click "OK" button again to close the environment editor. ***You will need to close and reopen VSCode to get the setting to take effect however this makes it really easy wherever you are to run `x64sc`, or `petcat`, or `1541`*** since you can simply just type the command from anywhere on your system now.

### Customizing `tasks.json` paths to VICE emulator:
If you did not add the VICE bin directory to your `PATH` environment variable you must customize `tasks.json`. 

1. Open VSCode from your shortcut on the desktop.
2. In the file explorer pane, twirl open `.vscode` directory.
3. Double click `.tasks.json` file to edit it.

> Modify line 10 from `petcat` to the fully qualified path of `petcat` in your VICE bin directory.

```
"command": "petcat -w2 -o ${fileDirname}/${fileBasenameNoExtension}.prg -- ${file}"
```

> Modify line 28 from `x64sc` to the fully qualified path of `x64sc` in your VICE bin directory.

```
"command": "x64sc -autostartprgmode 1 ${fileDirname}/${fileBasenameNoExtension}.prg"
```

## Setup

Setting up is easy and involves the following procedures:
- Install a font for a more C64-like experience *(optional)* 
- Create some empty directories
- Modify user PATH environment variable *(optional)*
- Create and modify a desktop shortcut
- Open VSCode
- Bind a keyboard shortcut
- Install a recommended extension
- Modify tasks.json *as needed*
- Test the build keyboard shortcut *(compile)*
- Test the test keyboard shortcut *(run in VICE)*

1. Create the following directories on your C: drive
    - `mkdir C:\C64\VSCode\Basic\extensions`
    - `mkdir C:\C64\VSCode\Basic\user-data`
    - `mkdir C:\git\C64\Basic` *or wherever you will be programming*
2. Create a shortcut to VSCode on your desktop
    - Press Windows key, then type "Visual Studio Code" now right click on the entry that shows up and choose "Open File Location". This launches a new explorer pointing to the shortcut.
    - From the new explorer window, right click on the shortcut that is selected, then choose "Properties".
    - At the bottom of the Properties dialog click "Open File Location" button.
    - This will open a new explorer window with the exe selected.
    - Right click the exe file, and choose Send To -> Desktop (create shortcut)
3. Modify the desktop shortcut:
    - On Shortcut tab:
        - **TARGET**: `"C:\Users\Admin\AppData\Local\Programs\Microsoft VS Code\Code.exe" -d "C:\git\C64\BASIC" --extensions-dir "C:\C64\VSCode\Basic\extensions" --user-data-dir "C:\C64\VSCode\Basic\user-data"`
    - On General tab:
        - **NAME**: To the right of the icon, type something like `VS - C64 Basic`
    - Click OK button to close shortcut Properties
5. Double click the shortcut you just made on your desktop
6. When you open VS Code you will notice the following:
    - It does not have any extensions at all. This is by design, and the reason it does not is because we specified to use an `--extensions-dir` which is currently empty.
    - It is recommending to install the XCBasic extension.
    - Please install the XCBasic extension.  
      *XCBasic isn't what we're going to use necessarily for this specific workspace, but it will define `.bas` file extension inside VSCode so that we can simply specify some custom per-language settings specifically use c64 font, etc.*
7. From VSCode click File | Preferences | Keyboard Shortcuts
8. In the top search for: `Run Test Task`.
9. Assign a keyboard shortcut: `CTRL+ALT+SHIFT+B`.


![](https://img.shields.io/badge/Code-Batch-informational?style=flat&logo=batch&logoColor=white&color=0078D4)
![](https://img.shields.io/badge/Code-VBScript-informational?style=flat&logo=vbscript&logoColor=white&color=0078D4)

# Neovide MSVC Setup

A collection of Windows 11 scripts to run **`Neovide`** and **`Neovim`** pre-configured with the **`MSVC Developer Command Prompt for VS`** environment. Features CLI invocation, desktop shortcut integration, and Administrator mode support.

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Execution](#execution)
4. [Troubleshoot](#troubleshoot)
5. [Contribution](#contribution)

## Introduction

For users who prefer working on Windows with Visual Studio rather than Linux or MinGW, running Neovide with full C/C++ toolchain access can be tricky since MSVC tools are only exposed within the Developer Command Prompt for VS.

This project provides a lightweight solution to that limitation. Although the initial setup may seem a bit manual, it keeps your system clean by initializing the MSVC toolchain strictly on demand, avoiding the need to pollute your global PATH.

## Installation

### Prerequisites

1. **Neovim:** Installed and available in your system `PATH`.
2. **Neovide:** Installed and configured on your system.
3. **Build Tools for Visual Studio:** Installed with the **C++ Desktop Development** workload (provides `VsDevCmd.bat` and `cl.exe`).

### Setup Steps

1. **Copy Directory:** Copy the `Neovide MSVC/` directory to your desired program folder (e.g., `C:/Program Files/Neovide MSVC/`).
2. **System PATH:** Add `C:/Program Files/Neovide MSVC/` to your User or System `PATH` environment variable.
3. **Create a Shortcut:** Create a shortcut with the following target to launch Neovide silently without leaving a background terminal open:

```cmd
C:\Windows\System32\wscript.exe "C:\Program Files\Neovide MSVC\neovide.vbs"
```

## Execution

```cmd
neovide-msvc .
```

## Troubleshoot

These scripts were created and tested on Windows 11. If you encounter any issues, they are most likely caused by:

- Missing Tools: Ensure Visual Studio (or Build Tools) and Neovide are properly installed.
- Incorrect File Paths: Verify that vswhere.exe can locate your Visual Studio installation and that neovide.exe is added to your system PATH or installed in its default directory.

## Contribution


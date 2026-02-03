<div align="center" style="display:grid;place-items:center;">
	<p>
	    <a href="https://github.com/Sekai-Engine/slang" target="_blank"><img width="180" src="./docs/public/slang.png" alt="slang"></a>
        <h1>Slang</h1>
    <p>
    <img src="https://img.shields.io/badge/License-MIT--License-blue.svg?style=flat-square&logo=opensourceinitiative&logoSize=14" alt="License" height="20">
    <img src="https://img.shields.io/github/stars/Sekai-Engine/slang?style=flat-square&logo=github&color=green&logoSize=14" alt="License" height="20">
</div>

English|[中文](./README_CN.md)
	
A script language interpreter specifically developed for text adventure games.

# Description

The slang interpreter is developed using C# and serves as a core component of the Sekai engine. It is primarily used to interpret the slang language into a JSON format readable by the engine.

> A major refactoring will be conducted in the future.

# Download

You can obtain the slang interpreter directly from the releases.

# Compilation

You can clone the source code and compile it yourself:

```bash
git clone https://github.com/Sekai-Engine/slang
cd slang
# On Windows
dotnet publish slang -r win-x64

# On Linux
dotnet publish slang -r linux-x64
```

The slang interpreter will be automatically placed in the `./bin` folder.

# Usage Instructions

```bash
Usage: ./slang <COMMAND> [LANGUAGE]

Commands:
build      Build script content into code for the specified language
edit       Revert code functionality to script mode for the specified language

Languages:
zh/CN      Chinese
en/EN      English
jp/JP      Japanese

Examples:
slang build en
slang edit ZH

Usage: slang <COMMAND> [FILE PATH]
Commands:
json       Translate the corresponding file into JSON format and print it.

Notes:
This toolchain is currently in TESTING status, please refer to this version's README for accurate syntax.
```
<div align="center" style="display:grid;place-items:center;">
	<p>
	    <a href="https://github.com/Sekai-Engine/slang" target="_blank"><img width="180" src="./docs/public/slang.png" alt="slang"></a>
        <h1>Slang</h1>
    <p>
    <img src="https://img.shields.io/badge/License-MIT--License-blue.svg?style=flat-square&logo=opensourceinitiative&logoSize=14" alt="License" height="20">
    <img src="https://img.shields.io/github/stars/Sekai-Engine/slang?style=flat-square&logo=github&color=green&logoSize=14" alt="License" height="20">
</div>

[English](./README.md)|中文

专为文字冒险游戏开发的台本语言解释器.

# 说明

slang解释器使用csharp开发，是sekai引擎的核心部分，主要用于将slang语言解释为引擎可读的json格式。

> 未来将进行一次大型重构.

# 下载

您可以在[发行版](https://github.com/Sekai-Engine/slang/releases)直接获取slang解释器.

# 编译

您可以将源码克隆到项目中自行编译:

```bash
git clone https://github.com/Sekai-Engine/slang
cd slang
# in Windows
dotnet publish slang -r win-x64

# in Linux
dotnet publish slang -r linux-x64
```

slang解释器将自动存放于`./bin`文件夹中


# 使用说明

```bash
以下是纯文本的中文翻译：

用法: ./slang <命令> [语言代码]

命令:
build 将指定语言的脚本内容构建为引擎代码
edit 将指定语言的代码功能还原为脚本模式

语言代码:
zh/CN 简体中文
en/EN 英语
jp/JP 日语

示例:
slang build en
slang edit ZH

用法: slang <命令> [文件路径]
命令:
json 将对应文件解析为JSON格式并输出

注意:
本工具链目前处于测试状态，语法可能变动，请参考本版本的README获取准确用法。
```


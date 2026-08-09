

# HUSTtex-华中科技大学本科毕业论文系列TeX模板
A series of TeX templates for the tasks to complete the undergraduate thesis at Huazhong University of Science and Technology.

## Usage 使用说明
编译相应`.tex`文件就行咯~ :rocket:
> 请使用 [**XeLaTeX**](https://en.wikipedia.org/wiki/XeTeX) 编译！！！（正常默认是 `pdflatex`）

推荐使用编辑器 [TeXstudio](https://www.texstudio.org/)

The `TeX` editor [TeXstudio](https://www.texstudio.org/) is recommended and be sure to set the compiler as **XeLaTeX**.

## `.tex` 模板 `.tex` files
- 开题报告(thesis proposal): [`HUSTproposal.tex`](HUSTproposal/HUSTproposal.tex)
- 开题答辩(thesis opening report): [`HUSTopening.tex`](HUSTopening/HUSTopening.tex)
- 外文翻译(foreign literature translation): [`HUSTtrans.tex`](HUSTtrans/HUSTtrans.tex)
- 论文(thesis): [`HUSTthesis.tex`](HUSTthesis/HUSTthesis.tex)

以上所有`.tex`文件下载即可在**XeLaTeX**编译通过（只需原生[`TeXLive`](https://www.tug.org/texlive/), [`MacTeX`](https://www.tug.org/mactex/), [`MiKTeX`](https://miktex.org/)等主流TeX环境）。

基本没有任何其他依赖（除了很少出现的字体缺失，见下文）。示例及说明可以参考相应文件夹中的`.pdf`文档。

## 字体 fonts
在中文Windows系统中，模板中所需字体应该已经安装在系统里了。😄

If the fonts are not installed in your system, then you may find the fonts (`.ttf`) in the directory [`fonts/`](fonts/). There are several scripts to install fonts quickly:
- Windows: run the Powerscript [`InstallFonts.ps1`](InstallFonts.ps1). (Note the [excution policy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.1).)
- Linux & MacOS: run bash script [`install_fonts.sh`](install_fonts.sh).
---
I hope this repository can help you finish your job more effectively and elegantly. Please feel free to open an issue if you have any question or suggestion.

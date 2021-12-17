# UH Slides ECE

## Introduction

This is a presentation (slides) template for Department of Electrical and Computer Engineering (ECE), University of Houston. Note that this is unofficial template and designed by Yuchen Jin, who is a Ph.D student in Dept. ECE.

This template has been tested on [TexLive 2017][texlive], Windows successfully. Some reports show that it may not work with MikTex or MacTex. Please adjust it by yourself if you are using a different platform.

This template is adapted from [**Unofficial Beamer Theme for Uppsala University**][slice-uppsala]. The appearance is almost the same as the original work. However, this template has such improvements:

* This is a fully merged theme, which means all configurations of this template are defined in a single file. Thus you do not need to install it. As long as you put the `.sty` file in your workfolder, you could make use of this template.
* Support both 4:3 and 16:9 modes. We have provided the title page for both versions.
* Remastered title page, which enables users to use multi-line text for any item in the title page.
* A totally new thanks page.
* Support with necessary packages like cleveref, subfigure, algorithm and some other tools.

## All options

We list all avaliable options here. The deault state means whether a option is enabled in default.

```latex
\usetheme[...]{UH-Slides-ECE}
```

| Option | Description | Default state |
| ------ | ----------- | ------------  |
| `mylogo` | Whether to use customized logo, if set True, need to renew the command `\insertlogo` for providing the customized logo.  | False |
| `nonumbers` | If enabled, will hide the page number.  | False |
| `totalnumber` | If enabled, will show the total number of pages.  | False |
| `noprogressbar` | If enabled, will hide the progress bar.  | False |
| `withnav` | If enabled, will show the navigation tool box.  | False |
| `oldmathcal` | If enabled, will use the old Caligraphy style of the `\mathcal` command.  | False |
| `sectionpathattop` | If enabled, will show the current section on the top of each page.  | False |
| `subsectionsattop` | If enabled, will show the current subsection on the top of each page.  | False |
| `hideothersubsections` | If enabled, will only show subsections of the current section in the side bar.  | False |
| `hideallsubsections` | If enabled, will hide all subsections in the side bar.  | False |
| `color` | The palette name of the whole theme, could be `Aramco`, `IEEE`, or 'default' (UHECE).  | `default` |

## Example

| Example slides |
| ----- |
| ![][ex-fig-1] |
| ![][ex-fig-2] |
| ![][ex-fig-3] |

## Update report

### 1.1 @ 20211217

1. Fix a fatal bug that causes the pdfLaTeX compilation to fail.

2. Support different color themes, rename the built in colors.

3. Adjust the box size in the thank page.

4. Remove useless features (customized tcbset style.)

### 1.02 @ 20190225

1. Modify the template the arrange some formats for the title page

2. Fix the bug for `renumerate` environment.

3. Add an option `oldmathcal` to enable users switch back to the old style of the `\mathcal` command.

### 1.0 @ 20190205

1. Upload this sub-project: *UH-Slides-ECE*.

[slice-uppsala]:https://github.com/silverdaz/UppsalaBeamer
[texlive]:https://ctan.org/pkg/texlive
[ex-fig-1]:./display/uh-ece-1.jpg
[ex-fig-2]:./display/uh-ece-2.jpg
[ex-fig-3]:./display/uh-ece-3.jpg
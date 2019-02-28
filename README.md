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

## Example

| Example slides |
| ----- |
| ![][ex-fig-1] |
| ![][ex-fig-2] |
| ![][ex-fig-3] |

## Update report

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
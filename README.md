# UH Slides SPWLA

## Introduction

This is a presentation (slides) template for both Society of Petrophysicists and Well Log Analysts (SPWLA) Spring 2022 Topical Conference and University of Houston. Note that this is unofficial template and designed by Yuchen Jin, who is a Ph.D student in Dept. ECE.

This template has been tested on [TexLive 2021][texlive], Windows successfully. Some reports show that it may not work with MikTex or MacTex. Please adjust it by yourself if you are using a different platform.

This template is adapted from [**Feather Presentation Template**][slide-feather]. All modifications are based on the design of the **SPWLA PPT template**. The appearance is almost the same as the original work. However, this template has such improvements:

* This is a fully merged theme, which means all configurations of this template are defined in a single file. Thus you do not need to install it. As long as you put the `.sty` file in your workfolder, you could make use of this template.
* Support both 4:3 and 16:9 modes. We have provided the title page for both versions.
* Support both `beamer` and `handout` modes. The `beamer` mode will render SPWLA official style, while `handout` mode will fall back to [Feather Theme][slide-feather].
* Remastered title page, which enables users to use multi-line text for any item in the title page.
* A totally new thanks page.
* Support with necessary packages like cleveref, subfigure, algorithm and some other tools.

## All options

We list all avaliable options here. The deault state means whether a option is enabled in default.

```latex
\usetheme[...]{SPWLA}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `color` | The palette name of the whole theme, could be `feather`, `navy`, `dark`, `UHECE`, or 'default' (SPWLA).  | - | `default` |
| `progressstyle` | The style of the progress bar displayed on each page, could be `fixedCircCnt` or `movingCircCnt`. | - | `movingCircCnt` |
| `rotationcw` | If specified, will make the progress bar rotation be counter clockwise. | - | False |
| `shownavsym` | If specified, will show the navigation symbols. | - | False |

## Commands

### Change colors individually

Here we show examples for changing the color of each element:

```tex
%-------------------------------------------------------
% INDIVIDUAL COLORS
%-------------------------------------------------------

% The elements of the template can be changed individually. Note that you may
% need to use different colors in beamer / handout mode, when using the following
% methods:

% Change the bar colors:
\setbeamercolor{SPWLA}{fg=NavyBlue!20,bg=NavyBlue}

% Change the color of the structural elements:
\setbeamercolor{structure}{fg=NavyBlue}

% Change the frame title text color:
\setbeamercolor{frametitle}{fg=black!5,bg=NavyBlue}

% Change the normal text colors:
\setbeamercolor{normal text}{fg=black!75,bg=gray!5}

% Change the block title colors
\setbeamercolor{block title}{use=Feather, bg=Feather.bg!20!black, fg=Feather.fg} 
```

### Change the default logo

```tex
% Change the logo in the upper right elipses (progress bar):
\renewcommand{\logofile}{example-grid-164x100pt} 
% This is an image that comes with the LaTeX installation

% Adjust scale of the logo w.r.t. the circle; default is 0.875
\renewcommand{\logoscale}{0.55}
```

### Change images

```tex
% optional, add the second logo to the title page.
\setLogo{SPWLAGraphics/uhlogo}

% optional, add the background image to the final page.
\setFinalImage{SPWLAGraphics/cullen}
```

## Example

| Example slides |
| ----- |
| ![][ex-fig-1] |
| ![][ex-fig-2] |
| ![][ex-fig-3] |

### Examples of modes

**Example 1**

| | mode=`beamer` | mode=`handout` |
| :-------------: | :-------------: | :-------------: |
| color=`default` | ![][ex-ex1-d-bm] | ![][ex-ex1-d-ho] |
| color=`navy`    | ![][ex-ex1-n-bm] | ![][ex-ex1-n-ho] |

**Example 2**

| | mode=`beamer` | mode=`handout` |
| :-------------: | :-------------: | :-------------: |
| color=`default` | ![][ex-ex2-d-bm] | ![][ex-ex2-d-ho] |
| color=`navy`    | ![][ex-ex2-n-bm] | ![][ex-ex2-n-ho] |

## Update report

### 1.0 @ 03/02/2022

1. Support more palettes: feather, navy, dark, UHECE, SPWLA
2. Use an ellipse SPWLA logo to replace the original circle logo.
3. Provide a command for users to replace the final page background.
4. Provide a command for users to add an optional logo.
5. Adjust the cross reference, citation, and the footnote style.
6. Add more extra packages for supporting more features.

1. Upload this sub-project: *UH-Slides-SPWLA*.

[slide-feather]:https://www.overleaf.com/latex/templates/beamer-presentation-template-feather-theme/jcbpcdxqbxbf
[texlive]:https://ctan.org/pkg/texlive
[ex-fig-1]:./display/spwla-1.jpg
[ex-fig-2]:./display/spwla-2.png
[ex-fig-3]:./display/spwla-3.jpg
[ex-ex1-d-bm]:./display/spwla-ex1-d-bm.png
[ex-ex1-d-ho]:./display/spwla-ex1-d-ho.png
[ex-ex1-n-bm]:./display/spwla-ex1-n-bm.png
[ex-ex1-n-ho]:./display/spwla-ex1-n-ho.png
[ex-ex2-d-bm]:./display/spwla-ex2-d-bm.png
[ex-ex2-d-ho]:./display/spwla-ex2-d-ho.png
[ex-ex2-n-bm]:./display/spwla-ex2-n-bm.png
[ex-ex2-n-ho]:./display/spwla-ex2-n-ho.png

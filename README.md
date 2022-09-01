# UH Slides SEG (2022)

## Introduction

This is a presentation (slides) template for both Society of Exploration Geophysicists (SEG) meeting and University of Houston. Note that this is unofficial template and designed by Yuchen Jin, who is a Ph.D student in Dept. ECE.

This template has been tested on [TexLive 2021][texlive], Windows successfully. Some reports show that it may not work with MikTex or MacTex. Please adjust it by yourself if you are using a different platform.

This template is adapted from [**Beamer template for Lund University**][slice-lu]. After the template getting reconstructed, the current version has been **quite different** from the original work. Now this template has such improvements:

* Specially designed for IMAGE 2022 (SEG 2022) meeting. The official PPT version is a very simple template. It is not published, but only provided to speakers.
* Involve the IMAGE 2022 logo. And we support the second logo if you hope to display it.
* Can fall back to the IMAGE 2021 style with an option.
* Support both 4:3 and 16:9 modes. We have provided the title page and thanks page for both versions.
* The title page and the thank page are redesigned based on the hexagon design element from IMAGE 2022.
* Support with necessary packages like `cleveref`, `subfigure`, `algorithm` and some other tools.

## All options

We list all available options here. The default state means whether a option is enabled in default.

```latex
\usetheme[...]{UH-Slides-SEG2022}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `font` | The font family style of the whole theme, could be `serif` (Libertine), `helvet` (Helvetica), `times` (TeX Gyre), `legacy` (Palatino), or `default` (Roboto). | - | `default` |
| `color` | The palette name of the whole theme. Can be `PIERS2021`, `URSI2022`, `URSI2021`, `RASC2022`, `UHECE`, `IMAGE2021`, `IMAGE2022`, or `default` (`IMAGE-2022`). | - | `default` |
| `language` | The default language. It will be passed as the option of  the `babel` package and the `datetime2` package. | - | `american` |
| `style` | The fall back option. Can be `2022` or `2021`. If specified as `2021`, the template will switch to the IMAGE 2021 style. | - | `2022` |
| `showallsubsections`   | If specified, will show all subsections in the sidebar of the Classic template. | `hideothersubsections`, `hideallsubsections` | False |
| `hideothersubsections` | If specified, will hide the subsections of those non-current sections in the sidebar of the Classic template. | `showallsubsections`, `hideallsubsections`   | True  |
| `hideallsubsections`   | If specified, will always hide all subsections in the sidebar of the Classic template. | `showallsubsections`, `hideothersubsections` | False |

## Commands

### Change the default logo

```tex
% optional, set the logo on the title page.
\setTitleLogo[1.8in]{seg-2022-alt.png}
% If not set, we would use seg-202x-alt.png
% The optional argument is the width of the logo. It can be not specified.

% optional, set the logo on each frame.
\setFirstLogo[width=.13\paperwidth]{seg-2022.png}
% If not set, we would use seg-202x.png
% The optional argument will be passed to \includegrapics. It can be not specified.

% optional, set the second logo on each frame. This logo will be on the top of the first one.
\setSecondLogo[width=.13\paperwidth]{seg-2022.png}
% If not set, will be blank
% The optional argument has the same meaning of the previous example.
```

### Change title images

Change the title image with:

```tex
% optional, set the color of the title page.
% If specified the title image, this color will be useless.
\setTitleColor{white}
% Choose between UHRed, UHBlue, UHPink, UHGreen, UHLBlue, UHIvory, SEGNavy, SEGBlue, SEGRed, SEGYellow, IMAGEPrimary, IMAGESecondary, IMAGETertiary, IMAGEQuaternary

\setTitleImage[width=\paperwidth]{title-2022.jpg} % or title-2021.jpg, title-2021-2.jpg
% The optional argument will be passed to \includegraphics. It can be not specified.
```

Change the final (thank page) image with:

```tex
% optional, set the color of the final page.
% If specified the final image, this color will be useless.
\setFinalColor{white}
% Choose between UHRed, UHBlue, UHPink, UHGreen, UHLBlue, UHIvory, SEGNavy, SEGBlue, SEGRed, SEGYellow, IMAGEPrimary, IMAGESecondary, IMAGETertiary, IMAGEQuaternary

\setFinalImage[width=\paperwidth]{cullen.jpg}
% The optional argument will be passed to \includegraphics. It can be not specified.
```

## Example

```tex
\usetheme[showallsubsections]{UH-Slides-SEG2022}
```

| Example slides |
| ----- |
| ![ex1][ex-fig-1] |
| ![ex2][ex-fig-2] |
| ![ex3][ex-fig-3] |

The following results show the alternative styles.

### PIERS-2021 style

```latex
\usetheme[showallsubsections,color={PIERS2021},font={times}]{UH-Slides-SEG2022}
```

| Example slide |
| ----- |
| ![ex-piers][ex-fig-piers] |

### RASC-2022 style

```latex
\usetheme[showallsubsections,color={RASC2022},font={serif}]{UH-Slides-SEG2022}
```

| Example slide |
| ----- |
| ![ex-ursi][ex-fig-ursi] |

### UH-ECE style

```latex
\usetheme[showallsubsections,color={UHECE},font={helvet}]{UH-Slides-SEG2022}
```

| Example slide |
| ----- |
| ![ex-uhece][ex-fig-uhece] |

### Fall back to IMAGE-2021 style

```latex
\usetheme[showallsubsections,style={2021}]{UH-Slides-SEG2022}
```

| Example slides      |
| ------------------- |
| ![ex1][ex-fig-fb-1] |
| ![ex2][ex-fig-fb-2] |
| ![ex3][ex-fig-fb-3] |

### 4:3 Mode

```latex
\documentclass[aspectratio=43,hyperref={implicit=true}]{beamer}
\usetheme[showallsubsections]{UH-Slides-SEG2022}
```

| Example slide 1          | Example slide 2          |
| ------------------------ | ------------------------ |
| ![ex-uhece][ex-fig-sm-1] | ![ex-uhece][ex-fig-sm-2] |

## Update report

### 2022 @ 20220831

1. Add hexagon design elements in the title and final pages.
2. Update the default title logo.
3. Adjust the style of the title page for fixing the misplacement issue of the bounding box.
4. Change the style of the upper right decorating box.
5. Change the style of the foot line.
6. Add more options for customizing the theme.
7. Add more fonts and palettes.
8. Make the sizes of the logos customizable.

### 2021v2 @ 20211110

1. Support more meeting palettes: URSI 2021, PIERS 2021, UHECE.
2. Provide two options font, color. Now the font family and palette are customizable.
3. Make sure the footer font is always sans or mono.
4. Fix an incompatibility problem when using XeLaTeX.

### 2021 @ 20210815

1. Upload this sub-project: *UH-Slides-SEG2021*. This project is modified based on [*UH-Slides-SEG*](https://github.com/cainmagi/UH-beamer-templates/tree/UH-Slides-SEG).
2. Add packages: siunitx, datetime.
3. Change the default language to American.
4. Add anothor title image as a choice.

### 1.0 @ 20190205

1. Upload this sub-project: *UH-Slides-SEG*.

[slice-lu]:https://github.com/mryzmo/lu-beamer
[texlive]:https://ctan.org/pkg/texlive
[ex-fig-1]:./display/uh-seg-1.jpg
[ex-fig-2]:./display/uh-seg-2.png
[ex-fig-3]:./display/uh-seg-3.jpg
[ex-fig-piers]:./display/uh-seg-style-piers.png
[ex-fig-ursi]:./display/uh-seg-style-rasc.png
[ex-fig-uhece]:./display/uh-seg-style-uhece.png
[ex-fig-fb-1]:./display/uh-seg2021-1.jpg
[ex-fig-fb-2]:./display/uh-seg2021-2.png
[ex-fig-fb-3]:./display/uh-seg2021-3.jpg
[ex-fig-sm-1]:./display/uh-seg-small-1.jpg
[ex-fig-sm-2]:./display/uh-seg-small-2.png

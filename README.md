# UH Slides SEG

:warning: This template is not maintained anymore, because it has been already included in the [next version (SEG2022) :package:][git-seg2022-slides]. In other words, the next version is fully compatible with the style of this template. I strongly recommend users to check the SEG2022 version.

## Introduction

This is a presentation (slides) template for both Society of Exploration Geophysicists (SEG) meeting and University of Houston. Note that this is unofficial template and designed by Yuchen Jin, who is a Ph.D student in Dept. ECE.

This template has been tested on [TexLive 2021][texlive], Windows successfully. Some reports show that it may not work with MikTex or MacTex. Please adjust it by yourself if you are using a different platform.

This template is adapted from [**Beamer template for Lund University**][slice-lu]. The appearance is almost the same as the original work. However, this template has such improvements:

* Specially designed for IMAGE 2021 (SEG 2021) meeting. The official version is not published, but only provided to speakers.
* Involve the IMAGE 2021 logo. And we support the second logo if you hope to display it.
* Support both 4:3 and 16:9 modes. We have provided the title page and thanks page for both versions.
* A totally new thanks page.
* Support with necessary packages like cleveref, subfigure, algorithm and some other tools.

## All options

We list all avaliable options here. The deault state means whether a option is enabled in default.

```latex
\usetheme[...]{UH-Slides-SEG}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `font` | The font family style of the whole theme, could be `times` (TeX Gyre), `legacy` (Palatino), or 'default' (Roboto).  | - | `default` |
| `color` | The palette name of the whole theme, could be `PIERS`, `URSI`, `UHECE`, or 'default' (IMAGE-2021).  | - | `default` |

## Example

| Example slides |
| ----- |
| ![ex1][ex-fig-1] |
| ![ex2][ex-fig-2] |
| ![ex3][ex-fig-3] |

The following results show the alternative styles.

### PIERS-2021 style

```latex
\usetheme[color=PIERS,font=times]{UH-Slides-SEG}
```

| Example slide |
| ----- |
| ![ex-piers][ex-fig-piers] |

### URSI-2021 style

```latex
\usetheme[color=URSI,font=default]{UH-Slides-SEG}
```

| Example slide |
| ----- |
| ![ex-ursi][ex-fig-ursi] |

### UH-ECE style

```latex
\usetheme[color=UHECE,font=legacy]{UH-Slides-SEG}
```

| Example slide |
| ----- |
| ![ex-uhece][ex-fig-uhece] |

## Update report

### 2021 (deprecated) @ 20220831

1. Mark this theme as deprecated. I recommend users to check the [next version (SEG2022) :package:][git-seg2022-slides].

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
[ex-fig-ursi]:./display/uh-seg-style-ursi.png
[ex-fig-uhece]:./display/uh-seg-style-uhece.png

[git-seg2022-slides]:https://github.com/cainmagi/UH-beamer-templates/tree/UH-Slides-SEG2022


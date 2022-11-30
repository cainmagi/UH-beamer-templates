# UH Slides Cullen

## Introduction

This is a presentation (slides) template for Cullen Engineering Presentaions at University of Houston. Note that this is unofficial template and designed by Yuchen Jin, who is a Ph.D student in Dept. ECE. However, the style of this template is totally according to the [official PPT templates][slide-cullen]. These official templates can be downloaded here:

* [**Classic** template :package:][slide-cullen-classic]
* [**Red on White with Logo (Colored)** template :package:][slide-cullen-colored]
* [**Standard** template :package:][slide-cullen-standard]

The above 3 templates are implemented as `beamer`, `trans` and `handout` modes of this Beamer Theme respectively. The full theme allows users to switch to any mode with the same `.tex` file. Users can also extract and use the outer theme / inner theme independently.

This template has been tested on [TexLive 2021][texlive], Windows successfully. Some reports show that it may not work with MikTex or MacTex. Please adjust it by yourself if you are using a different platform.

This template is inspired from [**Feather Presentation Template**][slide-feather]. We also copy some codes from the following two official beamer themes:

* [Sidebar Outer Theme :package:][theme-sidebar]
* [Miniframes Outer Theme :package:][theme-miniframes]

All modifications are based on the design of the official Cullen PPT Templates. The appearance is almost the same as that work. However, this template has such improvements:

* This is a fully merged theme, which means all configurations of this template are defined in a single file. Thus you do not need to install it. As long as you put the `.sty` files in your workfolder, you could make use of this template.
* Support both 4:3 and 16:9 modes. We have provided the title page and the final page for all versions.
* Support `beamer`, `trans`, and `handout` modes. The `beamer` mode will render the official Classic style; the `trans` mode will render the official Red-on-white (colored) style; while the `handout` mode will render the Standard style.
* Remastered title page totally designed and inspired by the official Classic PPT template. Our title page enables users to use multi-line text for any item in the title page.
* A totally new thanks page designed and inspired by the official Classic PPT template.
* Support with necessary packages like cleveref, subfigure, algorithm and some other tools.
* Support both pdfLaTeX and XeLaTeX. When using XeLaTeX, some features will be switched to the compatible mode.

## All options

We list all avaliable options here. The deault state means whether a option is enabled in default.

```latex
\usetheme[...]{UHCullen}
```

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `color` | The palette name of the whole theme, could be `forest`, `navy`, `dark`, `IEEE`, `UHRed`, or `default` (`UHCullen`).  | - | `default` |
| `font` | The palette name of the whole theme, could be `serif`, `helvet`, `times`, `kp`, or `default` (`sans`).  | - | `default` |
| `language` | The language which will be passed as an option to the package `babel`. It will influence the style of the date.  | - | `american` |
| `progressstyle` | The style of the progress bar displayed on each page, could be `noNumber`, `none` or `default`. | - | `default` |
| `shownavsym` | If specified, will show the navigation symbols. | - | False |

Options inherited from sidebar outer theme and miniframes outer theme.

| Option | Description | Counter option | Default state |
| -----  |   -----     |      -----     |  -----  |
| `sidebarnone` | If specified, will remove the sidebar (or navigation bar) in Classic or Colored template. | `sidebarleft`, `sidebarright` | False |
| `sidebarleft` | If specified, will put the sidebar on the left side in Classic template, and render the navigation bar in Colored template. | `sidebarnone`, `sidebarright` | False |
| `sidebarright` | If specified, will put the sidebar on the right side in Classic template, and render the navigation bar in Colored template. | `sidebarnone`, `sidebarleft` | True |
| `showallsubsections` | If specified, will show all subsections in the sidebar of the Classic template. | `hideothersubsections`, `hideallsubsections` | False |
| `hideothersubsections` | If specified, will hide the subsections of those non-current sections in the sidebar of the Classic template. | `showallsubsections`, `hideallsubsections` | True |
| `hideallsubsections` | If specified, will always hide all subsections in the sidebar of the Classic template. | `showallsubsections`, `hideothersubsections` | False |

## Commands

### Change colors individually

Here we show examples for changing the color of each element:

```tex
% The elements of the template can be changed individually. Note that you may
% need to use different colors in beamer / handout mode, when using the following
% methods:

% Change the bar colors:
\setbeamercolor{UHCullen}{fg=NavyBlue!10,bg=NavyBlue}
\setbeamercolor{UHBackground}{fg=NavyBlue!8,bg=white}

% Change the color of the structural elements:
\setbeamercolor{structure}{fg=NavyBlue}

% Change the frame title text color:
\setbeamercolor{frametitle}{fg=black!5,bg=NavyBlue}

% Change the normal text colors:
\setbeamercolor{normal text}{fg=black!75,bg=gray!5}

% Change the block title colors
\setbeamercolor{block title}{use=UHCullen, bg=UHCullen.bg!20!black, fg=UHCullen.fg} 
```

### Change the default logo

```tex
% optional, set the logo on the title page.
\setTitleLogo{UHCullenGraphics/logo-cullen-color}

% optional, set the logo on each frame.
\setLogo{UHCullenGraphics/logo-cullen-color}

% optional, set the logo on the final page.
\setFinalLogo{UHCullenGraphics/logo-cullen-long}
```

### Change title images

An example of changing the height of the title figures. This option can be used with the Classic or the Colored template. If used with Colored template, it will influence the height of the title bar.

```tex
% optional, the following options only works in classic / colored mode.
% set the height of the title figures.
\setlength{\titlefigureheight}{0.2\paperheight}
```

An example of using only one image on the title page of the Classic template.

```tex
% optional, the following options only works in classic mode.
% use only one figure on the title page.
\setTitleImageA[width=\paperwidth]{UHCullenGraphics/cullen-1}
\setTitleImageB{}
\setTitleImageC{}
```

An example of using only two images on the title page of the Classic template.

```tex
% use two figures on the title page.
\setTitleImageA[width=0.5\paperwidth]{UHCullenGraphics/cullen-1}
\setTitleImageB[width=0.5\paperwidth]{UHCullenGraphics/cullen-2}
\setTitleImageC{}
```

An example of using three images on the title page of the Classic template.

```tex
% use three figures on the title page.
\setTitleImageA{UHCullenGraphics/cullen-1}
\setTitleImageB{UHCullenGraphics/cullen-2}
\setTitleImageC{UHCullenGraphics/cullen-3}
```

### Change the final image

```tex
% optional, set the background image to the final page, only works in classic mode.
\setFinalImage[height=\paperheight-0.9cm]{UHCullenGraphics/cullen-final}
```

## Example

The example of using the default Classic template (`beamer`) mode:

```tex
\documentclass[10pt,xcolor={dvipsnames},aspectratio=169]{beamer}
\usetheme{UHCullen}
```

| Example slides |
| ----- |
| ![][ex-classic-1] |
| ![][ex-classic-2] |
| ![][ex-classic-3] |

### Examples of using 2 title images, and reducing the heights of figures

```tex
\documentclass[10pt,xcolor={dvipsnames},aspectratio=169]{beamer}
\usetheme{UHCullen}
...
\setlength{\titlefigureheight}{0.2\paperheight}
\setTitleImageA[width=0.5\paperwidth]{UHCullenGraphics/cullen-1}
\setTitleImageB[width=0.5\paperwidth]{UHCullenGraphics/cullen-2}
\setTitleImageC{}
```

| Example slide |
| ----- |
| ![][ex-classic-reduced-1] |

### Examples of transparency mode

The example of using the Colored template (`trans`) mode. Note that the `compress` argument is recommended when using `trans` mode:

```tex
\documentclass[10pt,xcolor={dvipsnames},aspectratio=169,trans,compress]{beamer}
\usetheme{UHCullen}
```

| Example slides |
| ----- |
| ![][ex-trans-1] |
| ![][ex-trans-2] |
| ![][ex-trans-3] |

### Examples of handout mode

The example of using the Standard template (`handout`) mode:

```tex
\documentclass[10pt,xcolor={dvipsnames},aspectratio=169,handout]{beamer}
\usetheme{UHCullen}
```

| Example slides |
| ----- |
| ![][ex-handout-1] |
| ![][ex-handout-2] |
| ![][ex-handout-3] |

### Examples of using a different color of the Classic template:

The color is changed to `navy` and the font is changed to `serif` (Libertine).

```tex
\documentclass[10pt,xcolor={dvipsnames},aspectratio=169]{beamer}
\usetheme[font={serif}, color={navy}]{UHCullen}
```

| Example slides |
| ----- |
| ![][ex-classic-navy-1] |
| ![][ex-classic-navy-2] |
| ![][ex-classic-navy-3] |

### Examples of using a different color of the Colored template:

The color is changed to `forest` and the font is changed to `kpfonts`. The navigation bar and the progress bar are removed.

```tex
\documentclass[10pt,xcolor={dvipsnames},aspectratio=169,trans,compress]{beamer}
\usetheme[font={kp}, color={forest}, progressstyle={none}, sidebarnone]{UHCullen}
```

| Example slides |
| ----- |
| ![][ex-trans-forest-1] |
| ![][ex-trans-forest-2] |
| ![][ex-trans-forest-3] |

### Examples of using 4:3 ratio of the Classic template:

```tex
\documentclass[10pt,xcolor={dvipsnames}]{beamer}
\usetheme{UHCullen}
```

| Example slides |
| ----- |
| ![][ex-classic-43-1] |
| ![][ex-classic-43-2] |
| ![][ex-classic-43-3] |

## Update report

### 1.2.0 @ 11/29/2022

1. Fix bug: The second line of the title uses a different font.
2. Fix bug: Cannot use multi-line title in Simple (handout) inner theme.
3. Fix bug: Wrong package name of the Simple (handout) outer theme.
4. Add feature: enable users to configure the height of the title figures by `\setlength{\titlefigurelength}{...}`.

### 1.1.0 @ 09/01/2022

1. Fix a severe misplacement bug between the main title and the following text on the title page.
2. Add the package `babel` into the default tier. This enables users to specify the option `language`.
3. Fix the page group issue of the used files.

### 1.0.0 @ 04/05/2022

1. Finish the entire UHCullen theme.
2. Redesign the styles of progress bar and the sidebar.
3. Redesign the title and the final pages.
4. Provide commands for customizing images and logos.
5. Provide commands for customizing colors and fonts.
6. Adjust the style of the beamer block boxes.
7. Add more extra packages for supporting more features.
7. Upload this sub-project: *UH-Slides-Cullen*.
8. Add font: `times`. Fix the font type when using `serif` configs.
9. Add color: `IEEE`.

[slide-feather]:https://www.overleaf.com/latex/templates/beamer-presentation-template-feather-theme/jcbpcdxqbxbf
[theme-sidebar]:http://tug.ctan.org/macros/latex/contrib/beamer/base/themes/outer/beamerouterthemesidebar.sty
[theme-miniframes]:http://tug.ctan.org/macros/latex/contrib/beamer/base/themes/outer/beamerouterthememiniframes.sty

[slide-cullen]:https://www.egr.uh.edu/office-communications/resources
[slide-cullen-classic]:https://www.egr.uh.edu/sites/ccoe.egr.uh.edu/files/files/standard_uh_cce_powerpoint_presenation_for_faculty_and_staff.pptx
[slide-cullen-colored]:https://www.egr.uh.edu/sites/ccoe.egr.uh.edu/files/files/option2presentationslide.pptx
[slide-cullen-standard]:https://www.egr.uh.edu/sites/ccoe.egr.uh.edu/files/files/option1presentationslide.pptx

[texlive]:https://ctan.org/pkg/texlive
[ex-classic-1]:./display/classic-1.jpg
[ex-classic-2]:./display/classic-2.jpg
[ex-classic-3]:./display/classic-3.jpg
[ex-classic-reduced-1]:./display/classic-reduced-1.jpg
[ex-trans-1]:./display/trans-1.png
[ex-trans-2]:./display/trans-2.png
[ex-trans-3]:./display/trans-3.png
[ex-handout-1]:./display/handout-1.png
[ex-handout-2]:./display/handout-2.png
[ex-handout-3]:./display/handout-3.png
[ex-classic-navy-1]:./display/classic-navy-1.jpg
[ex-classic-navy-2]:./display/classic-navy-2.jpg
[ex-classic-navy-3]:./display/classic-navy-3.jpg
[ex-trans-forest-1]:./display/trans-forest-1.png
[ex-trans-forest-2]:./display/trans-forest-2.png
[ex-trans-forest-3]:./display/trans-forest-3.png
[ex-classic-43-1]:./display/classic-43-1.jpg
[ex-classic-43-2]:./display/classic-43-2.jpg
[ex-classic-43-3]:./display/classic-43-3.jpg

%% SEG-2021 Poster Theme
%% ---------------------
%% This is the renewed IMAGE (SEG) 2021 Poster template. It is
%% modified from Radboud University corporate style. 
%% See the original work here:
%% https://www.overleaf.com/latex/templates/the-beamer-poster-version-of-the-radboud-university-corporate-style-poster-template/mfddtqfwpspm
%% 
%% Options
%% -------
%% roundedcorners: Whether to use rounded corners.
%% titleposition: position of the title, could be "left" or
%%                "right".
%%
%% Original Readme
%% ---------------
%% This file implements a poster template for the 2014 Radboud 
%% University corporate style. 
%% 
%% For comments, questions, and suggestions contact me at
%% l.onrust@let.ru.nl 
%%
%% You can distribute and edit the files as you wish, but I'd
%% love to hear of any changes. Also, if you let me know that
%% you are using the template, I can keep you up-to-date on
%% future changes.

\ProvidesPackage{beamerSEG2021poster}

\LoadClass[final,hyperref={pdfpagelabels=false}]{beamer}


\newlength{\columnheight}
\setlength{\columnheight}{90cm}

\RequirePackage{ifthen}
\RequirePackage[orientation=landscape,size=custom,width=238.76,height=116.84,scale=2,debug]{beamerposter}
\RequirePackage{tikz}
\usetikzlibrary{shapes.arrows,calc,fadings,shadows}

\RequirePackage{tcolorbox}
\RequirePackage{grffile}
\usepackage[american]{babel}
\RequirePackage{amsmath,amsthm,amssymb,latexsym}
\RequirePackage{array,booktabs,tabularx}
\RequirePackage[rm]{roboto}
\RequirePackage{roboto-mono}
\RequirePackage[italic]{mathastext}
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\RequirePackage{float}
\RequirePackage{subfigure}
\RequirePackage{empheq}
\RequirePackage{nicefrac}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\hypersetup{pdfpagemode=FullScreen}
%\RequirePackage[square, numbers, comma, sort&compress]{natbib}
%\renewcommand{\eqref}[1]{\hyperref[#1]{(\ref*{#1})}}

\RequirePackage{ifpdf,ifxetex}
\ifpdf
  \RequirePackage{graphicx}
  \RequirePackage{epstopdf}
  \graphicspath{{Pics/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.pdf,.jpeg,.png,.jpg}
\else
  \ifxetex
    \RequirePackage{graphicx}
  \else
    \RequirePackage[dvipdfmx]{graphicx}
    \RequirePackage{bmpsize}
  \fi
  \graphicspath{{Pics/},{Pics2/}}
  % and their extensions so you won't have to specify these with
  % every instance of \includegraphics
  \DeclareGraphicsExtensions{.eps,.pdf,.jpeg,.png,.jpg}
\fi

%% -----------------------------------------------------------

\tcbuselibrary{skins,hooks}
\tcbset{colframe=structure,fonttitle=\bfseries,beamer}
\tikzfading[name=fade right,
left color=transparent!0, right color=transparent!100]

\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

\definecolor{IMAGEBlue}{HTML}{005DA3}
\definecolor{IMAGESemiBlue}{HTML}{008DB8}
\definecolor{IMAGESemiGreen}{HTML}{00B288}
\definecolor{IMAGEGreen}{HTML}{98C93C}

\setbeamerfont{title}{family={\rmfamily}, series={\bfseries}}
\setbeamerfont{subtitle}{family={\sffamily}, series={\bfseries}}
\setbeamerfont{block title}{family={\rmfamily}, series={\bfseries}}

\newcommand{\roundedcorners}{false}
\DeclareOptionBeamer{roundedcorners}{\renewcommand{\roundedcorners}{#1}}

\newcommand{\titleposition}{right}
\DeclareOptionBeamer{titleposition}{\renewcommand{\titleposition}{#1}}

\ProcessOptionsBeamer

\mode<presentation>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamercolor{headline}{fg=white}
\setbeamercolor{footline}{fg=white, bg=IMAGEBlue}
\setbeamerfont{footline}{size=\large,series=\bf}
\setbeamercolor{title in headline}{fg=white}
\setbeamercolor{author in headline}{fg=white}
\setbeamercolor{institute in headline}{fg=white}

\setbeamercolor{author in head/foot}{fg=IMAGESemiBlue, bg=black}
\setbeamercolor{title in head/foot}{fg=IMAGESemiBlue, bg=black}

\setbeamerfont{normal text}{size=\fontsize{5cm}{1em},series=\sl}
\setbeamercolor*{normal text}{fg=black, bg=white}
\setbeamercolor*{block body}{bg=white,fg=black}
\setbeamercolor*{block title}{fg=white,bg=IMAGESemiBlue}
\setbeamerfont*{block title}{size=\large,series=\bf}


\setbeamercolor{alerted text}{fg=IMAGESemiGreen}
\setbeamercolor{example text}{fg=IMAGESemiBlue}
\setbeamercolor{structure}{fg=IMAGESemiBlue}

\setbeamertemplate{itemize items}[triangle]
\setbeamertemplate{navigation symbols}{} 
\setbeamertemplate{bibliography item}[text]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbeamertemplate{block begin}{
  \vskip.75ex
  \begin{tcolorbox}[title=\insertblocktitle, shadow={4mm}{-4mm}{0mm}{black!50!white}, enhanced, colback=cyan!5!white, colframe=IMAGEBlue, frame style={left color=IMAGEBlue, right color=IMAGEGreen}, fonttitle=\rmfamily\bfseries, bottomrule=2pt, leftrule=2pt, rightrule=2pt, titlerule=1ex, toprule=1ex, top=1ex, bottom=1ex, left=1ex, right=1ex, arc=0.2ex]
  \centering \vspace{0.5ex}
  \begin{minipage}{0.95\textwidth}
  }
  \setbeamertemplate{block end}{
  \end{minipage}
  \end{tcolorbox}
}

\newcommand{\blocklower}{\end{minipage} \tcblower \centering\begin{minipage}{0.95\textwidth}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setbeamertemplate{headline}{  
  \leavevmode
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, draw=none, left color=IMAGEBlue, right color=IMAGEGreen, anchor=north west, minimum width=\paperwidth-23.95cm, minimum height=12cm] (box) at (current page.north west){};
    \node[anchor=north east, inner sep=0] at (current page.north east) 	{\includegraphics[width=24cm,height=12cm]{logo/image-waveinv}};
  \end{tikzpicture}
  \begin{beamercolorbox}[wd=\paperwidth,ht=12cm]{headline}
    \begin{columns}[T]
      \begin{column}{.01\paperwidth}
      \end{column}
      \begin{column}{.96\paperwidth}
        \vskip4ex
        \raggedright
        \usebeamerfont{title}
        {\ifthenelse{\equal{\titleposition}{right}}{%
        	\raggedleft\usebeamercolor{title in headline}{\color{fg}{\Huge\bfseries\inserttitle\par}}
        }{
          \ifthenelse{\equal{\titleposition}{left}}{%
              \raggedright\usebeamercolor{title in headline}{\color{fg}{\Huge\bfseries\inserttitle\par}}
          }
          {\centering
          \usebeamercolor{title in headline}{\color{fg}{\Huge\bfseries\inserttitle\par}}
          }
        }}
        \usebeamerfont{subtitle}
        \usebeamercolor{author in headline}{\color{fg}{\large\insertauthor\par}}\vspace*{1ex}
        \usebeamercolor{institute in headline}{\color{fg}{\large\insertinstitute\par}}     
      \end{column}
      \begin{column}{.03\paperwidth}
      \end{column}
    \end{columns}
    \vskip2ex
  \end{beamercolorbox}
  \vskip-8em
}

%\tcbset{colframe=structure,fonttitle=\bfseries,beamer}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamertemplate{footline}{
  \leavevmode%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, draw=none, fill=IMAGEGreen, anchor=south west, minimum width=\paperwidth-24.1cm, minimum height=9cm] (box) at ([xshift=24.1cm,yshift=0] current page.south west){};
    \node[anchor=south west, inner sep=0] at (current page.south west) 	{\includegraphics[height=9cm]{logo/image-wave}};
    \node [rectangle, draw=none, left color=IMAGEBlue, right color=IMAGEGreen, anchor=south west, minimum width=\paperwidth-91.51cm, minimum height=9cm] (box) at ([xshift=23.95cm,yshift=0] current page.south west){};
    \node[anchor=south east, inner sep=0] at (current page.south east) 	{\includegraphics[height=9cm]{logo/image-bg}};
    \node [rectangle, draw=none, fill=IMAGEGreen, path fading=fade right, anchor=south east, minimum width=67.56cm, minimum height=9cm] (box) at (current page.south east){};
  \end{tikzpicture}
  \begin{tikzpicture}[remember picture,overlay]
    \node[anchor=south east, inner sep=0.3cm] at (current page.south east) (nodelogouh)	{\includegraphics[height=8.4cm]{logo/logo-uh}};
    \begin{scope}
      \draw[line width=10pt, draw=white] ($(nodelogouh.north west)+(-0.5cm,-1cm)$) -- ($(nodelogouh.south west)+(-0.5cm,+1cm)$);
    \end{scope}
    \node[anchor=south east, inner sep=0.3cm] at ($(nodelogouh.south west)+(-2.0cm,0)$) (nodelogoseg)	{\includegraphics[height=8.4cm]{logo/logo-seg}};
  \end{tikzpicture}
  \vspace{0cm}
}

%\beamertemplategridbackground[5cm]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\mode<all>

% adapt height of imtemize rectangles
\setbeamertemplate{itemize items}[triangle]
\setbeamertemplate{itemize item}{\raisebox{0.12ex}{$\blacktriangleright$}\hskip0.1em}
\setbeamertemplate{itemize subitem}{\raisebox{0.12ex}{$\triangleright$}\hskip0.1em}
% or define your own template using \defbeamertemplate{itemize item}, see beameruserguide.pdf

% equal font sizes for all levels
\setbeamerfont{itemize/enumerate body}{size=\normalsize}
\setbeamerfont{itemize/enumerate subbody}{size=\small}
\setbeamerfont{itemize/enumerate subsubbody}{size=\small}


\makeatletter
\newcommand\beamerboxesframed[2][]{%
  \global\let\beamer@firstlineitemizeunskip=\relax%
  \vbox\bgroup%
  \setkeys{beamerboxes}{upper=block title,lower=block body,width=\textwidth}%
  \setkeys{beamerboxes}{#1}%
  {%
    \usebeamercolor{\bmb@lower}%
    \globalcolorstrue%
    \colorlet{lower.bg}{bg}%
  }%
  {%
    \usebeamercolor{\bmb@upper}%
    \globalcolorstrue%
    \colorlet{upper.bg}{bg}%
  }%
  %
  % Typeset head
  %
  \vskip4bp
  \setbox\bmb@box=\hbox{%
    \begin{minipage}[b]{\bmb@width}%
      \usebeamercolor[fg]{\bmb@upper}%
      #2%
    \end{minipage}}%
  \ifdim\wd\bmb@box=0pt%
    \setbox\bmb@box=\hbox{}%
    \ht\bmb@box=0pt%
    \bmb@prevheight=-4.5pt%
  \else%
    \wd\bmb@box=\bmb@width%
    \bmb@temp=\dp\bmb@box%
    \ifdim\bmb@temp<1.5pt%
      \bmb@temp=1.5pt%
    \fi%
    \setbox\bmb@box=\hbox{\raise\bmb@temp\hbox{\box\bmb@box}}%
    \dp\bmb@box=0pt%
    \bmb@prevheight=\ht\bmb@box%
  \fi%
  \bmb@temp=\bmb@width%
  \bmb@dima=\bmb@temp\advance\bmb@dima by2.2bp%
  \bmb@dimb=\bmb@temp\advance\bmb@dimb by4bp%
  \hbox{%
    \begin{pgfpicture}{0bp}{+-\ht\bmb@box}{0bp}{+-\ht\bmb@box}
      \ifdim\wd\bmb@box=0pt%
        \color{lower.bg}%
      \else%
        \color{upper.bg}%
      \fi%
      \pgfpathqmoveto{-4bp}{-1bp}
      \pgfpathqcurveto{-4bp}{1.2bp}{-2.2bp}{3bp}{0bp}{3bp}
      \pgfpathlineto{\pgfpoint{\bmb@temp}{3bp}}
      \pgfpathcurveto%
      {\pgfpoint{\bmb@dima}{3bp}}%
      {\pgfpoint{\bmb@dimb}{1.2bp}}%
      {\pgfpoint{\bmb@dimb}{-1bp}}%
      \bmb@dima=-\ht\bmb@box%
      \advance\bmb@dima by-2pt%
      \pgfpathlineto{\pgfpoint{\bmb@dimb}{\bmb@dima}}
      \pgfpathlineto{\pgfpoint{-4bp}{\bmb@dima}}
      \pgfpathclose
      \pgfsetstrokecolor{black}\pgfusepath{stroke, fill}
    \end{pgfpicture}%
    \copy\bmb@box%
  }%
  \nointerlineskip%
  \ifdim\wd\bmb@box=0pt
  \else
    \vskip2.4pt%
  \fi%
  \nointerlineskip%
  \setbox\bmb@colorbox=\hbox{{\pgfpicturetrue\pgfsetcolor{lower.bg}}}%
  \setbox\bmb@box=\hbox\bgroup\begin{minipage}[b]{\bmb@width}%
    \vskip2pt%
    \usebeamercolor[fg]{\bmb@lower}%
    \colorlet{beamerstructure}{upper.bg}%
    \colorlet{structure}{upper.bg}%
    %\color{.}%
}


\def\endbeamerboxesframed{%
  \end{minipage}\egroup%
  \wd\bmb@box=\bmb@width%
  \bmb@temp=\dp\bmb@box%
  \advance\bmb@temp by.5pt%
  \setbox\bmb@box=\hbox{\raise\bmb@temp\hbox{\box\bmb@box}}%
  \dp\bmb@box=0pt%
  \bmb@temp=\wd\bmb@box%
  \bmb@dima=\bmb@temp\advance\bmb@dima by2.2bp%
  \bmb@dimb=\bmb@temp\advance\bmb@dimb by4bp%
  \hbox{%
    \begin{pgfpicture}{0bp}{0bp}{0bp}{0bp}
      \unhbox\bmb@colorbox%
      \pgfpathmoveto{\pgfpoint{-4bp}{\ht\bmb@box}}
      \pgfpathlineto{\pgfpoint{-4bp}{1bp}}
      \pgfpathqcurveto{-4bp}{-1.2bp}{-2.2bp}{-3bp}{0bp}{-3bp}
      \pgfpathlineto{\pgfpoint{\the\bmb@temp}{-3bp}}
      \pgfpathcurveto%
      {\pgfpoint{\the\bmb@dima}{-3bp}}%
      {\pgfpoint{\the\bmb@dimb}{-1.2bp}}%
      {\pgfpoint{\the\bmb@dimb}{1bp}}%
      {
      \bmb@dima=\ht\bmb@box%
      \pgfpathlineto{\pgfpoint{\bmb@dimb}{\bmb@dima}}
      \pgfsetstrokecolor{black}\pgfusepath{stroke, fill}
      }
    \end{pgfpicture}%
    \box\bmb@box%
  }%
  \vskip2bp%
  \egroup% of \vbox\bgroup
}
\makeatother


\defbeamertemplateparent{blocks}[framed]{block begin,block end,%
  block alerted begin,block alerted end,%
  block example begin,block example end}[1][]
{[#1]}

\defbeamertemplate{block begin}{framed}[1][]
{
  \par\vskip\medskipamount%
  \begin{beamerboxesframed}[upper=block title,lower=block body,#1]%
    {\raggedright\usebeamerfont*{block title}\insertblocktitle}%
    \raggedright%
    \usebeamerfont{block body}%
}
\defbeamertemplate{block end}{framed}[1][]
{\end{beamerboxesframed}\vskip\smallskipamount}

\defbeamertemplate{block alerted begin}{framed}[1][]
{
  \par\vskip\medskipamount%
  \begin{beamerboxesframed}[upper=block title alerted,lower=block body alerted,#1]%
    {\raggedright\usebeamerfont*{block title alerted}\insertblocktitle}%
    \raggedright%
    \usebeamerfont{block body alerted}%
}%
\defbeamertemplate{block alerted end}{framed}[1][]
{\end{beamerboxesframed}\vskip\smallskipamount}

\defbeamertemplate{block example begin}{framed}[1][]
{
  \par\vskip\medskipamount%
  \begin{beamerboxesframed}[upper=block title example,lower=block body example,#1]
    {\raggedright\usebeamerfont*{block title example}\insertblocktitle}%
    \raggedright%
    \usebeamerfont{block body alerted}%
}%
\defbeamertemplate{block example end}{framed}[1][]
{\end{beamerboxesframed}\vskip\smallskipamount}
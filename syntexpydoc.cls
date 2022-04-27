%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%		2022 (c) ponte-vecchio
%       zkogdxdkur (at) p (dot) monash (dot) edu
%       
%       Class file for formatting SynTeX.py documentation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{syntexpydoc}
\def\baseclass{book}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\baseclass}}
\def\@checkoptions#1#2{
	\edef\@curroptions{\@ptionlist{\@currname.\@currext}}
	\@tempswafalse
	\@tfor\@this:=#2\do{
		\@expandtwoargs\in@{,\@this,}{,\@curroptions,}
		\ifin@ \@tempswatrue \@break@tfor \fi}
	\let\@this\@empty
	\if@tempswa \else \PassOptionsToClass{#1}{\baseclass}\fi
}
\@checkoptions{12pt}{{10pt}{10.5pt}{11pt}{12pt}}
\PassOptionsToClass{a4paper}{\baseclass}
\ProcessOptions\relax
\LoadClass{\baseclass}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Page & Margin Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{setspace}
% \onehalfspacing
\setlength{\parindent}{2ex}
\setlength{\parskip}{2.0ex plus0.5ex minus0.2ex}
\usepackage{vmargin}
\setmarginsrb	{0.787in}  % left margin
				{  0.6in}  % top margin
				{0.787in}  % right margin
				{  0.8in}  % bottom margin
				{   20pt}  % head height
				{ 0.25in}  % head sep
				{    9pt}  % foot height
				{  0.3in}  % foot sep
\raggedbottom
\setlength{\topskip}{1\topskip \@plus 5\p@}
\doublehyphendemerits=10000
\brokenpenalty=10000
\widowpenalty=9999
\clubpenalty=9999
\interfootnotelinepenalty=9999
\def\today{\ifcase\month\or
	January\or February\or March\or April\or May\or June\or
	July\or August\or September\or October\or November\or December\fi
	\space \number\year}
\usepackage{xcolor}
\definecolor{maraschino}{HTML}{FF0000}
\definecolor{royalpink}{HTML}{C62F7C}
\usepackage[%
    pdfpagemode={UseOutlines},
    hypertexnames=false,
    colorlinks=true,
    linkcolor={maraschino},
    citecolor={operator},
    urlcolor={royalpink},
    pdfstartview={FitV},
    unicode,
    breaklinks=true
]{hyperref}
\urlstyle{tt}
\usepackage[centerlast,labelfont=bf]{caption}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Section Title Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{titlesec}
\titleformat{\chapter}{\bf\huge}{\thechapter}{15pt}{\bf\huge}
\titlespacing{\chapter}{0pt}{35pt}{\baselineskip}
\titleformat{\section}{\bfseries\Large}{\thesection}{15pt}{\bfseries\Large}
\titlespacing{\section}{0pt}{35pt}{\baselineskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Header Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fancyhdr}
\lhead[\rm\thepage]{\fancyplain{}{\rightmark}}
\rhead[\fancyplain{}{\sl{\leftmark}}]{\rm\thepage}
\chead{}
\cfoot{}
\lfoot{}
\rfoot{}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\typeout{\thechapter\space: #1}\markboth{{\bf\@chapapp\ \thechapter}~~\slshape#1}{{\bf\@chapapp\ \thechapter}~~\slshape#1}}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\subsectionmark}[1]{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Package Imports and Macros thereof
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{pgfplots} % Foreach
\pgfplotsset{compat=1.18} % Shuts up the warning
\usepackage{fontawesome5} % Python icons
\definecolor{lapislazuli}{HTML}{306998} % Python Deep Blue
\definecolor{sunglow}{HTML}{FFD43B} % Python Deep Yellow
\def\pylong{\faPython~\faPython~\faPython~\faPython~\faPython~\faPython}
\def\SynTeXpy{\textcolor{lapislazuli}{Syn}\textcolor{sunglow}{\TeX}.\textcolor{royalpink}{py}}
\usepackage[
    mono = true,
    serif = true,
    sans = true,
	RMstyle = Light,
    TT={Scale=MatchLowercase}
]{plex-otf} %
% \usepackage{polyglossia} % Hyphenation
\usepackage{babel}
\usepackage{microtype} % Microtypesetting
\usepackage{imakeidx} % Indexes
%% End of syntexpydoc.cls 
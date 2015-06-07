% =========================================================================
%  PhD thesis template for pdflatex
%   First version by Atsushi Koike on Mar. 26 2015
%
%    This file specifies the following:
%        - Font
%        - Appearance of Text (Hyphenation and Letter-spacing)
%        - Page Layout
%        - Theorem Environments
%        - Header and Footer
%        - Chapter Header
%        - Table of Contents
%        - Clickable PDF
%        - Title Page and PDF-title
%
%    NOTE:
%        - Don't use TeX+DVI (dvipdfm), or microtype doesn't work.
%
% =========================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sokendai_thesis}[2015/05/03 v1.2]
\LoadClass[12pt,a4paper,twoside]{book}


% =====================================================
%  Packages
% =====================================================

\usepackage{amsmath}
\usepackage{latexsym}
\usepackage{ascmac}
\usepackage{graphicx}

% Pseudo codes
%\usepackage[ruled,vlined,linesnumbered]{algorithm2e}
\usepackage[chapter]{algorithm}
\usepackage{algpseudocode}
\renewcommand{\thealgorithm}{\arabic{chapter}.\arabic{algorithm}} 

% Dummy text (for testing)
%\usepackage{lipsum}
\usepackage{blindtext}
%\usepackage{kantlipsum}


% =====================================================
%  Font
% =====================================================

% Support Japanese Text
\usepackage[utf8]{inputenc}
\usepackage[whole]{bxcjkjatype}
%\usepackage[whole,ipaex]{bxcjkjatype}


\usepackage[T1]{fontenc}

% ------------------------------------------------------
%  Choose one line of the following
% ------------------------------------------------------

%\usepackage{mathptmx} % standard font
%\usepackage{stix}
\usepackage{libertine} \usepackage[libertine]{newtxmath}
%\usepackage{newtxtext,newtxmath}
%\usepackage{mathpazo}
%\usepackage{kpfonts}
%\usepackage{txfonts}
%\usepackage{lmodern}


% =====================================================
%  Appearance of Text (Hyphenation and Letter-spacing)
% =====================================================

\usepackage[final, stretch=30, shrink=60]{microtype}


% =====================================================
%  Page Layout
% =====================================================

\usepackage{setspace}
\onehalfspacing % one and half space
%\doublespacing % double space
%\renewcommand{\baselinestretch}{1.2}

\usepackage[hmarginratio=1:1]{geometry}


% =====================================================
%  Theorem Environments
% =====================================================

\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{lemma}[theorem]{Lemma}
\newcommand{\sq}{\hbox{\rlap{$\sqcap$}$\sqcup$}}
\newcommand{\qed}{\hspace*{\fill}\sq}
\newenvironment{proof}{\noindent {\bf Proof.}\ }{\qed\par\vskip 4mm\par}
\newtheorem{define}[theorem]{Definition}
\newtheorem{problem}[theorem]{Problem}


% =====================================================
%  Header and Footer
% =====================================================

\usepackage{fancyhdr}
\addtolength{\headheight}{\baselineskip}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername\ \thechapter.\ #1}{}} % corresponding to \rightmark
\renewcommand{\sectionmark}[1]{\markright{\thesection\ \ #1}{}} % corresponding to \leftmark
\fancyhf{} % clear all header and footer fields
\fancyhead[LE,RO]{\bfseries \thepage} % left field of even pages and right field of odd pages
\fancyhead[LO]{\bfseries \nouppercase \rightmark} % left field of odd pages
\fancyhead[RE]{\bfseries \nouppercase \leftmark} % right field of even pages
\fancypagestyle{plain}{%
  \fancyhf{} % get rid of header and footer fields
  \renewcommand{\headrulewidth}{0pt} % get rid of the line
  \fancyhead[LE,RO]{\bfseries \thepage} % left field of even pages and right field of odd pages
}

% Get rid of page numbers on empty pages before chapters
\makeatletter
\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
	\hbox{}
	\thispagestyle{empty}
	\newpage
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother


% =====================================================
%  Chapter Header
% =====================================================

%Options: Sonny, Lenny, Glenn, Conny, Rejne, Bjarne, Bjornstrup
%\usepackage[Lenny]{fncychap}

% Options: 
\usepackage[palatino]{quotchap}

% =====================================================
%  Table of Contents
% =====================================================

% Go along with these packages
\usepackage[nottoc]{tocbibind}
\usepackage[title,titletoc]{appendix}


% =====================================================
%  Clickable PDF
% =====================================================

\usepackage{color}
\definecolor{redorange}{cmyk}{ 0, 0.77, 0.87, 0} 
\definecolor{forest}{cmyk}{ 0.91, 0, 0.88, 0.12} 
\definecolor{steelblue}{cmyk}{ 0.61, 0.28, 0, 0.29}
\usepackage{hyperref}
\hypersetup{
  unicode,
  bookmarks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  linktocpage,
  colorlinks=true,
  citecolor=forest,
  linkcolor=redorange,
  urlcolor=steelblue,
  setpagesize=false
}
\urlstyle{same}

% PDF-title and PDF-author are set in "maketitle" (using \hypersetup)


% =====================================================
%  Title Page and PDF-title
% =====================================================

\makeatletter % make @ symbol a letter (usually one cannot use @ as a letter)

\newcommand{\@crest}{}
\newcommand{\crest}[1]{\renewcommand{\@crest}{\includegraphics[pagebox=trimbox,width=0.5\textwidth]{#1}}}

\newcommand{\@keywords}{}
\newcommand{\keywords}[1]{\renewcommand{\@keywords}{#1}}


% ------------------------------------------------------
%  New maketitle
% ------------------------------------------------------

\renewcommand{\maketitle}{

\begin{spacing}{2}
\centering
{\Huge \bfseries \@title}
\par
{\large by}
\par
{\Large \bfseries \@author}
\par
\vskip 3em
{\Large \bfseries Dissertation}
\end{spacing}

\begin{spacing}{1.5}
\centering
\large
submitted to the Department of Informatics
\par
in partial fulfillment of the requirements for the degree of
\par
\end{spacing}

\vskip 2em

\begin{center}
{\Large \bfseries \textit{Doctor of Philosophy}}
\par
\end{center}

\vfill

\begin{center}
\@crest
\par
\end{center}

\begin{spacing}{2}
\centering
{\large SOKENDAI (The Graduate University for Advanced Studies)}
\par
{\large \@date}
\par
\end{spacing}

\thispagestyle{empty}

% PDF title
\hypersetup{
 pdftitle={\@title},
 pdfauthor={\@author},
 pdfsubject={PhD Thesis},
 pdfkeywords={\@keywords}
}

}

\makeatother



% =====================================================
%  TODO notes for draft version
% =====================================================

\makeatletter
\DeclareOption{todo}{\newcommand{\@displaytodo}{1}}
\ProcessOptions
\ifx\@displaytodo\undefined
\usepackage[disable]{todonotes}
\else
\usepackage[draft,textwidth=2.7cm]{todonotes}
\setlength{\marginparwidth}{2.7cm}
\fi
\makeatother

\newcounter{todoListItems}
\newcommand{\mytodo}[2][]
{\addtocounter{todoListItems}{1}
\todo[size=\footnotesize, color=green!40, caption={\protect\hypertarget{todo\thetodoListItems}{}\thesection: #2}, #1]
{\hyperlink{todo\thetodoListItems}{#2} }}


%
% How to use todo notes
%    - Final version
%        - \documentclass{sokendai_thesis}
%        - Todo notes are not printed
%    - Draft version
%        - \documentclass[todo]{sokendai_thesis}
%        - Todo notes are printed using the following command
%            - \mytodo[inline]{This is a inline todo note} 
%            - \mytodo{This is a todo note at margin}
%






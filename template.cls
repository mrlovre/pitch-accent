\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grampig}

\LoadClass[12pt]{article}
\usepackage[CJKspace=true]{xeCJK}
\usepackage{fontspec}

\usepackage{booktabs}
\usepackage{tabularx}
\usepackage{ruby}
\usepackage{tikz}
\usepackage{amsmath}
\usepackage{pbox}

\usepackage[croatian]{babel}
\usepackage{indentfirst}
\usepackage[a4paper, margin=2cm]{geometry}
\usepackage{enumitem}
\usepackage[defaultlines=4, all]{nowidow}
\usepackage{setspace}
\usepackage{microtype}
\usepackage{multicol}
\usepackage{makecell}
\usepackage{titlesec}

\newcommand{\sectionbreak}{\clearpage}

\setlist[itemize]{wide, itemsep=0.0em, topsep=0.0em, parsep=0.0em, labelwidth=!, labelindent=0.5ex, leftmargin=1ex}
\setlist[enumerate]{wide, itemsep=0.0em, topsep=0.0em, parsep=0.0em, labelwidth=!, labelindent=0.5ex, leftmargin=1ex}

\setlength{\tabcolsep}{0.5ex}
\setlength{\multicolsep}{0.0em}

\setCJKmainfont{Source Han Serif JP}
\setCJKsansfont{Source Han Sans JP}
\setmainfont[Numbers={Lining, Monospaced}]{Source Serif Pro}
\renewcommand{\rubysep}{-0.5ex}
\renewcommand{\rubysize}{0.5}
\renewcommand{\arraystretch}{1.25}

\newcommand{\pitch}[1]{\raisebox{-\dp\strutbox}{
\begin{tikzpicture}[
		every node/.style={inner sep=0.0, outer sep=0.0},
		dot/.style={draw, fill, circle, minimum size=0.5ex}
		]
	\foreach[count=\i from 1] \x/\p in {#1} 
	\draw node (P\i) at (\i * 1.1em, 0) {\x\strut} node[dot, anchor=base] (C\i) at (\i * 1.1em, \p * 0.4em + 0.8em) {};
	
	\foreach[count=\i from 1, evaluate=\i as \j using int(\i - 1)] \x/\p in {#1}
	\ifnum \j>0
	\draw ({C\i}.center) -- ({C\j}.center)
	\fi;
\end{tikzpicture}}
}

\newcommand{\e}{\textbf}
\newcommand{\m}[1]{\kern -0.3em{#1}}
\newcommand{\bh}{\\[-0.4em]}
\newcommand{\br}{\\[1em]}
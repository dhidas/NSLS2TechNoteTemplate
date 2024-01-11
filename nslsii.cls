\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nslsii}
\LoadClass[letter]{article}

\usepackage[letterpaper,bindingoffset=0.0in,%
            left=1in,right=1in,top=1in,bottom=1in,%
            footskip=.25in]{geometry}


\def\changemargin#1#2{\list{}{\rightmargin#2\leftmargin#1}\item[]}
\let\endchangemargin=\endlist 

\def\notenumber#1{\def\@notenumber{#1}}

\renewcommand\maketitle{\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\def\@maketitle{%
  \newpage
  \null
  \begin{center}%
  \let \footnote \thanks
  \begin{changemargin}{0.0cm}{0.0cm}
  \vspace*{-0.4in}
  \hspace*{-0.36in}
  \begin{tabular}{| p{0.62\paperwidth} | p{0.18\paperwidth} |}
    \hline
    \parbox{\linewidth}{
      \vspace*{0.15cm}
      \centering
      {\bf \large NSLS II TECHNICAL NOTE}\\
      BROOKHAVEN NATIONAL LABORATORY
      \vspace*{0.15cm}
    }
    & \begin{tabular}{l}{\sc number:}\\ {\sc \@notenumber}\end{tabular}\\
    \hline
    \parbox{\linewidth}{
      \vspace*{0.15cm}
      {\sc authors}:
      \vspace*{-0.2cm}
      {\bf \begin{center}\@author \end{center}}
    }
    & \parbox{\linewidth}{
      \vspace*{0.15cm}
      {\sc date}:
      \vspace*{-0.2cm}
      \begin{center}
        \today
      \end{center}
    } \\
    \hline
    \multicolumn{2}{|l|}{
      \parbox{\linewidth}{
        \vspace*{0.15cm}
        {\sc title}:
        \begin{center}
          {\bf \large \@title}
        \end{center}
        \vspace*{0.15cm}
      }
    }\\
    \hline
  \end{tabular}
  \end{changemargin}
  \end{center}
  \par
  \vskip 1.5em}





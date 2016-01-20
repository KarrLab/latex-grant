\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{grants}[2016/01/12 grants class]

\newcommand{\fntsiz}{11pt}
\DeclareOption{10pt}{\renewcommand{\fntsiz}{10pt}}
\DeclareOption{11pt}{\renewcommand{\fntsiz}{11pt}}
\DeclareOption{12pt}{\renewcommand{\fntsiz}{12pt}}

\ProcessOptions
\LoadClass[\fntsiz,oneside]{book}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%draft
\usepackage{etoolbox}
\newbool{isdraft}
\boolfalse{isdraft}

\if@compatibility\else
\DeclareOption{isdraft}
    {\booltrue{isdraft}}
\DeclareOption{isnotdraft}
    {\boolfalse{isdraft}}
\fi
\ExecuteOptions{draft}
\ProcessOptions

%font
\usepackage[english]{babel}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{uarial}
\renewcommand{\familydefault}{\sfdefault}

%underline
\usepackage[normalem]{ulem}
\usepackage{soul}

%spacing
\usepackage{setspace}
\singlespacing

%margins
\usepackage[paperwidth=8.5in, paperheight=11in, margin=1in, footskip=20pt]{geometry}

%paragraph spacing
\setlength{\parindent}{0in}
\setlength{\parskip}{6pt}

%section style
\setcounter{secnumdepth}{5}
\usepackage[compact,explicit]{titlesec}
\titleformat{\chapter}[hang]{\large\bfseries}{}{0pt}{\large\uppercase{#1}}[]
\titleformat{\section}[hang]{\bfseries}{\uline{\thesection.~}}{0ex}{\uline{#1}}[]
\titleformat{\subsection}[runin]{\bfseries}{\thesubsection.~}{0ex}{#1}[]
\titleformat{\subsubsection}[runin]{}{\uline{\thesubsubsection.~}}{0ex}{\uline{#1}}[.]
\titleformat{\paragraph}[runin]{\itshape}{\theparagraph.~}{0ex}{#1}[.]
\titleformat{\subparagraph}[runin]{}{}{0ex}{\uline{#1}}[:]

\titlespacing*{\chapter}{0pt}{-3.5ex}{*-1}
\titlespacing*{\section}{0pt}{*0.0}{*-1}
\titlespacing*{\subsection}{0pt}{*0.0}{*0.5}
\titlespacing*{\subsubsection}{0pt}{*0.0}{*0.5}
\titlespacing*{\paragraph}{0pt}{*0}{*0.5}
\titlespacing*{\subparagraph}{0pt}{*0}{*0.5}

\renewcommand*\thesection{\arabic{section}}
\renewcommand*\thesubsection{\Alph{subsection}}
\renewcommand*\thesubsubsection{\roman{subsubsection}}
\renewcommand*\theparagraph{\arabic{paragraph}}

\makeatletter
\newcommand{\chapternotitle}[1]{%
  \begingroup
  \let\@makechapterhead\@gobble % make \@makechapterhead do nothing
  \chapter{#1}
  \endgroup
}
\makeatother

\newcommand{\sectionnonum}[2][section]{%
\phantomsection%
\addcontentsline{toc}{#1}{#2}%
\section*{#2}%
}
\newcommand{\subsectionnonum}[2][subsection]{%
\phantomsection%
\addcontentsline{toc}{#1}{#2}%
\subsection*{#2}%
}
\newcommand{\subsubsectionnonum}[2][subsubsection]{%
\phantomsection%
\addcontentsline{toc}{#1}{#2}%
\subsubsection*{#2}%
}

%page numbering
\usepackage[auto]{chappg}

%header/footer
\usepackage{fancyhdr}
\pagestyle{fancy}
\assignpagestyle{\chapter}{fancy}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancyhf{}
\ifbool{isdraft}{
    \lfoot{\small\leftmark}
    \rfoot{\small\thepage}
}{}

%lists
\usepackage{paralist}
\usepackage{enumitem}
\setlist[itemize]{topsep=0pt, partopsep=0ex, parsep=0ex, itemsep=0ex, leftmargin=1em}
\setlist[enumerate]{topsep=0pt, partopsep=0ex, parsep=0ex, itemsep=0ex, leftmargin=1.3em}

%bibliography
%\usepackage[super,compress, numbers]{natbib}
\usepackage[backend=bibtex8,style=nature,citestyle=numeric-comp,sorting=none,maxbibnames=30,minbibnames=30,autocite=superscript,firstinits=true,terseinits=true]{biblatex}
\let\cite=\autocite
\renewbibmacro*{name:last-first}[4]{%
  \ifuseprefix
    {%
      \usebibmacro{name:delim}{#3#1}%
       \usebibmacro{name:hook}{#3#1}%
       \ifblank{#3}{}
         {%
           \ifcapital
             {\mkbibnameprefix{\MakeCapital{#3}}\isdot}
	         {\mkbibnameprefix{#3}\isdot}%
           \ifpunctmark{'}{}{\addhighpenspace}%
         }%
       \mkbibnamelast{#1}\isdot
       \ifblank{#2}
         {}{\addlowpenspace\mkbibnamefirst{#2}}%
       \ifblank{#4}{}{\addlowpenspace\mkbibnameaffix{#4}\isdot}%
    }
    {%
      \usebibmacro{name:delim}{#1}%
      \usebibmacro{name:hook}{#1}%
      \mkbibnamelast{#1}\isdot
      \ifblank{#2#3}{}{\addcomma}%
      \ifblank{#2}{}{\addlowpenspace\mkbibnamefirst{#2}\isdot}%
      \ifblank{#3}{}{\addlowpenspace\mkbibnameprefix{#3}\isdot}%
      \ifblank{#4}{}{\addlowpenspace\mkbibnameaffix{#4}\isdot}%
    }%
}
\setlength{\bibitemsep}{0pt}
\setlength{\biblabelsep}{4pt}

%images
\usepackage{graphicx}
\DeclareGraphicsExtensions{%
    .pdf,.PDF,%
    .png,.PNG,%    
    .jpg,.jpeg}

%captions
\usepackage[font=footnotesize,labelfont=bf,singlelinecheck=false,labelsep=period, skip=2pt]{caption}

%urls
\usepackage[bookmarksdepth=3, breaklinks=true]{hyperref}
\ifbool{isdraft}{
    \hypersetup{draft=false}
}{
    \hypersetup{bookmarksdepth=0, draft=true}
}

%tables
\usepackage{tabularx}
\usepackage{longtable}
\usepackage{ltxtable}

%table, figure numbering
\renewcommand{\figurename}{Fig.}
\renewcommand{\tablename}{Tab.}
\addto\captionsenglish{\renewcommand{\figurename}{Fig.}}
\addto\captionsenglish{\renewcommand{\tablename}{Tab.}}
\renewcommand*\thefigure{\arabic{figure}}
\renewcommand*\thetable{\arabic{table}}

%FloatBarrier
\usepackage{placeins}

%insert pdf pages
\usepackage{pdfpages}

%line numbers
\usepackage{lineno}

\setlength{\textfloatsep}{6.0pt plus 0.6pt minus 1.2pt}

\usepackage{tabularx}
\usepackage{booktabs}
\usepackage{wrapfig}

\usepackage{amsmath}
\usepackage{csquotes}

%comments
\usepackage[author={}, color=yellow]{pdfcomment}

%citations
\newcommand{\dontcite}[1]{}

%multiple columns
\usepackage{multicol}

%%%%%%%%%%%%%%%%%%%%
%% Cover page
%%%%%%%%%%%%%%%%%%%%
\newcommand{\FundingAgency}{}
\newcommand{\FundingId}{}
\newcommand{\FundingTitle}{}
\newcommand{\FundingUrl}{}
\newcommand{\FundingDeadline}{}

\newcommand{\ProposalTitle}{}

\newcommand{\PiName}{}
\newcommand{\PiTitle}{}
\newcommand{\PiDepartment}{}
\newcommand{\PiInstitution}{}
\newcommand{\PiAddress}{}
\newcommand{\PiUrl}{}
\newcommand{\PiEmail}{}
\newcommand{\PiPhone}{}

\newcommand{\PoName}{}
\newcommand{\PoAddress}{}
\newcommand{\PoEmail}{}
\newcommand{\PoPhone}{}

\newcommand{\makecoverpage}{
    {\LARGE\bfseries
    
    \ProposalTitle    
    
    }
    \vskip1ex
    \uline{Funding opportunity}
    \\\FundingAgency
    \\{\FundingTitle} (\href{\FundingUrl}{\FundingId})
    \\\FundingDeadline

    \uline{Applicant}
    \\\PiName
    \\\PiTitle
    \\\PiDepartment
    \\\PiInstitution
    \\\PiAddress
    \\\href{http://\PiUrl}{\PiUrl}
    \\\href{mailto:\PiEmail}{\PiEmail}
    \\\PiPhone

    \uline{Program officer}
    \\\PoName
    \\\PoAddress
    \\\href{mailto:\PoEmail}{\PoEmail}
    \\\PoPhone
}





\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{darpa}[2016/01/12 DARPA class]

\newcommand{\draftstatus}{isnotdraft}
\DeclareOption{isdraft}{\renewcommand{\draftstatus}{isdraft}}
\DeclareOption{isnotdraft}{\renewcommand{\draftstatus}{isnotdraft}}
\ExecuteOptions{isdraft, isnotdraft}
\ProcessOptions

\ProcessOptions
\LoadClass[12pt,\draftstatus]{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=1in}

%font
\usepackage{times}
\renewcommand{\familydefault}{\rmdefault}

%paragraph skip
\setlength{\parskip}{4pt}

%references
\ExecuteBibliographyOptions{maxbibnames=1,minbibnames=1}
\DeclareFieldFormat[article]{title}{}
\DeclareFieldFormat[article]{pages}{}
\DeclareFieldFormat[article]{volume}{}
\DeclareFieldFormat[article]{number}{}
\DeclareFieldFormat[online]{url}{}
\DeclareFieldFormat[online]{urldate}{}

\renewbibmacro*{issue+date}{%
  \iffieldundef{year}
    {}
    {%
      \iffieldundef{issue}
        {\printtext[]{\usebibmacro{date}}}
        {%
          \printtext[parens]{%
            \printfield{issue}%
            \setunit*{\addspace}%
            \usebibmacro{date}%
          }%
        }%
    }%
  \newunit  
}
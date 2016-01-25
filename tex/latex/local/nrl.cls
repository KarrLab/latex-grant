\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nrl}[2016/01/19 NRL class]

\newcommand{\draftstatus}{isnotdraft}
\DeclareOption{isdraft}{\renewcommand{\draftstatus}{isdraft}}
\DeclareOption{isnotdraft}{\renewcommand{\draftstatus}{isnotdraft}}

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
\DeclareFieldFormat[online]{url}{}
\DeclareFieldFormat[online]{urldate}{}
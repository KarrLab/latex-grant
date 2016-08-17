\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nih}[2016/01/12 NIH class]

\newcommand{\draftstatus}{isnotdraft}
\DeclareOption{isdraft}{\renewcommand{\draftstatus}{isdraft}}
\DeclareOption{isnotdraft}{\renewcommand{\draftstatus}{isnotdraft}}

\newcommand{\sectioncompactstatus}{isnotsectioncompact}
\DeclareOption{issectioncompact}{\renewcommand{\sectioncompactstatus}{issectioncompact}}
\DeclareOption{isnotsectioncompact}{\renewcommand{\sectioncompactstatus}{isnotsectioncompact}}

\newcommand{\bibcompactstatus}{isnotbibcompact}
\DeclareOption{isbibcompact}{\renewcommand{\bibcompactstatus}{isbibcompact}}
\DeclareOption{isnotbibcompact}{\renewcommand{\bibcompactstatus}{isnotbibcompact}}

\ExecuteOptions{isdraft, isnotdraft, issectioncompact, isnotsectioncompact, isbibcompact, isnotbibcompact}
\ProcessOptions

\LoadClass[\draftstatus, \sectioncompactstatus, \bibcompactstatus]{grant}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=0.5in}
\setlength{\parskip}{4pt}
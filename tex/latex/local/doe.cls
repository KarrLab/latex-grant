\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{doe}[2016/01/12 DOE class]

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

\LoadClass[\draftstatus, \sectioncompactstatus, \bibcompactstatus]{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=1in}
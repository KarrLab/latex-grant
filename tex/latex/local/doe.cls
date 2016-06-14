\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{doe}[2016/01/12 DOE class]

\newcommand{\draftstatus}{isnotdraft}
\DeclareOption{isdraft}{\renewcommand{\draftstatus}{isdraft}}
\DeclareOption{isnotdraft}{\renewcommand{\draftstatus}{isnotdraft}}
\ExecuteOptions{isdraft, isnotdraft}
\ProcessOptions

\ProcessOptions
\LoadClass[\draftstatus]{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=1in}

%references
\ExecuteBibliographyOptions{maxbibnames=1,minbibnames=1}
\DeclareFieldFormat[article]{title}{}
\DeclareFieldFormat[article]{pages}{}
\DeclareFieldFormat[online]{url}{}
\DeclareFieldFormat[online]{urldate}{}
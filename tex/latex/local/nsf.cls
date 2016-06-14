\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nsf}[2016/01/12 NSF class]

\newcommand{\draftstatus}{isnotdraft}
\DeclareOption{isdraft}{\renewcommand{\draftstatus}{isdraft}}
\DeclareOption{isnotdraft}{\renewcommand{\draftstatus}{isnotdraft}}
\ExecuteOptions{isdraft, isnotdraft}
\ProcessOptions

\ProcessOptions
\LoadClass[\draftstatus, 10pt]{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=1in}

%hyperlinking
\hypersetup{bookmarksdepth=3, draft=false}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nih}[2016/01/12 NIH class]

\newcommand{\draftstatus}{isnotdraft}
\DeclareOption{isdraft}{\renewcommand{\draftstatus}{isdraft}}
\DeclareOption{isnotdraft}{\renewcommand{\draftstatus}{isnotdraft}}

\ProcessOptions
\LoadClass[\draftstatus]{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=0.5in}
\setlength{\parskip}{4pt}
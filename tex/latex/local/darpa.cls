\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{darpa}[2016/01/12 DARPA class]

\ProcessOptions
\LoadClass[12pt]{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=1in}

%font
\usepackage{times}
\renewcommand{\familydefault}{\rmdefault}

%references
\ExecuteBibliographyOptions{maxbibnames=1,minbibnames=1}
\AtEveryBibitem{\clearfield{title}}
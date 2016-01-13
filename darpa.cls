\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{darpa}[2016/01/12 DARPA class]

\ProcessOptions
\LoadClass{grants}

%%%%%%%%%%%%%%%%%%%%%%
%% formatting
%%%%%%%%%%%%%%%%%%%%%%

%geometry
\geometry{margin=1in}

%font
\usepackage{lmodern}
\renewcommand{\familydefault}{\rmdefault}

%font size
\fontsize{12pt}{14.4pt}

%references
\ExecuteBibliographyOptions{maxbibnames=1,minbibnames=1}
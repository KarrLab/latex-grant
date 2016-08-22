[![CTAN package](https://img.shields.io/badge/ctan-latest-orange.svg)](https://www.ctan.org/pkg/grant)
[![Documentation](https://readthedocs.org/projects/gdoc-down/badge/?version=latest)](https://github.com/KarrLab/latex-grant)
[![License](https://img.shields.io/github/license/KarrLab/latex-grant.svg)](LICENSE)

# latex-grant

LaTeX classes for formatting scientific documents, including grant proposals.
* `grants`: Base class for formatting grant proposals
* `grant-arl`: Army Research Laboratory
* `grant-darpa`: Defense Advanced Research Projects Agency
* `grant-doe`: Department of Energy
* `grant-nih`: National Institutes of Health
* `grant-nrl`: Naval Research Laboratory
* `grant-nsf`: National Science Foundation
* `grant-onr`: Office of Naval Research

## Installation

### Tex Live/MikTeX
The package is available through TeX Live and MikTeX as `grant`.

### Manual install

1. Compile the LaTeX classes

  ```
  cd /path/to/repo
  cd grant
  latex grant.ins
  mkdir -p /path/to/repo/tex/latex/grant/
  mv *.cls /path/to/repo/tex/latex/grant/
  ```
2. Add `/path/to/repo` to your list of LaTeX root directories

## Example usage
```
\documentclass{grant-nsf}

\addbibresource{Bibliography.bib}

\begin{document}

\chapter{Project-Summary}
...

\chapter{Project-Description}
...

\chapter{Bibliography \& References Cited}
\printbibliography[heading=none]

\end{document}
```

## License
The example model is released under the [MIT license](LICENSE).

## Development team
`latex-grant` was developed by [Jonathan Karr](http://www.karrlab.org) at the Icahn School of Medicine at Mount Sinai in New York, USA.

## Questions and comments
Please contact the [Jonathan Karr](http://www.karrlab.org) with any questions or comments.

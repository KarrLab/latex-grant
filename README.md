<!-- [![CTAN package](https://img.shields.io/badge/ctan-latest-orange.svg)](https://www.ctan.org/pkg/grant) -->
[![Documentation](https://readthedocs.org/projects/gdoc-down/badge/?version=latest)](https://github.com/KarrLab/latex-grant)
[![License](https://img.shields.io/github/license/KarrLab/latex-grant.svg)](LICENSE)

# latex-grant

LaTeX classes for formatting federal grant proposals:
* `grants`: Base class for formatting grant proposals
* `arl`: Army Research Laboratory
* `darpa`: Defense Advanced Research Projects Agency
* `doe`: Department of Energy
* `nih`: National Institutes of Health
* `nrl`: Naval Research Laboratory
* `nsf`: National Science Foundation
* `onr`: Office of Naval Research

## Installation

<!--
### Tex Live/MikTeX
The package is available through TeX Live and MikTeX as `grant`.
-->

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
\documentclass{nsf}

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

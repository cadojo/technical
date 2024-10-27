\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{technical}[2024/10/27 v1.0.0 Technical memo document class]

\def\technical@baseclass{extarticle}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\technical@baseclass}}
\ProcessOptions\relax

\LoadClass[12pt,usletter]{\technical@baseclass}

% Required packages
\RequirePackage{pubmatter}

\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{lastpage}
\RequirePackage{hyperref}
\RequirePackage{xcolor}
\RequirePackage{setspace}
\RequirePackage{comment}
\RequirePackage{multicol}
\RequirePackage{lipsum}
\RequirePackage{titlesec}
\RequirePackage{titling}

\RequirePackage[margin=1in,marginparsep=0pt,marginpar=0pt]{geometry}

\titleformat{\section}{\Large\flushleft\bfseries\scshape}{}{0cm}{}

\setlength{\parskip}{0.5\baselineskip}
\setlength{\droptitle}{-1in}

\pretitle{%
\begin{center}\scshape\Huge}
  \posttitle{%
  \end{center}
}
\renewcommand{\headrulewidth}{0pt}

\fancyhf{}
\fancypagestyle{plain}{%
  \fancyhf{}
  \lfoot{\large\scshape \textmd{\theauthor}}
  \rfoot{\large\scshape \textmd{Page \thepage/\pageref*{LastPage}}}
}


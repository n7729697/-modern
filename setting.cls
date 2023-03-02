%%%% 参考了https://www.wondercv.com/的模板
\ProvidesClass{setting}
\LoadClass[11pt]{article}

% disable indent globally
\setlength{\parindent}{0pt}

% use hyperlink for email and url
\usepackage{hyperref}
\usepackage{url}
% \hypersetup{
%     colorlinks=true,
%     linkcolor=cyan,
%     urlcolor=cyan,
%     citecolor=cyan,
%     pdfauthor={Name}
% }
\urlstyle{tt}

%%%% 利用tikz来定位照片和学校Logo
\usepackage{graphicx}
\usepackage{tikz}
\usetikzlibrary{calc}

% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}
% use xifthen
\RequirePackage{xifthen}
% use fontawesome
\RequirePackage{fontawesome}
% use xcolor for customizing color
\RequirePackage{xcolor}

\RequirePackage[super]{nth}
%%%% kth Blue
\definecolor{KTHBlue}{rgb}{0.10,0.33,0.65}

%%% \widthof[]{} 用于特殊对齐
\usepackage{calc}

% loading fonts
\usepackage{fontspec}
% \Requirepackage{zh_CN-Adobefonts_external}
% \usepackage{xeCJK}
% \CJKsetecglue{} %% 取消中文与数字之间间隙

% Main document font
\setmainfont[
    Path = Font/,
  Extension = .otf ,
  BoldFont = HelveticaNeueLTPro-Md.otf ,
]{HelveticaNeueLTPro-Roman.otf}

% \setCJKmainfont[
%   Path = Font/Main/ ,
%   Extension = .otf ,
%   UprightFont = *-regular ,
%   BoldFont = *-bold ,
%   ItalicFont = *-italic ,
%   BoldItalicFont = *-bolditalic ,
%   SmallCapsFont = Fontin-SmallCaps
% ]{texgyretermes}


\usepackage{relsize}
\usepackage{xspace}

\usepackage[
	a4paper,
	left=1.2cm,
	right=1.2cm,
	top=1.5cm,
	bottom=1cm,
	nohead
]{geometry}
\renewcommand{\baselinestretch}{1.2} %定义行间距1.2

\usepackage{titlesec}
\usepackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
% \setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.25em, leftmargin=*}
\setlist[enumerate]{topsep=0.25em, leftmargin=*}

\titleformat{\section}         % Customise the \section command 
  {\large\bfseries\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [{\color{KTHBlue}\titlerule}]                 % Inserts a horizontal line after the heading
  %\includegraphics[width=\textwidth]{Picture/beam.eps}
\titlespacing*{\section}{0cm}{*1.8}{*1.8}

\titleformat{\subsection}
  {\large\raggedright}
  {}{0em}
  {}
\titlespacing*{\subsection}{0cm}{*1.8}{*0.6}

\newcommand{\logosection}[2]{%
    \section{\texorpdfstring{\makebox[\widthof{\faGraduationCap}][c]{\color{KTHBlue}#1}}\ { } #2}
}


\newcommand{\dateRange}[2]{
    {#1 -- \makebox[\widthof{#1}][s]{#2}}
}


\newcommand{\datedline}[2]{%
  {\par #1 \hfill #2 \par}%
}
% for circling the icons 
\newcommand*\ci[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=1pt] (char) {#1};}}

\newcommand{\basicInfo}[1]{
  \centerline{\sffamily\large{#1}}
  \vspace{1.5ex}
}
\newcommand{\name}[1]{
  \centerline{\Huge\scshape{#1}}
  \vspace{1.25ex}
}

% defines one's email
% usage: \email{<email>}
\newcommand{\email}[1]{\ci{\faEnvelope}~\href{mailto:#1}{#1}}
% defines one's phone
% usage: \phone{<phone>}
\newcommand{\phone}[1]{\ci{\faPhone}~{#1}}
% defines one's linkedin
% usage: \linkedin{<linkedin>}
\newcommand{\linkedin}[2][]{\ci{\faLinkedin}~ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}
% defines one's GitHub
% usage: \github{<github>}
\newcommand{\github}[2][]{\ci{\faGithub}~ 
  \ifthenelse{\isempty{#1}}%
    {\href{#2}{#2}}
    {\href{#2}{#1}}}

\newcommand{\basicContactInfo}[3]{
    \centerline{
        \normalsize{
            \faPhone\ {#1} \quad 
            \faEnvelopeO\ \href{mailto:{#2}}{#2} \quad
            \faGithub\ \href{mailto:{#3}}{#3}
        }
    }
    \vspace{0.7ex}
}

\newcommand{\role}[2]{
  {\par \textit{#1} ~ #2 \par}
  \vspace{0.5ex}
}

\newcommand{\biInfo}[2]{
    {#1 \quad #2}
}

\newcommand{\tripleInfo}[3]{
    {#1 \quad #2 \quad #3}
}

% \newif\if@displaypagenumbers\@displaypagenumberstrue
% \newcommand*{\nopagenumbers}{\@displaypagenumbersfalse}
% \AtEndPreamble{%
%   \AtBeginDocument{%
%     \if@displaypagenumbers%
%       \@ifundefined{r@lastpage}{}{%
%         \ifthenelse{\pageref{lastpage}>1}{%
%           \newlength{\pagenumberwidth}%
%           \settowidth{\pagenumberwidth}{\color{color2}\addressfont\itshape\strut\thepage/\pageref{lastpage}}%
%           \fancypagestyle{plain}{%
%             \fancyfoot[r]{\parbox[b]{\pagenumberwidth}{\color{color2}\addressfont\itshape\strut\thepage/\pageref{lastpage}}}}% the parbox is required to ensure alignment with a possible center footer (e.g., as in the casual style)
%           \pagestyle{plain}}{}}%
%       \AtEndDocument{\label{lastpage}}\else\fi}}
% \pagestyle{plain}

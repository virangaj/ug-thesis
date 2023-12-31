\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uopThesis}[2023/11/08 Example class]


 


\LoadClass[oneside,a4,12pt]{book}

 

 

\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
 \RequirePackage{tocloft}
 \RequirePackage[nottoc,notlof,notlot]{tocbibind}

\usepackage[T1]{fontenc}
\usepackage{mathptmx}
\usepackage{graphicx}
\titleformat*{\section}{\fontsize{14}{14}\selectfont}
\titleformat*{\subsection}{\fontsize{12}{12}\selectfont}

 
\geometry{
	a4paper,
	total={170mm,297mm},
	left=40mm,
	top=25mm,
	right=15mm,
	bottom=25mm
}



\newcommand{\@dept}{}
\newcommand{\dept}[1]{\renewcommand{\@dept}{#1}}
\newcommand{\@university}{}
\newcommand{\university}[1]{\renewcommand{\@university}{#1}}

\newcommand{\@degree}{}
\newcommand{\degree}[1]{\renewcommand{\@degree}{#1}}

\newcommand{\@supervisor}{}
\newcommand{\supervisor}[1]{\renewcommand{\@supervisor}{#1}}


\renewcommand{\maketitle}{
	
	\thispagestyle{empty}
	
	\begin{center}
		
		
		\vspace{8cm}
		
		\Large  \textbf{\MakeUppercase  \@title}
		
		\normalsize
		
		\vspace{2cm}
		
		\normalsize A PROJECT REPORT PRESENTED BY
		
		\vspace{2cm}
		
		\MakeUppercase \@author
		
		\vspace{2cm}
		to the

        \vspace{0.5cm}
        \textbf{\MakeUppercase  \@dept}

        \vspace{2cm}
        \textit{in partial fulfillment of the requirement\\ for the	award of the degree of}
		
		\vspace{2cm}
		\textbf{\@degree}

        \vspace{1cm}
        of the
		
		\vspace{5cm}
		\textbf{UNIVERSITY OF PERADENIYA}\\
        \textbf{SRI LANKA}\\        
        \textbf{2023}
		
	\end{center}
	
}


%%% ---- Abstract ---- 
\newenvironment{abstract}{
	\cleardoublepage
	\chapter*{\centering \Large Abstract}
	\thispagestyle{empty}
}


%%% ---- Acknowledgement ---- 
\newenvironment{acknowledgement}{
	\cleardoublepage
	\chapter*{\centering \Large Acknowledgement}
	\thispagestyle{empty}
}

%%% ---- Declaration ---- 

\newenvironment{declaration}{
	\singlespacing 
	\cleardoublepage
	\chapter*{\centering \Large Declaration}
	\thispagestyle{empty}
}{
	\vspace{2cm}
    \noindent Date:
	\makebox[2in]{\dotfill}
    \flushright
    \vspace{-0.78cm}
    \makebox[2in]{\dotfill}\\
    \@author

    \flushleft
    \vspace{2cm}
    Certified by:\\

    \vspace{1cm}
    
    1. Supervisor: \@supervisor\\
    \vspace{0.5cm}
    \noindent Date:
    \makebox[2in]{\dotfill}
    \flushright
    \vspace{-0.78cm}
    Signature:
    \makebox[2in]{\dotfill}\\
     \vspace{1cm}

     
    \flushleft
    2. Head of the Department: name of the HOD\\ %add name of the head of the department
    \vspace{0.5cm}
    \noindent Date:
    \makebox[2in]{\dotfill}
    \flushright
    \vspace{-0.78cm}
    Signature:
    \makebox[2in]{\dotfill}\\
     \vspace{1cm}
}



\renewcommand{\contentsname}{\hspace*{\fill}\bfseries\Large TABLE OF CONTENTS \hspace*{\fill}}   
\renewcommand{\listtablename}{\hspace*{\fill}\bfseries\Large LIST OF TABLES \hspace*{\fill}}   
\renewcommand{\listfigurename}{\hspace*{\fill}\bfseries\Large LIST OF FIGURES \hspace*{\fill}}   
%\renewcommand{\listabrname}{\hspace*{\fill}\bfseries\Large LIST OF ABREVIATIONS \hspace*{\fill}} 

\renewcommand{\bibname}{REFERENCES}
  
%%% --- Change chapter title ---

\titleformat{\chapter}[display]
{\large \bfseries \centering}{CHAPTER\ \thechapter}{0pt}{\MakeUppercase}{\Large}
\titlespacing*{\chapter}{-10pt}{-20pt}{45pt}


\setlength{\cftbeforechapskip}{12pt}


\titlecontents{chapter}
[-5pt]
{\bfseries}
{ \MakeUppercase{\chaptername}\ \thecontentslabel \ : \ \MakeUppercase }
{}% <numberless-entry-format>
{\titlerule*[0.8pc]{.}\contentspage}






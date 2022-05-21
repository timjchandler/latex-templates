\ProvidesClass{tjc-paper}[A general paper template]
\LoadClass{article}

%%%%%% Packages                         %%%%%%
\RequirePackage{fancyhdr}               % Allow fancy headers and footers
\RequirePackage{helvet}                 % Allow helvetica font
\RequirePackage[a4paper, margin=1.7cm]{geometry}% Reduce margins, set a4

%%%%%% Editable Variables               %%%%%%
\newcommand{\organisation}{cloudberries}% Insert organisation name here
\newcommand{\headertext}{--DRAFT--}     % Insert header text here
%%%%%% End Editables                    %%%%%% 

%%%%%% Styling                          %%%%%% 
\pagestyle{empty}                       % Remove default page numbers
\pagestyle{fancy}                       % Use fancy headers and footers
\renewcommand{\familydefault}{\sfdefault}   % Set font to default sans serif

% Margins
\addtolength{\topmargin}{.8cm}          % Reduce top margin
\addtolength{\textheight}{-1.5cm}       % Reduce bottom margin

% Header and footer
\fancyhead[L]{\headertext}              % Write title on header of each page
\fancyfoot[L]{\organisation}            % Organisation name on the left of each page
\fancyfoot[R]{\thepage}                 % Page numbers on the right of each page
\fancyfoot[C]{}                         % No text in center of footer

%%%%%% Additional Commands              %%%%%%
\newcommand{\newabstract}[1]
{
    \begin{center}
    \begin{minipage}{0.6\textwidth}
        #1
    \end{minipage}
    \end{center}
}


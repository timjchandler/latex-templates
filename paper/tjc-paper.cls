\ProvidesClass{tjc-paper}[A general paper template]
\LoadClass{article}

%%%%%% Packages                         %%%%%%
\RequirePackage{fancyhdr}               % Allow fancy headers and footers
\RequirePackage{helvet}                 % Allow helvetica font
\RequirePackage[a4paper, margin=1.7cm]{geometry}% Reduce margins, set a4
\RequirePackage{babel}                  % For preventing end of line hyphenation
\RequirePackage{ragged2e}               % For centering the title
\RequirePackage{graphicx}               % For images

%%%%%% OPTIONAL                         %%%%%% Comment out as necessary
\RequirePackage{hyperref}               % For clickable links
\RequirePackage{lipsum}
%%%%%% End optional


\graphicspath{{./img/}}

%%%%%% Editable Variables               %%%%%%
% \newcommand{\organisation}{cloudberries}% Insert organisation name here
% \newcommand{\headertext}{--DRAFT--}     % Insert header text here
%%%%%% End Editables                    %%%%%% 

%%%%%% Styling                          %%%%%% 
\pagestyle{empty}                       % Remove default page numbers
\pagestyle{fancy}                       % Use fancy headers and footers
\renewcommand{\familydefault}{\sfdefault}   % Set font to default sans serif

% Margins
\addtolength{\topmargin}{12mm}          % Reduce top margin
\addtolength{\textheight}{-20mm}       % Reduce bottom margin

% Header and footer
\fancyhead[L]{\headertext}              % Write title on header of each page
\fancyfoot[L]{\organisation}            % Organisation name on the left of each page
\fancyfoot[R]{\thepage}                 % Page numbers on the right of each page
\fancyfoot[C]{}                         % No text in center of footer

%%%%%% Additional Commands              %%%%%%
\newcommand{\newabstract}[1]
{
    \vspace*{5mm}                       % Leave space before the abstract
    \begin{center}                      % Center the abstract
    \begin{minipage}{0.6\textwidth}     % Can be adjusted to change width of abstract
        #1
    \end{minipage}
    \end{center}
    \vspace{5mm}                        % Add space after the abstract
}

\newcommand{\newtitlepage}[4]
{
    \vspace*{25mm}                      % Add whitespace before title
    \begin{center}                      % Center title minipage
        \begin{minipage}{0.8\textwidth}
            \begin{hyphenrules}{nohyphenation}  % Prevent splitting words accross lines
                \hrule\vspace*{5mm}             % Add ruled line above
                \begin{center}                  % Align the text center
                    \textbf{\Huge\MakeUppercase{#2}}    % Insert title and force uppercase
                    \vspace*{5mm}\hrule         % Add ruled line below
                    \vspace*{15mm}              % Add space between title and date
                    {\large\today}\\\vspace*{5mm}   % Add date and spacing below
                    {\Large #3}                 % Add the authors name
                \end{center}    
            \end{hyphenrules}
        \end{minipage}
    \end{center}
    
    \vspace*{2cm}
    \begin{center}                              
        \includegraphics[height=25mm]{#4}       % Add the logo
    \end{center}    
    \vspace*{2cm}
    
    \thispagestyle{plain}               % Remove the header from this page
    \newabstract{#1}                    % Include abstract
    \newpage                            % End the title page
    
    \vspace*{\fill}                     % Balance the space above the ToC
    \begin{center}
        \begin{minipage}{0.8\textwidth} % Reduce width for ToC
            \tableofcontents            % Add table of contents
        \end{minipage}
    \end{center}    
    \vspace*{\fill}                     % Balance the space below the ToC
    \newpage                            % End ToC page
}

\newcommand{\setheader}[1]
{
    \newcommand{\headertext}{#1}        % Set \headertext variable
}

\newcommand{\setorganisation}[1]
{
    \newcommand{\organisation}{#1}      % Set \organisation variable
}
\ProvidesClass{tjc-paper}[A general paper template]
\LoadClass{article}

%%%%%% Packages                         %%%%%%
\RequirePackage{fancyhdr}               % Allow fancy headers and footers
\RequirePackage{helvet}                 % Allow helvetica font

%%%%%% Editable Variables               %%%%%%
\newcommand{\organisation}{cloudberries}% Insert organisation name here
\newcommand{\headertext}{--DRAFT--}     % Insert header text here
%%%%%% End Editables                    %%%%%% 

%%%%%% Styling                          %%%%%% 
\pagestyle{empty}
\pagestyle{fancy}                       % Use fancy headers and footers
\renewcommand{\familydefault}{\sfdefault}   % Set font to default sans serif

% Header and footer
\fancyhead[L]{\headertext}              % Write title on header of each page
\fancyfoot[L]{\organisation}            % Organisation name on the left of each page
\fancyfoot[R]{\thepage}                 % Page numbers on the right of each page
\fancyfoot[C]{}                         % No text in center of footer

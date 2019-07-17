\ProvidesClass{agregfiche}[2018/10/07 Classe pour les fiches agreg]

\LoadClass[10pt]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}

%% Format
\RequirePackage{paralist}
\RequirePackage{a4wide}
\RequirePackage{multicol}
\RequirePackage{url}
\RequirePackage{complexity}


%% Maths
\RequirePackage{amsmath,amsthm,amssymb}

%% Définition des commandes

\newcommand{\secindispensables}{\section{C\oe ur de la leçon}}
\newcommand{\secasavoir}{\section{À savoir}}
\newcommand{\secrapports}{\section{Extraits du Rapport}}
\newcommand{\secpieges}{\section{Conseils au candidat}}
\newcommand{\secidees}{\section{Ouvertures possibles}}
\newcommand{\secreferences}{\section{Références}}
\newcommand{\secdev}{\section{Dev}}
\newcommand{\secquestionsclassiques}{\section{Questions classiques}}

% À utiliser comme "placeholder", par exemple quand une référence n'existe pas
% encore en tant que fichier, on peut écrire 
%   \temporary{ reference bla bla bla }
% puis le moment venu écrire
%   \reference{IdRef etc ...
\newcommand{\temporary}[1]{\textbf{TMP} #1 \textbf{TMP}}

% \reference{IDref}{Nom du bouquin}{Auteur1,Auteur2}{à la BU/LSV}{Des commentaires trop ouf qui déchirent}
\newcommand{\reference}[5]{[\textit{#1}] #2 - #3 - \small{#4} \\ 
\textit{\footnotesize{#5}}  }

% \dev{Nom du Dev}{IDref}{p. 432}{lecon1,lecon2,lecon3}{Commentaires}
\newcommand{\dev}[5]{ #1 - (#2,\textit{ \small{#3}}) - #4 \\ 
\textit{\footnotesize{#5}}  }

% À utiliser comme \begin{rapport}{année} Copié collé  du rapport \end{rapport}
\newenvironment{rapport}[1]
{
    \textbf{Rapport de jury #1}
	
    \begin{quote}\itshape\footnotesize
}{

    \end{quote}
}

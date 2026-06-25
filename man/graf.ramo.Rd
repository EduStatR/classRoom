\name{graf.ramo}
\alias{graf.ramo}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Grafico de ramo e folhas
}
\description{
Confecciona um grafico de ramo e folhas de um conjunto de dados numericos

}
\usage{
graf.ramo(x,
          orientation = 1,
          digits = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
    \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel}
    \item{orientation}{define a posicao do grafico, se horizontal (\emph{default} 1) ou vertical (2) ou especifique "horizontal" ou "vertical"}
    \item{digits}{Define a quantidade de casas decimais consideradas na construção
    do gráfico de ramo-e-folhas.

    Valores possíveis:
    \itemize{
      \item digits = 0: dados inteiros (\emph{default});
      \item digits = 1: dados com uma casa decimal;
      \item digits = 2: dados com duas casas decimais;
      \item digits = 3: dados com tres casas decimais;
    }
}
}
\details{Permite obter um grafico de ramo e folhas
}
\value{Retorna um grafico de ramo e folhas
}
\references{OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
}
\author{
Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Denismar Alves Nogueira,
\email{denismar.nogueira@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}

Natalia da Silva Martins Fonseca,
\email{natalia.martins@unifal-mg.edu.br}


}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
data(banco)
attach(banco)
graf.ramo(x=alturaMM,
          orientation = 1,
          digits = 2)

graf.ramo(x=alturaMM,
          orientation = "vertical",
          digits = 2)

graf.ramo(x=pesoMM,
          orientation = "vertical",
          digits = 0)

}

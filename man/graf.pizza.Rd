\name{graf.pizza}
\alias{graf.pizza}
\title{
Grafico de pizza (setores)
}
\description{
Confecciona um grafico de pizza ou setores de um conjunto de dados
}
\usage{
graf.pizza(x)
}
\arguments{
  \item{x}{
nome da variavel ou da coluna do banco de dados que identifica a variavel
}
}
\details{Permite obter um grafico de pizza (setores).
}
\value{Retorna um grafico de pizza (setores).
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
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
graf.pizza(cineMM)

}

\name{prob.pois}
\alias{prob.pois}
\title{
Probabilidade de uma variavel Poisson, \eqn{P(X = x)}
}
\description{
Apresenta a distribuição de probabilidade de X, a probabilidade de interesse e o grafico da distribuicao de probabilidade.
}

\usage{
prob.pois(x, lamb)
}
\arguments{
  \item{x}{valor de interesse da variavel X}
  \item{lamb}{valor da media da distribuicao}
}
\details{
Permite obter a distribuicao de probabilidade da variavel X, o valor da probabilidade \eqn{P(X= x)} e o grafico da distribuicao de probabilidade.
}
\value{Sao retornados a distribuicao de probabilidade da variavel X, o valor da probabilidade \eqn{P(X = x)} e o grafico da distribuicao de probabilidade.
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
prob.pois(2, 2.5)
}

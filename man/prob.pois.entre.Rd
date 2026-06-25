\name{prob.pois.entre}
\alias{prob.pois.entre}
\title{
Probabilidade entre dois valores de uma variavel Poisson, \eqn{P(a \leq X \leq b)}
}
\description{
Apresenta a distribuicao de probabilidade de X, a probabilidade de interesse e o grafico da distribuicao de probabilidade.
}
\usage{
prob.pois.entre(a, b, lamb)
}
\arguments{
  \item{a}{valor de interesse da variavel X}
  \item{b}{valor de interesse da variavel X}
  \item{lamb}{valor da media da distribuicao}
}
\details{
Permite obter a distribuicao de probabilidade da variavel X, o valor da probabilidade \eqn{P(a \leq X \leq b)} e o grafico da distribuicao de probabilidade.
}
\value{Sao retornados a distribuicao de probabilidade da variavel X, o valor da probabilidade \eqn{P(a \leq X \leq b)} e o grafico da distribuicao de probabilidade.
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
prob.pois.entre(2, 3, 5)


}

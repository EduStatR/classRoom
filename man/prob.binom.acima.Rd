\name{prob.binom.acima}
\alias{prob.binom.acima}
\title{
Probabilidade de um valor ou acima de uma variavel binomial, \eqn{P(X \geq x)}
}
\description{
Apresenta a distribuição de probabilidade de X, a probabilidade igual ou superior a uma valor de interesse e o grafico da distribuicao de probabilidade.
}
\usage{prob.binom.acima(x, n, p)
}

\arguments{
  \item{x}{valor de interesse da variavel X}
  \item{n}{valor do numero de repeticoes do experimento}
  \item{p}{valor da probabilidade de obter um sucesso}
}

\details{
Permite obter a distribuicao de probabilidade da variavel X, o valor da probabilidade \eqn{P(X \geq x)} e o grafico da distribuicao de probabilidade.
}
\value{Sao retornados a distribuicao de probabilidade da variavel X, o valor da probabilidade \eqn{P(X \geq x)} e o grafico da distribuicao de probabilidade.
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
prob.binom.acum(5, 5, 0.5)
prob.binom.acum(0, 5, 0.5)

}



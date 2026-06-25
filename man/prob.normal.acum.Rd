\name{prob.normal.acum}
\alias{prob.normal.acum}
\title{Probabilidade acumulada de uma variavel normal, \eqn{P(X < a)}
}
\description{
Apresenta a probabilidade acumulada de interesse e o grafico da funcao densidade de probabilidade.
}
\usage{
prob.normal.acum(a,mean,sigma)
}
\arguments{
  \item{a}{valor de interesse da variavel X}
  \item{mean}{media da variavel X}
  \item{sigma}{desvio padrao da variavel X}
}
\details{
Permite obter o valor da probabilidade \eqn{P(X < a)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
}
\value{Sao retornados  o valor da probabilidade \eqn{P(X < a)} e o grafico da distribuicao de probabilidade exibindo a area sob a curva que corresponde a probabibilidade.
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
}
\author{
Ana Eliza Santa Rosa Scotini

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
prob.normal.acum(-2,0,1)
prob.normal.acum(190,170,10)
prob.normal.acum(150,170,10)
}

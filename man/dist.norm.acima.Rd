\name{dist.norm.acima}
\alias{dist.norm.acima}

\title{
Quantil da distribuicao normal (valor tabelado da cauda superior da curva)
}
\description{
Apresenta o valor do quantil de acordo com a probabilidade \eqn{P(X>x)}, a media e o desvio padrao (cauda superior)
}
\usage{
dist.norm.acima(prob,mean=0,sigma=1)
}
\arguments{
  \item{prob}{corresponde a probabilidade \eqn{\alpha}}
\item{mean}{valor correspondente a media da variavel aleatoria, o \emph{default} e 0}
\item{sigma}{valor correspondente ao desvio padrao da variavel aleatoria, o \emph{default} e 1}
}

\details{Permite obter o valor do quantil de acordo com a probabilidade, a media e o desvio padrao e apresenta o grafico da distribuicao normal.
}
\value{Retorna o valor do quantil de acordo com a probabilidade, a media e o desvio padrao e apresenta o grafico da distribuicao normal.
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
\examples{dist.norm.acima(0.025,0,1)

dist.norm.acima(0.975,170,10)


}



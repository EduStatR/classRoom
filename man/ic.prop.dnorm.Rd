\name{ic.prop.dnorm}
\alias{ic.prop.dnorm}
\title{
Intervalo de confianca para a proporcao populacional usando a distribuicao normal
}
\description{Apresenta o valor do quantil superior da distribuicao normal e o intervalo de confianca para a proporcao populacional baseado na distribuicao normal

}
\usage{
ic.prop.dnorm(p,n,conf.level=0.95)
}
\arguments{
  \item{p}{valor da proporcao amostral}
  \item{n}{tamanho da amostra}
  \item{conf.level}{nivel de confianca, o \emph{default} e 0.95}
  }
\details{
Permite obter o valor do quantil superior da distribuicao normal e o intervalo de confianca para a proporcao populacional.

}
\value{
Retorna o valor do quantil superior da distribuicao normal e o intervalo de confianca para a proporcao populacional.
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
ic.prop.dnorm(0.3,200,0.95)
}

\name{ic.media.dnorm}
\alias{ic.media.dnorm}
\title{
Intervalo de confianca para a media populacional usando a distribuicao normal
}
\description{
Apresenta o valor do quantil superior da distribuicao normal, o valor da variancia populacional, o tamanho amostral e o intervalo de confianca para a media populacional

}
\usage{
ic.media.dnorm(media,sigma2,n,conf.level=0.95)
}
\arguments{
  \item{media}{valor da media amostral}
  \item{sigma2}{valor da variancia populacional}
  \item{n}{tamanho da amostra}
  \item{conf.level}{nivel de confianca, o \emph{default} e 0.95}
}
\details{Permite obter o valor do quantil superior da distribuicao normal, o valor da media amostral, o tamanho amostral, a variancia populacional e o intervalo de confianca para a media populacional.

}
\value{Retorna o valor do quantil superior da distribuicao normal, o valor da variancia populacional, o tamanho amostral e o intervalo de confianca para a media populacional.

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
ic.media.dnorm(12,3,23,0.99)

}

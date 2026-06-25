\name{ic.media.dt}
\alias{ic.media.dt}
\title{
Intervalo de confianca para a media populacional usando a distribuicao t
}
\description{
Apresenta o valor do quantil superior da distribuicao t, o valor da variancia amostral, o tamanho amostral e o intervalo de confianca para a media populacional

}
\usage{
ic.media.dt(media,var,n,conf.level=0.95)
}
\arguments{
  \item{media}{valor da media amostral}
  \item{var}{valor da variancia amostral}
  \item{n}{tamanho da amostra}
  \item{conf.level}{nivel de confianca, o \emph{default} e 0.95.}
}
\details{Permite obter o valor do quantil superior da distribuicao t, o valor da media amostral, o tamanho amostral, a variancia amostral e o intervalo de confianca para a media populacional.

}
\value{Retorna o valor do quantil superior da distribuicao t, o valor da variancia amostral, o tamanho amostral e o intervalo de confianca para a media populacional.

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
ic.media.dt(12,9,23,0.95)

}

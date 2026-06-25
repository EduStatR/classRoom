\name{ic.media.dados.dnorm}
\alias{ic.media.dados.dnorm}
\title{
Intervalo de confianca para a media populacional com uso de um banco de dados usando a distribuicao normal
}

\description{Apresenta o valor do quantil superior da distribuicao normal, o valor da media amostral, o tamanho amostral, a variancia populacional e o intervalo de confianca para a media populacional}

\usage{
ic.media.dados.dnorm(x,sigma2,conf.level=0.95)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel para a qual o intervalo sera construido.}
\item{sigma2}{valor da variancia populacional}
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
x<-rnorm(30,15,9)  #gera um banco de dados
ic.media.dados.dnorm(x,9,0.95)

}

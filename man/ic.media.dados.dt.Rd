\name{ic.media.dados.dt}
\alias{ic.media.dados.dt}
\title{
Intervalo de confianca para a media populacional com uso de um banco de dados usando a distribuicao t
}

\description{Apresenta o valor do quantil superior da distribuicao t, o valor da media amostral, o tamanho amostral, a variancia amostral e o intervalo de confianca da media populacional}

\usage{
ic.media.dados.dt(x,conf.level=0.95)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica a variavel para a qual o intervalo sera construido}
\item{conf.level}{nivel de confianca, o \emph{default} e 0.95}
}
\details{Permite obter o valor do quantil superior da distribuicao t, o valor da media amostral, o tamanho amostral, a variancia amostral e o intervalo de confianca para a media populacional.

}
\value{Retorna o valor do quantil superior da distribuicao t, o valor da media amostral, o tamanho amostral e o intervalo de confianca para a media populacional.

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
ic.media.dados.dt(pesoMM,0.95)

}

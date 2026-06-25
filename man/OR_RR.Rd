\name{OR_RR}
\alias{OR_RR}

\title{Razao de chance e Risco relativo
}
\description{Apresenta o valor e o intervalo de confiança da razao de chances e do risco relativo
}
\usage{
OR_RR(conf.level = 0.95)
}
\arguments{
%   \item{r}{valor que corresponde ao numero de linhas da tabela}
%\item{c}{valor que corresponde ao numero de colunas da tabela}
\item{conf.level}{nivel de confianca, o \emph{default} e 0.95}
}
\details{Permite obter o valor e o intervalo de confiança da razao de chances e do risco relativo.
}
\value{Retorna o valor e o intervalo de confiança da razao de chances e do risco relativo
}
\references{
OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.

PAGANO, M.; GAUVREAU, K. Principios de bioestatistica. 2. ed. Sao Paulo: Cengage Learning, 2012. p. 506.
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
\note{Esta funcao so pode ser aplicada em tabela de contingencia 2x2 do tipo:\cr

\tabular{lcccc}{
\tab \tab \strong{Exposicao}\cr
\strong{Doente} \tab\tab Sim\tab Nao\cr
Sim \tab\tab a\tab b\cr
Nao \tab\tab c\tab d\cr
}

}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
OR_RR(conf.level = 0.95)

#insira as informacoes abaixo nos campos onde tem zeros:
#     108    117
#     163    268
}

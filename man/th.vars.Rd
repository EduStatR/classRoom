\name{th.vars}
\alias{th.vars}
\title{
Teste de hipotese para duas variancias
}
\description{
Realiza o teste unilateral a direita para duas variancias.

}
\usage{
th.vars(var1,var2,n1,n2,alpha=0.05)
}
\arguments{
  \item{var1}{valor da variancia observado do primeiro grupo.}
  \item{var2}{valor da variancia observado do segundo grupo.}
  \item{n1}{valor do tamanho amostral observado do primeiro grupo.}
  \item{n2}{valor do tamanho amostral observado do segundo grupo.}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite obter as variancias, os tamanhos amostrais, o quantil da distribuicao F, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.
}
\value{Retorna as variancias, os tamanhos amostrais, o quantil da distribuicao F, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.

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
\note{A rotina considera apenas o caso para o teste unilateral a direita. Ou seja, nos calculos sempre se considera que a maior variancia esta no numerador.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

th.vars(var1=5.9^2,var2=5^2,n1=10,n2=13,alpha=.05)
}

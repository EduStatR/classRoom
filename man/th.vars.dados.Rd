\name{th.vars.dados}
\alias{th.vars.dados}
\title{
Teste de hipotese para duas variancias com uso de um banco de dados
}
\description{
Realiza o teste unilateral a direita para duas variancias quando se tem um banco de dados.
}
\usage{
th.vars.dados(x,y,alpha=0.05)
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica uma das variaveis.}
\item{y}{nome da variavel ou da coluna do banco de dados que identifica a outra variavel.}
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

x1<-c(123,134,146,104,119,124,161,107,83,113,129,97)
y2<-c(70,118,85,107,94,101,132)
th.vars.dados(x1,y2,alpha=0.10)


cn<-c(40.3,41,39.6,33,31)
ti<-c(20.9,21.3,23.6,22.2,21.9)
th.vars.dados(cn,ti,alpha=0.05)
}

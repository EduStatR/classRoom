\name{th.medias.dados.dt}
\alias{th.medias.dados.dt}
\title{
Teste de hipotese para duas medias com uso de um banco de dados
}
\description{
Apresenta as medias, as variancias, os tamanhos amostrais, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.
}
\usage{
th.medias.dados.dt(x, y, mu = 0, paired = FALSE, var.equal = TRUE, alpha = 0.05, tipo="B")
}
\arguments{
  \item{x}{nome da variavel ou da coluna do banco de dados que identifica uma das variaveis.}
\item{y}{nome da variavel ou da coluna do banco de dados que identifica a outra variavel.}
\item{mu}{valor assumido para as diferencas das duas medias, o \emph{default} e 0.}
\item{paired}{quando o teste NAO for pareado usar FALSE (\emph{default}), caso contrario usar TRUE. }
\item{var.equal}{usar TRUE (\emph{default}) quando as variancias forem homogeneas (iguais), caso contrario, FALSE}
\item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
\item{tipo}{tipo de hipotese em teste, o \emph{default} e "B": teste bilateral, mas ha outras opcoes: "E" para o teste unilateral a esquerda e "D" para o teste unilateral a direita.}
}
\details{Permite obter as medias, as variancias, os tamanhos amostrais, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.
}
\value{Retorna as medias, as variancias, os tamanhos amostrais, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.

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
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#sejam os conjuntos de dados

x1<-c(123,134,146,104,119,124,161,107,83,113,129,97)
y1<-c(70,118,85,107,94,101,132)

th.medias.dados.dt(x1,y1,mu = 0, paired = FALSE, var.equal = TRUE,alpha=0.05, tipo="B")

#===================================
cn<-c(40.3,41,39.6,33,31)
ti<-c(20.9,21.3,23.6,22.2,21.9)

th.medias.dados.dt(cn,ti,mu = 0, paired = FALSE, var.equal = FALSE,alpha=0.05, tipo="B")

#===================================
antes<-c(120,104,93,87,85,98,102,106,88,90)
depoi<-c(116,102,90,83,86,97,98,108,82,85)

th.medias.dados.dt(antes,depoi,mu = 0, paired = TRUE, var.equal = TRUE,alpha=0.05, tipo="B")






}

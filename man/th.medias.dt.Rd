\name{th.medias.dt}
\alias{th.medias.dt}
\title{
Teste de hipotese para duas medias
}
\description{
Apresenta as medias, as variancias, os tamanhos amostrais, o quantil da distribuicao t, a estatistica de teste, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p.
}
\usage{
th.medias.dt(med1,med2,var1,var2,n1,n2,mu = 0, var.equal = TRUE,alpha=0.05, tipo="B")
}
\arguments{
  \item{med1}{valor da media observado no primeiro grupo.}
\item{med2}{valor da media observado no segundo grupo.}
 \item{var1}{valor da variancia observado no primeiro grupo.}
\item{var2}{valor da variancia observado no segundo grupo.}
\item{n1}{valor do tamanho amostral do primeiro grupo.}
\item{n2}{valor do tamanho amostral do segundo grupo.}
\item{mu}{valor assumido para o parametro populacional, o \emph{default} e 0.}
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
th.medias.dt(med1=36.98,med2=21.98,
             var1=21.412,var2=1.077,
             n1=5,n2=5,mu = 0, var.equal = FALSE,alpha=0.05, tipo="B")

th.medias.dt(med1=120,med2=101,
             var1=457.4545,var2=425.3333,
             n1=12,n2=7,mu = 0, var.equal = TRUE,alpha=0.05, tipo="B")

}

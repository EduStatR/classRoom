\name{th.ind.prop.dchi2}
\alias{th.ind.prop.dchi2}
\title{Teste qui-quadrado para independencia e proporcao - tabela de contingencia
}
\description{Realiza o teste qui-quadrado para independencia ou proporcao, calcula a estatistica de teste, o quantil da distribuicao qui-quadrado, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p, exibe a tabela dos dados, a tabela dos valores esperados e o coeficiente de contingencia, se solicitar.

}
\usage{
th.ind.prop.dchi2(r,c, correcao=TRUE,dados=TRUE,esp=TRUE,cont=TRUE,alpha=0.05)
   }
\arguments{
  \item{r}{valor que corresponde ao numero de linhas da tabela}
\item{c}{valor que corresponde ao numero de colunas da tabela}
\item{correcao}{aplica a correcao de Yates se TRUE (\emph{default})}
\item{dados}{exibe a tabela de dados se TRUE (\emph{default})}
\item{esp}{exibe a tabela das frequencias esperadas se TRUE (\emph{default})}
\item{cont}{exibe o coeficiente de contigencia se TRUE (\emph{default})}
\item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite obter a estatistica de teste, o quantil da distribuicao qui-quadrado, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p, exibe a tabela dos dados, a tabela dos valores esperados e o coeficiente de contingencia, se solicitar.
}
\value{Retorna a estatistica de teste, o quantil da distribuicao qui-quadrado, o valor-p e o grafico com a(s) regiao(oes) criticas e a representacao do valor-p, exibe a tabela dos dados, a tabela dos valores esperados e o coeficiente de contingencia, se solicitar.

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
th.ind.prop.dchi2(r=3,c=3,
                  correcao=TRUE,dados=TRUE,
                  esp=TRUE,cont=TRUE,alpha=0.025)

#insira as informacoes abaixo nos campos onde tem zeros:
#     75     35    13
#     29    120    32
#     15     70    46


}

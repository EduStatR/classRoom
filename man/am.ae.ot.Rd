\name{am.ae.ot}
\alias{am.ae.ot}
\title{Amostragem estratificada otima}
\description{De uma populacao de tamanho \eqn{N} dividida em \eqn{k} estratos, obtem-se o tamanho amostral a ser selecionado em cada estrato de acordo com o seu tamanho e variabilidade.
}
\usage{
am.ae.ot(k,n)
}
\arguments{
  \item{k}{numero de estratos em que a populacao foi dividida.}
\item{n}{tamanho da amostra com a qual se quer trabalhar.}
}
\details{Permite obter o tamanho amostral a ser sorteado em cada estrato.}
\value{Retorna o tamanho da amostra a ser sorteado em cada estrato.}
\references{OLIVEIRA et al. Introducao a Estatistica. 2. ed. Lavras: Editora UFLA, 2014. p. 461.
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
\note{Ao executar o comando, uma janela sera aberta para que seja inserido o tamanho populacional de cada estrato, ou seja, o numero de elementos de cada estrato \eqn{N_i} e o valor do desvio padrao estimado \eqn{s_i} de cada estrato. Apos preencher as informacoes e fechar a janela, o resultado do tamanho amostral \eqn{n_i} de cada estrato sera impresso na tela.
}

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#selecionar uma amostra de tamanho n=50 de uma populacao com k=5 estratos
#sendo o tamanho de cada estrato: N1=500, N2=320, N3=100, N4=50 e N5=30
#sendo a variabilidade: s1=2.8, s2=3.5, s3=4.3, s4=5.2 e s5=7.5

am.ae.ot(k=5,n=50)

}

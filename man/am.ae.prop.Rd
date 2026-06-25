\name{am.ae.prop}
\alias{am.ae.prop}
\title{Amostragem estratificada proporcional
}
\description{De uma populacao de tamanho \eqn{N} dividida em \eqn{k} estratos, obtem-se o tamanho amostral a ser selecionado em cada estrato de acordo com o seu tamanho.}
\usage{
am.ae.prop(k,n)
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
\note{Ao executar o comando, uma janela sera aberta para que seja inserido o tamanho populacional de cada estrato, ou seja, o numero de elementos de cada estrato \eqn{N_i}. Apos preencher as informacoes e fechar a janela, o resultado do tamanho amostral \eqn{n_i} de cada estrato sera impresso na tela.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#selecionar uma amostra de tamanho n=50 de uma populacao com k=5 estratos
#sendo o tamanho de cada estrato: N1=500, N2=320, N3=100, N4=50 e N5=30

am.ae.prop(k=5,n=50)
}

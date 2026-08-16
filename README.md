<img width="300" height="" alt="image" src="https://github.com/user-attachments/assets/15345ac7-f0de-422a-a358-9e6fe988a87d" />


# Estatística Básica com o pacote **classRoom**

O pacote **classRoom**, é um pacote em linguagem R, desenvolvido para auxiliar professores e estudantes no ensino e aprendizagem de Estatística.

O pacote reúne funções didáticas para análise de dados, construção de gráficos e realização de testes estatísticos, permitindo que o usuário concentre seus esforços na compreensão dos conceitos e na interpretação dos resultados, em vez de se preocupar com detalhes de programação.

A instalação é simples. É só seguir os passos abaixo. As funções disponíveis são listadas no Quadro 1, segundo o assunto.

### Quadro 1 – Assuntos da disciplina Estatística Básica e tarefas disponíveis no pacote *classRoom*

| **Assunto** | **Tarefas** |
|---|---|
| **Amostragem** | Sorteio de elementos da população em amostragem simples ao acaso e amostragem sistemática, com ou sem o uso de banco de dados. Determinação dos tamanhos amostrais dos estratos em amostragem estratificada uniforme, proporcional e ótima.|
| **Estatística descritiva** | Tabulação de dados de variáveis discretas e contínuas, com ou sem geração de gráficos. Confecção das principais representações gráficas, incluindo o *boxplot*. Cálculo de medidas de tendência central, posição e dispersão. |
| **Distribuição de probabilidades** | Obtenção de quantis das distribuições normal, *t* de Student, qui-quadrado e *F*. Cálculo de probabilidades para diferentes situações utilizando as distribuições binomial, Poisson e normal, com visualização gráfica. |
| **Teoria da estimação** | Determinação do tamanho amostral para intervalos de confiança para média e proporção. Obtenção de intervalos de confiança para média(s), variância (desvio-padrão) e proporção. |
| **Teoria da decisão** | Execução de testes de hipóteses para média(s), variância(s) e proporção; testes de independência e de proporção em tabelas de contingência (testes qui-quadrado e exato de Fisher); e testes para comparação de mais de duas médias (ANOVA *one-way*). Todos os testes podem ser realizados a partir de um banco de dados ou por meio de inserção manual. Em todos os testes, os resultados numéricos e o gráfico contendo a estatística de teste, o quantil da distribuição de probabilidade e a área correspondente ao valor-*p* podem ser visualizados. |
| **Correlação e regressão linear** | Cálculo do coeficiente de correlação linear e realização de teste de hipóteses. Cálculo das estimativas dos parâmetros do modelo de regressão linear e realização de testes de hipóteses. Em ambos os casos, é possível gerar ou não o gráfico e exibir as estatísticas. |
| **Outros assuntos** | Cálculo da razão de chances (*odds ratio*) e do risco relativo, com intervalo de confiança. |

**Fonte:** Bittencourt et al. (2025) - modificada.

## Instalação

Para instalar o pacote e executar as suas funções, copie os comandos e execute-os no **R**. Siga as orientações:

### 1️⃣ Abra o programa R

a) copie os comandos (pode ser um de cada vez)

b) cole no programa **R** (na tela RConsole ou REditor) 

c) execute cada comando pausadamente

### 1️⃣ Instale o pacote `remotes`

Para instalar diretamente o pacote **classRoom** do GitHub, instale, no **R** o pacote `remotes`, caso ainda não o tenha instalado.


```r
install.packages("remotes",
                 repos = "https://cloud.r-project.org")
```

### 2️⃣ Instale o pacote **classRoom** diretamente do GitHub

```r
remotes::install_github("EduStatR/classRoom")
```

### 3️⃣ Carregue o pacote

```r
library(classRoom)
```

> Também é possível utilizar:
>
> ```r
> require(classRoom)
> ```

### 4️⃣ Consulte a documentação

Para visualizar todas as funções disponíveis:

```r
help(package = "classRoom")
```

Para acessar a ajuda de uma função específica:

```r
?graf.box
```

ou

```r
help(graf.box)
```

## 📖 Como citar o classRoom

Se você utilizar o pacote **classRoom**, cite:

Bittencourt, F.; Dias, A.; Nogueira, D. A.; Fonseca, N. S. M. **classRoom: um pacote R para apoio ao ensino e a aprendizagem de Estatistica.**      Pensar Acadêmico, v.23, n.5, p.659-673, 2025. Disponível em: https://pensaracademico.unifacig.edu.br/index.php/pensaracademico/article/view/4610

---

## Objetivo

O **classRoom** foi desenvolvido para apoiar o ensino e a aprendizagem de Estatística, oferecendo funções simples e intuitivas para que professores e estudantes possam dedicar mais tempo à análise e interpretação dos resultados e menos tempo à programação.

Bom proveito!


# 📊 Estatística Básica com o pacote **classRoom**

<p align="center">
  <img width="550" src="https://github.com/user-attachments/assets/15345ac7-f0de-422a-a358-9e6fe988a87d" alt="classRoom">
</p>

O **classRoom** é um pacote para **R** desenvolvido para apoiar professores e estudantes no ensino e na aprendizagem de **Estatística Básica**.

O pacote reúne funções didáticas para análise de dados, construção de gráficos, cálculo de probabilidades, estimação, testes de hipóteses, correlação e regressão linear, entre outras atividades.

As funções foram desenvolvidas com o objetivo de permitir que o usuário concentre seus esforços na **compreensão dos conceitos estatísticos e na interpretação dos resultados**, reduzindo a necessidade de programação.

---

## 📚 O que posso fazer com o classRoom?

As funções do pacote estão organizadas de acordo com os principais assuntos de uma disciplina de Estatística Básica.

### Quadro 1 – Assuntos da disciplina Estatística Básica e tarefas disponíveis no pacote *classRoom*

| **Assunto** | **Tarefas** |
|---|---|
| **Amostragem** | Sorteio de elementos da população em amostragem simples ao acaso e amostragem sistemática, com ou sem o uso de banco de dados. Determinação dos tamanhos amostrais dos estratos em amostragem estratificada uniforme, proporcional e ótima. |
| **Estatística descritiva** | Tabulação de dados de variáveis discretas e contínuas, com ou sem geração de gráficos. Construção das principais representações gráficas, incluindo *boxplot*. Cálculo de medidas de tendência central, posição e dispersão. |
| **Distribuição de probabilidades** | Obtenção de quantis das distribuições normal, *t* de Student, qui-quadrado e *F*. Cálculo de probabilidades para diferentes situações utilizando as distribuições binomial, Poisson e normal, com visualização gráfica. |
| **Teoria da estimação** | Determinação do tamanho amostral para intervalos de confiança para média e proporção. Obtenção de intervalos de confiança para média(s), variância, desvio-padrão e proporção. |
| **Teoria da decisão** | Execução de testes de hipóteses para média(s), variância(s) e proporção; testes de independência e de proporção em tabelas de contingência, incluindo testes qui-quadrado e exato de Fisher; e testes para comparação de mais de duas médias (ANOVA *one-way*). Os testes podem ser realizados a partir de um banco de dados ou por meio de inserção manual. Os resultados numéricos e, quando aplicável, o gráfico contendo a estatística de teste, o quantil da distribuição de probabilidade e a área correspondente ao valor-*p* podem ser visualizados. |
| **Correlação e regressão linear** | Cálculo do coeficiente de correlação linear e realização de teste de hipóteses. Cálculo das estimativas dos parâmetros do modelo de regressão linear e realização de testes de hipóteses. Em ambos os casos, é possível gerar ou não o gráfico e exibir as estatísticas. |
| **Outros assuntos** | Cálculo da razão de chances (*odds ratio*) e do risco relativo, com intervalo de confiança. |

**Fonte:** Bittencourt et al. (2025), modificada.

---

# 🚀 Instalação

A instalação do **classRoom** é simples e pode ser realizada diretamente a partir do GitHub.

> **Importante:** os comandos abaixo devem ser executados no **R**, e não no GitHub.

## 1. Instale o pacote `remotes`

Esta etapa é necessária apenas se o pacote `remotes` ainda não estiver instalado no seu computador.

Copie e execute no R:

```r
install.packages("remotes",
                 repos = "https://cloud.r-project.org")

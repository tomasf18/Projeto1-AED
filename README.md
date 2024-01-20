# Trabalho Prático - TAD image8bit

## Departamento de Electrónica, Telecomunicações e Informática da Universidade de Aveiro
Curso: Algoritmos e Estruturas de Dados  
Ano Letivo: 2023/2024 — 1º Semestre (2º ano, Licenciatura em Engenharia Informática)

## Objetivos

Este trabalho tem dois objetivos principais:

1. Desenvolver e testar o TAD image8bit, que permite instanciar e operar com imagens de níveis de cinzento, onde cada pixel pode tomar um valor de intensidade entre 0 e 255 (8 bits).
2. Analisar a complexidade computacional das funções `ImageLocateSubImage()` e `ImageBlur()`.

## 1 – Desenvolver o TAD image8bit

Com base nos ficheiros fornecidos `image8bit.h` e `image8bit.c`, os alunos devem realizar as seguintes tarefas:

1. Analisar cuidadosamente os dois ficheiros.
2. Concluir o desenvolvimento das funções especificadas no ficheiro de interface (`image8bit.h`) que ainda não estejam concluídas no ficheiro de implementação (`image8bit.c`).
3. Testar todas as funções desenvolvidas, utilizando os programas de teste fornecidos.

### Notas Importantes:

- O ficheiro de interface `image8bit.h` especifica as diferentes funções do TAD e não deve ser alterado.
- Para cada função são indicadas as eventuais pré-condições, pós-condições e situações de erro associadas, e que deverão ser obrigatoriamente tidas em conta.
- Caso facilite o desenvolvimento do código, poderão ser definidas e implementadas funções auxiliares adicionais (static) no ficheiro `image8bit.c`.
- O código desenvolvido deverá ser claro e comentado de modo apropriado: os identificadores escolhidos para as variáveis e a estrutura do código, bem como os eventuais comentários, deverão ser suficientes para a sua compreensão.
- Não é necessário entregar qualquer relatório relativo ao desenvolvimento do TAD.
- Deverá apenas ser entregue o ficheiro `image8bit.c` — com a identificação do(s) seu(s) autor(es).

## 2 – Analisar a complexidade da função ImageLocateSubImage()

Após concluir o desenvolvimento do TAD, é necessário analisar a eficiência computacional do algoritmo desenvolvido para a função `ImageLocateSubImage()`.

1. Realizar uma sequência de testes, com imagens de diferentes tamanhos, registar e analisar o número de comparações efetuadas envolvendo o valor de cinzento (i.e., a intensidade) dos pixels das imagens.
2. Efetuar uma análise formal da complexidade do algoritmo, para o melhor caso e o pior caso.
3. Comparar os resultados obtidos nas duas tarefas anteriores.

## 3 – Analisar a complexidade da função ImageBlur()

Para isso deve:

1. Realizar uma sequência de testes, com imagens e filtros de diferentes tamanhos e analisar a evolução do número de operações que considerar relevante.
2. Efetuar uma análise formal da complexidade do algoritmo.

### Nota:

Embora não seja a implementação mais imediata, é possível implementar esta função com um algoritmo proporcional ao número de pixéis da imagem a tratar, sem depender do tamanho da janela usada para desfocar a imagem.

## 4 – Escrever um relatório sucinto (máx. 5 págs.)

O relatório deverá incluir para cada uma das funções analisadas:

i) Uma tabela com os resultados dos testes efetuados.
ii) A análise formal da complexidade das funções em causa.

Para a função `ImageBlur()`, será valorizada a comparação de diferentes estratégias algorítmicas para a resolução do problema.

## 5 – Critérios de Avaliação

- Desenvolvimento e teste das funções pedidas (40%)
  - Será avaliada a qualidade e clareza do código e comentários.
  - Será verificada a existência de eventuais fugas de memória.
  
- Relatório (50%)
  - Aspetos Gerais/Apresentação/Conclusão.
  - Análise da complexidade da função `ImageLocateSubImage()`.
    - Dados experimentais.
    - Análise Formal.
  - Análise da complexidade da função `ImageBlur()`.
    - Dados experimentais.
    - Análise Formal.
    - Análise Comparativa Algoritmo Básico/Algoritmo Melhorado.
  
- Colaboração na Avaliação entre Pares (2 trabalhos) (10%)
  - Testar o funcionamento do código e avaliar a qualidade e clareza do mesmo.

A nota final do trabalho será obtida pela média pesada entre a classificação atribuída pelo docente e a classificação dos colegas (cada trabalho será avaliado por 3 a 4 alunos distintos):

**Nota Final = 75% Nota Docente + 25% Média da Nota Pares**

A avaliação entre pares está sujeita a validação pelos docentes, podendo ser descartada nos casos em que se verifique que corresponde a uma avaliação manifestamente incorreta do trabalho apresentado.

### Notas Importantes:

- O trabalho deve ser realizado em grupos de 2 alunos.
- Será disponibilizada uma plataforma online onde poderão verificar o funcionamento correto das funções à medida que forem sendo desenvolvidas.
- A entrega do trabalho (ficheiro `image8bit.c` + relatório) será feita através da plataforma eLearning.
- Após a submissão dos trabalhos, cada aluno receberá informação sobre os dois trabalhos que deverá rever. Esta tarefa é parte integrante do trabalho.

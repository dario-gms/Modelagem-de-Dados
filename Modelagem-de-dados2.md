# Modelo Relacional

- Tupla: *é uma linha. Dentro do modelo relacional não podemos ter duas tuplas de mesmo valor.*
> Tuplas que não podem se repetir são chamadas de Super Chave(SCh).
> 
> Valores que não se repetem em tuplas são chamados de chaves. Quando existem duas chaves, uma é chamada de chave primária e a outra de chave candidata.
> 
> Quando um atributo é sublinhado ele representa a chave primária. AS chaves primárias e únicas não podem ser nulas.
- Domínio: *Representado pela letra D, é um conjunto de valores atômicos(quer dizer que cada valor do domínio é indivisível se tratado na definição do modelo relacional formal).*
> Ex.: Número_de_Telefones: *é um domínio, sendo o conjunto de número de telefone de 11 dígitos(no Brasil).*

> Ex2.: Nomes: *Conjunto de caracteres que representa o nome das pessoas.*

- Atributo: *é o nome de um papel executado por cada domínio.*
> Ex.: *Nome do Cliente que possui valores do Dominio Nome.*

> Ex2.: *Nome do Pai do Cliente também possui valores do domínio nome.*

- Relação: *é composta de uma lista de atributos.*
> Ex.: *R(dom(Nome): Nome do Cliente, dom(Nome): Nome do Pai do Cliente.*

> **Grau da Relação(Aridade):** *Número de atributos.*

> No exemplo acima o **Grau da Relação é 2.**
*A Relação é composta por um conjunto de tuplas.*

- Cardinalidade: *Análise combinatória de possíveis tuplas.*

## Estado de Relação
> Estado da relação é o conteúdo das tuplas em um determinado momento no tempo. O estado é válido quando todas as tuplas satisfazem as relações de integridade

## Restrições de Integridade Referencial:

- **Representa a relação entre duas Tuplas de Relações diferentes.**

![image](https://user-images.githubusercontent.com/86432208/155182629-edfa281c-df44-4ee5-8c62-3daa4426a387.png)

# Álgebra Relacional

- Base teórica do modelo relacional para realizar consultas.
- Dividias em duas partes:
1. Seleção:
- Captura um subconjunto de Tuplas de uma Relação.
- Dentro de <Condição da Seleção> escrevemos uma expressão lógica que irá retornar verdadeiro ou falso. AS tulpas onde o retorno for verdadeiro serão selecionadas.
- Podemos concatenar a expressão com operadores lógicos (AND, OR, ou NOT).

2. Projeção: 
- Escolhemos os atributos a serem exibidos.
- Não permite apresentar tuplas iguais. Acontece quando selecionamos atributos não chaves.

## Produto Cartesiano

> **O Produto Cartesiano(Ou Relação Cruzada) é uma combinação entre duas Tuplas e os Atributos entre as Relações, Projeções ou Uniões, ou o resultado de uma expressão da Álgebra Relacional.**

### Junção

- O produto Cartesiano não tem sentido se combinado com outras expressões da Álgebra Relacional. Por isso podemos usar a Junção.
- A junção é usada para combinar Tuplas relacionadas entre duas Relações, Projeções, Seleções ou resultado de expressão a Álgebra Relacional.
- Quando usamos a igualdade na condição da Junção chamamos de Junção de Equijunção.
- Quando os Atributos a serem igualados tem o mesmo nome, chamamos de Junção Natural.
- Para representar a Junção Natural usamos uma Estrela(★) para representar esta operação na Álgebra Relacional.
- Operação de Junção envolve operadores {>, <, <=, >=, <>}, chamamos neste caso, de Junção Theta. 


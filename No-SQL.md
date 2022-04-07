# Modelagem de banco de dados relacional: Começando com NoSQL

## Modelo OO(Orientado ao objeto) vs Relacional

### JSON - Java Script Object Notation

- É uma notação devirava do JavaScript.
- Sua gramática é simples e composta de 6 caracteres estruturais:
> [,] (colchetes), {,} (chaves), : (dois pontos) e a vírgula.

- Os strings possuem 3 palavras chaves: True, False e Null.
- Objetos começam e terminam com chaves.
- Arrays começam e terminam com colchetes.
- Os "dois pontos" servem para serparar o nome do seu campo e seu valor.
- Todos os objetos são separados por vírgula.

**Exemplo 1**

![image](https://user-images.githubusercontent.com/86432208/161593585-7faa2b47-5949-4375-a60d-ef4f6d364f21.png)

**Exemplo 2**

![image](https://user-images.githubusercontent.com/86432208/161593775-80dce2c3-09bd-49c3-9c12-18009adee279.png)
![image](https://user-images.githubusercontent.com/86432208/161593799-b97c1887-968f-4a9f-b9b7-cbf4ba104f98.png)


## NoSQL - Not Only SQL

- Para sistemas que precisam ampliar as necessidades de gerenciamento de dados.
- São bancos de dados DISTRIBUÍDOS;
- Foco no armazenamento de dados SEMI-ESTRUTURADOS;
- Alta disponibilidade;
- Replicação de dados;
- Escalabilidade.

> Gerenciar um alto volume de dados, não necessariamente estruturados, que não estejam modelando um processo.
> 
> Google, Amazon, Facebook, Twitter, Mídia social, mapas, links web, postagens, etc...

**Exemplos:**

**Google - [BigTable](https://cloud.google.com/bigtable/docs/overview?hl=pt-br)** - *Baseado no **[Apache Hbase](https://hbase.apache.org/).*** 

**Amazon - [DynamoDB](https://docs.aws.amazon.com/pt_br/amazondynamodb/latest/developerguide/Introduction.html)** - *Chave-objeto.*

**Facebook - [Cassandra](https://cassandra.apache.org/_/index.html)** - *Chave-valor.*

**Outros bancos da dados NoSQL:** **[MongoDB](https://www.mongodb.com/pt-br)** e **[CouchDB](https://couchdb.apache.org/)** - *Armazenamento de documentos;*

**Bancos baseados em Grafos** - **[Neo4j](https://neo4j.com/)** e **[Graphbase](https://graphbase.ai/)**.

## SQL - Relacionais

- Ênfase na consistência de dados;
- Linguagem de consultas poderosas;
- Armazenamento de dados estruturados.

> Para representar TRANSAÇÕES dentro de uma empresa: Compras, vendas, produção, etc...
> 
> Bancos de dados Relacionais SQL Tradicionais(imbatíveis!).

### Sistemas NoSQL - Dados distribuídos e Modelo de dados

- **Escalabilidade:** Horizontal;
- Replicação em nós diferentes;
- Modelos de recplicação *mestre-escravo* e *mestre-mestre*;
- Sharding de arquivos;
- Acesso a dados de alto desempenho: hashing ou particionamento por intervalo;
- Não exigência de esquema de dados;
- Linguagem de consultas menos poderosas (SCRUD);
- Versionamento.




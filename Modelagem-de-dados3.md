# Diagrama ER e Modelo Relacional


## Processo para transformar Diagrama ER em Modelo Relacional

**Exemplo:**

![image](https://user-images.githubusercontent.com/86432208/156816435-7070d03f-7da1-4a3c-a990-a020ca2a25fb.png)


- Regra 1 - *para cada tipo de entidade regular forte, iremos criar uma relação “R” que contenha todos os atributos da entidade.*
> **No exemplo acima a entidade E representa uma entidade forte.**
> 
> A1 e A4 são atributos chaves.
> 
> A2 é um atributo composto, tendo A21 e A22 como seus atributos.

- Regra 2 - *para cada tipo de entidade fraca F no esquema ER, que possui entidade proprietária E, criaremos uma relação R com todos os atributos simples, ou componentes simples dos atributos compostos de F como atributos R.*

**Exemplo:**

![image](https://user-images.githubusercontent.com/86432208/156820393-197b5df9-55ed-4dcd-9705-d72e701e8651.png)
![image](https://user-images.githubusercontent.com/86432208/156820441-a1512586-1dd4-4ff6-89e6-e03e6a1b5de6.png)

- Regra 3 

**Exemplo: *para cada relacionamento “R” do tipo 1:1 nós vamos identificar as relações “S” e “T” que correspondem aos tipos de entidades que participam de “E”.*

![image](https://user-images.githubusercontent.com/86432208/157040448-fbb58493-1a58-43e0-9630-31656beff422.png)







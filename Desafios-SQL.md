# Desafios SQL

**Para realização dos desafios é necessário carregar os seguintes scripts no MySQL Workbench: [departamento](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/departamento.sql), [dependente](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/dependente.sql), [funcionario](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/funcionario.sql), [localizacoes_departamento](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/localizacoes_departameto.sql), [projeto](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/projeto.sql), [trabalha_em](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/trabalha_em.sql) e [empresa](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/EMPRESA.sql).**

## Desafio 1

> Recuperar o nome e o endereço de todos os funcionários que trabalham para o departamento "Pesquisa".

### Resultado

select tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME,

tb_funcionario.ENDERECO from

tb_funcionario inner join tb_departamento

on tb_funcionario.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO

where tb_departamento.NOME_DEPARTAMENTO = 'Pesquisa';

![image](https://user-images.githubusercontent.com/86432208/161077397-06543394-d891-4586-8eae-8780f36303c5.png)

## Desafio 2

> Para cada Projeto localizado em 'Mauá', liste o Número do Departamento que o controla e o Último Nome, Endereço e Data de Nascimento do Gerente do Departamento.

### Resultado

select tb_projeto.NUMERO_PROJETO, tb_projeto.NUMERO_DEPARTAMENTO, tb_funcionario.ULTIMO_NOME,

tb_funcionario.ENDERECO, tb_funcionario.DATA_NASCIMENTO from

tb_projeto

inner join tb_departamento on tb_projeto.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO

inner join tb_funcionario on tb_funcionario.CPF = tb_departamento.CPF_GERENTE

where tb_projeto.LOCAL_PROJETO = 'Mauá';

![image](https://user-images.githubusercontent.com/86432208/161080297-179da0a4-65c8-4151-9082-2fcdb3b8345b.png)

## Desafio 3

> Descobrir os Nomes dos Funcionários que trabalham em todos os Projetos controlados pelo Departamento número 5.

### Resultado

select tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME from tb_projeto

inner join tb_trabalha_em on tb_projeto.NUMERO_PROJETO = tb_trabalha_em.NUMERO_PROJETO

inner join tb_funcionario on tb_trabalha_em.CPF_FUNCIONARIO = tb_funcionario.CPF

where tb_projeto.NUMERO_DEPARTAMENTO = 5

group by tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME

having count(*) = (select count(*) from tb_projeto where tb_projeto.NUMERO_DEPARTAMENTO = 5);

![image](https://user-images.githubusercontent.com/86432208/161092971-b1c7c33f-3e7f-4941-b705-6b9a10c6e4b2.png)

## Desafio 4

> Fazer uma lista dos números de projetos para aqueles que envolvem um funcionário cujo último nome é 'Souza'. Seja como trabalhador, seja como gerente do departamento que controla o projeto.

### Resultado

select tb_trabalha_em.NUMERO_PROJETO from tb_funcionario

inner join tb_trabalha_em on tb_funcionario.CPF = tb_trabalha_em.CPF_FUNCIONARIO

where tb_funcionario.ULTIMO_NOME = 'Souza'

union

select tb_projeto.NUMERO_PROJETO from tb_funcionario

inner join tb_departamento on tb_funcionario.CPF = tb_departamento.CPF_GERENTE

inner join tb_projeto on tb_projeto.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO

where tb_funcionario.ULTIMO_NOME = 'Souza';

![image](https://user-images.githubusercontent.com/86432208/161101308-4ee66f42-2b53-45f7-b388-e1141095c491.png)

## Desafio 5

> Recuperar o nome dos funcionários que não possuem dependentes.

### Resultado

select tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME from tb_funcionario

left join tb_dependente

on tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO

where tb_dependente.CPF_FUNCIONARIO is null;

![image](https://user-images.githubusercontent.com/86432208/161102104-de5c4473-1121-426a-812d-1271b4137455.png)

## Desafio 6

> Listar os nomes dos gerentes que possuem pelo menos um dependente.

### Resultado

select distinct tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME from tb_funcionario

inner join tb_dependente on tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO

inner join tb_departamento on tb_funcionario.CPF = tb_departamento.CPF_GERENTE;

![image](https://user-images.githubusercontent.com/86432208/161102921-e29a48a5-cd93-4363-ba14-8a61cd73e599.png)








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



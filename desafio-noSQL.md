# Desafio 1

## NOME DOS FUNCIONARIOS QUE NÃO POSSUAM DEPENDENTES

### Resultado

SELECT tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME

FROM tb_funcionario

LEFT JOIN tb_dependente ON tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO

WHERE tb_dependente.CPF_FUNCIONARIO IS NULL;

-- tb_funcionario

SELECT JSON_EXTRACT(tb_object_funcionario.`JSON`,"$.Primeiro_Nome") AS PRIMEIRO_NOME,

JSON_EXTRACT(tb_object_funcionario.`JSON`,"$.Nome_Meio") AS NOME_MEIO,

JSON_EXTRACT(tb_object_funcionario.`JSON`,"$.Ultimo_Nome") AS ULTIMO_NOME

FROM tb_object_funcionario

LEFT JOIN

(SELECT JSON_EXTRACT (tb_object_funcionario.`JSON`,"$.Cpf") AS Cpf_Funcionario, 

tb_object_dependente.Nome_Dependente,

tb_object_dependente.Sexo,

tb_object_dependente.Data_Nascimento,

tb_object_dependente.Parentesco

FROM tb_object_funcionario

CROSS JOIN

JSON_TABLE(JSON_EXTRACT (`JSON`,"$.Dependentes"), "$[*]"

COLUMNS (Nome_Dependente VARCHAR(20) PATH "$.Nome_Dependente",

Sexo VARCHAR(20) PATH "$.Sexo",

Data_Nascimento Datetime PATH "$.Data_Nascimento",

Parentesco VARCHAR(10) PATH "$.Parentesco")) AS tb_object_dependente

) tb_dependente

ON JSON_EXTRACT(tb_object_funcionario.`JSON`,"$.Cpf") = tb_dependente.Cpf_Funcionario

WHERE tb_dependente.Cpf_Funcionario IS NULL;


![image](https://user-images.githubusercontent.com/86432208/162219611-0ccf41e0-1b4e-47a3-9287-3ba8aca18e00.png)

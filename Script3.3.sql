SELECT JSON_EXTRACT (`JSON`,"$.Dependentes") FROM tb_object_funcionario;
SELECT JSON_EXTRACT (`JSON`,"$.Dependentes[0]") FROM tb_object_funcionario;
SELECT JSON_EXTRACT (`JSON`,"$.Dependentes[0].Nome_Dependente") FROM tb_object_funcionario;
SELECT JSON_EXTRACT (`JSON`,"$.Cpf"), JSON_EXTRACT (`JSON`,"$.Dependentes[0].Nome_Dependente") FROM tb_object_funcionario;
SELECT * FROM tb_dependente;
SELECT JSON_EXTRACT (tb_object_funcionario.`JSON`,"$.Cpf") AS Cpf_Funcionario, 
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
Parentesco VARCHAR(10) PATH "$.Parentesco")) AS tb_object_dependente;
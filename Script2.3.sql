
SELECT * FROM tb_funcionario WHERE SEXO = 'F';
SELECT * FROM tb_object_funcionario WHERE SEXO = 'F';
SELECT * FROM tb_object_funcionario WHERE JSON_EXTRACT(`JSON`,"$.Sexo") = 'F';
SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
REPLACE(JSON_EXTRACT(`JSON`,"$.Data_Nascimento"),"""","") AS Data_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Nome_Meio"),"""","") AS Nome_Meio,
REPLACE(JSON_EXTRACT(`JSON`,"$.Ultimo_Nome"),"""","") AS Ultimo_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Endereco"),"""","") AS Endereco,
REPLACE(JSON_EXTRACT(`JSON`,"$.Salario"),"""","") AS Salario,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo,
REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf_Supervisor"),"""","") AS Cpf_Supervisor,
REPLACE(JSON_EXTRACT(`JSON`,"$.Numero_Departamento"),"""","") AS Numero_Departamento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Dependentes"),"""","") AS Dependentes
FROM tb_object_funcionario WHERE JSON_EXTRACT(`JSON`,"$.Sexo") = 'F';
SELECT * FROM tb_object_funcionario WHERE JSON_EXTRACT(`JSON`,"$.Data_Nascimento") >= '1965-01-01';
SELECT * FROM tb_funcionario WHERE Data_Nascimento >= '1980-01-01' ;
SELECT * FROM tb_object_funcionario WHERE JSON_EXTRACT(`JSON`,"$.Data_Nascimento") >= '1980-01-01';
SELECT * FROM tb_object_funcionario WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980;
SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
JSON_EXTRACT(`JSON`,"$.Data_Nascimento")  as Data_Nascimento,
YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Ano_Nascimento,
MONTH(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Mes_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980;

SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
JSON_EXTRACT(`JSON`,"$.Data_Nascimento")  as Data_Nascimento,
YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Ano_Nascimento,
MONTH(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Mes_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo,
REPLACE(JSON_EXTRACT(`JSON`,"$.Salario"),"""","") AS Salario
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980
AND JSON_EXTRACT(`JSON`,"$.Sexo") = 'M';

SELECT REPLACE(JSON_EXTRACT(`JSON`,"$.Cpf"),"""","") AS CPF,
JSON_EXTRACT(`JSON`,"$.Data_Nascimento")  as Data_Nascimento,
YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Ano_Nascimento,
MONTH(JSON_EXTRACT(`JSON`,"$.Data_Nascimento") ) AS Mes_Nascimento,
REPLACE(JSON_EXTRACT(`JSON`,"$.Primeiro_Nome"),"""","") AS Primeiro_Nome,
REPLACE(JSON_EXTRACT(`JSON`,"$.Sexo"),"""","") AS Sexo,
REPLACE(JSON_EXTRACT(`JSON`,"$.Salario"),"""","") AS Salario
FROM tb_object_funcionario
WHERE YEAR(JSON_EXTRACT(`JSON`,"$.Data_Nascimento")) >= 1980
AND JSON_EXTRACT(`JSON`,"$.Sexo") = 'M' 
AND JSON_EXTRACT(`JSON`,"$.Salario") >= 19000;


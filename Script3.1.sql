
SELECT * FROM tb_dependente WHERE CPF_FUNCIONARIO = '12345678966';
SELECT JSON_EXTRACT(`JSON`, "$.Dependentes") AS Dependentes FROM tb_object_funcionario WHERE CPF = '12345678966';

CREATE TABLE t1 (`JSON` json);
INSERT INTO t1 VALUES ('{"Hobby":["Praia", "Futebol", "Volei"]}');
SELECT `JSON`FROM t1;
SELECT JSON_EXTRACT(`JSON`, "$.Hobby") as HOBBIES FROM t1;
SELECT JSON_EXTRACT(`JSON`, "$.Hobby[0]") as HOBBIES FROM t1;
SELECT JSON_EXTRACT(`JSON`, "$.Hobby[1]") as HOBBIES FROM t1;
SELECT JSON_EXTRACT(`JSON`, "$.Hobby[2]") as HOBBIES FROM t1;

DROP TABLE t1;
CREATE TABLE t1 (`JSON` json);
INSERT INTO t1 VALUES ('{
  "Cliente": [
    {
      "Nome": "Joao",
      "Hobby": [
        "Praia",
        "Futebol",
        "Volei"
      ]
    }
  ]
}');
SELECT `JSON`FROM t1;
SELECT JSON_EXTRACT(`JSON`,"$.Cliente") FROM t1;
SELECT JSON_EXTRACT(`JSON`,"$.Cliente[0].Nome") FROM t1;
DROP TABLE t1;
CREATE TABLE t1 (`JSON` json);
INSERT INTO t1 VALUES ('{
  "Cliente": [
    {
      "Nome": "Joao",
      "Hobby": [
        "Praia",
        "Futebol",
        "Volei"
      ]
    },
    {
      "Nome": "Carlos",
      "Hobby": [
        "Cinema",
        "Luta"
      
      ]
    }
  ]
}');
SELECT JSON_EXTRACT(`JSON`,"$.Cliente[0].Nome") FROM t1;
SELECT JSON_EXTRACT(`JSON`,"$.Cliente[1].Nome") FROM t1;
SELECT JSON_EXTRACT(`JSON`,"$.Cliente[0].Hobby") FROM t1;
SELECT JSON_EXTRACT(`JSON`,"$.Cliente[1].Hobby") FROM t1;
SELECT JSON_EXTRACT(`JSON`,"$.Cliente[0].Hobby[1]") FROM t1;

DROP TABLE t1;
CREATE TABLE t1 (`JSON` json);
INSERT INTO t1 VALUES ('{
  "Cliente": [
    {
      "Nome": "Joao",
      "Hobby": "Praia"
    },
    {
      "Nome": "Carlos",
      "Hobby": "Cinema"
    }
  ]
}');

SELECT JSON_EXTRACT(`JSON`, "$.Cliente[0].Nome")  AS NOME, JSON_EXTRACT(`JSON`, "$.Cliente[0].Hobby")  AS HOBBY FROM t1
UNION
SELECT JSON_EXTRACT(`JSON`, "$.Cliente[1].Nome")  AS NOME, JSON_EXTRACT(`JSON`, "$.Cliente[1].Hobby")  AS HOBBY FROM t1




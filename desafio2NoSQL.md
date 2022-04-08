# Desafio 2

***Obs.:** *Necessário software [MongoDB](https://www.mongodb.com/try/download/community) e arquivo: [Funcionários](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/MongoDB_Funcionario2.json)*.

**ENCONTRAR O NOME DOS FUNCIONÁRIOS QUE NÃO POSSUEM DEPENDENTES**

### Resultado

> db.funcionário.find({Dependentes: {$exists: false}}, {"_id": 0, "Primeiro_Nome": 1, "Nome_Meio": 1, "Ultimo_NOme": 1})


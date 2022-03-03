# Desafios


## Curso Modelagem de Banco Relacional: Álgebra Relacional

**Obs.:** ***Para reproduzir os desafios a seguir é necessário abrir os seguintes arquivos no relational: [projeto.csv](), [departamento.csv](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/departamento.csv), [dependente.csv](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/dependente.csv), [funcionario.csv](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/funcionario.csv), [localizacoes_departamento.csv](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/localizacoes_departameto.csv) e [trabalha_em.csv](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/trabalha_em.csv).***

- Desafio 1:
> ***Eu quero recuperar o nome e o endereço de todos os funcionários que trabalham no departamento Pesquisa. Então eu tenho as duas relações, "funcionario" e "departamento", eu quero recuperar o nome de todos os funcionários do departamento Pesquisa.
> Primeiro eu preciso selecionar da relação "Departamento" somente quem está em Pesquisa. Depois eu vou fazer uma junção com a relação "Funcionario" e depois eu vou buscar o nome e o endereço dos funcionários.***
> 
> **Solução:**
> 
> RESULTADO1 = σ Nome_Departamento == 'Pesquisa' (departamento)
> 
> RESULTADO1A = ρ Cpf_Gerente ➡ Cpf (RESULTADO1)
> 
> RESULTADO2 = RESULTADO1 ⋈ funcionario
> 
> RESULTADO_FINAL = π Primeiro_Nome, Ultimo_Nome, Endereco (RESULTADO2)

- Desafio 2:
> **Para cada projeto localizado em 'Mauá', liste o número do projeto, o número do departamento que o controle e o último nome, endereço e data de nascimento do gerente do departamento.**
> 
> 1. Selecionar projeto "Mauá";
> 
> 2. Fazer uma Junção com Departamento;
> 
> 3. O resultado acima fazer a Junção com Funcionário;
> 
> 4. Selecionar os campos a serem exibidos.
> 
> **Solução:**
> 
> RESULTADO1 = σ Local_Projeto == 'Mauá' (projeto)
> 
> RESULTADO2 = RESULTADO1 ⋈ departamento
> 
> RESULTADO2A = ρ Cpf_Gerente ➡ Cpf (RESULTADO2)
> 
> RESULTADO3 = RESULTADO2A ⋈ funcionario
> 
> RESULTADO_FINAL = π Numero_Projeto, Numero_Departamento, Ultimo_Nome, Endereco, Data_Nascimento (RESULTADO3)

- Desafio 3:
> **Descobrir os nomes dos funcionários que trabalham em todos os projetos controlados pelo departamento número 5.**
> 
> 1. Selecionar Projeto do Departamento número 5;
> 
> 2. Busca somente os CPFs e Número de Projetos de Trabalha Em;
> 
> 3. Faz a divisão entre a Seleção de projeto e Trabalha_Em para saber quem trabaalha nos projetos filtrados;
> 
> 4. Selecionar os campos a serem exibidos.
> 
> **Solução:**
> 
> RESULTADO1 = π Numero_Projeto (σ Numero_Departamento == 5 (projeto))
> 
> RESULTADO2 = π Cpf_Funcionario, Numero_Projeto (trabalha_em)
> 
> RESULTADO3 = RESULTADO2 ÷ RESULTADO1
> 
> RESULTADO_FINAL = π Ultimo_Nome, Primeiro_Nome ((ρ Cpf_Funcionario ➡ Cpf (RESULTADO3)) ⋈ funcionario)

- Desafio 4:
> **Fazer uma lista de números de projeto para aqueles que envolvem um funcionário cujo último nome é 'Souza', seja como trabalhador, seja como gerente do departamento que controla o projeto.**
> 
> 1. Projetos que o Souza trabalha;
> 
> 2. Projetos que o Souza Gerencia;
> 
> 3. Fazer uma União entre os dois resultados acima.
> 
> **Solução:**
> 
> RESULTADO1 = π Cpf (σ Ultimo_Nome == 'Souza' (funcionario))
> 
> RESULTADO2 = π Numero_Projeto ((ρ Cpf ➡ Cpf_Funcionario (RESULTADO1)) ⋈ trabalha_em)
> 
> RESULTADO3 = (ρ Cpf ➡ Cpf_Gerente (RESULTADO1)) ⋈ departamento
> 
> RESULTADO4 = π Numero_Projeto (projeto ⋈ RESULTADO3)
> 
> RESULTADO_FINAL = RESULTADO2 ∪ RESULTADO4

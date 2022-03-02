# Projeto Banco de Dados Relacional


## Diagrama ER do projeto
![image](https://user-images.githubusercontent.com/86432208/155750009-6bf004c9-3c6c-4ab5-a44a-c9fb70f55df3.png)



## Relacionamentos e Relações do projeto

![image](https://user-images.githubusercontent.com/86432208/155750140-cc85a4d5-7e68-4c8d-9eea-03d46fbd49e5.png)




## Relações

1. ![image](https://user-images.githubusercontent.com/86432208/155750204-59c9018e-aa6e-4310-83b1-cf5fb4d4b81b.png)
2. ![image](https://user-images.githubusercontent.com/86432208/155750334-e9de6748-0361-423b-be8d-8c47aab6d47c.png)
3. ![image](https://user-images.githubusercontent.com/86432208/155750382-175e44b7-fd96-489d-83c5-877d7b735b33.png)




# Projeto

- **[Arquivo do Projeto](https://github.com/dario-gms/Modelagem-de-Dados/blob/main/projeto.json)**

- **Poderá ser visualizado o projeto com a ferramenta [relational](https://ltworf.github.io/relational/index.html)**

## Resultado

1. Recuperarando os CPFs de todos os funcionários que trabalham no departamento 5 ou supervisionam um funcionário que trabalha neste departamento:
> FUNC_DEP5 = σ Numero_Departamento== 5 (funcionario)
> 
> RESULTADO1 = π Cpf (FUNC_DEP5)
> 
> RESULTADO2 = π Cpf_Supervisor (FUNC_DEP5)
> 
> RESULTADO2A = ρ Cpf_Supervisor ➡ Cpf (RESULTADO2)
> 
> RESULTADO = RESULTADO1 ∪ RESULTADO2A

2. Retornando a lista dos nomes dos dependentes de cada funcionário feminino para testar o produto cartesiano:
> FUNC_MULHERES = σ Sexo == 'F' (funcionario)
> 
> FUNC_NOMES = π Primeiro_Nome, Ultimo_Nome, Cpf (FUNC_MULHERES)
> 
> FUNC_DEPENDENTES = FUNC_NOMES * dependente
> 
> DEPENDENTE_PARTICULAR = σ Cpf == Cpf_Funcionario (FUNC_DEPENDENTES)

3. Recuperando o nome do gerente de cada departamento para testar a junção:
> RESULTADO_DEPARTAMENTO = ρ Cpf_Gerente ➡ Cpf (departamento)
> 
> RESULTADO = RESULTADO_DEPARTAMENTO ⋈ funcionario

4. Listando o primeiro nome de todos os funcionários e os departamentos que eles gerenciam para testar a junção externa. * Obs.: Caso o funcionário não gerencie um departamento, aparecerá como um campo vazio (Null):
> RESULTADO_DEPARTAMENTO = ρ Cpf_Gerente ➡ Cpf (departamento)
> 
> TEMP = funcionario ⧑ RESULTADO_DEPARTAMENTO
> 
> RESULTADO_FINAL = π Primeiro_Nome, Ultimo_Nome, Nome_Departamento (TEMP)







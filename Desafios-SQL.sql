
select tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME,
tb_funcionario.ENDERECO from
tb_funcionario inner join tb_departamento
on tb_funcionario.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO
where tb_departamento.NOME_DEPARTAMENTO = 'Pesquisa';

select tb_projeto.NUMERO_PROJETO, tb_projeto.NUMERO_DEPARTAMENTO, tb_funcionario.ULTIMO_NOME,
tb_funcionario.ENDERECO, tb_funcionario.DATA_NASCIMENTO from
tb_projeto
inner join tb_departamento on tb_projeto.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO
inner join tb_funcionario on tb_funcionario.CPF = tb_departamento.CPF_GERENTE
where tb_projeto.LOCAL_PROJETO = 'Mauá';

select tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME from tb_projeto
inner join tb_trabalha_em on tb_projeto.NUMERO_PROJETO = tb_trabalha_em.NUMERO_PROJETO
inner join tb_funcionario on tb_trabalha_em.CPF_FUNCIONARIO = tb_funcionario.CPF
where tb_projeto.NUMERO_DEPARTAMENTO = 5
group by tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME
having count(*) = (select count(*) from tb_projeto where tb_projeto.NUMERO_DEPARTAMENTO = 5);

select tb_trabalha_em.NUMERO_PROJETO from tb_funcionario
inner join tb_trabalha_em on tb_funcionario.CPF = tb_trabalha_em.CPF_FUNCIONARIO
where tb_funcionario.ULTIMO_NOME = 'Souza'
union
select tb_projeto.NUMERO_PROJETO from tb_funcionario
inner join tb_departamento on tb_funcionario.CPF = tb_departamento.CPF_GERENTE
inner join tb_projeto on tb_projeto.NUMERO_DEPARTAMENTO = tb_departamento.NUMERO_DEPARTAMENTO
where tb_funcionario.ULTIMO_NOME = 'Souza';

select tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME from tb_funcionario
left join tb_dependente
on tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO
where tb_dependente.CPF_FUNCIONARIO is null;

select distinct tb_funcionario.PRIMEIRO_NOME, tb_funcionario.NOME_MEIO, tb_funcionario.ULTIMO_NOME from tb_funcionario
inner join tb_dependente on tb_funcionario.CPF = tb_dependente.CPF_FUNCIONARIO
inner join tb_departamento on tb_funcionario.CPF = tb_departamento.CPF_GERENTE;



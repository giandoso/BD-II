-- exercicios de revisão --

-- Recupere o endereço de todos os empregados que trabalham no departamento 8. --

select endereco from empregado where dnumero = 8;

-- Para cada projeto localizado em Setor 3, recupere o numero do projeto, 
-- o número do departamento responsável e o último nome do gerente do departamento. 

select pnumero, p.dnumero, e.unome from projeto p,departamento d, empregado e 
	where p.plocalizacao = "Setor 3" 
    AND d.gerssn = e.ssn
    AND d.dnumero = p.pnumero;

-- Retorne os ssn de empregados que ganham mais que todos os empregados do departamento 2.

select ssn from empregado where dnumero = 2 AND salario = (select max(salario) from empregado);

-- Para cada empregado, retorne o seu ssn e sexo bem como essas informações de seu supervisor.

select e.ssn, e.sexo, e.superssn, g.sexo from empregado e, empregado g where g.ssn = e.superssn;

-- Recupere o nome de todos os empregados associados a algum departamento.

select pnome from empregado where dnumero=0;

-- Recupere os salários dos empregados, mostrando como seria caso tivessem um aumento de 10%.

select salario*1.1 from empregado;

-- exercicios de views --

-- Desenvolva uma visão que retorne todos os empregados e seus respectivos departamentos.

create view todos_empregados as 
select pnome, dnome from empregado e, departamento d where e.dnumero = d.dnumero;

select * from todos_empregados;

-- Deselvolva uma visão que retorne o nome dos empregados e seus 
-- respectivos salários caso o aumento de 20% em cada salário some um valor acima de 1000 reais.

create view nome_salario_1000reais as
select pnome, salario from empregado where salario*1.2 > 1000;

select * from nome_salario_1000reais;

-- Desenvolva uma visão que retorne o primeiro nome dos empregados e seus respectivos salários. 
-- Em seguida, atualize os salários de 5000 para 4000 apenas na view. 
-- Descreva o que acontece com a view e com a tabela original.

create view nome_salario_empregados as
select pnome, salario from empregado;
update nome_salario_1000reais set salario = 4000 where salario = 3000;

-- Supomnhamos que queiramos saber quais os valores de salário que são pagos na empresa. 
-- Desenvolva uma visão que retorne o primeiro nome dos empregados e seus respectivos salários 
-- agrupados (group by) por salario (retirar salarios repetidos). Em seguida tente atualiazar a view. descreva o que acontece.

-- Desenvolva uma view que retorne o nome dos empregados e os nomes dos projetos em que eles trabalham.

-- Desenvolva uma view que retorne o nome dos empregados que 
-- trabalham no projeto "Aquisição de máquinas".
create view empregados_aquisicao as
select pnome from empregado,trabalha_em,projeto where 
empregado.ssn = trabalha_em.essn AND
trabalha_em.pnumero = projeto.pnumero AND
projeto.pjnome = "Aquisição de máquinas";

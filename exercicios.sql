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


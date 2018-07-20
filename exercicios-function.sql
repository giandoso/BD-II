-- Desenvolva uma função que retorne a quantidade de dependentes do empregado "Joyce".
delimiter //
create function qtdDependentes(meu_nome varchar(40))
returns int deterministic
BEGIN
	declare qtd int;
    select count(*) into qtd
    from empregado e, dependente d
    where e.ssn=d.essn and e.pnome=meu_nome;
    return qtd;
END
//

select qtdDependentes("Joyce");

-- Desenvolva um procedimento que retorne a quantidade de dependentes do empregado "Dara".

delimiter //
create procedure qtdDependentesConcat(meu_nome varchar(40))
begin
	declare qtd integer;
    select concat(meu_nome, ' possui ', COUNT(*),' dependente(s). ') as qtd
    from empregado e, dependente d
    where e.ssn = d.essn AND e.pnome=meu_nome;
end
//

call qtdDependentesConcat("Dara");

-- Desenvolva um procedimento que retorne a soma dos salários de todos os empregados.
delimiter //
create procedure salarioTotal()
BEGIN
	declare soma integer;
    select sum(salario) as soma
    from empregado;
END
//

call salarioTotal();

-- Desenvolva um procedimento que retorne a soma
-- dos salários de todos os empregados do departamento de supervisor "Joyce".

delimiter //
create procedure salarioTotalJoyce()
BEGIN
	declare soma integer;
    select sum(e.salario) as soma
    from empregado e
    where e.dnumero = (select e.dnumero from departamento d, empregado e
		where e.pnome = "Joyce" and  e.dnumero = d.dnumero);
END
//

call salarioTotalJoyce();

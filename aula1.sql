CREATE SCHEMA empresaJoao;

CREATE TABLE empregado (
	ssn int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pnome varchar(40),
    minicial varchar(40),
    unome varchar(40),
	datanasc datetime,
    endereco varchar(40), 
    sexo enum('M','F'),
    salario double,
    dnumero int(10),
    superssn int(10)
);

CREATE TABLE departamento ( 
	dnumero int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dnome varchar(40),
    gerdatainicio datetime,
    gerssn int(10)
);

CREATE TABLE dependente ( 
	nome_dependente varchar(40) NOT NULL,
    essn int(10) NOT NULL,
    sexo enum('M','F'),
    datanasc datetime,
    parentesco varchar(40),
    PRIMARY KEY(nome_dependente, essn)
);

CREATE TABLE trabalha_em (
	essn int(10) NOT NULL,
    pnumero int(10) NOT NULL,
    horas time,
    PRIMARY KEY(essn, pnumero)
);

CREATE TABLE projeto (
	pnumero	int(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pjnome varchar(40),
    plocalizacao varchar(40),
    dnumero int(10)
);

CREATE TABLE depto_localizacoes (
	dlocalizacao varchar(40) NOT NULL,
	dnumero int(10) NOT NULL,
    PRIMARY KEY(dlocalizacao, dnumero)
);

ALTER TABLE empregado ADD FOREIGN KEY empregado(dnumero) REFERENCES departamento(dnumero)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE empregado ADD FOREIGN KEY (superssn) REFERENCES empregado(ssn)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE departamento ADD FOREIGN KEY departamento(gerssn) REFERENCES empregado(ssn)
ON UPDATE CASCADE ON DELETE SET NULL;
ALTER TABLE trabalha_em ADD FOREIGN KEY trabalha_em(essn) references empregado(ssn)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE trabalha_em ADD FOREIGN KEY trabalha_em(pnumero) references projeto(pnumero)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE projeto ADD FOREIGN KEY projeto(dnumero) references departamento(dnumero)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE depto_localizacoes ADD FOREIGN KEY depto_localizacoes(dnumero) references departamento(dnumero)
ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE dependente ADD FOREIGN KEY dependente(essn) references empregado(ssn)
ON UPDATE CASCADE ON DELETE CASCADE;

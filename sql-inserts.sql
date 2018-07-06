INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario) -- Primeira inserção sem departamento e supervisor para não dar inconsistência de acesso
VALUES (2,"Luis","P.","Andrade",19931201,"Rua Professor José Vieira",'M',1500);

INSERT INTO departamento (dnumero,dnome,gerdatainicio,gerssn) 
VALUES (2,"RH",20180619,2);

INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES (3,"Dara","G.","Andrade",19971226,"Rua Professor José Vieira",'F',1000,2,2);

INSERT INTO departamento VALUES (3,"Finanças",20180619,2);

INSERT INTO departamento VALUES (5,"TI",20180620,3);

INSERT INTO departamento VALUES (6,"Segurança",20180620,3);

UPDATE empregado SET dnumero = 2 WHERE dnumero IS NULL; -- Alteração para inserir dnumero no primeiro indivíduo do banco que não tinha departamento (tabela departamento ainda não havia sido criada)

INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES (4,"Joyce","M.","Andrade",19971210,"Rua Londrinense",'F',960,2,2);

INSERT INTO departamento VALUES (7,"Comunicação",20180619,4);

INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES (5,"Pedro","P.","Cardoso",19961226,"Rua Nunciaroni",'M',500,7,4);

INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES (6,"Carla","P.","Silva",20001226,"Rua Augusta",'F',700,7,4);

INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES (7,"Ana","L.","Aquino",20001026,"Rua Augusta",'F',800,5,3);

INSERT INTO empregado (ssn,pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES (8,"João","L.","Pigoso",19951026,"Rua Marculino Ferreira",'M',999,5,3);

INSERT INTO dependente
VALUES ("Diva",3,'F',20101010,"Filha");

INSERT INTO dependente
VALUES ("Martha",3,'F',20111010,"Filha");

INSERT INTO dependente
VALUES ("Nivaldo",4,'M',20120510,"Filho");

INSERT INTO dependente
VALUES ("Luca",4,'M',20131010,"Sobrinho");

INSERT INTO dependente
VALUES ("Pedro",4,'M',20151014,"Sobrinho");

INSERT INTO dependente
VALUES ("Jhohan",2,'M',20141122,"Sobrinho");

INSERT INTO dependente
VALUES ("Helena",4,'F',20170823,"Filha");

INSERT INTO depto_localizacoes
VALUES ("Alfenas",2);

INSERT INTO depto_localizacoes
VALUES ("Machado",3);

INSERT INTO depto_localizacoes
VALUES ("Areado",5);

INSERT INTO depto_localizacoes
VALUES ("Machado",6);

INSERT INTO depto_localizacoes
VALUES ("Alfenas",7);

INSERT INTO projeto VALUES (1,"Corte de gastos","Setor 5",3);

INSERT INTO projeto VALUES (2,"Aquisição de máquinas","Setor 3",3);

INSERT INTO projeto VALUES (4,"Atualiação SGBD","Setor 3",5);

INSERT INTO projeto VALUES (3,"Novo sistema de cadastro","Setor 3",5);

INSERT INTO projeto VALUES (5,"Entrevistas AD","Setor 8",2);

INSERT INTO trabalha_em VALUES (2,1,40);

INSERT INTO trabalha_em VALUES (2,4,10);

INSERT INTO trabalha_em VALUES (3,2,40);

INSERT INTO trabalha_em VALUES (4,3,30);

INSERT INTO trabalha_em VALUES (4,5,20);

UPDATE trabalha_em SET horas = 400000 WHERE horas=000040;

UPDATE trabalha_em SET horas = 100000 WHERE horas=000010;

UPDATE trabalha_em SET horas = 300000 WHERE horas=000030;

UPDATE trabalha_em SET horas = 200000 WHERE horas=000020;

INSERT INTO empregado (pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES ("Gustavo","A.","Felix",19970606,"Rua Jacutinga",'M',900,7,4);

INSERT INTO empregado (pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES ("Sandra","P.","Rezende",19950606,"Rua Joaquim Onofre",'F',900,7,4);

UPDATE empregado SET salario= 5000 WHERE salario = 1000; -- Atualização de salários

INSERT INTO empregado (pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES ("Maria","G.","Domingues",19800730,"Rua Arthur Scalco",'F',900,7,4);

INSERT INTO empregado (pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES ("Célio","S.","Junior",19850730,"Rua Arthur Scalco",'M',900,7,4);

INSERT INTO departamento (dnome,gerdatainicio,gerssn) VALUES ("Vendas",20001212,7);

UPDATE empregado SET superssn=2 WHERE superssn IS NULL; -- O gerente referencia a si mesmo ao invés de ter o campo nulo. Esse indivídio é o primeiro inserido que não havia supervisor.

INSERT INTO dependente
VALUES ("Lucas",11,'M',20161010,"Filho");

INSERT INTO dependente
VALUES ("Augusto",11,'M',20151228,"Filho");

INSERT INTO dependente
VALUES ("Débora",12,'F',20180122,"Filha");

INSERT INTO projeto VALUES (8,"Formalização de preços","Setor 11",8);

INSERT INTO empregado (pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES ("Marcel","S.","Pereira",19870730,"Rua Marciano Freitas",'M',1200,8,4);

INSERT INTO empregado (pnome,minicial,unome,datanasc,endereco,sexo,salario,dnumero,superssn) 
VALUES ("Alef","C.","Padilha",19890930,"Rua da Máquina",'M',2000,8,4);

INSERT INTO trabalha_em VALUES (13,8,400000);

INSERT INTO trabalha_em VALUES (14,8,400000);

UPDATE empregado SET salario=3000 WHERE salario=500;

UPDATE empregado SET salario=2500 WHERE salario=700;

INSERT INTO depto_localizacoes VALUES ("Varginha",8);
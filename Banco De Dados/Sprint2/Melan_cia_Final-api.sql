/*  Criando o banco de dados Melan.cia */

Create database Melancia;
	Use Melancia;
-- -------------------------

-- criando as tabelas e inserindo valores em cada uma delas	

-- Criando tabela Empresa
create table Empresa(
	idEmpresa int primary key auto_increment,
	CNPJ char (14),
	razaoEmp varchar (45),
	responsavel varchar (45),
	email varchar (60),
	senha varchar (20)
	);


-- Inserindo dados na tabela Empresa
	insert into Empresa values 
		(null , '61201144000109' , 'SuperEstágiario', 'Gabriel Martins' , 'GabMar@xxxx.com.br' , 'gabriEl_11'),
		(null , '87737040000107' , 'Fireworks' , 'Elizabeth Hudson' , 'elissbet@xxxx.com.br' , 'Elis_Beth2'),
		(null , '73599529000147' , 'Melan_cia' , 'José Bezerra' , 'bezerr@xxxx.com.br','R4pz3l_flynn'),
		(null , '83444300000197' , 'Tecbulls' , 'Yan Moreira' ,'yanm@xxxx.com.br', 'yan_Morr'),
		(null , '83982828000110' , 'C8' , 'Jéssica Silva' ,'jessicass@xxxx.com.br', 'Jess_ss1'),
		(null , '49852309000107' , 'Jerl 21' , 'Larissa Silveira' ,'larissa@xxxx.com.br' ,'Larissa_434322' ),
		(null , '62229554000112' , 'Hey you!!!' , 'Heloisa Rosa ' , 'helo@xxxx.com.br' , 'RosaHelo1');
    
    
		Select * from Empresa;
		DESC Empresa;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- Criando tabela Fazenda
    create table fazenda (
			idFazenda int primary key auto_increment,
			endereco varchar (45),
			fkEmpresa int,
			constraint fk_empresaFaz
			foreign key (fkEmpresa) references Empresa(idEmpresa)
			);

	-- Inserindo dados na tabela fazenda
			insert into fazenda values 
				(null , 'Rua Alves Filho',null),
				(null , 'Rua D ',null),
				(null , 'Avenida do carmo',null),
				(null , 'Av Ferreira Torres',null),
				(null , 'Rua Fernando K',null),
				(null , 'Rua L',null),
				(null , 'Rua E',null),
				(null , 'Rua Angra',null),
				(null , 'Av Direita ',null),
				(null , 'Estrada C4',null),
				(null , 'Rua Guedes',null);
															
   -- Atualizando as chaves Estrangeira fkEmpresa na tabela fazenda.
		   update fazenda set fkEmpresa = '1' where idFazenda ='7';
		   update fazenda set fkEmpresa = '2' where idFazenda ='6';
		   update fazenda set fkEmpresa = '3' where idFazenda ='5';
		   update fazenda set fkEmpresa = '4' where idFazenda= '4';
		   update fazenda set fkEmpresa = '5' where idFazenda ='3';
		   update fazenda set fkEmpresa = '6' where idFazenda ='2';
		   update fazenda set fkEmpresa = '7' where idFazenda ='1';
		   update fazenda set fkEmpresa = '7' where idFazenda ='10';
		   update fazenda set fkEmpresa = '6' where idFazenda ='9';
		   update fazenda set fkEmpresa = '4' where idFazenda ='8';
		   update fazenda set fkEmpresa = '2' where idFazenda ='11';
       
        
		Select * from fazenda;
       DESC fazenda; 
       
       
-- -- -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criando tabela Funcionario
create table funcionario (
	idFunc int primary key auto_increment,
	nomeFunc varchar (50),
	senhaFunc varchar (20),
	emailFunc varchar (50),
	telefone varchar (15),
    fkFazenda int,
    constraint fk_FazendaFun
    foreign key  (fkFazenda) references Fazenda(idFazenda)
	);

-- Inserindo dados na tabela funcionario
	insert into funcionario values 
		(null , 'Lucia Guedes' , 'LuciaGG12','lucinha@aaaa.com' ,'11965840264',null),
		(null , 'Kaio Oliveira' , 'Kaiooow021','Kaio@aaaa.com' ,'11951247861',null),
		(null , 'Fernanda Vivian' , 'fervivia47','fernanda@aaaa.com' ,'11932577842',null),
		(null , 'Roger Alves' , 'roggALves','roga@aaaa.com' ,'11987453214',null),
		(null , 'Silvia Silva' , 'Silsil74','silk@aaaa.com' ,'11988866548',null),
		(null , 'Davi Silva' , 'daviSS','davisil@aaaa.com' ,'11941259856',null),
		(null , 'Fabio Gusman' , 'fabgus__','gusman@aaaa.com' ,'11932004156',null),
		(null , 'Ana Freire' , 'AnaFreire32','anafree@aaaa.com' ,'11963288749',null),
		(null , 'Amanda  S Ferreira' , 'mandixx','amandasilva1@aaaa.com' ,'11940252501',null),
		(null , 'Matheus Kei' , 'keimathh','matheusk@aaaa.com' ,'11965841250',null),
		(null , 'Afonso Kei' , 'afo123','Afonso@aaaa.com' ,'1196594750',null);

-- Atualizando as chaves Estrangeira fkFazenda nas tabela funcionario
	update funcionario set fkFazenda='1' where idFunc ='5';
	update funcionario set fkFazenda='2' where idFunc ='4';
	update funcionario set fkFazenda='3' where idFunc ='2';
	update funcionario set fkFazenda='4' where idFunc ='1';
	update funcionario set fkFazenda='5' where idFunc ='3';
	update funcionario set fkFazenda='6' where idFunc ='6';
	update funcionario set fkFazenda='7' where idFunc ='7';
	update funcionario set fkFazenda='8' where idFunc ='9';
	update funcionario set fkFazenda='9' where idFunc ='8';
	update funcionario set fkFazenda='10' where idFunc ='10';
	update funcionario set fkFazenda='11' where idFunc ='11';
    
    
		Select * from funcionario;
         DESC funcionario;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criando tabela Canteiro
create table canteiro (
	idCanteiro int primary key auto_increment,
	posicao varchar (45),
    fkFazenda int,
    constraint fk_FazendaCant
    foreign key  (fkFazenda) references Fazenda(idFazenda)
	);

-- Inserindo dados na tabela Canteiro 
insert into canteiro values 
	(null , 'Posic A 12',null),
	(null , 'Posic B 1',null),
	(null , 'Posic AB 748',null),
	(null , 'Posic A 41',null),
	(null , 'Posic G 6',null),
	(null , 'Posic H 97',null),
	(null , 'Posic M 21',null),
	(null , 'Posic O 5',null),
	(null , 'Posic Q 85',null),
	(null , 'Posic E 9',null),
	(null , 'Posic D 12',null);
    
-- Atualizando as chaves Estrangeira fkFazenda nas tabela Canteiro
    update canteiro set fkFazenda='1' where idCanteiro ='5';
    update canteiro set fkFazenda='2' where idCanteiro ='6';
    update canteiro set fkFazenda='3' where idCanteiro ='7';
    update canteiro set fkFazenda='4' where idCanteiro ='8';
    update canteiro set fkFazenda='5' where idCanteiro ='9';
    update canteiro set fkFazenda='6' where idCanteiro ='10';
    update canteiro set fkFazenda='7' where idCanteiro ='11';
    update canteiro set fkFazenda='8' where idCanteiro ='4';
    update canteiro set fkFazenda='9' where idCanteiro ='3';
    update canteiro set fkFazenda='10' where idCanteiro ='2';
    update canteiro set fkFazenda='11' where idCanteiro ='1';
    
    
		Select * from canteiro;
        DESC canteiro;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criando Tabela Relatorio 
create table relatorio (
	idRel int primary key auto_increment,
	dtRel date
	);

-- Inserindo dados na tabela Relatorio
insert into relatorio values
	(null,'2021-10-08'),
	(null,'2021-10-08'),
	(null,'2021-10-09'),
	(null,'2021-10-09'),
	(null,'2021-10-10'),
	(null,'2021-10-10'),
	(null,'2021-10-11'),
	(null,'2021-10-11'),
	(null,'2021-10-12'),
	(null,'2021-10-12'),
	(null,'2021-10-13');
    
    
		Select * from relatorio;
		DESC relatorio;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criando Tabela Medidas
	create table medidas(
		idMedidas int primary key auto_increment,
		umidade double,
		temperatura_lm35 double, 
		hr_medida DATETIME);
        
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Criando Tabela Sensor
	Create table sensor (
		idSensor int primary key auto_increment,
		nomeSensor varchar (45),
		statusSens varchar (45),
		check (statusSens = 'ativo' 
					or statusSens = 'inativo'
							or statusSens = 'manutenção'),
		fkrelatorio int,
        fkmedidas int,
		constraint fk_relatorioSen
		foreign key  (fkrelatorio) references relatorio(idRel),
        constraint fk_Medidas
        foreign key (fkmedidas) references medidas(idMedidas)
		) auto_increment =1000 ; 

 
	
-- Inserindo dados na tabela Sensor
insert into sensor values
	(null , 'Sensor Alpha' , 'ativo',null),
	(null , 'Sensor Golf' , 'ativo',null),
	(null , 'Sensor Bravo' , 'ativo',null),
	(null , 'Sensor Charlie' , 'manutenção',null),
	(null , 'Sensor Charlie' , 'inativo',null),
	(null , 'Sensor Delta' , 'manutenção',null),
	(null , 'Sensor Delta' , 'ativo',null),
	(null , 'Sensor Echo' , 'inativo',null),
	(null , 'Sensor Foxtrot' , 'ativo',null),
    (null , 'Sensor Alpha' , 'ativo',null),
	(null , 'Sensor Golf' , 'inativo',null);


-- Atualizando as chaves Estrangeira fkrelatorio na tabela sensor
	update sensor set fkrelatorio='1' where idSensor ='1000';
	update sensor set fkrelatorio='2' where idSensor ='1001';
	update sensor set fkrelatorio='3' where idSensor ='1002';
	update sensor set fkrelatorio='4' where idSensor ='1003';
	update sensor set fkrelatorio='5' where idSensor ='1004';
	update sensor set fkrelatorio='6' where idSensor ='1005';
	update sensor set fkrelatorio='7' where idSensor ='1006';
	update sensor set fkrelatorio='8' where idSensor ='1007';
	update sensor set fkrelatorio='9' where idSensor ='1008';
	update sensor set fkrelatorio='10' where idSensor ='1009';
	update sensor set fkrelatorio='11' where idSensor ='1010';
	
		Select * from sensor;
		DESC sensor;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  -- Criando Tabela Bloco
	  Create table Bloco (
		idBloco int primary key auto_increment,
		fkCanteiro int,
		constraint fk_BlocoCant
		foreign key  (fkCanteiro) references canteiro(idCanteiro),
		fkSensor int,
		constraint fk_sensorBloco
		foreign key  (fkSensor) references sensor(idSensor));
   
-- Inserindo ids na tabela Bloco
    insert into Bloco values
		(01,null,null),
		(02,null,null),
		(03,null,null),
		(04,null,null),
		(05,null,null),
		(06,null,null),
		(07,null,null),
		(08,null,null),
		(09,null,null),
		(10,null,null),
		(11,null,null);
    
    
-- Atualizando as chaves Estrangeira fkCanteiro nas tabela Bloco
		update Bloco set fkCanteiro='1' where idBloco ='01';
		update Bloco set fkCanteiro='3' where idBloco ='02';
		update Bloco set fkCanteiro='5' where idBloco ='03';
		update Bloco set fkCanteiro='7' where idBloco ='04';
		update Bloco set fkCanteiro='9' where idBloco ='05';
		update Bloco set fkCanteiro='10' where idBloco ='06';
		update Bloco set fkCanteiro='11' where idBloco ='07';
		update Bloco set fkCanteiro='2' where idBloco ='08';
		update Bloco set fkCanteiro='4' where idBloco ='09';
		update Bloco set fkCanteiro='6' where idBloco ='10';
		update Bloco set fkCanteiro='8' where idBloco ='11';
        
-- Atualizando as chaves Estrangeira fkCanteiro nas tabela Bloco
		update Bloco set fkSensor='1007' where idBloco ='01';
		update Bloco set fkSensor='1003' where idBloco ='02';
		update Bloco set fkSensor='1005' where idBloco ='03';
		update Bloco set fkSensor='1001' where idBloco ='04';
		update Bloco set fkSensor='1009' where idBloco ='05';
		update Bloco set fkSensor='1006' where idBloco ='06';
		update Bloco set fkSensor='1008' where idBloco ='07';
		update Bloco set fkSensor='1002' where idBloco ='08';
		update Bloco set fkSensor='1004' where idBloco ='09';
		update Bloco set fkSensor='1010' where idBloco ='10';
		update Bloco set fkSensor='1001' where idBloco ='11';
    
    Select * from Bloco;
	DESC Bloco;
   
/*  Banco de Dados Melan.cia  1.0  */

-- Criando banco
	Create database Melancia;
		Use melancia;
   
   
    -- Criando tabelas
	Create table Usuario
		(id_users	int primary key auto_increment,
		Nome varchar(40),
		Telefone char (40),
		Email Varchar (50),
        Permissao varchar(30)
		);
    
		Insert into Usuario values
			(null,'Lucas Alves',11965466348,'Lucas.aferreira@bandtec.com.br','ALL'),
			(null,'Sara souza',11964495340,'Sara.costa@bandtec.com.br','ALL'),
			(null,'Dwart',11968590282,'gabriel.duarte@bandtec.com.br','CRUD'),
			(null,'Luana',11940352505,'Luana.hamaishi@bandtec.com.br','CRUD');	
            
            Select * from Usuario;
            
		-- Inserindo mais usuarios 
            insert into Usuario values 
            (null,'Alexandre Gavazzi',11953529098,'alexandre.gavazzi@bandtec.com.br','All');
		-- Atualizando dados 
            update usuario set nome='Lucas Ferreira' where id_users='1';
		
	Create table Melancia(
		idMelancia int auto_increment primary key,
		nome varchar(45),
        Tipo varchar(40),
        Peso Varchar(45),
        lugarOrigem varchar(45),
        tempIdeal varchar(45)
        );

		Insert into Melancia values
			(null,'Melancia Híbrida Conquista','Híbrida Conquista','10kg a 14kg','Sul-Brasil','24°-35°'),
			(null,'Melancia Híbrida Combat','Híbrida Combat','12kg a 15kg','Sul-Brasil','24°-35° '),
			(null,'Melancia Híbrida Red Quality','Híbrida Red Quality','10kg a 14kg','Sul-Brasil','21°-34° '),
			(null,'Melancia Híbrida Crimson Sweet Super','Híbrida Crimson Sweet Super','11kg a 14kg','Sul-Brasil','20°-30° '),
			(null,'Melancia Charleston Gray Super ','Charleston Gray Super','10kg a 18kg','Sul-Brasil','21°-35°');
            
        Select * from Melancia;
        

	Create table Sensor (
		idSensor int primary key auto_increment,
		nomeSensor varchar (50),
        localSensor varchar (70),
		temperatura int not null,
		dtTemp datetime
		);
        
        Insert into Sensor(nomeSensor,localSensor,temperatura) values
			('Sensor A','Estufa B',28.9),
			('Sensor B','Estufa A',25.6),
			('Sensor C','Estufa C',32.3);
            
		Select * from Sensor;
        
        -- Atualizando dados 
            update Sensor set nomeSensor ='Sensor Alfa' where id_users='1';
        
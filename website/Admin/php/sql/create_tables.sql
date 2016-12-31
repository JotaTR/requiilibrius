	DROP TABLE IF EXISTS requilib_website.tecnicaDetalhe;
	DROP TABLE IF EXISTS requilib_website.servico;
	DROP TABLE IF EXISTS requilib_website.cvitem;
	DROP TABLE IF EXISTS requilib_website.servico_item;
	DROP TABLE IF EXISTS requilib_website.servico_itemQA;
	DROP TABLE IF EXISTS requilib_website.img;
	DROP TABLE IF EXISTS requilib_website.video;
	DROP TABLE IF EXISTS requilib_website.contact;
	DROP TABLE IF EXISTS requilib_website.destaque;
	DROP TABLE IF EXISTS requilib_website.tecnica;
	DROP TABLE IF EXISTS requilib_website.funcionario;	
	DROP TABLE IF EXISTS requilib_website.audit;
		
	CREATE TABLE requilib_website.audit (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		query_date DATETIME,
		action varchar(10),
		entidade text,
		entidade_id int,
		query text
	);
	

	CREATE TABLE requilib_website.destaque (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		titulo varchar(200),
		resumo varchar(1000),
		texto text,
		top_flag boolean,
		creation_dt date,
		destaque_dt date
	);
	
	

	CREATE TABLE requilib_website.tecnica (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		nome varchar(200)
	);



	CREATE TABLE requilib_website.tecnicaDetalhe (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		item varchar(350),
		tecnica_id smallint
	);


	CREATE TABLE requilib_website.servico (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		pagina varchar(100),
		titulo varchar(200),
		texto text
	);




	CREATE TABLE requilib_website.funcionario (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		nome varchar(50),
		equipa char(2),
		resumo text
	);


	CREATE TABLE requilib_website.cvitem (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		funcionario_ID smallint ,
		seq int,
		field varchar(100),
		content varchar(1000),
		FOREIGN KEY (funcionario_ID) REFERENCES funcionario(id)
	);


	CREATE TABLE requilib_website.img (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		path varchar(500),
		nome varchar(50),
		main boolean,
		seq smallint,
		descricao varchar(100),
		entidade varchar(30),
		entidade_id smallint
	);


	CREATE TABLE requilib_website.video (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		url varchar(1000),
		type varchar(10),
		nome varchar(100),
		seq smallint,
		descricao varchar(500),
		entidade varchar(30),
		entidade_id smallint
	);


	CREATE TABLE requilib_website.contact (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		email varchar(50),
		nome varchar(50),
		apelido varchar(50),
		telefone varchar(15),
		descricao varchar(1000),
		motivo varchar(10)
	);


	CREATE TABLE requilib_website.servico_item (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		seq smallint,
		texto varchar(200),
		servico_id int
	);
	
	CREATE TABLE requilib_website.servico_itemQA (
		id smallint AUTO_INCREMENT PRIMARY KEY,
		seq smallint,
		answer text,
		question text,
		imgUrl varchar(200),
		servico_id int
	);
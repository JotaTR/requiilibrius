	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Ra�l Oliveira', 'ft','Fisioterapeuta licenciado pela Escola Superior do Alcoit�o (1982).<br>Mestrado em Desenvolvimento Motor (Faculdade de Motricidade Humana, UL - 1999)<br>Doutoramento em Ci�ncias da Motricidade, na especialidade de Ci�ncias da Fisioterapia (Faculdade de Motricidade Humana, UL)<br>Coordena desde cedo a pr�tica cl�nica com a investiga��o cient�fica e com o ensino superior. <br>Autor de diversos artigos em revistas e livros nacionais/internacionais e prelector em diversos semin�rios e confer�ncias espec�ficas da �rea.<br>Pr�tica e voca��o profissional direccionada para as �reas neuro-m�sculo-esquel�tica, com interesse espec�fico na identifica��o, preven��o e interven��o em fatores de risco de les�o, altera��es da qualidade do movimento e funcionalidade.<br> ');

	#Raul Oliveira CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 10 , 'Forma��o', 'Doutoramento em Ci�ncias da Motricidade, na especialidade de Ci�ncias da Fisioterapia - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 20 , 'Forma��o', 'Mestrado em Desenvolvimento Motor (1999) - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 30 , 'Forma��o', 'Curso de Fisioterapia (1982) - Escola Superior de Sa�de de Alcoit�o');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 40 , 'Ensino', 'Professor Auxiliar na Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 50 , 'Ensino', 'Professor Convidado na Escola Superior de Sa�de de Alcoit�o.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 60 , 'Ensino', 'Orientador de teses de mestrado e doutoramento.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 70 , 'Investiga��o', 'Investigador no Laborat�rio de Comportamento Motor da Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 80 , 'Investiga��o', 'Autor de diversos artigos em revistas e livros nacionais/internacionais.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 90 , 'Interesses Cient�ficos', 'Sport Injuries and Associated Risk Factors: Prevention and Intervention');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 100, 'Interesses Cient�ficos', 'Musculoskeletal Injuries and Associated Risk Factors - Prevention & Intervention');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 110, 'Interesses Cient�ficos', 'Low Back Trouble and Associated Risk factors: Prevention and Intervention');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'), 120, 'Interesses Cient�ficos', 'Movement disorders: Neuromuscular coordination patterns and adaptations during different motor tasks (e.g. sport skills, strength training exercises therapeutic exercises for movement disorders; gait). Neuromuscular Adaptations and dynamics muscle dysfunctions (Chronic Ankle/Knee Instability Shoulder dysfunctions)');

	#Ra�l Oliveira Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/RO/main.jpg', 'RO', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/RO/1.jpg', 'RO', 'RO1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ra�l Oliveira'));



	#Alexandra Oliveira
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Alexandra Oliveira', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoit�o e respons�vel pela �rea de Pediatria do Hospital Fernando Fonseca desde 1997.<br>Colabora��o em diversos mestrados, nomeadamente Ci�ncias da Fisioterapia, Sa�de da Mulher, Pediatria, e docente na Escola Superior de Alcoit�o. Orientadora de est�gios em contexto cl�nico. e coautora de diversos artigos cient�ficos.');
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AO/main.jpg', 'AO', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'));
	
	#Alexandra Oliveira CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 10 , 'Forma��o', '<strong>Bacharelato em Fisioterapia</strong>  pela Escola Reabilita��o de Alcoit�o 1983-1986.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 20 , 'Forma��o', '<strong>Licenciatura em Fisioterapia</strong> pela Escola Superior de Sa�de de Alcoit�o 2000-2001 com a  tese "An�lise da percep��o dos pais de beb�s pr�termo internados na UCIEN do HFF sobre o Programa Cuidar para o Desenvolvimento (PCD)". ');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 30 , 'Experi�ncia  Profissional', '<strong>Julho 1987 - Setembro 1988</strong> - Hospital Egas Moniz.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 40 , 'Experi�ncia  Profissional', '<strong>Setembro 1988 - Junho 1989</strong>1997 - Hospitais Civis de Lisboa - Hospital de Dona Estef�nia.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 50 , 'Experi�ncia  Profissional', '<strong>Maio 1997 - 2014</strong> - Hospital Fernando Fonseca  (em regime de requisi��o por interesse p�blico at� 2001. Inicia licen�a sem vencimento de longa dura��o por tempo indeterminado, situa��o que mant�m at� � presente data).');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 70 , 'Experi�ncia  Profissional', 'Fisioterapeuta Respons�vel pela �rea de Pediatria do HFF desde Junho de 1997. Experi�ncia profissional desenvolvida na avalia��o, programa��o e tratamento de crian�as com disfun��es neuro motoras, cardio respirat�rias, musculo esquel�ticas e tegument�rias em regime de ambulat�rio e internamento em parceria com as fam�lias.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 80 , 'Experi�ncia  Profissional', '�nfase no trabalho em equipa privilegiando a vertente educativa e de aprendizagem quer em rela��o �s crian�as / fam�lias, quer aos outros profissionais.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 90 , 'Experi�ncia  Profissional', 'Orientadora de Est�gios dos alunos do Curso de Fisioterapia da ESTSL desde 1998 at� �  presente data e da ESSA (1991-1995) e (1999-2001) (2010- 2013).');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 100 , 'Experi�ncia  Profissional', 'Colabora��o nos I, II e III Mestrado(s) de Ci�ncias da Fisioterapia da Faculdade de Motricidade Humana realizados em 2002, 2005 e 2006.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 110 , 'Experi�ncia  Profissional', 'Colabora��o na P�s Gradua��o da Sa�de da Mulher da Escola Superior de Sa�de de Alcoit�o (M�dulo IV) nos anos de 2007, 2008, 2009,2010 e 2011.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 120 , 'Experi�ncia  Profissional', 'Colabora��o na P�s Gradua��o de Fisioterapia em Pediatria da Escola Superior de Sa�de da Cruz Vermelha (M�dulo  VIII ) no ano de 2009 , 2011 e 2014.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 130 , 'Experi�ncia  Profissional', 'Colabora��o como docente convidada na Licenciatura de Fisioterapia da Escola Superior de Sa�de de Alcoit�o nos anos de 2007,2008,2010,2011,2012, 2013 ,2014,2015 e 2016.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 140 , 'Experi�ncia  Profissional', 'Colabora��o com a ESSA como j�ri de exame de alunos do Curso de Fisioterapia.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 150 , 'Experi�ncia  Profissional', 'Colabora��o na P�s Gradua��o Cuidados para o Neurodesenvolvimento do Beb� Pretermo  na Faculdade de Medicina de Lisboa (Modulo II, Modulo III Modulo VI Modulo VII e Modulo VIII) no ano de 2010.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 160 , 'Publica��es Cient�ficas', 'Manuel Cunha, Fl�via Correa, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Paula Val�rio, Rosalina Barroso, Helena Carreiro NEURODEVELOPMENT IN VERY PRETERM INFANTS AT 18 MONTHS\' CORRECTED AGE: PREDICTIVE VALUE OF CEREBELLAR GROWTH AND GENERAL MOVEMENTS ASSESSMENTS. ICP 2013, Poster');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 170 , 'Publica��es Cient�ficas', 'Manuel Cunha, Fl�via Correa, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Paula Val�rio, Rosalina Barroso, Helena Carreiro <strong>NEURODEVELOPMENT IN VERY PRETERM INFANTS AT 18 MONTHS\' CORRECTED AGE: PREDICTIVE VALUE OF CEREBELLAR GROWTH AND GENERAL MOVEMENTS ASSESSMENTS. ICP 2013</strong>, Poster.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 180 , 'Publica��es Cient�ficas', 'Flavia Correa, Manuel Cunha, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Rosalina BARROSO, Helena CARREIRO. <strong>PO23: Cerebellar Growth in Preterm Infants: A Longitudinal Sonographic Study.</strong> 3rd International Congress of UENPS 2012, Acta Med Port 2012;25(S2):152.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 200 , 'Publica��es Cient�ficas', 'Clara Marecos, Alexandra Oliveira, Helena Figueiredo, Ana Cadete, Manuel Cunha. <strong>Factores Preditivos da Ader�ncia dos Pais a um Programa de Seguimento de Crian�as Nascidas de Muito Baixo Peso.</strong> Ifisionline, 2011. www.ifisionline.ips.pt/num_act_files/artigo1_vol2_n1.pdf');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 210 , 'Publica��es Cient�ficas', 'Alexandra Oliveira; Manuel Cunha; Leonor Ferreira; Helena Figueiredo; Ana Cadete;Maria do C�u Machado(2008) <strong>Cuidar para o Desenvolvimento - Interven��o no Rec�m-Nascido Pr�termo de muito baixo peso</strong> ESSFisioline , Vol 4,n�2, 2008');

	
	
	
	#F�tima Sancho
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('F�tima Sancho', 'ft','Fisioterapeuta Licenciada pela Escola Superior de Sa�de do Alcoit�o.<br>Mestrado em Fisioterapia vertente Sa�de da Mulher ( Escola Superior de Sa�de do Alcoit�o).<br>Presidente do Grupo de Interesse de Fisioterapia na Sa�de da Mulher , coordenadora e docente da P�s gradua��o de Fisioterapia na Sa�de da Mulher e professora convidada em diferentes institui��es de ensino.<br>Forma��o espec�fica na �rea da sa�de da Mulher nomeadamente na prepara��o para o parto, p�s parto, massagem do beb�, incontin�ncia urin�ria feminina e masculina.<br>Autora de v�rias pequenas publica��es e v�deos relativos � prepara��o para o parto e incontin�ncia urin�ria.');

	#F�tima Sancho CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'), 10 , ' ', 'Presidente do Grupo de interesse em Fisioterapia na Sa�de da Mulher da Associa��o Portuguesa de Fisioterapeutas');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'), 20 , 'Forma��o', 'Mestrado em Fisioterapia na vertente Sa�de da Mulher, Escola Superior Sa�de de Alcoit�o');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'), 30 , 'Forma��o', 'Licenciatura em Fisioterapia, Escola Superior de Sa�de de Alcoit�o');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'), 40 , 'Ensino', 'Professora convidada da Escola Superior de Sa�de de Alcoit�o');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'), 50 , 'Ensino', 'Coordenadora e professora da P�s-gradua��o em Fisioterapia na Sa�de da Mulher da Escola Superior de Tecnologia de Sa�de de Lisboa');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'), 60 , 'Investiga��o', 'Autora e co-autora de v�rios artigos cient�ficos na �rea da sa�de da mulher');

	#F�tima Sancho Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/main.jpg', 'FS', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/1.jpg', 'FS', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/2.jpg', 'FS', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/3.jpg', 'FS', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'F�tima Sancho'));


	#Ana Morais Azevedo
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Ana Morais Azevedo', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoit�o (2005).<br>Doutoranda em Motricidade Humana, especialidade de Comportamento Motor (Faculdade de Motricidade Humana).<br>P�s-gradua��o em Fisioterapia no Desporto (Faculdade de Motricidade Humana - 2008).<br>Interesse cient�fico vocacionado para a �rea da terapia manual, controlo motor , biomec�nica e preven��o de les�es. <br>Percurso profissional com especial interesse na �rea da Dan�a - vasta experi�ncia na orienta��o e reabilita��o de bailarinos, assim como prelector em diversos eventos na �rea da Dan�a e Preven��o de Les�es em Bailarinos.');

	#Ana Morais Azevedo CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 10 , 'Forma��o', 'Doutoranda em Motricidade Humana, na especialidade de Comportamento Motor - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 20 , 'Forma��o', 'P�s-gradua��o em Fisioterapia no Desporto - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 30 , 'Forma��o', 'Licenciatura em Fisioterapia (2005) - Escola Superior de Sa�de de Alcoit�o');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 40 , 'Ensino', 'Prelectora em diversos eventos na �rea da Dan�a e Preven��o de Les�es nos Bailarinos.');

	#Ana Morais Azevedo Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AA/main.jpg', 'AA', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AA/1.jpg', 'AA', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AA/2.jpg', 'AA', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'));

	#David Pires
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('David Pires', 'ft','Fisioterapeuta do circuito ATP T�nis, licenciado pela Escola Superior do Alcoit�o.<br>Percurso profissional com especial interesse para o Desporto (T�nis) - vasta experi�ncia na orienta��o e reabilita��o de atletas, assim como prelector em diversos eventos na �rea da Preven��o de Les�es e T�nis.<br>Interesse cient�fico vocacionado para a �rea da terapia manual, controlo motor e preven��o de les�es.');

	#David Pires CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 10 , ' ', 'Fisioterapeuta do Circuito ATP - T�nis');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 20 , 'Forma��o', 'Licenciatura em Fisioterapia, Escola Superior de Sa�de de Alcoit�o.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 30 , 'Ensino', 'Prelector em v�rios eventos na �rea do T�nis e Preven��o de Les�es.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 40 , 'Forma��o Complementar', 'Reeduca��o Postural Global');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 50 , 'Forma��o Complementar', 'Mulligan');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 60 , 'Forma��o Complementar', 'McKenzie');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 70 , 'Forma��o Complementar', 'Kinetic Control (Coluna Cervical, Escapular e Lombar)');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 80 , 'Forma��o Complementar', 'Manipula��o Vertebral');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 90 , 'Forma��o Complementar', 'McConnell');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 100, 'Forma��o Complementar', 'Kinesiotaping');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 110, 'Forma��o Complementar', 'Dynamic Tape');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 120, 'Forma��o Complementar', 'Dry Needling');

	#David Pires Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/main.jpg', 'DP', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/1.jpg', 'DP', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/2.jpg', 'DP', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/3.jpg', 'DP', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));


	#Andreia Schlechter
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Andreia Schlechter', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoit�o (2005).<br>Pr�tica e voca��o profissional direccionada para as �reas m�sculo-esquel�tica, sa�de do idoso e terapia manual.');

	#Andreia Schlechter CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'), 10 , 'Forma��o', 'Licenciatura em Fisioterapia (2005) - Escola Superior de Sa�de de Alcoit�o');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'), 20 , 'Forma��o Complementar', 'Pilates adaptado para Fisioterapeutas (n�vel 1)');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'), 30 , 'Forma��o Complementar', 'Kinesiotaping');

	#Andreia Schlechter Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AS/main.jpg', 'AS', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AS/1.jpg', 'AS', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'));


	#Carolina Oliveira
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Carolina Oliveira', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoit�o (2011).<br>Mestrado de Fisioterapia em Condi��es M�sculo-Esquel�ticas (Escola Superior de Sa�de do Alcoit�o - 2015)<br>Pr�tica e voca��o profissional direccionada para as �reas neuro-m�sculo-esquel�tica, terapia manual, com especial interesse nas �reas de preven��o de les�es desportivas e biomec�nica.');

	#Carolina Oliveira CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 10 , 'Forma��o', 'Mestrado de Fisioterapia em Condi��es M�sculo-Esquel�ticas (2015), Escola Superior de Sa�de do Alcoit�o.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 20 , 'Forma��o', 'Licenciatura em Fisioterapia (2011), Escola Superior de Sa�de do Alcoit�o.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 30 , 'Forma��o Complementar', 'Conceito de Mulligan - Quadrantes Superior e Inferior');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 40 , 'Interesses Cient�ficos', 'Les�es neuro-m�sculo-esquel�tica');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 50 , 'Interesses Cient�ficos', 'Les�es desportivas');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 60 , 'Interesses Cient�ficos', 'Preven��o de Les�es');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 70 , 'Interesses Cient�ficos', 'Terapia Manual');

	#Carolina Oliveira Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/main.jpg', 'CO', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/1.jpg', 'CO', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/2.jpg', 'CO', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/3.jpg', 'CO', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/4.jpg', 'CO', '4', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));

	#Jo�o Rocha Vaz
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Jo�o Rocha Vaz', 'ft','Fisioterapeuta licenciado pela Escola Superior de Tecnologia da Sa�de de Lisboa (2013). <br>Doutoramento em Motricidade Humana na especialidade de Comportamento Motor (Faculdade de Motricidade Humana - 2016) <br>Licenciatura em Reabilita��o Psicomotora-(Faculdade de Motricidade Humana - 2009).<br>Atualmente coordena a pr�tica cl�nica com a investiga��o cient�fica e com o ensino superior. <br>Autor de diversos artigos cient�ficos em revistas internacionais, nas �reas: Les�es Desportivas, Preven��o de Les�es, Biomec�nica, Coordena��o Muscular, Variabilidade.');

	#Jo�o Rocha Vaz CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 10 , 'Forma��o', 'Doutoramento em Motricidade Humana, na especialidade de Comportamento Motor - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 20 , 'Forma��o', 'Licenciatura em Fisioterapia (2013) - Escola Superior de Tecnologia da Sa�de de Lisboa, IPL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 30 , 'Forma��o', 'Licenciatura em Reabilita��o Psicomotora (2009) - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 40 , 'Ensino', 'Professor Assistente na Licenciatura em Ci�ncias do Desporto e da Atividade F�sica - Universidade Europeia');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 50 , 'Ensino', 'Professor Assistente na Licenciatura em Fisioterapia - Universidade New Atl�ntica');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 60 , 'Ensino', 'Professor Convidado na P�s-Gradua��o em Strength & Conditioning - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 70 , 'Investiga��o', 'Membro do Centro Interdisciplinar para a Performance Humana - FMH/UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 80 , 'Investiga��o', 'Investigador do Laborat�rio de Comportamento Motor - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 90 , 'Investiga��o', 'Autor de diversos artigos em revistas internacionais');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 100, 'Interesses Cient�ficos', 'Les�es Desportivas');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 110, 'Interesses Cient�ficos', 'Preven��o de Les�es');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 120, 'Interesses Cient�ficos', 'Biomec�nica');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 130, 'Interesses Cient�ficos', 'Coordena��o Muscular');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'), 140, 'Interesses Cient�ficos', 'Variabilidade');

	#Jo�o Rocha Vaz Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/main.jpg', 'JV', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/1.jpg', 'JV', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/2.jpg', 'JV', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/3.jpg', 'JV', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Jo�o Rocha Vaz'));

	#Diogo Ferreira
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Diogo Ferreira', 'nu', 'Dietista membro da Ordem dos Nutricionistas (c�dula n�1268D), licenciado em Diet�tica e Nutri��o pela Escola Superior de Tecnologia da Sa�de de Lisboa (EstesL) em 2009. Desde cedo dedicou a carreira � �rea desportiva: entre 2010 e 2012 trabalhou enquanto Dietista "freelancer" na empresa Blos - Centro de compet�ncias alimentares", tendo desenvolvido projetos ligados � nutri��o e Desporto, artigos t�cnicos, rastreios de composi��o corporal, palestras e consultas de Nutri��o a popula��o comunit�ria e atletas de variadas modalidades.<br>Paralelamente, escreveu para a revista "O Praticante" e foi docente convidado no �mbito do "Curso de Nutri��o no Desporto" realizado na EstesL e do m�dulo de nutri��o do "Curso Avan�ado de Prepara��o F�sica Contextualizada em Futebol" realizado pelo Instituto Superior de Ci�ncias Educativas (ISCE). Desde 2012 que exerce fun��es de Nutricionista-Dietista no Sport Lisboa e Benfica ao n�vel do futebol profissional (2012-2013 equipa B e 2013-2015 equipa A), sendo atualmente consultor e coordenador t�cnico da �rea de Nutri��o do Benfica LAB. Ao n�vel da pr�tica privada, disponibiliza servi�os de consultoria coletiva e individual, incluindo consultas de Nutri��o a atletas e pessoas ativas de todas as idades.');


	#Diogo Ferreira Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DF/main.jpg', 'DF', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Diogo Ferreira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DF/main.jpg', 'DF', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Diogo Ferreira'));
	
	
	#Ana Teixeira 
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Ana Teixeira ', 'se', '');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AT/main.jpg', 'DF', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Teixeira'));

	#Lurdes
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Lurdes Cardoso', 'se', '');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/LC/main.jpg', 'LC', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Lurdes Cardoso'));

	#Patr�cia (Tixa)
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Patr�cia Costa', 'se', '');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/PC/main.jpg', 'PC', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Patr�cia Costa'));



	#HOME
	#Tecnicas
	INSERT INTO requilib_website.tecnica (nome) VALUES ('Reintegra��o/readapta��o da actividade desportiva/t�cnica despostiva');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/desporto.jpg', 'tec1', ' ', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Reintegra��o/readapta��o da actividade desportiva/t�cnica despostiva'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Terapia Manual com t�cnicas de mobiliza��o dos tecidos e das articula��es');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Diversas formas de massagem', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('T�cnicas de mobiliza��o articular e tecidular', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Cyriax', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Maitland', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Kaltenborn', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Mulligan', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('McKenzie   ', 2);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/TM.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Terapia Manual com t�cnicas de mobiliza��o dos tecidos e das articula��es'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Terapia pelo Movimento e Exerc�cio');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Exerc�cios terap�uticos', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Reeduca��o sensorio-motora', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Treino funcional e treino de for�a muscular', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('M�todos de reeduca��o da postura - Reeduca��o Postural Global (R.P.G.) - t�cnicas de estimula��o', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Facilita��o e inibi��o neuromuscular', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('T�cnicas de relaxamento, entre outras', 3);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/TE.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Terapia pelo Movimento e Exerc�cio'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('T�cnicas de imobiliza��o e conten��o selectiva');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Ligaduras funcionais', 4);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/TI.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'T�cnicas de imobiliza��o e conten��o selectiva'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Meios de compensa��o e substitui��o');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Aparelhos externos como pr�teses e ort�teses', 5);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/MC.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Meios de compensa��o e substitui��o'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Electroterapia');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/electroterapia.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Electroterapia'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Educa��o e aconselhamento');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Programas de preven��o e avalia��o do risco de les�es na dan�a, no desporto e de quedas em individuos seniores', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Desenvolver melhores capacidades de actua��o face �s situa��es particulares decorrentes da incapacidade', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Minimizar as consequ�ncias da incapacidade', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Alcan�ar uma melhor integra��o', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Adoptar estilos de vida saud�veis. Educa��o para a sa�de.', 7);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/educacao.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Educa��o e aconselhamento'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/educacao.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Educa��o e aconselhamento'));

	#SERVI�OS
	#SERVI�OS Altera��es Posturais
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('ap', 'Fisioterapia nas Altera��o Posturais', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Screening Postural: Avalia��o da postura e despiste de altera��es m�sculo-esquel�ticas que comprometam a postura fisiol�gica.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Diagn�stico e tratamento de altera��es posturais como escolioses, hiperlordoses, hipercifoses, p�s planos, p�s cavos e outras altera��es dos membros inferiores.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, '(Re) Educa��o postural e estrat�gias de adapta��o ao ambiente e �s actividades di�rias para minimizar as altera��es posturais.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Aconselhamento de estrat�gias para minimizar efeitos de posturas inadequadas.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 5, 'Adapta��o/altera��o dos h�bitos de vida di�rios (p.e. sentado ao computador) para promover as posturas adequadas em cada momento e contexto.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 6, 'Reeduca��o Postural Global (RPG) e outros m�todos de abordagem postural global para melhorar a consciencializa��o corporal e promover posturas equilibradas e/ou fisiol�gicas', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));

	#Servi�os Fisioterapia no Desporto
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('d', 'Fisioterapia no Desporto', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avalia��o de pr�-�poca / Screening de atletas. Programa de preven��o de les�es e gest�o do risco de les�o. Aconselhamento de atletas, treinadores e preparadores f�sicos.', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Avalia��o e tratamento de les�es especificas da pr�tica desportiva.', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/d/1.jpg', 'd1', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/d/2.jpg', 'd2', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	
	#Servi�os Musculo Esquel�tica
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('me', 'Fisioterapia Musculo-esquel�tica ', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Disfun��es da coluna vertebral.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Altera��es posturais (exemplo: hipercifose dorsal, hiperlordose lombar, rectifica��o lombar, horizontaliza��o do sacro, escolioses) e/ ou dores na coluna vertebral.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, 'Torcicolo cong�nito.)', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Les�es c�psulo-ligamentares e articulares (anca, joelho, tornozelo/p�, ombro, cotovelo e ante-bra�o, punho e m�o.)', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 5, 'Les�es musculo-tendinosas; Les�es agudas, sub-agudas e cr�nicas.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 6, 'Fisioterapia p�s- fracturas e outras les�es osteo-articulares.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 7, 'Fisioterapia p�s cirurgias ortop�dicas (ex. cirurgia aos meniscos e/ou ligamentos do joelho, pr�tese da anca, pr�tese do joelho; cirurgias reparadoras do ombro.) ', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/1.jpg', 'me1', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/3.jpg', 'me3', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/4.jpg', 'me4', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/5.jpg', 'me5', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/6.jpg', 'me6', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));

	INSERT INTO requilib_website.video (url, type, nome, descricao, entidade, entidade_id) VALUES ('videos/me.mp4', 'mp4', 'me', 'me', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me '));
	
	
	#Servi�os Nutri��o
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('n', 'Nutri��o', 'Acompanhamento alimentar personalizado, direccionado para os objetivos do atleta ou pessoa ativa, de qualquer idade. A abordagem pr�tica � baseada em evid�ncia cient�fica, procurando ajustar-se �s caracter�sticas individuais (idade, sexo, composi��o corporal, condicionantes cl�nicas, etc) e ao contexto da pessoa (modalidade, disponibilidade/hor�rios de trabalho, cultura e prefer�ncias alimentares, etc).<br>Em todas as sess�es � realizada avalia��o antropom�trica (peso, altura, per�metros, pregas cut�neas ou bioimped�ncia), permitindo monitorizar resultados que, juntamente com o feedback individual, ser�o considerados para uma otimiza��o cont�nua da alimenta��o/plano alimentar.<br>Entre cada avalia��o presencial � disponibilizado apoio via e-mail ou plataformas sociais para esclarecimento de d�vidas.');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, '', (SELECT id FROM requilib_website.servico WHERE pagina = 'n'));

	#Servi�os 
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('nm', 'Fisioterapia Neuro-muscular', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, '', (SELECT id FROM requilib_website.servico WHERE pagina = 'nm'));

	#Servi�os Sa�de da Crian�a
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('sc', 'Sa�de da Crian�a', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avalia��o e interven��o nos desvios e perturba��es do desenvolvimento da crian�a.', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Fisioterapia em condi��es neuro-musculo-esquel�ticas das crian�as (exemplos: torcicolo cong�nito,  Les�es do plexo braquial,  status p�s-fracturas e traumatismos).', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, 'Fisioterapia em condi��es respirat�rias das crian�as - Fisioterapia respirat�ria pedi�trica.', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Massagem do b�b�.', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));

	#Servi�os Sa�de da Mulher
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('sm', 'Sa�de da Mulher', '');

	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'De facto, qualquer fisioterapeuta tem habilita��es para tratar a maior parte das quest�es relacionadas com a Mulher mas, na verdade, existem na Mulher condi��es especificas s� dela. � este conhecimento mais profundo das especificidades da sa�de da mulher no seu todo que o Fisioterapeuta com compet�ncias nesta �rea pode dar uma resposta mais adequada �  situa��o.', 'Fisioterapia e Sa�de da Mulher, porque � que existe esta diferencia��o?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, '� comum ouvirmos dizer que quem apanha uma gripe durante a gravidez n�o se livra dela at� ao beb� nascer! Mas tamb�m � comum ouvir-se dizer que se uma gr�vida tem uma dor nas costas, na virilha, na sinfise p�bica , m�os dormentes ou dores nas articula��es ter� de a/as suportar pois estas s�o algumas das contig�ncias da gravidez.<br>Temos Boas Noticias para si!  n�o � mesmo nada assim, h� sempre algo que o Fisioterapeuta lhe poder� oferecer para minorar/ aliviar/tratar totalmente as suas queixas permitindo a que disfrute o mais possivel deste per�odo t�o excepcional da sua vida :)', 'Ser� que l� por estar gr�vida vai ter de suportar dores e maus estares que a limitam no seu dia a dia? ', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Preparar-se para o nascimento do seu beb� n�o passa s� pelo momento do parto, esse � mesmo o momento mais curto e mais espetacular de todo o processo.<br>Antes e depois do nascimento  existe todo um mundo de altera��es que o seu corpo vai sofrer e aos poucos se vai adaptando. Aprender a Ouvir o Seu Corpo nesta fase da vida � crucial para o seu Bem estar e do Seu Beb�. O Fisioterapeuta com compet�ncias nesta �rea poder� ajud�-la a percorrer este caminho entendendo e respeitando para onde e como o quer Viver.<br>Esperamos por si em qualquer altura e muito especialmente por volta das 28 semanas de gesta��o se quiser preparar-se connosco para este inesquec�vel per�odo da sua  vida.', 'J� pensou em preparar-se para o nascimento do "Vosso Filho"?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Dificilmente ser� Igual ! ser�o poucos os que ainda pensam que vai tudo continuar na mesma! Ali�s quando se engravida n�o ser� j� a pensar que � altura para mudar o rumo � vida? A maior problem�tica � que ningu�m consegue ao certo dizer aos casais qu�o diferente ir� ser a vida! E ser� que isso � importante ? E ser� que faria a diferen�a?<br>E aqui estamos de novo presentes para dar uma m�ozinha ao casal n�o s� para se "ERGUER" como para ir dando algumas pistas que poder�o ser um Ajuda preciosa no entendimento do seu rec�m nascido/beb�. Apoiando em termos da amamenta��o das v�rias etapes do seu  desenvolvimento, do al�vio das c�licas, dos sonos trocados e do choro. Todas estas s�o preocupa��es  da maioria dos pais que se devidamente acompanhados e orientados v�o poder usufruir ainda mais o seu beb�.', 'Ser� que a vida vai ser igual depois do seu Beb� nascer?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Esta � uma pergunta que dificilmente ouvimos nas primeiras semanas de vida do beb� pois, habitualmente resta pouco tempo para algo que n�o seja dar de mamar, mudar fraldas, p�r o beb� a dormir e nos pequenos intervalinhos comer qualquer coisa e dormir uma soneca. A Natureza � s�bia e ajuda a que as m�es n�o saiam de perto da sua cria!
Mais tarde, por volta das 4/6 semanas , com a vida um pouco mais organizada � altura de come�ar a fazer algo para voltar a ficar em forma. Ao mesmo tempo h� que aprender a lidar com as v�rias situa��es que v�o surgindo com o seu beb�. <br>� pois nessa altura que come�amos as nossas sess�es de p�s parto (4/6 semanas ap�s o parto) e onde est�o convidados m�e e beb�.', 'Ser� que posso ir para o gin�sio j�?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Um parto que tenha lesionado o pavimento p�lvico pode levar a n�o s� perdas de urina, como desconforto e dor na rela��o sexual. Esta e outras situa��es t�m solu��o, contacte-nos, n�o deixe arrastar a situa��o.<br>Os anos v�o trazendo consigo coisa Boas e coisas Menos Boas! A Menopausa e a Osteoporose s�o algumas delas .<br>Sabemos que trazem consequ�ncias por vezes menos simp�ticas para a s�ude da mulher mas tamb�m sabemos que atrav�s de algumas altera��es no estilo de vida, do exerc�cio apropriado e do conhecimento  da situa��o podemos Viver Mais e Melhor. Estamos aqui para lhe dar uma ajudinha a saltar os obst�culos.', 'Tem ideia da Import�ncia que os seus m�sculos do pavimento p�lvico t�m para o seu bem estar e qualidade de vida?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	
	#Servi�os Sa�de do Idoso
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('si', 'Sa�de do Idoso', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Aconselhamento e promo��o da autonomia na marcha e actividades funcionais.', (SELECT id FROM requilib_website.servico WHERE pagina = 'si'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Programas de exerc�cios de mobilidade funcional global, treino de equilibrio e preven��o de quedas.', (SELECT id FROM requilib_website.servico WHERE pagina = 'si'));

	#Servi�os Fisioterapia na Dan�a
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('fd', 'Fisioterapia na Dan�a.', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avalia��o da condi��o cl�nica de bailarinos profissionais, pr�-profissionais, recreativos e de estudantes de dan�a.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Aconselhamento, Avalia��o e Preven��o dos factores de risco associados �s les�es dos diversos tipos de dan�a. Programa de "dance screening" nos bailarinos.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, 'Programa de preven��o de les�es na Dan�a.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Avalia��o e Tratamento das diversas les�es m�sculo-esquel�ticas nos bailarinos(as).', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 5, 'Programa de educa��o para a sa�de de bailarinos, professores e/ou pais na �rea da anatomia funcional e erros t�cnicos, biomec�nica, les�es e sua preven��o.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/fd/1.jpg', 'danca1', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));

	
	
	#Servi�os Fisioterapia ao Domic�lio
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('do', 'Fisioterapia ao Domic�lio', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avalia��o, tratamento e aconselhamento na �rea m�sculo-esquel�tica em situa��es onde o utente, por diversos motivos, n�o tem autonomia para se deslocar ao gabinete de Fisioterapia.', (SELECT id FROM requilib_website.servico WHERE pagina = 'do'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Educa��o do utente ou cuidadores para uma maior autonomia funcional.', (SELECT id FROM requilib_website.servico WHERE pagina = 'do'));









	#VIDEOS DUMMY SERVI�OS
	INSERT INTO requilib_website.video (url, type, nome, descricao, entidade, entidade_id) VALUES ('videos/small.webm', 'mp4', '', 'Domic�lio', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'do'));





	#DESTAQUES DUMMY
	INSERT INTO requilib_website.destaque 
		(titulo, 
		resumo, 
		texto,
		top_flag, 
		creation_dt, 
		destaque_dt) 
	VALUES (
		'Diogo Rocha e Miguel Oliveira Vencem 4� Campeonato Nacional de Paddle.', 
		'Diogo Rocha e Miguel Oliveira Vencem 4� Campeonato Nacional de Paddle.', 
		'Diogo Rocha e Miguel Oliveira Vencem 4� Campeonato Nacional de Paddle', 
		true, 
		NOW(),
		STR_TO_DATE('03,10,2016', '%d,%m,%Y')
	);

	INSERT INTO requilib_website.destaque 
		(titulo, 
		resumo, 
		texto,
		top_flag, 
		creation_dt, 
		destaque_dt) 
	VALUES (
		'Fisioterapeutas da R\'equilibrius participaram no Semin�rio Instabilidade Din�mica no Membro Inferior',
		'No passado dia 12 de Novembro, os Fisioterapeutas Jo�o Rocha Vaz e Ra�l Oliveira estiveram presentes no Semin�rio Instabilidade Din�mica no Membro Inferior, organizado pelo Laborat�rio de Comportamento Motor da FMH.', 
		'No passado dia 12 de Novembro, os Fisioterapeutas Jo�o Rocha Vaz e Ra�l Oliveira estiveram presentes no Semin�rio Instabilidade Din�mica no Membro Inferior, organizado pelo Laborat�rio de Comportamento Motor da FMH.', 
		true, 
		NOW(),
		STR_TO_DATE('05,10,2016', '%d,%m,%Y')
	);




	#Imagens Dummy
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/15203184_1221381287932149_546476678957154558_n.jpg?oh=fde01c89e74e34c8b6ab3180ccd80fbd&oe=58D5943B', 'Terapeuta Jo�o Vaz', '', 'destaque', (SELECT id FROM requilib_website.destaque WHERE titulo = 'Fisioterapeutas da R\'equilibrius participaram no Semin�rio Instabilidade Din�mica no Membro Inferior'));

	INSERT INTO requilib_website.video (
		url, 
		type, 
		nome, 
		descricao, 
		entidade, 
		entidade_id
	) VALUES (
		'https://www.youtube.com/embed/WUquTU96v6Y', 
		'link', 
		'Diogo Rocha e Miguel Oliveira Vencem 4� Campeonato Nacional de Paddle', 
		'Diogo Rocha e Miguel Oliveira Vencem 4� Campeonato Nacional de Paddle.', 
		'destaque', 
		(SELECT id FROM requilib_website.destaque WHERE titulo = 'Diogo Rocha e Miguel Oliveira Vencem 4� Campeonato Nacional de Paddle.')
	);


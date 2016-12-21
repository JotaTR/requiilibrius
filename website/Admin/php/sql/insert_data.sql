	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Raúl Oliveira', 'ft','Fisioterapeuta licenciado pela Escola Superior do Alcoitão (1982).<br>Mestrado em Desenvolvimento Motor (Faculdade de Motricidade Humana, UL - 1999)<br>Doutoramento em Ciências da Motricidade, na especialidade de Ciências da Fisioterapia (Faculdade de Motricidade Humana, UL)<br>Coordena desde cedo a prática clínica com a investigação científica e com o ensino superior. <br>Autor de diversos artigos em revistas e livros nacionais/internacionais e prelector em diversos seminários e conferências específicas da área.<br>Prática e vocação profissional direccionada para as áreas neuro-músculo-esquelética, com interesse específico na identificação, prevenção e intervenção em fatores de risco de lesão, alterações da qualidade do movimento e funcionalidade.<br> ');

	#Raul Oliveira CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 10 , 'Formação', 'Doutoramento em Ciências da Motricidade, na especialidade de Ciências da Fisioterapia - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 20 , 'Formação', 'Mestrado em Desenvolvimento Motor (1999) - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 30 , 'Formação', 'Curso de Fisioterapia (1982) - Escola Superior de Saúde de Alcoitão');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 40 , 'Ensino', 'Professor Auxiliar na Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 50 , 'Ensino', 'Professor Convidado na Escola Superior de Saúde de Alcoitão.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 60 , 'Ensino', 'Orientador de teses de mestrado e doutoramento.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 70 , 'Investigação', 'Investigador no Laboratório de Comportamento Motor da Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 80 , 'Investigação', 'Autor de diversos artigos em revistas e livros nacionais/internacionais.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 90 , 'Interesses Científicos', 'Sport Injuries and Associated Risk Factors: Prevention and Intervention');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 100, 'Interesses Científicos', 'Musculoskeletal Injuries and Associated Risk Factors - Prevention & Intervention');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 110, 'Interesses Científicos', 'Low Back Trouble and Associated Risk factors: Prevention and Intervention');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'), 120, 'Interesses Científicos', 'Movement disorders: Neuromuscular coordination patterns and adaptations during different motor tasks (e.g. sport skills, strength training exercises therapeutic exercises for movement disorders; gait). Neuromuscular Adaptations and dynamics muscle dysfunctions (Chronic Ankle/Knee Instability Shoulder dysfunctions)');

	#Raúl Oliveira Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/RO/main.jpg', 'RO', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/RO/1.jpg', 'RO', 'RO1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Raúl Oliveira'));



	#Alexandra Oliveira
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Alexandra Oliveira', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoitão e responsável pela área de Pediatria do Hospital Fernando Fonseca desde 1997.<br>Colaboração em diversos mestrados, nomeadamente Ciências da Fisioterapia, Saúde da Mulher, Pediatria, e docente na Escola Superior de Alcoitão. Orientadora de estágios em contexto clínico. e coautora de diversos artigos científicos.');
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AO/main.jpg', 'AO', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'));
	
	#Alexandra Oliveira CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 10 , 'Formação', '<strong>Bacharelato em Fisioterapia</strong>  pela Escola Reabilitação de Alcoitão 1983-1986.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 20 , 'Formação', '<strong>Licenciatura em Fisioterapia</strong> pela Escola Superior de Saúde de Alcoitão 2000-2001 com a  tese "Análise da percepção dos pais de bebés prétermo internados na UCIEN do HFF sobre o Programa Cuidar para o Desenvolvimento (PCD)". ');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 30 , 'Experiência  Profissional', '<strong>Julho 1987 - Setembro 1988</strong> - Hospital Egas Moniz.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 40 , 'Experiência  Profissional', '<strong>Setembro 1988 - Junho 1989</strong>1997 - Hospitais Civis de Lisboa - Hospital de Dona Estefânia.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 50 , 'Experiência  Profissional', '<strong>Maio 1997 - 2014</strong> - Hospital Fernando Fonseca  (em regime de requisição por interesse público até 2001. Inicia licença sem vencimento de longa duração por tempo indeterminado, situação que mantém até á presente data).');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 70 , 'Experiência  Profissional', 'Fisioterapeuta Responsável pela área de Pediatria do HFF desde Junho de 1997. Experiência profissional desenvolvida na avaliação, programação e tratamento de crianças com disfunções neuro motoras, cardio respiratórias, musculo esqueléticas e tegumentárias em regime de ambulatório e internamento em parceria com as famílias.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 80 , 'Experiência  Profissional', 'Ênfase no trabalho em equipa privilegiando a vertente educativa e de aprendizagem quer em relação ás crianças / famílias, quer aos outros profissionais.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 90 , 'Experiência  Profissional', 'Orientadora de Estágios dos alunos do Curso de Fisioterapia da ESTSL desde 1998 até á  presente data e da ESSA (1991-1995) e (1999-2001) (2010- 2013).');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 100 , 'Experiência  Profissional', 'Colaboração nos I, II e III Mestrado(s) de Ciências da Fisioterapia da Faculdade de Motricidade Humana realizados em 2002, 2005 e 2006.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 110 , 'Experiência  Profissional', 'Colaboração na Pós Graduação da Saúde da Mulher da Escola Superior de Saúde de Alcoitão (Módulo IV) nos anos de 2007, 2008, 2009,2010 e 2011.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 120 , 'Experiência  Profissional', 'Colaboração na Pós Graduação de Fisioterapia em Pediatria da Escola Superior de Saúde da Cruz Vermelha (Módulo  VIII ) no ano de 2009 , 2011 e 2014.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 130 , 'Experiência  Profissional', 'Colaboração como docente convidada na Licenciatura de Fisioterapia da Escola Superior de Saúde de Alcoitão nos anos de 2007,2008,2010,2011,2012, 2013 ,2014,2015 e 2016.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 140 , 'Experiência  Profissional', 'Colaboração com a ESSA como júri de exame de alunos do Curso de Fisioterapia.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 150 , 'Experiência  Profissional', 'Colaboração na Pós Graduação Cuidados para o Neurodesenvolvimento do Bebé Pretermo  na Faculdade de Medicina de Lisboa (Modulo II, Modulo III Modulo VI Modulo VII e Modulo VIII) no ano de 2010.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 160 , 'Publicações Científicas', 'Manuel Cunha, Flávia Correa, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Paula Valério, Rosalina Barroso, Helena Carreiro NEURODEVELOPMENT IN VERY PRETERM INFANTS AT 18 MONTHS\' CORRECTED AGE: PREDICTIVE VALUE OF CEREBELLAR GROWTH AND GENERAL MOVEMENTS ASSESSMENTS. ICP 2013, Poster');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 170 , 'Publicações Científicas', 'Manuel Cunha, Flávia Correa, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Paula Valério, Rosalina Barroso, Helena Carreiro <strong>NEURODEVELOPMENT IN VERY PRETERM INFANTS AT 18 MONTHS\' CORRECTED AGE: PREDICTIVE VALUE OF CEREBELLAR GROWTH AND GENERAL MOVEMENTS ASSESSMENTS. ICP 2013</strong>, Poster.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 180 , 'Publicações Científicas', 'Flavia Correa, Manuel Cunha, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Rosalina BARROSO, Helena CARREIRO. <strong>PO23: Cerebellar Growth in Preterm Infants: A Longitudinal Sonographic Study.</strong> 3rd International Congress of UENPS 2012, Acta Med Port 2012;25(S2):152.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 200 , 'Publicações Científicas', 'Clara Marecos, Alexandra Oliveira, Helena Figueiredo, Ana Cadete, Manuel Cunha. <strong>Factores Preditivos da Aderência dos Pais a um Programa de Seguimento de Crianças Nascidas de Muito Baixo Peso.</strong> Ifisionline, 2011. www.ifisionline.ips.pt/num_act_files/artigo1_vol2_n1.pdf');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Alexandra Oliveira'), 210 , 'Publicações Científicas', 'Alexandra Oliveira; Manuel Cunha; Leonor Ferreira; Helena Figueiredo; Ana Cadete;Maria do Céu Machado(2008) <strong>Cuidar para o Desenvolvimento - Intervenção no Recém-Nascido Prétermo de muito baixo peso</strong> ESSFisioline , Vol 4,nº2, 2008');

	
	
	
	#Fátima Sancho
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Fátima Sancho', 'ft','Fisioterapeuta Licenciada pela Escola Superior de Saúde do Alcoitão.<br>Mestrado em Fisioterapia vertente Saúde da Mulher ( Escola Superior de Saúde do Alcoitão).<br>Presidente do Grupo de Interesse de Fisioterapia na Saúde da Mulher , coordenadora e docente da Pós graduação de Fisioterapia na Saúde da Mulher e professora convidada em diferentes instituições de ensino.<br>Formação específica na área da saúde da Mulher nomeadamente na preparação para o parto, pós parto, massagem do bebé, incontinência urinária feminina e masculina.<br>Autora de várias pequenas publicações e vídeos relativos à preparação para o parto e incontinência urinária.');

	#Fátima Sancho CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'), 10 , ' ', 'Presidente do Grupo de interesse em Fisioterapia na Saúde da Mulher da Associação Portuguesa de Fisioterapeutas');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'), 20 , 'Formação', 'Mestrado em Fisioterapia na vertente Saúde da Mulher, Escola Superior Saúde de Alcoitão');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'), 30 , 'Formação', 'Licenciatura em Fisioterapia, Escola Superior de Saúde de Alcoitão');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'), 40 , 'Ensino', 'Professora convidada da Escola Superior de Saúde de Alcoitão');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'), 50 , 'Ensino', 'Coordenadora e professora da Pós-graduação em Fisioterapia na Saúde da Mulher da Escola Superior de Tecnologia de Saúde de Lisboa');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'), 60 , 'Investigação', 'Autora e co-autora de vários artigos científicos na área da saúde da mulher');

	#Fátima Sancho Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/main.jpg', 'FS', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/1.jpg', 'FS', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/2.jpg', 'FS', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/FS/3.jpg', 'FS', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Fátima Sancho'));


	#Ana Morais Azevedo
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Ana Morais Azevedo', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoitão (2005).<br>Doutoranda em Motricidade Humana, especialidade de Comportamento Motor (Faculdade de Motricidade Humana).<br>Pós-graduação em Fisioterapia no Desporto (Faculdade de Motricidade Humana - 2008).<br>Interesse científico vocacionado para a área da terapia manual, controlo motor , biomecânica e prevenção de lesões. <br>Percurso profissional com especial interesse na área da Dança - vasta experiência na orientação e reabilitação de bailarinos, assim como prelector em diversos eventos na área da Dança e Prevenção de Lesões em Bailarinos.');

	#Ana Morais Azevedo CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 10 , 'Formação', 'Doutoranda em Motricidade Humana, na especialidade de Comportamento Motor - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 20 , 'Formação', 'Pós-graduação em Fisioterapia no Desporto - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 30 , 'Formação', 'Licenciatura em Fisioterapia (2005) - Escola Superior de Saúde de Alcoitão');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'), 40 , 'Ensino', 'Prelectora em diversos eventos na área da Dança e Prevenção de Lesões nos Bailarinos.');

	#Ana Morais Azevedo Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AA/main.jpg', 'AA', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AA/1.jpg', 'AA', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AA/2.jpg', 'AA', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Morais Azevedo'));

	#David Pires
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('David Pires', 'ft','Fisioterapeuta do circuito ATP Ténis, licenciado pela Escola Superior do Alcoitão.<br>Percurso profissional com especial interesse para o Desporto (Ténis) - vasta experiência na orientação e reabilitação de atletas, assim como prelector em diversos eventos na área da Prevenção de Lesões e Ténis.<br>Interesse científico vocacionado para a área da terapia manual, controlo motor e prevenção de lesões.');

	#David Pires CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 10 , ' ', 'Fisioterapeuta do Circuito ATP - Ténis');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 20 , 'Formação', 'Licenciatura em Fisioterapia, Escola Superior de Saúde de Alcoitão.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 30 , 'Ensino', 'Prelector em vários eventos na área do Ténis e Prevenção de Lesões.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 40 , 'Formação Complementar', 'Reeducação Postural Global');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 50 , 'Formação Complementar', 'Mulligan');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 60 , 'Formação Complementar', 'McKenzie');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 70 , 'Formação Complementar', 'Kinetic Control (Coluna Cervical, Escapular e Lombar)');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 80 , 'Formação Complementar', 'Manipulação Vertebral');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 90 , 'Formação Complementar', 'McConnell');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 100, 'Formação Complementar', 'Kinesiotaping');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 110, 'Formação Complementar', 'Dynamic Tape');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'), 120, 'Formação Complementar', 'Dry Needling');

	#David Pires Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/main.jpg', 'DP', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/1.jpg', 'DP', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/2.jpg', 'DP', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DP/3.jpg', 'DP', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'David Pires'));


	#Andreia Schlechter
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Andreia Schlechter', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoitão (2005).<br>Prática e vocação profissional direccionada para as áreas músculo-esquelética, saúde do idoso e terapia manual.');

	#Andreia Schlechter CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'), 10 , 'Formação', 'Licenciatura em Fisioterapia (2005) - Escola Superior de Saúde de Alcoitão');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'), 20 , 'Formação Complementar', 'Pilates adaptado para Fisioterapeutas (nível 1)');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'), 30 , 'Formação Complementar', 'Kinesiotaping');

	#Andreia Schlechter Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AS/main.jpg', 'AS', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AS/1.jpg', 'AS', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Andreia Schlechter'));


	#Carolina Oliveira
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Carolina Oliveira', 'ft','Fisioterapeuta licenciada pela Escola Superior do Alcoitão (2011).<br>Mestrado de Fisioterapia em Condições Músculo-Esqueléticas (Escola Superior de Saúde do Alcoitão - 2015)<br>Prática e vocação profissional direccionada para as áreas neuro-músculo-esquelética, terapia manual, com especial interesse nas áreas de prevenção de lesões desportivas e biomecânica.');

	#Carolina Oliveira CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 10 , 'Formação', 'Mestrado de Fisioterapia em Condições Músculo-Esqueléticas (2015), Escola Superior de Saúde do Alcoitão.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 20 , 'Formação', 'Licenciatura em Fisioterapia (2011), Escola Superior de Saúde do Alcoitão.');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 30 , 'Formação Complementar', 'Conceito de Mulligan - Quadrantes Superior e Inferior');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 40 , 'Interesses Científicos', 'Lesões neuro-músculo-esquelética');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 50 , 'Interesses Científicos', 'Lesões desportivas');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 60 , 'Interesses Científicos', 'Prevenção de Lesões');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'), 70 , 'Interesses Científicos', 'Terapia Manual');

	#Carolina Oliveira Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/main.jpg', 'CO', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/1.jpg', 'CO', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/2.jpg', 'CO', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/3.jpg', 'CO', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/CO/4.jpg', 'CO', '4', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Carolina Oliveira'));

	#João Rocha Vaz
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('João Rocha Vaz', 'ft','Fisioterapeuta licenciado pela Escola Superior de Tecnologia da Saúde de Lisboa (2013). <br>Doutoramento em Motricidade Humana na especialidade de Comportamento Motor (Faculdade de Motricidade Humana - 2016) <br>Licenciatura em Reabilitação Psicomotora-(Faculdade de Motricidade Humana - 2009).<br>Atualmente coordena a prática clínica com a investigação científica e com o ensino superior. <br>Autor de diversos artigos científicos em revistas internacionais, nas áreas: Lesões Desportivas, Prevenção de Lesões, Biomecânica, Coordenação Muscular, Variabilidade.');

	#João Rocha Vaz CV Items
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 10 , 'Formação', 'Doutoramento em Motricidade Humana, na especialidade de Comportamento Motor - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 20 , 'Formação', 'Licenciatura em Fisioterapia (2013) - Escola Superior de Tecnologia da Saúde de Lisboa, IPL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 30 , 'Formação', 'Licenciatura em Reabilitação Psicomotora (2009) - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 40 , 'Ensino', 'Professor Assistente na Licenciatura em Ciências do Desporto e da Atividade Física - Universidade Europeia');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 50 , 'Ensino', 'Professor Assistente na Licenciatura em Fisioterapia - Universidade New Atlântica');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 60 , 'Ensino', 'Professor Convidado na Pós-Graduação em Strength & Conditioning - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 70 , 'Investigação', 'Membro do Centro Interdisciplinar para a Performance Humana - FMH/UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 80 , 'Investigação', 'Investigador do Laboratório de Comportamento Motor - Faculdade de Motricidade Humana, UL');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 90 , 'Investigação', 'Autor de diversos artigos em revistas internacionais');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 100, 'Interesses Científicos', 'Lesões Desportivas');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 110, 'Interesses Científicos', 'Prevenção de Lesões');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 120, 'Interesses Científicos', 'Biomecânica');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 130, 'Interesses Científicos', 'Coordenação Muscular');
	INSERT INTO requilib_website.cvitem (funcionario_id, seq, field, content) VALUES ((SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'), 140, 'Interesses Científicos', 'Variabilidade');

	#João Rocha Vaz Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/main.jpg', 'JV', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/1.jpg', 'JV', '1', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/2.jpg', 'JV', '2', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/JV/3.jpg', 'JV', '3', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'João Rocha Vaz'));

	#Diogo Ferreira
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Diogo Ferreira', 'nu', 'Dietista membro da Ordem dos Nutricionistas (cédula nº1268D), licenciado em Dietética e Nutrição pela Escola Superior de Tecnologia da Saúde de Lisboa (EstesL) em 2009. Desde cedo dedicou a carreira à área desportiva: entre 2010 e 2012 trabalhou enquanto Dietista "freelancer" na empresa Blos - Centro de competências alimentares", tendo desenvolvido projetos ligados à nutrição e Desporto, artigos técnicos, rastreios de composição corporal, palestras e consultas de Nutrição a população comunitária e atletas de variadas modalidades.<br>Paralelamente, escreveu para a revista "O Praticante" e foi docente convidado no âmbito do "Curso de Nutrição no Desporto" realizado na EstesL e do módulo de nutrição do "Curso Avançado de Preparação Física Contextualizada em Futebol" realizado pelo Instituto Superior de Ciências Educativas (ISCE). Desde 2012 que exerce funções de Nutricionista-Dietista no Sport Lisboa e Benfica ao nível do futebol profissional (2012-2013 equipa B e 2013-2015 equipa A), sendo atualmente consultor e coordenador técnico da área de Nutrição do Benfica LAB. Ao nível da prática privada, disponibiliza serviços de consultoria coletiva e individual, incluindo consultas de Nutrição a atletas e pessoas ativas de todas as idades.');


	#Diogo Ferreira Imagens
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DF/main.jpg', 'DF', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Diogo Ferreira'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/DF/main.jpg', 'DF', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Diogo Ferreira'));
	
	
	#Ana Teixeira 
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Ana Teixeira ', 'se', '');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/AT/main.jpg', 'DF', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Ana Teixeira'));

	#Lurdes
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Lurdes Cardoso', 'se', '');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/LC/main.jpg', 'LC', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Lurdes Cardoso'));

	#Patrícia (Tixa)
	INSERT INTO requilib_website.funcionario (nome, equipa, resumo) VALUES ('Patrícia Costa', 'se', '');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/equipa/PC/main.jpg', 'PC', 'main', 'funcionario', (SELECT id FROM requilib_website.funcionario WHERE nome = 'Patrícia Costa'));



	#HOME
	#Tecnicas
	INSERT INTO requilib_website.tecnica (nome) VALUES ('Reintegração/readaptação da actividade desportiva/técnica despostiva');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/desporto.jpg', 'tec1', ' ', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Reintegração/readaptação da actividade desportiva/técnica despostiva'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Terapia Manual com técnicas de mobilização dos tecidos e das articulações');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Diversas formas de massagem', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Técnicas de mobilização articular e tecidular', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Cyriax', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Maitland', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Kaltenborn', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Mulligan', 2);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('McKenzie   ', 2);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/TM.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Terapia Manual com técnicas de mobilização dos tecidos e das articulações'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Terapia pelo Movimento e Exercício');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Exercícios terapêuticos', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Reeducação sensorio-motora', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Treino funcional e treino de força muscular', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Métodos de reeducação da postura - Reeducação Postural Global (R.P.G.) - técnicas de estimulação', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Facilitação e inibição neuromuscular', 3);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Técnicas de relaxamento, entre outras', 3);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/TE.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Terapia pelo Movimento e Exercício'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Técnicas de imobilização e contenção selectiva');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Ligaduras funcionais', 4);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/TI.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Técnicas de imobilização e contenção selectiva'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Meios de compensação e substituição');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Aparelhos externos como próteses e ortóteses', 5);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/MC.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Meios de compensação e substituição'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Electroterapia');
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/electroterapia.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Electroterapia'));

	INSERT INTO requilib_website.tecnica (nome) VALUES ('Educação e aconselhamento');
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Programas de prevenção e avaliação do risco de lesões na dança, no desporto e de quedas em individuos seniores', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Desenvolver melhores capacidades de actuação face às situações particulares decorrentes da incapacidade', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Minimizar as consequências da incapacidade', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Alcançar uma melhor integração', 7);
	INSERT INTO requilib_website.tecnicaDetalhe (item, tecnica_id) VALUES ('Adoptar estilos de vida saudáveis. Educação para a saúde.', 7);
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/educacao.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Educação e aconselhamento'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/tecnicas/educacao.jpg', 'tec1', '', 'tecnica', (SELECT id FROM requilib_website.tecnica WHERE nome = 'Educação e aconselhamento'));

	#SERVIÇOS
	#SERVIÇOS Alterações Posturais
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('ap', 'Fisioterapia nas Alteração Posturais', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Screening Postural: Avaliação da postura e despiste de alterações músculo-esqueléticas que comprometam a postura fisiológica.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Diagnóstico e tratamento de alterações posturais como escolioses, hiperlordoses, hipercifoses, pés planos, pés cavos e outras alterações dos membros inferiores.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, '(Re) Educação postural e estratégias de adaptação ao ambiente e às actividades diárias para minimizar as alterações posturais.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Aconselhamento de estratégias para minimizar efeitos de posturas inadequadas.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 5, 'Adaptação/alteração dos hábitos de vida diários (p.e. sentado ao computador) para promover as posturas adequadas em cada momento e contexto.', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 6, 'Reeducação Postural Global (RPG) e outros métodos de abordagem postural global para melhorar a consciencialização corporal e promover posturas equilibradas e/ou fisiológicas', (SELECT id FROM requilib_website.servico WHERE pagina = 'ap'));

	#Serviços Fisioterapia no Desporto
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('d', 'Fisioterapia no Desporto', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avaliação de pré-época / Screening de atletas. Programa de prevenção de lesões e gestão do risco de lesão. Aconselhamento de atletas, treinadores e preparadores físicos.', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Avaliação e tratamento de lesões especificas da prática desportiva.', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/d/1.jpg', 'd1', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/d/2.jpg', 'd2', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'd'));
	
	#Serviços Musculo Esquelética
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('me', 'Fisioterapia Musculo-esquelética ', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Disfunções da coluna vertebral.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Alterações posturais (exemplo: hipercifose dorsal, hiperlordose lombar, rectificação lombar, horizontalização do sacro, escolioses) e/ ou dores na coluna vertebral.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, 'Torcicolo congénito.)', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Lesões cápsulo-ligamentares e articulares (anca, joelho, tornozelo/pé, ombro, cotovelo e ante-braço, punho e mão.)', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 5, 'Lesões musculo-tendinosas; Lesões agudas, sub-agudas e crónicas.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 6, 'Fisioterapia pós- fracturas e outras lesões osteo-articulares.', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 7, 'Fisioterapia pós cirurgias ortopédicas (ex. cirurgia aos meniscos e/ou ligamentos do joelho, prótese da anca, prótese do joelho; cirurgias reparadoras do ombro.) ', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/1.jpg', 'me1', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/3.jpg', 'me3', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/4.jpg', 'me4', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/5.jpg', 'me5', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/me/6.jpg', 'me6', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me'));

	INSERT INTO requilib_website.video (url, type, nome, descricao, entidade, entidade_id) VALUES ('videos/me.mp4', 'mp4', 'me', 'me', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'me '));
	
	
	#Serviços Nutrição
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('n', 'Nutrição', 'Acompanhamento alimentar personalizado, direccionado para os objetivos do atleta ou pessoa ativa, de qualquer idade. A abordagem prática é baseada em evidência científica, procurando ajustar-se às características individuais (idade, sexo, composição corporal, condicionantes clínicas, etc) e ao contexto da pessoa (modalidade, disponibilidade/horários de trabalho, cultura e preferências alimentares, etc).<br>Em todas as sessões é realizada avaliação antropométrica (peso, altura, perímetros, pregas cutâneas ou bioimpedância), permitindo monitorizar resultados que, juntamente com o feedback individual, serão considerados para uma otimização contínua da alimentação/plano alimentar.<br>Entre cada avaliação presencial é disponibilizado apoio via e-mail ou plataformas sociais para esclarecimento de dúvidas.');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, '', (SELECT id FROM requilib_website.servico WHERE pagina = 'n'));

	#Serviços 
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('nm', 'Fisioterapia Neuro-muscular', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, '', (SELECT id FROM requilib_website.servico WHERE pagina = 'nm'));

	#Serviços Saúde da Criança
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('sc', 'Saúde da Criança', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avaliação e intervenção nos desvios e perturbações do desenvolvimento da criança.', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Fisioterapia em condições neuro-musculo-esqueléticas das crianças (exemplos: torcicolo congénito,  Lesões do plexo braquial,  status pós-fracturas e traumatismos).', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, 'Fisioterapia em condições respiratórias das crianças - Fisioterapia respiratória pediátrica.', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Massagem do bébé.', (SELECT id FROM requilib_website.servico WHERE pagina = 'sc'));

	#Serviços Saúde da Mulher
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('sm', 'Saúde da Mulher', '');

	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'De facto, qualquer fisioterapeuta tem habilitações para tratar a maior parte das questões relacionadas com a Mulher mas, na verdade, existem na Mulher condições especificas só dela. É este conhecimento mais profundo das especificidades da saúde da mulher no seu todo que o Fisioterapeuta com competências nesta área pode dar uma resposta mais adequada á  situação.', 'Fisioterapia e Saúde da Mulher, porque é que existe esta diferenciação?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'É comum ouvirmos dizer que quem apanha uma gripe durante a gravidez não se livra dela até ao bebé nascer! Mas também é comum ouvir-se dizer que se uma grávida tem uma dor nas costas, na virilha, na sinfise púbica , mãos dormentes ou dores nas articulações terá de a/as suportar pois estas são algumas das contigências da gravidez.<br>Temos Boas Noticias para si!  não é mesmo nada assim, há sempre algo que o Fisioterapeuta lhe poderá oferecer para minorar/ aliviar/tratar totalmente as suas queixas permitindo a que disfrute o mais possivel deste período tão excepcional da sua vida :)', 'Será que lá por estar grávida vai ter de suportar dores e maus estares que a limitam no seu dia a dia? ', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Preparar-se para o nascimento do seu bebé não passa só pelo momento do parto, esse é mesmo o momento mais curto e mais espetacular de todo o processo.<br>Antes e depois do nascimento  existe todo um mundo de alterações que o seu corpo vai sofrer e aos poucos se vai adaptando. Aprender a Ouvir o Seu Corpo nesta fase da vida é crucial para o seu Bem estar e do Seu Bebé. O Fisioterapeuta com competências nesta área poderá ajudá-la a percorrer este caminho entendendo e respeitando para onde e como o quer Viver.<br>Esperamos por si em qualquer altura e muito especialmente por volta das 28 semanas de gestação se quiser preparar-se connosco para este inesquecível período da sua  vida.', 'Já pensou em preparar-se para o nascimento do "Vosso Filho"?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Dificilmente será Igual ! serão poucos os que ainda pensam que vai tudo continuar na mesma! Aliás quando se engravida não será já a pensar que é altura para mudar o rumo á vida? A maior problemática é que ninguém consegue ao certo dizer aos casais quão diferente irá ser a vida! E será que isso é importante ? E será que faria a diferença?<br>E aqui estamos de novo presentes para dar uma mãozinha ao casal não só para se "ERGUER" como para ir dando algumas pistas que poderão ser um Ajuda preciosa no entendimento do seu recém nascido/bebé. Apoiando em termos da amamentação das várias etapes do seu  desenvolvimento, do alívio das cólicas, dos sonos trocados e do choro. Todas estas são preocupações  da maioria dos pais que se devidamente acompanhados e orientados vão poder usufruir ainda mais o seu bebé.', 'Será que a vida vai ser igual depois do seu Bebé nascer?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Esta é uma pergunta que dificilmente ouvimos nas primeiras semanas de vida do bebé pois, habitualmente resta pouco tempo para algo que não seja dar de mamar, mudar fraldas, pôr o bebé a dormir e nos pequenos intervalinhos comer qualquer coisa e dormir uma soneca. A Natureza é sábia e ajuda a que as mães não saiam de perto da sua cria!
Mais tarde, por volta das 4/6 semanas , com a vida um pouco mais organizada é altura de começar a fazer algo para voltar a ficar em forma. Ao mesmo tempo há que aprender a lidar com as várias situações que vão surgindo com o seu bebé. <br>É pois nessa altura que começamos as nossas sessões de pós parto (4/6 semanas após o parto) e onde estão convidados mãe e bebé.', 'Será que posso ir para o ginásio já?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	INSERT INTO requilib_website.servico_itemQA ( seq, answer, question, imgUrl, servico_id) VALUES ( 1, 'Um parto que tenha lesionado o pavimento pélvico pode levar a não só perdas de urina, como desconforto e dor na relação sexual. Esta e outras situações têm solução, contacte-nos, não deixe arrastar a situação.<br>Os anos vão trazendo consigo coisa Boas e coisas Menos Boas! A Menopausa e a Osteoporose são algumas delas .<br>Sabemos que trazem consequências por vezes menos simpáticas para a sáude da mulher mas também sabemos que através de algumas alterações no estilo de vida, do exercício apropriado e do conhecimento  da situação podemos Viver Mais e Melhor. Estamos aqui para lhe dar uma ajudinha a saltar os obstáculos.', 'Tem ideia da Importância que os seus músculos do pavimento pélvico têm para o seu bem estar e qualidade de vida?', '', (SELECT id FROM requilib_website.servico WHERE pagina = 'sm'));
	
	#Serviços Saúde do Idoso
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('si', 'Saúde do Idoso', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Aconselhamento e promoção da autonomia na marcha e actividades funcionais.', (SELECT id FROM requilib_website.servico WHERE pagina = 'si'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Programas de exercícios de mobilidade funcional global, treino de equilibrio e prevenção de quedas.', (SELECT id FROM requilib_website.servico WHERE pagina = 'si'));

	#Serviços Fisioterapia na Dança
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('fd', 'Fisioterapia na Dança.', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avaliação da condição clínica de bailarinos profissionais, pré-profissionais, recreativos e de estudantes de dança.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Aconselhamento, Avaliação e Prevenção dos factores de risco associados às lesões dos diversos tipos de dança. Programa de "dance screening" nos bailarinos.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 3, 'Programa de prevenção de lesões na Dança.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 4, 'Avaliação e Tratamento das diversas lesões músculo-esqueléticas nos bailarinos(as).', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 5, 'Programa de educação para a saúde de bailarinos, professores e/ou pais na área da anatomia funcional e erros técnicos, biomecânica, lesões e sua prevenção.', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));
	
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('img/servicos/fd/1.jpg', 'danca1', ' ', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'fd'));

	
	
	#Serviços Fisioterapia ao Domicílio
	INSERT INTO requilib_website.servico (pagina, titulo, texto) VALUES ('do', 'Fisioterapia ao Domicílio', '');
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 1, 'Avaliação, tratamento e aconselhamento na área músculo-esquelética em situações onde o utente, por diversos motivos, não tem autonomia para se deslocar ao gabinete de Fisioterapia.', (SELECT id FROM requilib_website.servico WHERE pagina = 'do'));
	INSERT INTO requilib_website.servico_item ( seq, texto, servico_id) VALUES ( 2, 'Educação do utente ou cuidadores para uma maior autonomia funcional.', (SELECT id FROM requilib_website.servico WHERE pagina = 'do'));









	#VIDEOS DUMMY SERVIÇOS
	INSERT INTO requilib_website.video (url, type, nome, descricao, entidade, entidade_id) VALUES ('videos/small.webm', 'mp4', '', 'Domicílio', 'servico', (SELECT id FROM requilib_website.servico WHERE pagina = 'do'));





	#DESTAQUES DUMMY
	INSERT INTO requilib_website.destaque 
		(titulo, 
		resumo, 
		texto,
		top_flag, 
		creation_dt, 
		destaque_dt) 
	VALUES (
		'Diogo Rocha e Miguel Oliveira Vencem 4º Campeonato Nacional de Paddle.', 
		'Diogo Rocha e Miguel Oliveira Vencem 4º Campeonato Nacional de Paddle.', 
		'Diogo Rocha e Miguel Oliveira Vencem 4º Campeonato Nacional de Paddle', 
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
		'Fisioterapeutas da R\'equilibrius participaram no Seminário Instabilidade Dinâmica no Membro Inferior',
		'No passado dia 12 de Novembro, os Fisioterapeutas João Rocha Vaz e Raúl Oliveira estiveram presentes no Seminário Instabilidade Dinâmica no Membro Inferior, organizado pelo Laboratório de Comportamento Motor da FMH.', 
		'No passado dia 12 de Novembro, os Fisioterapeutas João Rocha Vaz e Raúl Oliveira estiveram presentes no Seminário Instabilidade Dinâmica no Membro Inferior, organizado pelo Laboratório de Comportamento Motor da FMH.', 
		true, 
		NOW(),
		STR_TO_DATE('05,10,2016', '%d,%m,%Y')
	);




	#Imagens Dummy
	INSERT INTO requilib_website.img (path, nome, descricao, entidade, entidade_id) VALUES ('https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/15203184_1221381287932149_546476678957154558_n.jpg?oh=fde01c89e74e34c8b6ab3180ccd80fbd&oe=58D5943B', 'Terapeuta João Vaz', '', 'destaque', (SELECT id FROM requilib_website.destaque WHERE titulo = 'Fisioterapeutas da R\'equilibrius participaram no Seminário Instabilidade Dinâmica no Membro Inferior'));

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
		'Diogo Rocha e Miguel Oliveira Vencem 4º Campeonato Nacional de Paddle', 
		'Diogo Rocha e Miguel Oliveira Vencem 4º Campeonato Nacional de Paddle.', 
		'destaque', 
		(SELECT id FROM requilib_website.destaque WHERE titulo = 'Diogo Rocha e Miguel Oliveira Vencem 4º Campeonato Nacional de Paddle.')
	);


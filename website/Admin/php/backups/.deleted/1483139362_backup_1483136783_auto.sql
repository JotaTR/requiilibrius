INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '1', 1000);DELETE FROM requilib_website.video WHERE id = '4';INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '1', 1000);DELETE FROM requilib_website.video WHERE id = '5';INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '1', 1000);UPDATE requilib_website.video SET nome = '...', descricao = 'pop', seq = '10
									' WHERE id = '6';INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/destaques/db/1483058538.jpg', '...', '...', 'destaque', '1', 1000);INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/destaques/db/1483058573.jpg', '...', '...', 'destaque', '2', 1000);DELETE FROM requilib_website.img WHERE id = 48;INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '1', 1000);DELETE FROM requilib_website.video WHERE id = '7';DELETE FROM requilib_website.video WHERE id = '6';INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '1', 1000);DELETE FROM requilib_website.video WHERE id = '8';INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '1', 1000);UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = 'https://www.youtube.com/embed/WUquTU96v6Y', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = 'https://www.youtube.com/embed/WUquTU96v6Y', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = 'https://www.youtube.com/embed/WUquTU96v6Y', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = 'https://www.youtube.com/embed/WUquTU96v6Y', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = '', type = 'link' WHERE id = '9';UPDATE requilib_website.video SET url = 'videos/1483062513.mp4', type = 'file' WHERE id = '9';UPDATE requilib_website.video SET url = 'https://www.youtube.com/embed/WUquTU96v6Y', type = 'link' WHERE id = '9';INSERT INTO requilib_website.destaque(
						titulo, resumo, texto)
						VALUES ('...', '...', '...');INSERT INTO requilib_website.destaque(
						titulo, resumo, texto)
						VALUES ('...', '...', '...');INSERT INTO requilib_website.destaque(
						titulo, resumo, texto)
						VALUES ('...', '...', '...');UPDATE requilib_website.destaque 
				  SET titulo = 'testes',
					  resumo = 'testes',
					  texto = 'test'
				WHERE id = '7';INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/destaques/db/1483064892.jpg', '...', '...', 'destaque', '7', 1000);INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/destaques/db/1483064900.jpg', '...', '...', 'destaque', '8', 1000);UPDATE requilib_website.destaque 
				  SET titulo = 'erwrew',
					  resumo = 'erw',
					  texto = 'rew'
				WHERE id = '8';INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '8', 1000);UPDATE requilib_website.video SET nome = 'qw', descricao = 'ewq', seq = '12' WHERE id = '10';UPDATE requilib_website.video SET url = 'teste', type = 'link' WHERE id = '10';INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('', '...', '...', 'destaque', '2', 1000);UPDATE requilib_website.video SET url = 'videos/1483065182.mp4', type = 'file' WHERE id = '11';UPDATE requilib_website.funcionario SET nome = 'Alexandra Oliveira', resumo = 'Fisioterapeuta licenciada pela Escola Superior do Alcoitão e responsável pela área de Pediatria do Hospital Fernando Fonseca desde 1997.<br>Colaboração em diversos mestrados, nomeadamente Ciências da Fisioterapia, Saúde da Mulher, Pediatria, e docente na Escola Superior de Alcoitão. Orientadora de estágios em contexto clínico. e coautora de diversos artigos científicos.' WHERE id = '3';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Formação', 
							content = '<strong>Bacharelato em Fisioterapia</strong>  pela Escola Reabilitação de Alcoitão 1983-1986.' 
						WHERE 
							funcionario_id = '3' 
			and id = '13';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Formação', 
							content = '<strong>Licenciatura em Fisioterapia</strong> pela Escola Superior de Saúde de Alcoitão 2000-2001 com a  tese \"Análise da percepção dos pais de bebés prétermo internados na UCIEN do HFF sobre o Programa Cuidar para o Desenvolvimento (PCD)\". ' 
						WHERE 
							funcionario_id = '3' 
			and id = '14';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = '<strong>Julho 1987 - Setembro 1988</strong> - Hospital Egas Moniz.' 
						WHERE 
							funcionario_id = '3' 
			and id = '15';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = '<strong>Setembro 1988 - Junho 1989</strong>1997 - Hospitais Civis de Lisboa - Hospital de Dona Estefânia.' 
						WHERE 
							funcionario_id = '3' 
			and id = '16';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = '<strong>Maio 1997 - 2014</strong> - Hospital Fernando Fonseca  (em regime de requisição por interesse público até 2001. Inicia licença sem vencimento de longa duração por tempo indeterminado, situação que mantém até á presente data).' 
						WHERE 
							funcionario_id = '3' 
			and id = '17';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Fisioterapeuta Responsável pela área de Pediatria do HFF desde Junho de 1997. Experiência profissional desenvolvida na avaliação, programação e tratamento de crianças com disfunções neuro motoras, cardio respiratórias, musculo esqueléticas e tegumentárias em regime de ambulatório e internamento em parceria com as famílias.' 
						WHERE 
							funcionario_id = '3' 
			and id = '18';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Ênfase no trabalho em equipa privilegiando a vertente educativa e de aprendizagem quer em relação ás crianças / famílias, quer aos outros profissionais.' 
						WHERE 
							funcionario_id = '3' 
			and id = '19';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Orientadora de Estágios dos alunos do Curso de Fisioterapia da ESTSL desde 1998 até á  presente data e da ESSA (1991-1995) e (1999-2001) (2010- 2013).' 
						WHERE 
							funcionario_id = '3' 
			and id = '20';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Colaboração nos I, II e III Mestrado(s) de Ciências da Fisioterapia da Faculdade de Motricidade Humana realizados em 2002, 2005 e 2006.' 
						WHERE 
							funcionario_id = '3' 
			and id = '21';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Colaboração na Pós Graduação da Saúde da Mulher da Escola Superior de Saúde de Alcoitão (Módulo IV) nos anos de 2007, 2008, 2009,2010 e 2011.' 
						WHERE 
							funcionario_id = '3' 
			and id = '22';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Colaboração na Pós Graduação de Fisioterapia em Pediatria da Escola Superior de Saúde da Cruz Vermelha (Módulo  VIII ) no ano de 2009 , 2011 e 2014.' 
						WHERE 
							funcionario_id = '3' 
			and id = '23';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Colaboração como docente convidada na Licenciatura de Fisioterapia da Escola Superior de Saúde de Alcoitão nos anos de 2007,2008,2010,2011,2012, 2013 ,2014,2015 e 2016.' 
						WHERE 
							funcionario_id = '3' 
			and id = '24';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Colaboração com a ESSA como júri de exame de alunos do Curso de Fisioterapia.' 
						WHERE 
							funcionario_id = '3' 
			and id = '25';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Experiência  Profissional', 
							content = 'Colaboração na Pós Graduação Cuidados para o Neurodesenvolvimento do Bebé Pretermo  na Faculdade de Medicina de Lisboa (Modulo II, Modulo III Modulo VI Modulo VII e Modulo VIII) no ano de 2010.' 
						WHERE 
							funcionario_id = '3' 
			and id = '26';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Publicações Científicas', 
							content = 'Manuel Cunha, Flávia Correa, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Paula Valério, Rosalina Barroso, Helena Carreiro NEURODEVELOPMENT IN VERY PRETERM INFANTS AT 18 MONTHS\' CORRECTED AGE: PREDICTIVE VALUE OF CEREBELLAR GROWTH AND GENERAL MOVEMENTS ASSESSMENTS. ICP 2013, Poster' 
						WHERE 
							funcionario_id = '3' 
			and id = '27';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Publicações Científicas', 
							content = 'Manuel Cunha, Flávia Correa, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Paula Valério, Rosalina Barroso, Helena Carreiro <strong>NEURODEVELOPMENT IN VERY PRETERM INFANTS AT 18 MONTHS\' CORRECTED AGE: PREDICTIVE VALUE OF CEREBELLAR GROWTH AND GENERAL MOVEMENTS ASSESSMENTS. ICP 2013</strong>, Poster.' 
						WHERE 
							funcionario_id = '3' 
			and id = '28';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Publicações Científicas', 
							content = 'Flavia Correa, Manuel Cunha, Ana Cadete, Alexandra Oliveira, Helena Figueiredo, Rosalina BARROSO, Helena CARREIRO. <strong>PO23: Cerebellar Growth in Preterm Infants: A Longitudinal Sonographic Study.</strong> 3rd International Congress of UENPS 2012, Acta Med Port 2012;25(S2):152.' 
						WHERE 
							funcionario_id = '3' 
			and id = '29';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Publicações Científicas', 
							content = 'Clara Marecos, Alexandra Oliveira, Helena Figueiredo, Ana Cadete, Manuel Cunha. <strong>Factores Preditivos da Aderência dos Pais a um Programa de Seguimento de Crianças Nascidas de Muito Baixo Peso.</strong> Ifisionline, 2011. www.ifisionline.ips.pt/num_act_files/artigo1_vol2_n1.pdf' 
						WHERE 
							funcionario_id = '3' 
			and id = '30';UPDATE 
							requilib_website.cvitem 
						SET 
							field = 'Publicações Científicas', 
							content = 'Alexandra Oliveira; Manuel Cunha; Leonor Ferreira; Helena Figueiredo; Ana Cadete;Maria do Céu Machado(2008) <strong>Cuidar para o Desenvolvimento - Intervenção no Recém-Nascido Prétermo de muito baixo peso</strong> ESSFisioline , Vol 4,nº2, 2008' 
						WHERE 
							funcionario_id = '3' 
			and id = '31';UPDATE requilib_website.img SET nome = 'AO', descricao = 'main', seq = '0' WHERE id = '4' and path = 'img/equipa/AO/main.jpg';INSERT INTO requilib_website.destaque(
						titulo, resumo, texto)
						VALUES ('...', '...', '...');INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/destaques/db/1483134667.jpg', '...', '...', 'destaque', '2', 1000);DELETE FROM requilib_website.img WHERE id = 53;INSERT INTO requilib_website.destaque(
						titulo, resumo, texto)
						VALUES ('...', '...', '...');INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/destaques/db/1483135179.jpg', '...', '...', 'destaque', '8', 1000);DELETE FROM requilib_website.img WHERE id = 54;INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('img/equipa/db/1483135195.jpg', '...', '...', 'funcionario', '1', 1000);DELETE FROM requilib_website.video WHERE id = '9';
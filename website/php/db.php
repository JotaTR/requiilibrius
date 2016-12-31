<?php
	header('Content-Type: text/html; charset=utf-8');
	function connect_db(){		
		
		//Criar ligaçao à base de dados
		$serverDB="localhost";//"requilibrius.pt";
		$portDB="3306";
		$nameDB="requilib_website";
		$usernameDB="requilib_client";//"requilib_user";
		$passDB="Requilibrius1";
		
		$dbconn=mysql_connect($serverDB.":".$portDB,$usernameDB,$passDB,$nameDB);
		if (mysqli_connect_errno())
		{
			echo "Failed to connect to Database: " . mysqli_connect_error();
		}
		return $dbconn;
	}

	function get_all_destaques($dbconn){
		
		$query = "SELECT * FROM requilib_website.destaque";
		$query_response =  mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$destaques = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$destaques[$counter]['id'] = $row['id'];
			$destaques[$counter]['titulo'] = $row['titulo'];
			$destaques[$counter]['resumo'] = $row['resumo'];
			$destaques[$counter] ['texto'] = $row['texto'];			
			$destaques[$counter] ['creation_dt'] = $row['creation_dt'];			
			$destaques[$counter] ['destaque_dt'] = $row['destaque_dt'];			
			$destaques[$counter] ['top_flag'] = $row['top_flag'];			
			//$destaques[$counter]['data_in'] = $row['data_in'];

			//get associated images
			$destaques[$counter]['img'] = get_img($dbconn, 'destaque', $destaques[$counter]['id']);
			
			//get associated videos
			$destaques[$counter]['video'] = get_video($dbconn, 'destaque', $destaques[$counter]['id']);
			$counter++;
		}
		
		echo json_encode(utf8ize($destaques));
		return $destaques;
	}
	
	function get_espaco($dbconn){
		
		$dir = '../img/espaco';
		$files = array_diff(scandir($dir), array('.', '..'));
		$files[2] = "img/espaco/".$files[2];
		$string = implode(" img/espaco/",$files);
		$file_list = explode(" ",$string);
		$nbr_files = count($file_list);
		$files_to_send = [];
		for( $i = 0; $i < $nbr_files; $i++){
			$files_to_send[$i]['image'] = $file_list[$i];
			$files_to_send[$i]['description'] = '';
		}		
		echo json_encode(utf8ize($files_to_send));
		return $files_to_send;
		
	}
	
	function get_formacao($dbconn){
		$query = "SELECT * FROM requilib_website.formacao";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$formacao = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$formacao[$counter]['id'] = $row['id'];
			$formacao[$counter]['titulo'] = $row['titulo'];
			$formacao[$counter]['resumo'] = $row['resumo'];
			$formacao[$counter] ['texto'] = $row['texto'];
			$formacao[$counter]['data_in'] = $row['data_in'];
			
			//get associated images
			$formacao[$counter]['img'] = get_img($dbconn, 'formacao', $formacao[$counter]['id']);
			
			$counter++;//proxima medicao da tabela SQL
		
		}
		echo json_encode(utf8ize($formacao));
		return $formacao;
	}
	
	function get_tecnica($dbconn){
        
        $query = "SELECT * FROM requilib_website.tecnica ORDER by id ASC";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$tecnica = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$tecnica[$counter]['id'] = $row['id'];
			$tecnica[$counter]['nome'] = $row['nome'];
			
			//get associated images
			$tecnica[$counter]['img'] = get_img($dbconn, 'tecnica', $tecnica[$counter]['id']);
			$tecnica[$counter]['detalhes'] = get_detalhes($dbconn, $tecnica[$counter]['id']);
			
			$counter++;//proxima medicao da tabela SQL
			
		}
		echo json_encode(utf8ize($tecnica));
		return $tecnica;
	}
	
	function get_equipa($dbconn){
	
		$query = "SELECT * FROM requilib_website.funcionario WHERE nome <> '' ORDER BY equipa, nome asc";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$equipa = [];
		while($row = mysql_fetch_array($query_response))
		{
			$equipa[$counter]['id'] = $row['id'];
			$equipa[$counter]['nome'] = $row['nome'];
			$equipa[$counter]['equipa'] = $row['equipa'];			
			$equipa[$counter]['resumo'] = $row['resumo'];			
			//get main image
			$equipa[$counter]['mainImg'] = get_main_img($dbconn, 'funcionario', $equipa[$counter]['id']);
			//get associated images 
			$equipa[$counter]['img'] = get_img($dbconn, 'funcionario', $equipa[$counter]['id']);
			//get associated CV itemsn
			$equipa[$counter]['cv'] = get_cvitem($dbconn, $equipa[$counter]['id']);//wrong name 'cv'
			$counter++;//proxima medicao da tabela SQL
		}
		echo json_encode(utf8ize($equipa));
		return $equipa;
	}
	
	function get_servico($dbconn, $pagina){
		
		$query = "SELECT * FROM requilib_website.servico";
		if($pagina != "ALL")
		{
			$query = $query." WHERE pagina = '".$pagina."'";
		}
		
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$servico = [];
		while($row = mysql_fetch_array($query_response))
		{
			$servico[$counter]['id'] = $row['id'];
			$servico[$counter]['pagina'] = $row['pagina'];
			$servico[$counter]['titulo'] = $row['titulo'];
			$servico[$counter]['texto'] = $row['texto'];
			
			//get associated items
			$servico[$counter]['items'] = get_servico_items($dbconn, $servico[$counter]['id']);
			
			//get associated itemsQA
			$servico[$counter]['itemsQA'] = get_servico_itemsQA($dbconn, $servico[$counter]['id']);
			
			//get associated images
			$servico[$counter]['img'] = get_img($dbconn, 'servico', $servico[$counter]['id']);

			//get associated videos
			$servico[$counter]['video'] = get_video($dbconn, 'servico', $servico[$counter]['id']);

			
			$counter++;//proxima medicao da tabela SQL
		}
		
		echo json_encode(utf8ize($servico));
		return $servico;
	}	
	
	
	function get_servico_items($dbconn, $servico_id){
        
        $query = "SELECT * FROM requilib_website.servico_item WHERE servico_id = '".$servico_id."' ORDER BY seq asc;";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$rowNbr = 0;
		$item = [];
		
		//ALTERAR
		$current_field = '';
		while($row=  mysql_fetch_array($query_response))
		{
			$item[$rowNbr]['id'] = $row['id'];
			$item[$rowNbr]['seq'] = $row['seq'];
			$item[$rowNbr]['texto'] = $row['texto'];
			$item[$rowNbr]['servico_id'] = $row['servico_id'];
			$rowNbr++;
		}
		return $item;
	}
	
	
	function get_servico_itemsQA($dbconn, $servico_id){
        
        $query = "SELECT * FROM requilib_website.servico_itemQA WHERE servico_id = '".$servico_id."' ORDER BY seq asc;";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$rowNbr = 0;
		$item = [];
		
		//ALTERAR
		$current_field = '';
		while($row=  mysql_fetch_array($query_response))
		{
			$item[$counter]['id'] = $row['id'];
			$item[$counter]['seq'] = $row['seq'];
			$item[$counter]['answer'] = $row['answer'];
			$item[$counter]['question'] = $row['question'];
			$item[$counter]['imgUrl'] = $row['imgUrl'];
			$item[$counter]['servico_id'] = $row['servico_id'];
			$counter++;
		}
		return $item;
	}
	
	
	function get_cvitem($dbconn, $func_id){
        
        $query = "SELECT * FROM requilib_website.cvitem WHERE funcionario_id = '".$func_id."' ORDER BY seq asc;";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = -1;//couner++ antes de adicionar primeiro
		$rowNbr = 0;
		$cv = [];
		
		//ALTERAR
		$current_field = '';
		while($row=  mysql_fetch_array($query_response))
		{
			if( $current_field != $row['field']){
				$current_field = $row['field'];
				$counter++;//
				$cv[$counter]['field'] = $row['field'];
				$cv[$counter]['content'] = [];
				$cv[$counter]['id'] = [];
			}
			array_push($cv[$counter]['id'],$row['id']);array_push($cv[$counter]['content'],$row['content'
			]);	
			$rowNbr++;
		}
		return $cv;
	}
	
	
	function get_section($dbconn, $pagina){
        
        $query = "SELECT * FROM requilib_website.section WHERE pagina = '".$pagina."'";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$section = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$section[$counter]['id'] = $row['id'];
			$section[$counter]['alt_id'] = $row['alt_id'];
			$section[$counter]['nome'] = $row['nome'];
			$section[$counter]['text'] = $row['texto'];
			
			//get associated images
			$section[$counter]['img'] = get_img($dbconn, 'section', $tecnica[$counter]['id']);
			
			$counter++;//proxima medicao da tabela SQL
		}
		return $section;
	}
	
	
	
	
	//Private functions
	function get_img($dbconn, $entidade, $entidade_id){
	    $query = "SELECT * FROM requilib_website.img WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id." ORDER by seq asc;";
        
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$img = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$img[$counter]['path'] = $row['path'];
			$img[$counter]['nome'] = $row['nome'];
			$img[$counter]['id'] = $row['id'];
			$img[$counter]['entidade_id'] = $row['entidade_id'];
			$img[$counter]['seq'] = $row['seq'];
			$img[$counter]['main'] = $row['main'];
			$img[$counter]['entidade'] = $row['entidade'];
			$img[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
		}	
		return $img;
	}
	
	
	function get_video($dbconn, $entidade, $entidade_id){
	    $query = "SELECT * FROM requilib_website.video WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id." ORDER by seq asc;";
        
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$videos = [];
		while($row = mysql_fetch_array($query_response))
		{
			$videos[$counter]['url'] = $row['url'];
			$videos[$counter]['type'] = $row['type'];
			$videos[$counter]['nome'] = $row['nome'];
			$videos[$counter]['seq'] = $row['´seq'];
			$videos[$counter]['id'] = $row['id'];
			$videos[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
		}	
		return $videos;
	}
	
	function get_main_img($dbconn, $entidade, $entidade_id){
	    $query = "SELECT * FROM requilib_website.img WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id." AND descricao = 'main';";
        
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$img = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$img[$counter]['path'] = $row['path'];
			$img[$counter]['nome'] = $row['nome'];
			$img[$counter]['id'] = $row['id'];
			$img[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
		}	
		return $img;
	}
	
    function get_detalhes($dbconn, $tecnica_id){
	    $query = "SELECT * FROM requilib_website.tecnicaDetalhe WHERE tecnica_id = ".$tecnica_id." ORDER BY id;";
        
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$detalhes = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$detalhes[$counter]['id'] = $row['id'];
			$detalhes[$counter]['detalhe'] = $row['item'];
			$counter++;//proxima medicao da tabela SQL
		}
		return $detalhes;
	}
	
	
	//Inserts
    function save_contact($dbconn, $email, $nome, $apelido, $telefone, $descricao, $motivo){
        
        $query = "INSERT INTO contact(
						email, nome, apelido, telefone, descricao, motivo)
						VALUES ('".$email."', '".$nome."', '".$apelido."', '".$telefone."', '".$descricao."', '".$motivo."');";
		echo "<br>query:<br>".$query."<br>";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Contacto inseridos<br>";
		}
    }
	
	
	
	
	//aux fuunctions
	//http://stackoverflow.com/questions/19361282/why-would-json-encode-returns-an-empty-string
	function utf8ize($d) {
	 if (is_array($d)) {
	 foreach ($d as $k => $v) {
	 $d[$k] = utf8ize($v);
	 }
	 } else if (is_string ($d)) {
	 return utf8_encode($d);
	 }
	 return $d;
	}
	
?>
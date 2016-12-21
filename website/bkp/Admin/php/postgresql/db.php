

<?php
header('Content-Type: text/html; charset=utf-8');
	function connect_db(){		
		
		//Criar ligaçao à base de dados
		$serverDB="localhost";
		$portDB="5432";
		$nameDB="Requilibrius";
		$usernameDB="requilibriusAdmin";
		$passDB="requilibrius";
		$dbconn = pg_connect("host=".$serverDB." port=".$portDB." dbname=".$nameDB."
							  user=".$usernameDB." password=".$passDB)
				  or die('Nao foi possivel estabelecer ligacao com: ' . pg_last_error());
		return $dbconn;
	}
	
	function get_all_destaques($dbconn){
		
		$query = "SELECT * FROM destaque";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$destaques = [];
		while($row = pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$destaques[$counter]['id'] = $row['id'];
			$destaques[$counter]['titulo'] = $row['titulo'];
			$destaques[$counter]['resumo'] = $row['resumo'];
			$destaques[$counter] ['texto'] = $row['texto'];
			//$destaques[$counter]['data_in'] = $row['data_in'];
			$destaques[$counter] ['creation_dt'] = $row['creation_dt'];			
			$destaques[$counter] ['destaque_dt'] = $row['destaque_dt'];			
			$destaques[$counter] ['top_flag'] = $row['top_flag'];		

			//get associated images
			$destaques[$counter]['img'] = get_img($dbconn, 'destaque', $destaques[$counter]['id']);
			
			//get associated videos
			$destaques[$counter]['video'] = get_video($dbconn, 'destaque', $destaques[$counter]['id']);

			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		echo json_encode($destaques);
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
		echo json_encode($files_to_send);
		return $files_to_send;
		
	}
	
	function get_formacao($dbconn){
		$query = "SELECT * FROM formacao";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$formacao = [];
		while($row = pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$formacao[$counter]['id'] = $row['id'];
			$formacao[$counter]['titulo'] = $row['titulo'];
			$formacao[$counter]['resumo'] = $row['resumo'];
			$formacao[$counter] ['texto'] = $row['texto'];
			$formacao[$counter]['data_in'] = $row['data_in'];
			
			//get associated images
			$formacao[$counter]['img'] = get_img($dbconn, 'formacao', $formacao[$counter]['id']);
			
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		echo json_encode($formacao);
		return $formacao;
	}
	
	function get_tecnica($dbconn){
        
        $query = "SELECT * FROM tecnica ORDER by id ASC";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$tecnica = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$tecnica[$counter]['id'] = $row['id'];
			$tecnica[$counter]['nome'] = $row['nome'];
			//get associated images
			$tecnica[$counter]['img'] = get_img($dbconn, 'tecnica', $tecnica[$counter]['id']);
			$tecnica[$counter]['detalhes'] = get_detalhes($dbconn, $tecnica[$counter]['id']);
			
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		echo json_encode($tecnica);
		return $tecnica;
	}
	
	function get_equipa($dbconn){
		$query = "SELECT * FROM funcionario WHERE nome <> '' order by id";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$equipa = [];
		while($row = pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
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
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		echo json_encode($equipa);
		return $equipa;
	}
	
	
	function get_servico($dbconn){
	
		$query = "SELECT * FROM servico";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$servico = [];
		while($row =  pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$servico[$counter]['id'] = $row['id'];
			$servico[$counter]['pagina'] = $row['pagina'];
			$servico[$counter]['titulo'] = $row['titulo'];
			$servico[$counter]['texto'] = $row['texto'];
			
			//get associated items
			$servico[$counter]['items'] = get_servico_items($dbconn, $servico[$counter]['id']);
			
			//get associated images
			$servico[$counter]['img'] = get_img($dbconn, 'servico', $servico[$counter]['id']);

			//get associated videos
			$servico[$counter]['video'] = get_video($dbconn, 'servico', $servico[$counter]['id']);
 
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		
		echo json_encode($servico);
		return $servico;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	function get_servico_items($dbconn, $servico_id){
        
        $query = "SELECT * FROM servico_item WHERE servico_id = '".$servico_id."' ORDER BY seq asc;";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$item = [];
		
		//ALTERAR
		$current_field = '';
		while($row=  @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$item[$counter]['id'] = $row['id'];
			$item[$counter]['seq'] = $row['seq'];
			$item[$counter]['texto'] = $row['texto'];
			$item[$counter]['servico_id'] = $row['servico_id'];
			$counter++;
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		return $item;
	}
	
	function get_cvitem($dbconn, $func_id){
        
        $query = "SELECT * FROM cvitem WHERE funcionario_id = '".$func_id."' ORDER BY seq asc;";
		$query_response = pg_query($dbconn,$query);
		$counter = -1;//couner++ antes de adicionar primeiro
		$rowNbr = 0;
		$cv = [];
		
		//ALTERAR
		$current_field = '';
		while($row = @pg_fetch_array ($query_response,$rowNbr,PGSQL_BOTH))
		{
			if( $current_field != $row['field'])
			{
				$current_field = $row['field'];
				$counter++;//
				$cv[$counter]['field'] = $row['field'];
				$cv[$counter]['content'] = [];
				$cv[$counter]['id'] = [];
			}
			array_push($cv[$counter]['content'],$row['content']);	
			array_push($cv[$counter]['id'],$row['id']);	
			$rowNbr++;
			if($rowNbr==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		return $cv;
	}
	
	function get_section($dbconn, $pagina){
        
        $query = "SELECT * FROM section WHERE pagina = '".$pagina."'";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$section = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$section[$counter]['id'] = $row['id'];
			$section[$counter]['alt_id'] = $row['alt_id'];
			$section[$counter]['nome'] = $row['nome'];
			$section[$counter]['text'] = $row['texto'];
			
			//get associated images
			$section[$counter]['img'] = get_img($dbconn, 'section', $tecnica[$counter]['id']);
			
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		return $section;
	}
	
	function get_img($dbconn, $entidade, $entidade_id){
	    $query = "SELECT * FROM img WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id.";";
        
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$img = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$img[$counter]['path'] = $row['path'];
			$img[$counter]['nome'] = $row['nome'];
			$img[$counter]['id'] = $row['id'];
			$img[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}	
		return $img;
	}
	
	function get_video($dbconn, $entidade, $entidade_id){
	    $query = "SELECT * FROM video WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id.";";
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$video = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$video[$counter]['url'] = $row['url'];
			$video[$counter]['type'] = $row['type'];
			$video[$counter]['nome'] = $row['nome'];
			$video[$counter]['id'] = $row['id'];
			$video[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}	
		return $video;
	}
	
	
	function get_main_img($dbconn, $entidade, $entidade_id){
	    $query = "SELECT * FROM img WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id." AND descricao = 'main';";
        
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$img = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$img[$counter]['path'] = $row['path'];
			$img[$counter]['nome'] = $row['nome'];
			$img[$counter]['id'] = $row['id'];
			$img[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}	
		return $img;
	}
	
    function get_detalhes($dbconn, $tecnica_id){
	    $query = "SELECT * FROM tecnicaDetalhe WHERE tecnica_id = ".$tecnica_id." ORDER BY id;";
        
		$query_response = pg_query($dbconn,$query);
		$counter = 0;
		$detalhes = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			$detalhes[$counter]['id'] = $row['id'];
			$detalhes[$counter]['detalhe'] = $row['item'];
			$counter++;//proxima medicao da tabela SQL
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
		return $detalhes;
	}
	
	
	//falta criar tabels e testar
    function save_contact($email, $nome, $apelido, $telefone, $descricao, $dbconn){
        
        $query = "INSERT INTO contact(
						email, nome, apelido, telefone, descricao, motivo)
						VALUES ('".$email."', '".$nome."', '".$apelido."', '".$telefone."', '".$descricao."');";
		echo "<br>query:<br>".$query."<br>";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Contacto inseridos<br>";
		}
    }
	
	
?>
<?php
header('Content-Type: text/html; charset=utf-8');
	function connect_dbadmin(){		
		
		//Criar ligaçao à base de dados
		$serverDB="localhost";//"requilibrius.pt";
		$portDB="3306";
		$nameDB="requilib_website";
		$usernameDB="requilib_admin";//"requilib_user";
		$passDB="R'equilibrius1";
		
		$dbconn=mysql_connect($serverDB.":".$portDB,$usernameDB,$passDB,$nameDB);
		if (mysqli_connect_errno())
		 {
			echo "Failed to connect to Database: " . mysqli_connect_error();
		 }
		 
		 mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		 
		return $dbconn;
	}
	
	function add_destaque($dbconn, $json){
		
		$json = json_decode($json, true);
		$titulo = $json['titulo'];
		$resumo = $json['resumo'];
		$texto = $json['texto'];
		
		$query = "INSERT INTO destaque(
						titulo, resumo, texto)
						VALUES (".$titulo.", ".$resumo.", ".$texto.");";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
	}
	
    function add_formacao($dbconn, $json){
		
		$json = json_decode($json, true);
		$titulo = $json['titulo'];
		$resumo = $json['resumo'];
		$texto = $json['texto'];
		
		$query = "INSERT INTO formacao(
						titulo, resumo, texto)
						VALUES (".$titulo.", ".$resumo.", ".$texto.");";
		echo "<br>query:<br>".$query."<br>";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
	}
	
	function add_tecnica($dbconn, $json){
		
		$json = json_decode($json, true);
		$nome = $json['nome'];

		
		$query = "INSERT INTO tecnica(
						nome)
						VALUES (".$nome.");";
		echo "<br>query:<br>".$query."<br>";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
	}
	
	function add_funcionario($dbconn, $json){
		
		$json = json_decode($json, true);
		$nome = $json['nome'];
		$nome = $json['equipa'];

		
		$query = "INSERT INTO tecnica(
						nome)
						VALUES (".$nome.", ".$equipa.");";
		echo "<br>query:<br>".$query."<br>";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
	}
	
	function add_img($dbconn, $json){	
		
		$json = json_decode($json, true);
		$filename = $json['filename'];
		$nome = $json['nome'];
		$descricao = $json['descricao'];
		$entidade = $json['entidade'];
		$entidade = $json['entidade_id'];
		
		$query = "INSERT INTO img(
						filename, nome, descricao, entidade, entidade_id)
						VALUES (".$titulo.", ".$resumo.", ".$descricao.", ".$entidade.", ".$entidade_id.");";
		echo "<br>dados a inserir:<br>".$query."<br>";
		$insert=pg_query($dbconn,$query); //execução da querry				
		if (!$insert) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
	}
	
	function add_tecnica_detalhe($dbconn, $json){
		
		$json = json_decode($json, true);
		$nome = $json['item'];
		$tecnica_id = $json['tecnica_id'];

		
		$query = "INSERT INTO tecnicaDetalhe(
						nome, resumo, texto)
						VALUES (".$nome.", ".$tecnica_id.");";
		echo "<br>query:<br>".$query."<br>";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
	}

    
    
//DELETES
    function delete_destaque($dbconn, $id){
				
		$query = "DELETE FROM destaque WHERE id = ".$id.";";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
        
        delete_img($dbconn, 'destaque',$id);
	}
	
	function delete_formacao($dbconn, $id){
		
		$query = "DELETE FROM formacao WHERE id = ".$id.";";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
        
        delete_img($dbconn, 'formacao',$id);
	}
	
	
	function delete_tecnica($dbconn, $id){
		
		$query = "DELETE FROM tecnica WHERE id = ".$id.";";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
        
        delete_img($dbconn, 'tecnica',$id);
        delete_tecnica_detalhe($dbconn, $id);
	}
	
	function delete_funcionario($dbconn, $id){
		
		$query = "DELETE FROM funcionario WHERE id = ".$id.";";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
        
        delete_img($dbconn, 'funcionario',$id);
	}
	
	function delete_entidade_imgs($dbconn, $entidade, $entidade_id){	
        
        $query = "SELECT id FROM img WHERE entidade = ".$entidade." and entidade_id =".$entidade_id.";";
        $query_response = pg_query($dbconn,$query);
		$counter = 0;
		$detalhes = [];
		while($row = @pg_fetch_array ($query_response,$counter,PGSQL_BOTH))
		{
			delete_img($row['id']);
			if($counter==pg_num_rows($query_response)){
				break;	//para a execução do ciclo para que não haja erro quando $counter>numero de linhas na tabela
			}
		}
    }

	function delete_img($dbconn, $id){	
		
        $query = "SELECT count(id) as c FROM img WHERE path = (SELECT path FROM img WHERE id = ".$id.");";
		$query_response = pg_query($dbconn,$query);
        $row = pg_fetch_array ($query_response,$counter,PGSQL_BOTH);
        
        if($row['c'] = 1){
            $query = "DELETE FROM img WHERE id = ".$id.";";
            $query_response = pg_query($dbconn,$query);
            if (!$query_response) {
             echo "\nErro a inserir dados.<br>";
            }else{
                echo "Dados inseridos<br>";
            }
        }
	}
	
	function delete_tecnica_detalhe($dbconn, $id){
		
		$query = "DELETE FROM tecnicaDetalhe WHERE id = ".$id.";";
		$query_response = pg_query($dbconn,$query);
		if (!$query_response) {
		 echo "\nErro a inserir dados.<br>";
		}else{
			echo "Dados inseridos<br>";
		}
        
        //delete_img($dbconn, 'tecnicaDetalhe',$id);
	}
	
	//updates
	function update_funcionario($dbconn, $id, $nome, $resumo, $cvItemList){
	
		$query = "UPDATE requilib_website.funcionario SET nome = '".mysql_real_escape_string($nome)."', resumo = '".mysql_real_escape_string($resumo)."' WHERE id = '".$id."'";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());	
		audit($dbconn, $query, "UPDATE", "funcionario", $id);		
		for($i = 0; $i < count($cvItemList); $i++ )
		{
			for($j = 0; $j < count($cvItemList[$i]['content']); $j++ )
			{
				$query = "UPDATE 
							requilib_website.cvitem 
						SET 
							field = '".mysql_real_escape_string($cvItemList[$i]['field'])."', 
							content = '".mysql_real_escape_string($cvItemList[$i]['content'][$j])."' 
						WHERE 
							funcionario_id = '".$id."' 
			and id = '".$cvItemList[$i]['id'][$j]."'";
				$query_response = mysql_query($query, $dbconn) or die(mysql_error());
				audit($dbconn, $query, "UPDATE", "cvitem", $id);
			}
		}
		echo true;
	}
	
	function update_destaque($dbconn, $id, $titulo, $resumo, $texto){
		$query = "UPDATE requilib_website.destaque 
				  SET titulo = '".(mysql_real_escape_string($titulo))."',
					  resumo = '".(mysql_real_escape_string($resumo))."',
					  texto = '".(mysql_real_escape_string($texto))."'
				WHERE id = '".$id."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		audit($dbconn, $query, "UPDATE", "destaque", $id);
		echo true;
	}
	
	
	function audit($dbconn, $query_to_store, $action, $entidade, $id){
		$query = "INSERT INTO requilib_website.audit(
							query_date, entidade, entidade_id, action, query)
						VALUES (NOW(), '".$entidade."', '".$id."', '".$action."', '".(mysql_real_escape_string($query_to_store))."');";
		
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
	}
?>
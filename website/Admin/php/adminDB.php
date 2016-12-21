<?php
	header('Content-Type: text/html; charset=utf-8');
	include 'readSQLfromFile.php';
	
	function connect_dbadmin(){		
		
		//Criar ligaçao à base de dados
		$serverDB="localhost";//"requilibrius.pt";
		$portDB="3306";
		$nameDB="requilib_website";
		$usernameDB="requilib_admin";//"requilib_user";
		$passDB="RequilibriusAdmin2016";
		
		$dbconn=mysql_connect($serverDB.":".$portDB,$usernameDB,$passDB,$nameDB);
		if (mysqli_connect_errno())
		 {
			echo "Failed to connect to Database: " . mysqli_connect_error();
		 }
		 
		 
		return $dbconn;
	}
	
	function add_destaque($dbconn, $json){
		
		$json = json_decode($json, true);
		$titulo = $json['titulo'];
		$resumo = $json['resumo'];
		$texto = $json['texto'];
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
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
	
    function add_funcionario($dbconn, $json){
		
		$json = json_decode($json, true);
		$titulo = $json['titulo'];
		$resumo = $json['resumo'];
		$texto = $json['texto'];
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		$query = "INSERT INTO funcionario(
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
	
	
	//updates
	function update_funcionario($dbconn, $id, $nome, $resumo, $cvItemList){
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		$query = "UPDATE requilib_website.funcionario SET nome = '".mysql_real_escape_string($nome)."', resumo = '".mysql_real_escape_string($resumo)."' WHERE id = '".$id."';";
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
			and id = '".$cvItemList[$i]['id'][$j]."';";
				$query_response = mysql_query($query, $dbconn) or die(mysql_error());
				audit($dbconn, $query, "UPDATE", "cvitem", $id);
			}
		}
		echo true;
	}
		

	function update_destaque($dbconn, $id, $titulo, $resumo, $texto){
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
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
		if($action != '?')
		{
			mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		}
		$query = "INSERT INTO requilib_website.audit(
							query_date, entidade, entidade_id, action, query)
						VALUES (NOW(), '".$entidade."', '".$id."', '".$action."', '".(mysql_real_escape_string($query_to_store))."');";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
	}
	
	
	//BACKUPS
	function backup_website($dbconn, $backup_name)
	{	
		//create file
		$path = 'backups/';
		$date = new DateTime();
		$file_name = "backup_".$date->format("U")."_".$backup_name.".sql";//unix
		$file_path = $path."".$file_name;
		$file = fopen($file_path,"w");
		
		//query to get audit querys
		$query = "SELECT * FROM requilib_website.audit ORDER by query_date ASC";
		$query_response =  mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$audits = [];
		while($row=  mysql_fetch_array($query_response))
		{
			$audits[$counter]['id'] = $row['id'];
			$audits[$counter]['query_date'] = $row['query_date'];
			$audits[$counter]['entidade'] = $row['entidade'];
			$audits[$counter] ['entidade_id'] = $row['entidade_id'];			
			$audits[$counter] ['action'] = $row['action'];			
			$audits[$counter] ['query'] = $row['query'];
			//store in file
			fwrite($file,utf8_encode($audits[$counter]['query']));
			$counter++;
		}
		
		fclose($file);
		$filesize = filesize($file_path);
		if( $filesize == 0 )
		{
			unlink($file_path);//elimina ficheiro
		}
	}
	
	function exec_sql_file($dbconn, $file_path, $onsite)
	{
		$dbms_schema = $file_path;
		$sql_query = @fread(@fopen($dbms_schema, 'r'), @filesize($dbms_schema)) or die('problem opening file');
		$sql_query = remove_remarks($sql_query);
		$sql_query = split_sql_file($sql_query, ';');
		$i=1;
		foreach($sql_query as $sql)
		{
			//echo utf8_encode($sql);
			if($onsite)
			{
				mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
				//audit($dbconn, $sql, '?', '?', -1);
			}
			mysql_query($sql, $dbconn) or die(mysql_error());
		}
	}
	
	function get_backups(){
		
		$dir = 'backups/';
		$file_list = array_diff(scandir($dir), array('.', '..','.deleted'));//remove os 3 primeiros indicies mas n altera numeração
		$nbr_files = count($file_list);
		$files_to_send = [];
		for( $i = 3; $i < $nbr_files + 3; $i++){
			$files_to_send[$i - 3]['filename'] = $file_list[$i];
			$files_to_send[$i - 3]['description'] = 
			$filesize = filesize( $dir."".$file_list[$i] );
			$filesize = ($filesize  / 1000) ;
			$files_to_send[$i - 3]['filesize'] = round( $filesize ,1);
			$date =  $dir."".$file_list[$i];
			$files_to_send[$i - 3]['date'] = filectime( $date );
		}		
		echo json_encode(utf8ize($files_to_send));
		return $files_to_send;
	}
	
	function delete_backup($filename){
		
		$dir = 'backups/';
		$file_path = $dir."".$filename;
		$date = new DateTime();
		rename($file_path, $dir.'.deleted/'.$date->format("U").'_'.$filename);
		echo true;
	}
	
	function download_backup($filename){
		
		$dir = 'backups/';
		$file_path = $dir."".$filename;
		$file_string = file_get_contents($file_path);
		//$file_data = base64_encode($file_string);
		echo json_encode(utf8ize(array(file_data => $file_string)), JSON_FORCE_OBJECT);
		exit();		
	}
	
	function upload_backup($file_text)
	{
		$dir = 'backups/';
		$date = new DateTime();
		$filename = 'backup_'.$date->format("U").'_uploaded.sql';
		$new_file = fopen($dir."".$filename, "w") or die("Unable to open file!");
		fwrite($new_file , utf8_decode($file_text));
		fclose($new_file);
		echo true;
	}
	
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
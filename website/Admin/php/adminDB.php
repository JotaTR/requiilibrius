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
	

    
	//Destaques
    function delete_destaque($dbconn, $id){
		
		//Delete foto from system
		$img = get_img($dbconn, 'destaque', $id);
		for($i = 0; $i < count($img); $i++)
		{
			delete_foto($dbconn, $img[$i]['id']);
		}
		$video = get_video($dbconn, 'destaque', $id);
		for($i = 0; $i < count($video); $i++)
		{
			delete_video($dbconn, $video[$i]['id']);
		}
		//Delete from DB
		$query = "DELETE FROM requilib_website.destaque WHERE id = ".$id.";";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		if (!$query_response) {
		 echo false;
		}else{
			echo true;
		}
	}
	
	function update_destaque($dbconn, $id, $titulo, $resumo, $texto){
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		$query = "UPDATE requilib_website.destaque 
				  SET titulo = '".(mysql_real_escape_string($titulo))."',
					  resumo = '".(mysql_real_escape_string($resumo))."',
					  texto = '".(mysql_real_escape_string($texto))."'
				WHERE id = '".mysql_real_escape_string($id)."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		audit($dbconn, $query, "UPDATE", "destaque", $id);
		echo true;
	}
	
	function add_destaque($dbconn){
		
		$titulo = "...";
		$resumo = "...";
		$texto = "...";
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		$query = "INSERT INTO requilib_website.destaque(
						titulo, resumo, texto)
						VALUES ('".(mysql_real_escape_string($titulo))."', '".(mysql_real_escape_string($resumo))."', '".(mysql_real_escape_string($texto))."');";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		audit($dbconn, $query, "INSERT", "destaque", 999999);
		if (!$query_response) {
			echo false;
		}else{
			echo true;
		}
	}

	
	//Funcoionarios
	function update_funcionario($dbconn, $id, $nome, $resumo, $cvItemList){
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		$query = "UPDATE requilib_website.funcionario SET nome = '".mysql_real_escape_string($nome)."', resumo = '".mysql_real_escape_string($resumo)."' WHERE id = '".mysql_real_escape_string($id)."';";
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
							funcionario_id = '".mysql_real_escape_string($id)."' 
			and id = '".$cvItemList[$i]['id'][$j]."';";
				$query_response = mysql_query($query, $dbconn) or die(mysql_error());
				audit($dbconn, $query, "UPDATE", "cvitem", $id);
			}
		}
		echo true;
	}
	
	
	//Fotos
	function delete_foto($dbconn, $id)
    {
		//garantir que a imagem nao e usada mais no no site
		$query = "SELECT count(id) as c FROM requilib_website.img WHERE path = (SELECT path FROM requilib_website.img WHERE id = '".mysql_real_escape_string($id)."');";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
        $row =  mysql_fetch_array($query_response);
		if($row['c'] == 1)
		{
			$img =  get_img_by_id($dbconn, $id);
			$path = $img['path'];
			if(file_exists ( "../../".$path ))
			{
				$filename = get_filename_from_path($path);
				//Mover a imagem atual
				rename('../../'.$path, '../../img/deleted/'.$filename);
			}
		}
		if(get_img_seq($dbconn, $id) != '0')
		{
			delete_img_db($dbconn, $id);
		}
		else{
			echo false;
		}
	}
    
    //video
	function delete_video($dbconn, $id)
    {
		//garantir que a imagem nao e usada mais no no site
		$query = "SELECT count(id) as c FROM requilib_website.video WHERE url = (SELECT url FROM requilib_website.video WHERE id = '".mysql_real_escape_string($id)."');";	
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
        $row =  mysql_fetch_array($query_response);
        
		if($row['c'] == 1)
		{

            $video = get_video_by_id($dbconn, $id);
			$path = $video['url'];

			if(file_exists ( "../../".$path ))
			{
				$filename = get_filename_from_path($path);
				//Mover a imagem atual
				rename('../../'.$path, '../../videos/deleted/'.$filename);
			}
		}

        delete_video_db($dbconn, $id);
        echo true;
    }
	function delete_img_db($dbconn, $id){	
		$query = "DELETE FROM requilib_website.img WHERE id = '".mysql_real_escape_string($id)."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		if (!$query_response) {
		 echo "\nErro a eliminar imagem da base de dados.<br>";
		}
		audit($dbconn, $query, "DELETE", "img", $id);
	}

	function delete_video_db($dbconn, $id)
	{		
		$query = "DELETE FROM requilib_website.video WHERE id = '".mysql_real_escape_string($id)."';";
		audit($dbconn, $query, "DELETE", "video", $id);
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		if (!$query_response)
		{
		 echo "\nErro a eliminar video da base de dados.<br>";
		}
	}
	
    function change_foto($dbconn, $imgId, $file_data)
	{
		//checkfile data TODO;
        if(!fileValidation($file_data, "foto"))
        {
            echo false;
            return;
        }

		$row =  get_img_by_id($dbconn, $imgId);
		$old_path = $row['path'];
        //Mover a imagem atual
		if(file_exists ( "../../".$old_path ))
		{
			$filename = get_filename_from_path($old_path);
			rename("../../".$old_path, '../../img/deleted/'.$filename);// inicio do path em ../../ porque as imagens estão em www/img e o php está em www/Admin/php.
		}
		
		$entidade = $row["entidade"];
		$entidadeId = $row["entidade_id"];
		$file_format = "jpg";
		$date = new dateTime();
		$filename = $date->format("U")."_".$entidade."_".$entidadeId.".".$file_format;
        $path = "img/db/".$filename;
		
		$new_foto = fopen("../../".$path, "w") or die("Unable to open file!");
		fwrite($new_foto , utf8_decode($file_data));
		fclose($new_foto);
		
		
            
		
		//Upate ao path se o nome do ficheiro mudar
       //alterar path na DB
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
        $query = "UPDATE requilib_website.img SET path = '".mysql_real_escape_string($path)."' WHERE id = '".mysql_real_escape_string($imgId)."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());	
		audit($dbconn, $query, "UPDATE", "img", $imgId);		
		echo true;
	}
	
    function change_video($dbconn, $videoId, $file_data, $type)
	{
        //checkfile data TODO;
        if(!fileValidation($file_data, "video"))
        {
            echo false;
            return;
        }
         $file_format = "mp4";
        //Get current video url and type //TODO
        $old_video = get_video_by_id($dbconn, $videoId);
        if($old_video['type'] == 'file')
        {
            $old_path = $old_video['url'];//Reuse file

            //Mover a imagem atual
            if(file_exists ( "../../".$old_path ))
            {
                $filename = get_filename_from_path($old_path);

				$ext = get_file_ext($filename);//devia entrar um new_filename com a extensao
                rename("../../".$old_path, '../../videos/deleted/'.$filename);// inicio do path em ../../ porque as imagens estão em www/img e o php está em www/Admin/php.
            }
        }
        
        //a ideia e depois concatenar o path ao url e ter sempre o caminho correto
        if($type == 'link' )
        {
            $url = $file_data;
            $path  = "";
        }
        else
        {
            $url = "";
            $file = $file_data;
            $entidade = $old_video["entidade"];
			$entidadeId = $old_video["entidade_id"];
            $date = new dateTime();
		    $filename = $date->format("U")."_".$entidade."_".$imgId.".".$file_format;
            $path = "videos/".$filename;
            
            $new_video = fopen("../../".$path, "w") or die("Unable to open file!");
            fwrite($new_video , utf8_decode($file_data));
            fclose($new_video);
        }
		
        //URL to store on bb
        $url = $path."".$url;
		//alterar path na DB
		mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
        $query = "UPDATE requilib_website.video SET url = '".mysql_real_escape_string($url)."', type = '".$type."' WHERE id = '".mysql_real_escape_string($videoId)."';";
		
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());	
		audit($dbconn, $query, "UPDATE", "video", $videoId);		
		echo true;
	}
	
	
    function save_foto_details($dbconn, $img)
    {
        //Upate
        mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		
		$query = "UPDATE requilib_website.img SET nome = '".mysql_real_escape_string($img['nome'])."', descricao = '".mysql_real_escape_string($img['descricao'])."', seq = '".$img['seq']."' WHERE id = '".$img['id']."' and path = '".mysql_real_escape_string($img['path'])."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		audit($dbconn, $query, "UPDATE", "img", $img['id']);
		echo true;		
    }
    
    function save_video_details($dbconn, $video)
    {
        //Upate
        mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		
		$query = "UPDATE requilib_website.video SET nome = '".mysql_real_escape_string($video['nome'])."', descricao = '".mysql_real_escape_string($video['descricao'])."', seq = '".$video['seq']."' WHERE id = '".$video['id']."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		audit($dbconn, $query, "UPDATE", "video", $video['id']);
		echo true;		
    }
    
    
	function add_img_db($dbconn, $entidade, $entidade_id)
    {

		//$img_path is another image path form the same entity
		$date = new dateTime();
		$filename = $date->format("U").".jpg";
		
		$path=$path_no_file."".$filename;//renaming
		$nome="...";
		$descricao="...";
		
        //Insert na BD
        $query = "INSERT INTO requilib_website.img( path, nome, descricao, entidade, entidade_id, seq) VALUES ('".$path."', '".$nome."', '".$descricao."', '".mysql_real_escape_string($entidade)."', '".mysql_real_escape_string($entidade_id)."', 1000);";
		audit($dbconn, $query, "INSERT", "img", $entidade_id);
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
	}
    
	
	function add_video_db($dbconn, $entidade, $entidade_id)
    {
		
		$path=$path_no_file."".$filename;//renaming
		$nome="...";
		$descricao="...";
		$url="";
        //Insert na BD
        $query = "INSERT INTO requilib_website.video( url, nome, descricao, entidade, entidade_id, seq) VALUES ('".$url."', '".$nome."', '".$descricao."', '".mysql_real_escape_string($entidade)."', '".mysql_real_escape_string($entidade_id)."', 1000);";
		audit($dbconn, $query, "INSERT", "video", $entidade_id);
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
	
	function get_backups()
	{	
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
	


	//AUX
	function get_img_by_id($dbconn, $imgId)
    {
        //Select a imagem na BD pelo index.
        $query = "SELECT * FROM requilib_website.img WHERE id = '".mysql_real_escape_string($imgId)."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
        $row = mysql_fetch_array($query_response);
        return $row;
    }
	
	function get_video_by_id($dbconn, $videoId)
	{
	    $query = "SELECT * FROM requilib_website.video WHERE id = '".mysql_real_escape_string($videoId)."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$row = mysql_fetch_array($query_response);
		
		return $row;
	}
	

    function get_img_seq($dbconn, $imgId)
    {
        //Select a imagem na BD pelo index.
        $query = "SELECT seq FROM requilib_website.img WHERE id = '".mysql_real_escape_string($imgId)."';";
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
        $row =  mysql_fetch_array($query_response);
        
        $seq = $row['seq'];
        return $seq;
    }

    function get_filename_from_path($path)
    {
        $num_chars = strlen($path);
		$inverted_file_name = "";
		while(($num_chars > 0) and $path[$num_chars - 1] != "/" and $path[$num_chars - 1] != "\\"){
			$inverted_file_name .= $path[$num_chars - 1];
			$num_chars--;
		}
		$file_name = strrev($inverted_file_name);
		
		return $file_name;
    }

    function get_file_ext($path)
    {
        $num_chars = strlen($path);
		$inverted_file_name = "";
		while(($num_chars > 0) and $path[$num_chars - 1] != "."){
			$inverted_file_name .= $path[$num_chars - 1];
			$num_chars--;
		}
		$file_name = strrev($inverted_file_name);
		
		return $file_name;
    }
	
	function change_file_ext($path, $new_ext)
	{
		$ext = get_file_ext($filename);
		$filename = preg_replace('"\.$ext$"', $new_ext, $filename);
	}
	
	function get_img($dbconn, $entidade, $entidade_id)
	{
	    $query = "SELECT * FROM requilib_website.img WHERE entidade = '".$entidade."' AND entidade_id = ".$entidade_id.";";
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
			$img[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
		}	
		return $img;
	}
	
	
	function get_video($dbconn, $entidade, $entidadeId)
	{
	    $query = "SELECT * FROM requilib_website.video WHERE entidade = '".mysql_real_escape_string($entidade)."' AND entidade_id = '".mysql_real_escape_string($entidadeId)."';";
        
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
		$counter = 0;
		$videos = [];
		while($row = mysql_fetch_array($query_response))
		{
			$videos[$counter]['url'] = $row['url'];
			$videos[$counter]['type'] = $row['type'];
			$videos[$counter]['nome'] = $row['nome'];
			$videos[$counter]['seq'] = $row['seq'];
			$videos[$counter]['id'] = $row['id'];
			$videos[$counter]['entidadeId'] = $row['entidadeId'];
			$videos[$counter]['entidade'] = $row['entidade'];
			$videos[$counter]['descricao'] = $row['descricao'];
			$counter++;//proxima medicao da tabela SQL
		}	
		return $videos;
	}
	

    function audit($dbconn, $query_to_store, $action, $entidade, $id)
    {
		if($action != '?')
		{
			mysql_query("SET character_set_results = 'utf8', character_set_client = 'utf8', character_set_connection = 'utf8', character_set_database = 'utf8', character_set_server = 'utf8'");
		}
		$query = "INSERT INTO requilib_website.audit(
							query_date, entidade, entidade_id, action, query)
						VALUES (NOW(), '".mysql_real_escape_string($entidade)."', '".mysql_real_escape_string($id)."', '".$action."', '".(mysql_real_escape_string($query_to_store))."');";
		
		$query_response = mysql_query($query, $dbconn) or die(mysql_error());
	}



    function fileValidation($file)
    {
		return true;
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
<?php
	header('Content-Type: text/html; charset=utf-8');
	include "adminDB.php";
	
	//Ligacao a base de dados
	$dbconn = connect_dbadmin();
		
//	var_dump(json_decode($_GET['cv']));	
	$postdata = file_get_contents("php://input");
	$data = json_decode($postdata,true);
	$funcao = $data['funcao'];
	
	
	if( $funcao == 'save_funcionario' )
	{
		$id = $data['id'];
		$nome = $data['nome'];
		$resumo = $data['resumo'];
		$cv = $data['cv'];
		update_funcionario($dbconn, $id, $nome, $resumo, $cv);
	}
	elseif( $funcao == 'save_destaque' )
	{
		$id = $data['id'];
		$titulo = $data['titulo'];
		$resumo = $data['resumo'];
		$texto = $data['texto'];
		update_destaque($dbconn, $id, $titulo, $resumo, $texto);
	}
	elseif( $funcao == 'backup_website' )
	{
		backup_website($dbconn, "");
		echo true;
	}
	elseif( $funcao == 'restore_website' )
	{
		$filename = $data['filename'];
		backup_website($dbconn, "auto");
		exec_sql_file($dbconn, "sql/create_tables.sql",false);//false->script creation
		exec_sql_file($dbconn, "sql/insert_data.sql",false);
		if($filename != 'insert_data.sql'){
			exec_sql_file($dbconn, "backups/".$filename,true);//true -> onsite creation
		}
		echo true;
	}
	elseif( $funcao == 'upload_file' )
	{
		$file_data = $data['file'];
		upload_backup($file_data);
		
	}
	elseif( $funcao == 'download_file' )
	{
		$filename = $data['filename'];
		download_backup($filename);
	}
	elseif( $funcao == 'delete_file' )
	{
		$filename = $data['filename'];
		if($filename == 'insert_data.sql'){
			echo false;
		}
		else
		{
			delete_backup($filename);
		}
	}
	elseif( $funcao == 'get_backups' )
	{
		$backups = get_backups();
	}
	else
	{
		echo "wrong function!";
	}
	
	
	mysql_close($dbconn);
	
?>
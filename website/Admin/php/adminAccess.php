<?php
	header('Content-Type: text/html; charset=utf-8');
	include "adminDB.php";
	
	//Ligacao a base de dados
	$dbconn = connect_dbadmin();
		
	$postdata = file_get_contents("php://input");
	$data = json_decode($postdata,true);
	if($data == null){
		$data = $_POST;
	}
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
	elseif( $funcao == 'add_destaque' )
	{
		add_destaque($dbconn, $id, $titulo, $resumo, $texto);
	}
	elseif( $funcao == 'delete_destaque' )
	{
		$id = $data['id'];
		delete_destaque($dbconn, $id);
	}
	
	
	
	//BACKUPS
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
	
	
	
	
	
	
	elseif( $funcao == 'save_foto_details' )
	{
        $img = $data['img'];
		save_foto_details($dbconn, $img);
	
    }elseif( $funcao == 'delete_foto' )
	{
        $imgId = $data['imgId'];
		delete_foto($dbconn, $imgId);
	
    }elseif( $funcao == 'add_foto' )
	{
        $entidade_id = $data['entidade_id'];
        $entidade = $data['entidade'];
		add_img_db($dbconn, $entidade, $entidade_id);
	}
	elseif( $funcao == 'change_foto' )
	{
        $file = $_FILES['file'];
        $imagem_file = $data['file'];
        $imgId = $data['imgId'];
		change_foto($dbconn, $imgId, $imagem_file);
	}
	




	elseif( $funcao == 'save_video_details' )
	{
        $video = $data['video'];
		save_video_details($dbconn, $video);
	
    }elseif( $funcao == 'delete_video' )
	{
        $videoId = $data['videoId'];
		delete_video($dbconn, $videoId);
	
    }elseif( $funcao == 'add_video' )
	{
        $entidade_id = $data['entidade_id'];
        $entidade = $data['entidade'];
		add_video_db($dbconn, $entidade, $entidade_id);
	}
	elseif( $funcao == 'change_video' )
	{
        $video_file = $data['file'];
        $videoId = $data['videoId'];
        $videType = $data['videoType'];
		change_video($dbconn, $videoId, $video_file, $videType);
	}
	
	
	
	else
	{
		echo "wrong function!";
	}
	
	
	
	
	
	
	mysql_close($dbconn);
	
?>
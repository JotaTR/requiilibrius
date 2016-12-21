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
	else
	{
		echo "wrong function!";
	}
	
	
	mysql_close($dbconn);
	
?>
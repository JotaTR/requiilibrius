<?php
	include "adminDB.php";
	
	//Ligacao a base de dados
	$dbconn = connect_dbadmin();	
	$json = $_GET['data'] ? $_GET['data'] : $_POST['data'];
	$funcao = $_GET['funcao'] ? $_GET['funcao'] : $_POST['funcao'];
	
	
	if( $funcao == 'save_funcionario' )
	{
		update_funcionario($dbconn, $json);
	}
	elseif( $funcao == 'save_destaque' )
	{
		update_destaque($dbconn, $json);
	}
	else
	{
		echo "wrong function!";
	}
	pg_close($dbconn);
?>
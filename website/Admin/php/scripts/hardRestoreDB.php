<?php
	header('Content-Type: text/html; charset=utf-8');
	include '../adminDB.php';
	function connect_db()
	{			
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
	
	$dbconn=connect_db();
	//restore DB;
	exec_sql_file($dbconn, "../sql/create_tables.sql",false);
	
	//insert data
	exec_sql_file($dbconn, "../sql/insert_data.sql",false);
	
	
	echo "Website info fully restored!"
?>
<!DOCTYPE html>
<html>
<head>
	<title>processing</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
	
	// check what is received through POST
	// var_dump($_POST); die();
	include('classes/database.php');
	$database = new Database;
	$database->connect();


	//- - - Add new superheroes - - - 

	// First, prepare the SQL
	$sql = "INSERT INTO superheroes (
							name, 
							email, 
							sex, 
							current_location, 
							picture,
							superpowers,
							age
						) 
			VALUES (?,?,?,?,?,?,?)";
	
	// Secondly, add values
	$values = array(
		$_POST['name'],
		$_POST['email'],
		$_POST['sex'],
		$_POST['current_location'],
		$_POST['picture'],
		$_POST['superpowers'],
		$_POST['age']
	);

	// Call prepared function to execute the above
	$database->prepared($sql,$values);

?>
<p class="notice success">Brilliant! Your profile it's ready;
	<a href="index.php" class="notice">Back</a>
</p>
</body>
</html>
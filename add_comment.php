<!DOCTYPE html>
<html>
<head>
	<title>Add new</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
// Get all types from the database
	include('classes/database.php');
	$database = new Database;
	$database->connect();

	// Select all types
	$sql = 'SELECT * FROM superheroes WHERE name = "Iron-Man"';
	$types = $database->query($sql);
?>

  <form action="process_comment.php" method="post">
  	<label for="comments">Add Comment</label>
  	<input type="text" name="comments" >

  	<input type="submit" name="submit" value="Add">
  </form>



</body>
</html>
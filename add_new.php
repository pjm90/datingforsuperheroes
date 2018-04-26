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

  <form action="process.php" method="post">
  	<label for="name">Name</label>
  	<input type="text" name="name" placeholder="e.g. tt0103874">
  	
  	<label for="email">Email</label>
  	<input type="text" name="email" placeholder="e.g. Batman">

  	<label for="sex">Sex</label>
  	<textarea name="sex"></textarea>
  	  	
  	<label for="current_location">Current Location</label>
  	<input type="text" name="current_location" placeholder="Current Location">
 
      <label for="picture">Image</label>
    <input type="text" name="picture" placeholder="absolute url to image">

    <label for="superpowers">Superpower</label>
    <input type="text" name="superpowers" placeholder="insert your superpowers">

    <label for="age">Age</label>
    <input type="text" name="age" placeholder="insert your superpowers">

  	</select>

  	<input type="submit" name="submit" value="Add">
  </form>



</body>
</html>
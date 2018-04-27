<!DOCTYPE html>
<html>
<head>
	<title>Superheroes Dating-Platform</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>Superheroes Dating </h1>
<a href="add_new.php" class="add_new notice">Make a profile</a>
<?php

// ensure that php errors are displayed
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


	// Include and initiate the database class (you only have to do this once)
	include('classes/database.php');
	$database = new Database;
	$database->connect();



	// Get all data from the database
	$users = $database->query('SELECT * FROM superheroes WHERE name != "Iron-Man"');
	$myuser = $database->query('SELECT * FROM superheroes WHERE name = "Iron-Man"');





	?>
    

	<?php
	// Loop through all profiles
	foreach ($myuser as $myprofile) {
		?>

	<article class="myprofile2">
			<h2>Name:<?php echo $myprofile['name'];?> (<?php echo $myprofile['email'];?>)</h2>
			<h3>Age:<?php echo $myprofile['age'];?></h3>
			<h3>Sex: <?php echo $myprofile['sex'];?></h3>
			<h3>Current Location: <?php echo $myprofile['current_location'];?></h3>
			<h3>Likes: <?php echo $myprofile['amount_of_likes'];?></h3>
			<h3>Superpowers: <?php echo $myprofile['superpowers'];?></h3>

			<p>
				<img src="<?php echo $myprofile['picture'];?>">
			</p>
			
		</article>
				<?php
	}
?>


<?php
	// Loop through all profiles
	foreach ($users as $user) {
		?>
		<article class="othersprofiles">
			<h2>Name:<?php echo $user['name'];?> (<?php echo $user['email'];?>)</h2>
			<h3>Age:<?php echo $user['age'];?></h3>
			<h3>Sex: <?php echo $user['sex'];?></h3>
			<h3>Current Location: <?php echo $user['current_location'];?></h3>
			<h3>Likes: <?php echo $user['amount_of_likes'];?></h3>
			<h3>Superpowers: <?php echo $user['superpowers'];?></h3>

			<p>
				<img src="<?php echo $user['picture'];?>">
			</p>

			<h3>Comment: <?php echo $user['comments'];?></h3>

<a href="add_comment.php" class="add_new notice">Add Comment</a>

			
		</article>
		<?php
	}
?>


</body>
</html>
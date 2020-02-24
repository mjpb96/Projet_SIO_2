<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Les Rousses au Jura</title>
		<link rel="stylesheet" media="all" href="..\css\projet_css.css">
	</head>
	
	<body>
		
		<header>

			<h1>Les Rousses au Jura</h1>
			
		</header>

		<nav>
			
			<ul id="">

				<li><a href="page_accueil.php">ACCUEIL</a></li>

				<li><a href="page_connexion.php">CONNEXION</a></li>
					
				<li><a href="page_reservation.php">RESERVATION</a></li>
			
				<li><a href="page_consultation.php">CONSULTATION</a></li>
			
				<li><a href="page_modification.php">MODIFICATION</a></li>
			
			</ul>

		</nav>
		
			<h2>Avez-vous oublier votre mot de passe ?</h2>
			<form action="inscription.php" method="post">
			<fieldset>
				<legend>Retrouvez le ici</legend>
				<p> Adresse mail : <input type="email" name="email"> </p>
				
				<input type="submit" value="Envoyez !">
			</fieldset>
			</form>

	</body>

</html>
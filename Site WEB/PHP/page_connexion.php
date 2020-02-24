<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Les Rousses au Jura</title>
		<link rel="stylesheet" media="all" href="..\CSS\projet_css.css">
	</head>
	
	<body>

		<header>

			<a href="page_accueil.php"><img src="..\IMAGES\logo_rousses.png"></a>

			<nav>

				<ul>

					<li><a href="page_accueil.php">Accueil</a></li>
					
					<li><a href="page_reservation.php">Réservation</a></li>
			
					<li><a href="page_consultation.php">Consultation</a></li>
			
					<li><a href="page_modification.php">Modification</a></li>
			
				</ul>

				<div id="login">
				
					<a href="page_connexion.php">Mon compte</a>

				</div>

			</nav>

		</header>


		<div id="background_login">

			<img src="..\IMAGES\photo_login.jpg" class="photo_background" alt="login">
			
				
				
				<form action="login.php" method="post" class="form_connexion">

					<h1> CONNEXION</h1>

					<input type="text" name="email" placeholder="Identifiant">

					<input type="password" name="mdp" placeholder="Mot de passe">
												
					<input type="submit" value="Connexion"><br>
					<br>
					<a href="page_inscription.php">Pas de compte ? Inscrivez-vous !</a>

				</form>

		</div>

		
	</body>

</html>
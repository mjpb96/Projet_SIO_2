<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Les Rousses au Jura</title>
		<link rel="stylesheet" media="all" href="..\css\projet_css.css">
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
		
			<h2>Créer votre Espace Client</h2>
			<form action="inscription.php" method="post">
			<fieldset>
				<legend>INSCRIVEZ-VOUS</legend>
				<p> Votre prénom : <input type="text" name="prenom" placeholder="Jean-Paul"> </p>
				<p> Votre nom : <input type="text" name="nom" placeholder="Barthélémy"> </p>
				<p> Votre date de naissance : <input type="date" name="naissance" placeholder="25/04/1996"> </p>
				<p> Votre login : <input type="text" name="login"> </p>
				<p> Votre mot de passe : <input type="password" name="pwd"> </p>
				<p> Confirmez votre mot de passe : <input type="password" name="pwd"> </p>
				<p> Adresse mail : <input type="email" name="email"> </p>
				<p> Téléphone : <input type="tel" name="mobile"> </p>
				<p> Etablissement : <input type="text" name="origine"> </p>
				
				<input type="submit" value="Envoyez !">
			</fieldset>
			</form>

	</body>

</html>
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
		
		<div class="form_reservation">
			<form action="login.php" method="post">
			<fieldset>
				<legend>Location de Vacances au Jura</legend>
				<p> Type de de chambre : <input type="text" name="chambre"> </p>
				<p> Date d'arrivée : <input type="date" name="date_arrivee"> </p>
				<p> Date de départ : <input type="date" name="date_depart"> </p>
				<p> Nombre de personnes : <input type="number" name="nombre_personne"> </p>
				<input type="submit" value="recherche">
			</fieldset>
			</form>
		
			<form action="login.php" method="post">
			<fieldset>
				<legend>Salles de Colloques au Jura</legend>
				<p> Type de de salle : <input type="text" name="chambre"> </p>
				<p> Date d'arrivée : <input type="date" name="date_arrivee"> </p>
				<p> Date de départ : <input type="date" name="date_depart"> </p>
				<p> Nombre de personnes : <input type="number" name="nombre_personne"> </p>
				<p> Matériels : <input type="text" name="materiels"> </p>
				<input type="submit" value="recherche">
			</fieldset>
			</form>
		</div>

	</body>

</html>
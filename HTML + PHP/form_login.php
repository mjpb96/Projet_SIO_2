<?php

$html = <<<HTML

	<html>
		<head>
			<title>Formulaire d'identification</title>
		</head>
		
		<body>
			<form action="login.php" method="post">
			<fieldset>
				<p> Votre login : <input type="text" name="login"> </p>
				<p> Votre mot de passe : <input type="password" name="pwd"> </p>
				<input type="submit" value="Connexion">
			</fieldset>
			</form>
		</body>
	</html>
HTML;

echo $html;


?>
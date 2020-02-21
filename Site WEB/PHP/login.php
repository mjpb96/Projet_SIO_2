
<?php

session_start();
$user_Db = 'root';
$password_Db = '';
$name_Serveur = 'localhost';
$name_Db = "rousses_db";

/* Proposition numéro 1 de système de connexion
	if (isset($_POST['email']) && isset($_POST['mdp'])){
		try {
			$conn = new PDO("mysql:host=$name_Serveur; dbname=$name_Db", $user_Db, $password_Db);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			
			$email = $_POST['email'];
			$mdp = $_POST['mdp'];
			
			$reqSQL = "SELECT email, mdp FROM CLIENT WHERE email = '$email' and mdp = MD5('$mdp')";
			$req = $conn->query($reqSQL);

			
		}
		catch (PDOException $e){
			echo "Attention : " . $e -> getMessage()."<br/>";
		}
	}else{
		echo "Un ou plusieurs champ(s) vide(s)" ;
}

*/

/* Proposition numéro 2 de système de connexion
*/

	if (isset($_POST['email']) && isset($_POST['mdp'])){
		if (!empty($_POST['email']) AND !empty($_POST['mdp'])){
				
		}
	} else {
		$erreur = "Erreur";
	}


?>




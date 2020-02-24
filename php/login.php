
<?php

session_start();
$user_Db = 'root';
$password_Db = '';
$name_Serveur = 'localhost';
$name_Db = "les_rousses";

	if (isset($_POST['email']) && isset($_POST['mdp'])){
		try {
			$conn = new PDO("mysql:host=$name_Serveur; dbname=$name_Db", $user_Db, $password_Db);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			
			$email = $_POST['email'];
			$mdp = $_POST['mdp'];
			
			$reqSQL = "SELECT id_client, nom, prenom FROM CLIENT WHERE email = '$email' and mdp = MD5('$mdp')";
			$req = $conn->query($reqSQL);
			foreach ($req as $user){
				$id_client_req = $user[0];
				$nom_req = $user[1];
				$prenom_req = $user[2];
			}
			
			if (isset($id_client_req)){
				$_SESSION['id_client'] = $id_client_req;
				$_SESSION['nom'] = $nom_req;
				$_SESSION['prenom'] = $prenom_req;
				
				header('Location: page_accueil.php');
			}else {
				echo "Login incorrect";
			}	
		}
		catch (PDOException $e){
			echo "Attention : " . $e -> getMessage()."<br/>";
		}
	}else{
		echo "Un ou plusieurs champ(s) vide(s)" ;
}



?>




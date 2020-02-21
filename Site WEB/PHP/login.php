<?php

	$login = $_POST['login'];
	$pwd = $_POST['pwd'];

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "connexion";

	if (isset($_POST['login']) && isset($_POST['pwd'])){
		try {
			$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
			// set the PDO error mode to exception
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

			$req = $conn->prepare("SELECT login, pwd FROM user WHERE login = :login") ;
			// use exec() because no results are returned
			$req->execute(['login' => $login]);
			$result = $req->fetch();
			
			// Comparaison du pass envoyé via le formulaire avec la base
			$verif_pass = password_verify($_POST['pwd'], $result['pwd']);

			if (!$result){
    			echo 'Mauvais identifiant ou mot de passe !';
			}
			else{
    			if ($verif_pass) {
        			session_start();
        			$_SESSION['pseudo'] = $pseudo;
        			echo 'Connected !';
    			}
    			else {
        			echo 'Wrong password !';
    			}
			}
			
		}
		catch(PDOException $e)
		{
			echo $sql . "<br>" . $e->getMessage();
		}
		$conn = null;
	}	
?>
<?<
<?php
session_start();
$user_Db = 'root';
$password_Db = '';
$name_Serveur = 'localhost';
$name_Db = "les_rousses";

if ($_POST['email']!='' && $_POST['password']!='' && $_POST['nom']!='' && $_POST['prenom']!='' && $_POST['entreprise']!='' && $_POST['telephone']!='' && $_POST['naissance']!=''){
	try{
		$conn = new PDO("mysql:host=$name_Serveur; dbname=$name_Db", $user_Db, $password_Db);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		
		$email = $_POST['email'];
		$mdp = $_POST['password'];
		$nom = $_POST['nom'];
		$prenom = $_POST['prenom'];
		$entreprise = $_POST['entreprise'];
		$telephone = $_POST['telephone'];
		$naissance = $_POST['naissance'];
		
		
		$ins = "INSERT INTO CLIENT (email, mdp, nom, prenom, entreprise, telephone, date_naissance) VALUES ('$email', MD5('$mdp'), '$nom', '$prenom', '$entreprise', '$telephone', '$naissance' )";
		$conn->exec($ins);
		header('Location: page_accueil.php');
	}
	catch (PDOException $e){
		echo "Attention : " . $e -> getMessage()."<br/>";
	}
}else{
	echo "Un ou plusieurs champ(s) vide(s)" ;
}
?>
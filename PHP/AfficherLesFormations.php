<?php
include 'cnx.php';

// 1) on prépare la requête
$sql = $bdd->prepare("select code, intitule from formation where numeroActivite = ".$_GET['idActivite']);
// 2) on l'éxecute
$sql->execute();
// 3) on traite le résultat
$lesJeux = $sql->fetchAll(PDO::FETCH_ASSOC);
foreach($lesJeux as $ligne)
{
    echo "<input name='rbFormations' onclick='AfficherLesParticipants()' type='radio' value='".$ligne['code']."'>".$ligne['intitule']."<br>";
}
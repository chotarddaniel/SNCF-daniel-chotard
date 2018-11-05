<?php

include "cnx.php";

$sql2 = $bdd->prepare("select prenom from agent where numeroActivite = ".$_GET['num2']);
$sql2-> execute();

foreach($sql2->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    echo "<p>".$ligne['prenom']."</p>";
   /* echo "<p>".$ligne['nom']."</p>";
    echo "<p>".$ligne['adresse']."</p>";
    echo "<p>".$ligne['codePostal']."</p>";
    echo "<p>".$ligne['ville']."</p>";*/
}

?>

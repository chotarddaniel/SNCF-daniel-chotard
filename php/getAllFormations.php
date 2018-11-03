<?php

include "cnx.php";

$sql = $bdd->prepare("select intitule from formation where numeroActivite = ".$_GET['num']);
$sql-> execute();

foreach($sql->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    echo "<p>".$ligne['intitule']."</p>";
}

?>

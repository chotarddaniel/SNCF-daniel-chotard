<?php

include "cnx.php";

$sql = $bdd->prepare("select intitule, code from formation where numeroActivite = ".$_GET['num']);
$sql-> execute();

foreach($sql->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    echo "<p><input type='radio' name='test'value='".$ligne['code']."' onclick=RadioLesFormations() > ".$ligne['intitule']."</p>";
}

echo "<div id='divRdFormations'></div>";
?>

<?php
include 'cnx.php';


$tab = explode(",",$_GET['tab']);
$pres = explode(",",$_GET['pres']);
// 1) on prépare la requête

for($i = 0;$i < count($tab); $i++)
{
    $sql = $bdd->prepare("update inscription set presence = ".$pres[$i]." where codeAgent = '".$tab[$i]."' and  numeroFormation = '".$_GET['idFormation']."'");
    $sql->execute();
}

// 2) on l'éxecute


?>
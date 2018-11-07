<?php
include 'cnx.php';
$tab= explode(",",$_GET['tab']);
$pres= explode(",",$_GET['pres']);
for($i=0; $i< count($tab); $i++)
{
    $sql = $bdd->prepare("update inscription set presence = ".$pres[$i]." where codeAgent = '".$tab|[$i]."' and numeroFormation = '".$_GET['idFormation']);
    $sql->execute();
}


?>
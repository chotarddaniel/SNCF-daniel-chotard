<?php

include "cnx.php";

$sql2 = $bdd->prepare("select numeroFormation, codeAgent, presence from inscription where numeroFormation ='".$_GET['num2']."'");
$sql2-> execute();

foreach($sql2->fetchAll(PDO::FETCH_ASSOC) as $ligne)
{
    $sql = $bdd->prepare("select * from agent where code ='".$ligne['codeAgent']."'");
    $sql->execute();

    foreach($sql->fetchAll(PDO::FETCH_ASSOC) as $ligne1)
    {
        echo "<table>";
        echo "<tr>";
        echo "<td><input type='checkbox' name='test2'></td>";
        echo "<td>presence:".$ligne['presence']."</td>";
        echo "<td>".$ligne1['civilite']."</td>";
        echo "<td>".$ligne1['prenom']."</td>";
        echo "<td>".$ligne1['nom']."</td>";
        
        echo "</tr>";

        echo "</table>";
    }
}

?>

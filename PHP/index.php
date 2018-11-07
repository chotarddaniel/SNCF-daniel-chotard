<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <script type="text/javascript" src="../JQuery/jquery-3.1.1.js"></script>
        <script type="text/javascript" src="../JS/fonctions.js"></script>
    </head>
    <body>
        <?php
            include 'cnx.php';

            $sql = $bdd->prepare("select numero, libelle from activite ");
            $sql->execute();
            echo "<label>Liste des activités</label><br>";
            echo "<select id=lstActivites onchange='AfficherLesFormations()'>";
            foreach($sql->fetchAll(PDO::FETCH_ASSOC) as $ligne)
            {
                echo "<option value='".$ligne['numero']."'>".$ligne['libelle']."</option>";
            }
            echo "</select>";
        ?>
        <div id='divFormations'></div>
        <div id='divAgents'></div>
    </body>
</html>
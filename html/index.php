<!DocTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SNCF</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
</head>
<body>
    <?php
        include '../PHP/cnx.php';
        $sql = $bdd->prepare("select numero, libelle from activite");
        $sql->execute();
   
    ?>

<select name=test_affichage_d_une_valeur>
    <?php foreach($sql->fetchALL(PDO::FETCH_ASSOC) as $ligne){}?>
    <option>
        <?php echo $ligne["libelle"]?>
    </option>
    
</select>

</body>
</html>
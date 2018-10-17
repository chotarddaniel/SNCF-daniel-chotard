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

        $test = "<select>";
        
        foreach($sql->fetchALL(PDO::FETCH_ASSOC) as $ligne){
        $test .= "<option >{$ligne["libelle"]}</option>";
        }
        $test .="</select>";
        echo $test;
    ?>

</body>
</html>
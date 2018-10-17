<!DocTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SNCF</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="main.js"></script>
</head>
<body>
    <?php
        include '../PHP/cnx.php';
        $sql = $bdd->prepare("select numero, libelle from activite");
        $sql->execute();

        foreach($sql->fetchALL(PDO::FETCH_ASSOC) as $ligne)
        {
            echo "
            <select>
                <option></option>
            </select>";
            echo $ligne['numero']." ".$ligne['libelle']."<br>";
            
        }
        
    ?>
    
</body>
</html>
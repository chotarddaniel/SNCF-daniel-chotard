<!DocTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SNCF</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="../JQuery/jquery-3.1.1.js"></script>
    <script src="../JS/mesfonctions.js"></script>
</head>
<body>
    <?php
        include '../PHP/cnx.php';
        $sql = $bdd->prepare("select numero, libelle from activite");
        $sql->execute();
        
        $scrlBar = "<select onchange='mesfonctions.js'>";
            foreach($sql->fetchALL(PDO::FETCH_ASSOC) as $ligne){
            $scrlBar .= 
                "<option value='{$ligne['libelle']}'>
                    {$ligne['libelle']}
                </option>";}
        $scrlBar .="</select>";
        echo $scrlBar;
        

    ?>

</body>
</html>
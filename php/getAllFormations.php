<?php

include "cnx.php";

$sql = $bdd->prepare("select code, intitule from formation ");
$sql-> execute();
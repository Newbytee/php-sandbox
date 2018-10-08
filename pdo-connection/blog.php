<?php
require_once("dbm.php");

$q = $pdo->prepare("DESCRIBE posts");
$q->execute();

$allowedOrder = $q->fetchAll(PDO::FETCH_COLUMN);
$allowedSortBy = ["ASC", "DESC"];

$addToStm = '';
/*if (isset($_GET["sortBy"]) && gettype($_GET["sortBy"]) === "string") {
    $addToStm = 'ORDER BY ' . $_GET["sortBy"];
    if (isset($_GET["order"]) && gettype($_GET["order"]) === "string") {
        $addToStm = $addToStm . ' ' . $_GET["order"];
    }
}*/

if (isset($_GET["sortBy"]) && verifyInput($allowedOrder, $_GET["sortBy"])) {
    $addToStm = 'ORDER BY ' . $_GET["sortBy"];
    if (isset($_GET["order"]) && verifyInput($allowedSortBy, $_GET["order"])) {
        $addToStm = $addToStm . ' ' . $_GET["order"];
    }
}

$stm = $pdo->prepare('SELECT * FROM posts ' . $addToStm . ';');
$stm->execute();
$results = $stm->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css" type="text/css" />
    <title>Document</title>
</head>
<body>
    <main id="wrapper">
        <?php for ($i = 0; $i < sizeof($results); $i++) {
            echo '<div class="blogpost">';
            echo '<h2>'.$results[$i]["title"].'</h2>';
            echo '<p>Skriven av '.ucfirst($results[$i]["author"]).' - publicerades '.$results[$i]["created_at"].'</p>';
            echo '<p>'.$results[$i]["text"].'</p>';
            if ($results[$i]["tag"] !== null) {
                echo '<p>Tagg: '.$results[$i]["tag"].'</p>';
            }
            if ($results[$i]["likes"] !== null) {
                echo '<p>'.$results[$i]["likes"].' gillar</p>';
            }
            echo '</div>';
        } ?>
    </main>
</body>
</html>
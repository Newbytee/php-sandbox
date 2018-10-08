<?php
require_once("dbm.php");

$stm = $pdo->prepare("SELECT * FROM posts;");
$stm->execute();
$results = $stm->fetchAll();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <table>
    <?php
    for ($i = 0; $i < sizeof($results); $i++) {
        echo '<tr>';
        foreach($results[$i] as $result) {
            echo '<td>'.$result.'</td>';
        }
        echo '</tr>';
    }
    
    ?>
    </table>
</body>
</html>
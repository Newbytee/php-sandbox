<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
        $integer1 = $_GET["startingNumber"];
        $integer2 = 0;
        $tmpInteger = 0;
        var_dump($integer1);
        var_dump($_GET["amountNumbers"]);
        if (gettype($integer1) === "string") {
            $tmpInteger = explode("E", $integer1, 2);
        
            $integer1 = $tmpInteger[0];
        }
        
        for ($i = 0; $i < $_GET["amountNumbers"]; $i++) {
            $tmpInteger = $integer1 + $integer2;
            echo "<p>$tmpInteger</p>";
            //var_dump($tmpInteger, $integer1, $integer2);
            $integer1 = $integer2;
            $integer2 = $tmpInteger;
        }
    ?>
</body>
</html>
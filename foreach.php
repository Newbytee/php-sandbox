<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php
        $array = [ 1, 7, -4, 2, 99, 6, 10 ];
        foreach($array as $element) {
        	echo '<p>Element: ' . $element . '</p>';
        }
        /*
        Itererar över en array och ger dig ett element i en variabel varje iteration
        */
        
        echo '<br><br><br>';
        
        foreach($array as $iterator => $element) {
            echo '<p>Element ' . $iterator . ': ' . $element . '</p>';
        }
        /*
        Itererar över en array och ger dig ett element i en variabel varje iteration samt index
        */
        
        echo '<br><br><br>';
        
        sort($array);
        for ($i = 0; $i < sizeof($array); $i++) {
            echo $array[$i] . '<br>';
        }
        
        echo '<br><br><br>';
        
        shuffle($array);
        $i = 0;
        while ($i < sizeof($array)) {
            echo $array[$i] . '<br>';
            $i++;
        }
    ?>
</body>
</html>
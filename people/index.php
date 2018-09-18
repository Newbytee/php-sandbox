<?php
// du måste först köra följande i bash
// composer require fzaninotto/faker
require_once("../vendor/autoload.php");

// nästan magi
$people = [];
for ($i = 0; $i < 500; $i++) {
    $faker = Faker\Factory::create();
    $person = [
        "name" => $faker->name,
        "address" => $faker->address,
        "city" => $faker->city,
        "postcode" => $faker->postcode,
        "country" => $faker->country,
        "username" => $faker->userName,
        "mail" => $faker->email,
        "text" => $faker->text
    ];
    $people[] = $person;
}

// din kod, lek nu med $people

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1 class="display-4">Folk</h1>
        <p>Ett litet exempel på vad man har arrayer och loopar till.</p>
        <div class="row">
        <?php foreach ($people as $person) { ?>
            <div class="p-2 col-12 col-md-6 col-lg-4 col-xl-3">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"><?= $person["name"] ?></h5>
                        <h6 class="card-subtitle mb-2 text-muted"><?= $person["username"]?></h6>
                        <p class="card-text"><?= $person["text"] ?></p>
                    </div>
                </div>
            </div>
        <?php } ?>
        </div>
    </div>
    
    
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
</body>
</html>
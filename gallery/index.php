<?php
    function echoImg() {
        $xSmallImg   = 12 / 1;
        $smallImg    = 12 / 2;
        $mediumImg   = 12 / 3;
        $largeImg    = 12 / 4;
        $xLargeImg   = 12 / 4;
        $images      = array_merge(glob('img/*.png'), glob('img/*.jpg'), glob('img/*.gif'), glob('img/*.webp'));

        foreach ($images as $index => $image) {
            echo '<div class="p-0 col-'.$xSmallImg.'. col-sm-'.$smallImg.' col-md-'.$mediumImg.' col-lg-'.$largeImg.' col-xl-'.$xLargeImg.'"><a href='.$image.'><img alt="'.str_replace('_', ' ', explode('/', explode('.', $image)[0])[1]).'" class="img-fluid" src='.$image.'></a></div>';
            //echo '<p>'.str_replace('_', ' ', explode('/', explode('.', $image)[0])[1]).'</p>';
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script defer src="script.js"></script>
    <title>Document</title>
</head>
<body>
    <div class="container">
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Galleri</h1>
                <p class="lead">med vackra bilder på Shrek Ogre</p>
            </div>
        </div>
        <div class="row">
            <?php echoImg(); ?>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
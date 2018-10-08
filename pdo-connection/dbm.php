<?php


$host = '127.0.0.1';
$db   = 'c9';
$user = 'newbyte';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";
$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];
try {
     $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
     throw new \PDOException($e->getMessage(), (int)$e->getCode());
}

function verifyInput($typeArray, $input) {
    $isVerified = false;
    
    for ($i = 0; $i < sizeof($typeArray); $i++) {
        if (strtolower($typeArray[$i]) === $input) {
            $isVerified = true;
        }
    }
    
    return $isVerified;
}

//$stm = $pdo->prepare("USE c9;");
//$stm->execute();
?>
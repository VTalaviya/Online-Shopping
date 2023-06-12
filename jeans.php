<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jeans</title>
    <link rel="stylesheet" href="styles/style.css"/>
    <!-- <link rel="stylesheet" href="styles/bootstrap.css"/> -->
</head>
<body>
    <div class="container mt-5 mb-5">
      <h1 class="cat_head">Jeans</h1>
    <div class="row">
        <?php getCatProducts('Jeans'); ?>
    </div>
    </div>

</body>
</html>
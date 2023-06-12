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
    <title>Women's products</title>
    <link rel="stylesheet" href="styles/style.css"/>
    <link rel="stylesheet" href="styles/bootstrap.css"/>
    <style>
        .search_text{
            font-size:18px;
            height:40px;
            width:150px;
        }
        .btn-default{
            background-color:#fff;
            border-color: #ccc
        }
        .buttons a{
            display: inline-block;
            margin:0 5px;
            line-height:40px;
            font-size : 13px;
            padding:5px 25px;
        } 
        .btn-danger{
            background-color: #d9534f;
            border-color: #d43f3a;
        }
        .btn-default:hover {

            color: #333;
            background-color: #e6e6e6;
            border-color: #adadad;

        }
    </style>
</head>
<body>
<div class="container mt-5 mb-5">
        <nav class="navbar navbar-expand-lg bg-body-tertiary text">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
                <h1>Womenswear</h1>
            </li>
        </ul>
        <form class="d-flex " role="search" method="post">
            <select class="form-select search_text" id="select" aria-label="Default select example" onchange="getProduct()">
                <option selected value="All">All</option>
                <option value="Hoodies">Hoodie</option>
                <option value="T-shirts">T-shirt</option>
                <option value="jeans">Jeans</option>
                <option value="Kurta">Kurta</option>
                <option value="Saree">Saree</option>
            </select>
        </form>
        </div>
    </div>
    </nav>

    <div class="row" id="main">
    </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script>
        
        $(document).ready(function(){
            main.innerHTML = `<?php getgenderproducts('Female'); ?>`;
        });

        let select_cat = document.getElementById('select');
        let main = document.getElementById('main');
        

        function getProduct(){

            const selected_category = document.getElementById('select').value;
            main.innerHTML = '';

            if(selected_category === 'All')
            {
                main.innerHTML = `<?php getgenderproducts('Female'); ?>`;
            }
            else if(selected_category === 'Hoodies')
            {
                main.innerHTML = `<?php getSearchedMenItem('Hoodies','Female') ?>`;
            }
            else if(selected_category === 'T-shirts')
            {
                main.innerHTML = `<?php getSearchedMenItem('T-shirts','Female') ?>`;
            }
            else if(selected_category === 'jeans')
            {
                main.innerHTML = `<?php getSearchedMenItem('jeans','Female') ?>`;
            }
            else if(selected_category === 'Kurta')
            {
                main.innerHTML = `<?php getSearchedMenItem('Kurta','Female') ?>`;
            }
            else if(selected_category === 'Saree')
            {
                main.innerHTML = `<?php getSearchedMenItem('Saree','Female') ?>`;
            }
        }
    </script>


</body>
</html>

<?php

include("includes/footer.php");

?>



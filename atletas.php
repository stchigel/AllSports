<?php
    $servername = "127.0.0.1";
    $database = "AllSports";
    $username = "alumno";
    $password = "alumnoipm";
    
    $conexion = mysqli_connect($servername, $username, $password, $database); // se crea la conexion
    if (!$conexion) {
        die("Conexion fallida: " . mysqli_connect_error());
    }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anek+Devanagari&family=Open+Sans&display=swap" rel="stylesheet">
</head>
<body id="batl">
    <header>
      <a href=""><img src="img/logo.svg" alt="logo"></a>
      <div><a href="/futbol.php">Futbol</a></div>
      <div><a href="">Basquet</a></div>
      <div><a href="">F1</a></div>
      <div><a href="">MMA</a></div>
    </header>
    <div id="des-section">
        <div id="menu">
            <ul>
                <li><a href="">Histórico</a></li>
                <li><a href="">Libra por Libra</a></li>
                <li><a href="">Peso Mosca</a></li>
                <li><a href="">Peso Gallo</a></li>
                <li><a href="">Peso Pluma</a></li>
                <li><a href="">Peso Ligero</a></li>
                <li><a href="">Peso Welter</a></li>
                <li><a href="">Peso Medio</a></li>
                <li><a href="">Peso Semipesado</a></li>
                <li><a href="">Peso Pesado</a></li>
            </ul>
        </div>
      <div class="padding">
        
        <div class="des">
            <h2 class="desntitle">1. Islam Makhachev</h2>
            <h2 class="destitle">Campeon Peso Ligero</h2>
            <div class="desflex">
                <ul class="autismo">
                    <li>Record: 26-1</li>
                    <li>KO: 5</li>
                    <li>Sum: 12</li>
                </ul>
                <img src="img/Makhachev.png" alt="" class="desimg">
            </div>
        </div>
        <div class="des">
            <h2 class="desntitle">1. Islam Makhachev</h2>
            <h2 class="destitle">Campeon Peso Ligero</h2>
            <div class="desflex">
                <ul class="autismo">
                    <li>Record: 26-1</li>
                    <li>KO: 5</li>
                    <li>Sum: 12</li>
                </ul>
                <img src="img/Makhachev.png" alt="" class="desimg">
            </div>
        </div>
        <div class="des">
            <h2 class="desntitle">1. Islam Makhachev</h2>
            <h2 class="destitle">Campeon Peso Ligero</h2>
            <div class="desflex">
                <ul class="autismo">
                    <li>Record: 26-1</li>
                    <li>KO: 5</li>
                    <li>Sum: 12</li>
                </ul>
                <img src="img/Makhachev.png" alt="" class="desimg">
            </div>
        </div>
        <div class="des">
            <h2 class="desntitle">1. Islam Makhachev</h2>
            <h2 class="destitle">Campeon Peso Ligero</h2>
            <div class="desflex">
                <ul class="autismo">
                    <li>Record: 26-1</li>
                    <li>KO: 5</li>
                    <li>Sum: 12</li>
                </ul>
                <img src="img/Makhachev.png" alt="" class="desimg">
            </div>
        </div>
        <div class="des">
            <h2 class="desntitle">1. Islam Makhachev</h2>
            <h2 class="destitle">Campeon Peso Ligero</h2>
            <div class="desflex">
                <ul class="autismo">
                    <li>Record: 26-1</li>
                    <li>KO: 5</li>
                    <li>Sum: 12</li>
                </ul>
                <img src="img/Makhachev.png" alt="" class="desimg">
            </div>
        </div>
        <div class="des">
            <h2 class="desntitle">1. Islam Makhachev</h2>
            <h2 class="destitle">Campeon Peso Ligero</h2>
            <div class="desflex">
                <ul class="autismo">
                    <li>Record: 26-1</li>
                    <li>KO: 5</li>
                    <li>Sum: 12</li>
                </ul>
                <img src="img/Makhachev.png" alt="" class="desimg">
            </div>
        </div>
      </div>
    </div>
    <footer>
      <p>All Sports SRL</p>
    </footer>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>
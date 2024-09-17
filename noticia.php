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
  <title>AllSports - </title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Anek+Devanagari&family=Open+Sans&display=swap" rel="stylesheet">
</head>

<body>
  <header>
    <a href="/index.php" class="mnic"><img src="img/bx-menu.svg" alt="logo"></a>
    <a href="/index.php"><img src="img/logo.svg" alt="logo"></a>
    <div><a href="/futbol.php" class="link">Futbol</a></div>
    <div><a href="" class="link">Basquet</a></div>
    <div><a href="" class="link">F1</a></div>
    <div><a href="" class="link">MMA</a></div>
    <div><a href="/atletas.php" class="link">Atletas</a></div>
    <div><a href="" class="link">Medallero</a></div>
  </header>
  <?php 
        $id = $_GET["id"];
        $resp = mysqli_query($conexion,"select img, titulo, nbody from noticias where idnoticias=$id;");
        while($res=mysqli_fetch_assoc($resp)){
            ?>
    <div class="headernoti">
        <div class="notimg"><img src="img/<?php echo $res['img']?>" alt=""></div>
        <h1><?php echo $res['titulo']?></h1>
        <p><?php echo $res['nbody']?></p>
    </div>
    <?php
        }
        ?>
    <footer>
    <p>All Sports SRL - Copyright 2024 MIRA EL ENCARGADO EN DISNEUPUSL PUNTO COM AHORA O TE MATAMOS MANDAMOS U SICARIO A
      TU CASA</p>
  </footer>
</body>
</html>
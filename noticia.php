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
    <button class="hamburger mnic">
      <img src="img/bx-menu.svg" alt="logo" class="menuIcon">
      <img src="img/close.svg" alt="logo" class="closeIcon">
    </button>
    <a href="/index.php"><img src="img/logo.svg" alt="logo"></a>
    <div class="menunav1">
      <div class="divlink"><a href="/futbol.php" class="link">Futbol</a></div>
      <div class="divlink"><a href="" class="link">Tennis</a></div>
      <div class="divlink"><a href="" class="link">F1</a></div>
      <div class="divlink"><a href="/atletas.php?dv=PfP" class="link">MMA</a></div>
      <div class="divlink"><a href="" class="link">Medallero</a></div>
    </div>
  </header>
  <div class="menunav2">
      <div class="divlink futbolm"><p>Futbol</p></div>
      <div class="subfutbolm subms">
        <div class="divlink subm ligasm"><p>Ligas</p></div>
        <div class="subligasm subms">
          <div class="divlink submm"><a href="">Liga Española</a></div>
          <div class="divlink submm"><a href="">Liga Alemana</a></div>
          <div class="divlink submm"><a href="">Liga Inglesa</a></div>
          <div class="divlink submm"><a href="">Liga Italiana</a></div>
          <div class="divlink submm"><a href="">Liga Francesa</a></div>
        </div>
        <div class="divlink subm confm"><p>Confederaciones</p></div>
        <div class="subconfm subms">
          <div class="divlink submm"><a href="">UEFA</a></div>
          <div class="divlink submm"><a href="">CONCAF</a></div>
        </div>
      </div>
      <div class="divlink"><a href="" class="link">Tennis</a></div>
      <div class="divlink"><a href="" class="link">F1</a></div>
      <div class="divlink mmam"><p>MMA</p></div>
      <div class="submmam subms">
        <div class="divlink subm divisionesm"><p>Divisiones</p></div>
        <div class="subdivisionesm subms">
        <div class="divlink submm"><a href="atletas.php?dv=PfP">Libra por Libra</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Flyweight">Peso Mosca</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Bantamweight">Peso Gallo</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Featherweight">Peso Pluma</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Lightweight">Peso Ligero</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Welterweight">Peso Welter</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Middleweight">Peso Medio</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Light Heavyweight">Peso Semipesado</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=Heavyweight">Peso Pesado</a></div>
        </div>
        <div class="divlink subm mayoresm"><p>Mayores</p></div>
        <div class="submayoresm subms">
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=peleas">Más Peleas</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=victorias">Más Victorias</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=derrotas">Más Derrotas</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=victorias_titulo">Más Victorias Titulo</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=Finalizaciones">Más Finalizaciones</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=KO">Más KO</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=SUM">Más SUM</a></div>
          <div class="divlink submm"><a href="atletas.php?dv=His&sel=Desiciones">Más Decisiones</a></div>
        </div>
      </div>
      <div class="divlink"><a href="" class="link">Medallero</a></div>
  </div>
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
    <p>&copy; All Sports SRL - 2024</p>
  </footer>
  <script src="js/main.js" crossorigin="anonymous"></script>
</body>
</html>
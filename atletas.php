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
    <button class="hamburger mnic">
      <img src="img/bx-menu.svg" alt="logo" class="menuIcon">
      <img src="img/close.svg" alt="logo" class="closeIcon">
    </button>
    <a href="/index.php"><img src="img/logo.svg" alt="logo"></a>
    <div class="menunav1">
      <div class="divlink"><a href="/futbol.php" class="link">Futbol</a></div>
      <div class="divlink"><a href="" class="link">Tennis</a></div>
      <div class="divlink"><a href="/F1.php" class="link">F1</a></div>
      <div class="divlink"><a href="/atletas.php?dv=PfP" class="link">MMA</a></div>
      <div class="divlink"><a href="/medallero.php" class="link">Medallero</a></div>
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
      <div class="divlink tenism"><p>Tenis</p></div>
      <div class="subtenism subms">
        <div class="divlink subm"><a href="">Puntos</a></div>
        <div class="divlink subm singlem"><p>Single</p></div>
        <div class="subsinglem subms">
          <div class="divlink submm"><a href="" class="">Mas titulos</a></div>
          <div class="divlink submm"><a href="" class="">Mas ganados</a></div>
          <div class="divlink submm"><a href="" class="">Mas perdidos</a></div>
        </div>
        <div class="divlink subm doblem"><p>Dobles</p></div>
        <div class="subdoblem submm">
          <div class="divlink submm"><a href="" class="">Mas titulos</a></div>
          <div class="divlink submm"><a href="" class="">Mas ganados</a></div>
          <div class="divlink submm"><a href="" class="">Mas perdidos</a></div>
        </div>
      </div>
      <div class="divlink f1m"><p>F1</p></div>
      <div class="subf1m subms">
        <div class="divlink subm"><a href="/F1.php">Pilotos</a></div>
        <div class="divlink subm"><a href="/F1.php">Constructoras</a></div>
      </div>
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
    <div id="des-section">
        <div id="menu">
            <ul>
                <li><a href="?dv=PfP">Libra por Libra</a></li>
                <li><a href="?dv=Flyweight">Peso Mosca</a></li>
                <li><a href="?dv=Bantamweight">Peso Gallo</a></li>
                <li><a href="?dv=Featherweight">Peso Pluma</a></li>
                <li><a href="?dv=Lightweight">Peso Ligero</a></li>
                <li><a href="?dv=Welterweight">Peso Welter</a></li>
                <li><a href="?dv=Middleweight">Peso Medio</a></li>
                <li><a href="?dv=Light Heavyweight">Peso Semipesado</a></li>
                <li><a href="?dv=Heavyweight">Peso Pesado</a></li>
                <li><a href="?dv=His&sel=peleas">Más peleas</a></li>
                <li><a href="?dv=His&sel=victorias">Más victorias</a></li>
                <li><a href="?dv=His&sel=derrotas">Más derrotas</a></li>
                <li><a href="?dv=His&sel=victorias_titulo">Más victorias titulares</a></li>
                <li><a href="?dv=His&sel=Finalizaciones">Más finalizaciones</a></li>
                <li><a href="?dv=His&sel=KO">Más KO</a></li>
                <li><a href="?dv=His&sel=SUM">Más SUM</a></li>
                <li><a href="?dv=His&sel=Desiciones">Más decisiones</a></li>
            </ul>
        </div>
      <div class="padding">
      <?php 
        $dv = $_GET["dv"];
        if ($dv=="PfP"){
            $resultados = mysqli_query($conexion,"select * from `Peleadores` where posicionP4P is not null order by posicionP4P asc limit 10;");
        } else if ($dv=="His"){
            $sel = $_GET["sel"];
            if($sel=="Finalizaciones"){
                $resultados = mysqli_query($conexion,"select * from `Peleadores` order by KO + SUM desc limit 10;");
            }else {

            
            $resultados = mysqli_query($conexion,"select * from `Peleadores` order by $sel desc limit 10;");
        }
        } else {
            $resultados = mysqli_query($conexion,"select * from `Peleadores` where division = '$dv' and posicion_division is not null order by posicion_division limit 10;");
        }
        
        $tmpCount = 1;
        while($fila=mysqli_fetch_assoc($resultados)){ 
           ?>
        <div class="des">
            <h2 class="desntitle"><?php echo $tmpCount?>. <?php echo $fila['nombre']?> <?php echo $fila['apellido']?></h2>
            <div class="desflex">
                <ul class="algo">
                    <li>Record: <?php echo $fila['record']?></li>
                    <li>KO: <?php echo $fila['KO']?></li>
                    <li>Sum: <?php echo $fila['SUM']?></li>
                </ul>
                <img src="img/UFC/<?php echo $fila['division']?>/<?php echo strtolower($fila['apellido'])?>.png" alt="" class="desimg">
            </div>
        </div>
        <?php
        $tmpCount ++; }
        ?>
      </div>
    </div>
    <footer>
      <p>All Sports SRL</p>
    </footer>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="js/main.js" crossorigin="anonymous"></script>
</body>
</html>
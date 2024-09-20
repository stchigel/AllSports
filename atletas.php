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
        <a href="/index.php" class="mnic"><img src="img/bx-menu.svg" alt="logo"></a>
        <a href="/index.php"><img src="img/logo.svg" alt="logo"></a>
        <div><a href="/futbol.php" class="link">Futbol</a></div>
        <div><a href="" class="link">Tennis</a></div>
        <div><a href="" class="link">F1</a></div>
        <div><a href="/atletas.php?dv=PfP" class="link">MMA</a></div>
        <div><a href="" class="link">Medallero</a></div>
    </header>
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
</body>
</html>
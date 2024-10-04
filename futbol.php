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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Anek+Devanagari&family=Open+Sans&display=swap"
        rel="stylesheet">

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
          <div class="divlink"><a href="" class="subm">Liga Española</a></div>
          <div class="divlink"><a href="" class="subm">Liga Alemana</a></div>
          <div class="divlink"><a href="" class="subm">Liga Inglesa</a></div>
          <div class="divlink"><a href="" class="subm">Liga Italiana</a></div>
          <div class="divlink"><a href="" class="subm">Liga Francesa</a></div>
        </div>
        <div class="divlink subm confm"><p>Confederaciones</p></div>
        <div class="subconfm subms">
          <div class="divlink"><a href="" class="subm">UEFA</a></div>
          <div class="divlink"><a href="" class="subm">CONCAF</a></div>
        </div>
      </div>
      <div class="divlink"><a href="" class="link">Tennis</a></div>
      <div class="divlink"><a href="" class="link">F1</a></div>
      <div class="divlink"><a href="/atletas.php?dv=PfP" class="link">MMA</a></div>
      <div class="divlink"><a href="" class="link">Medallero</a></div>
  </div>
    <section class="tmain">
        <div class="table_wrapper">
        <table>
            <thead>
                <tr class="futbolhead">
                    <th> #</th>
                    <th> Equipo</th>
                    <th><a href="?ft=Jugados">PJ</a></th>
                    <th><a href="?ft=Ganados">PG</a></th>
                    <th><a href="?ft=Empatados">PE</a></th>
                    <th><a href="?ft=Perdidos">PP</a></th>
                    <th><a href="?ft='Goles-a-Favor'">GF</a></th>
                    <th><a href="?ft='Goles-en-Contra'">GC</a></th>
                    <th><a href="?ft=DIF">DIF</a></th>
                    <th><a href="?ft=PTS">PTS</a></th>
                </tr>
            </thead>
            <tbody>
                <?php 
        if (empty($_GET['ft']) or $_GET['ft']=="PTS") {
            $resultados = mysqli_query($conexion,"select * from `Futbol-equipos` order by Puntos desc limit 20;");
          } else {
            $ft = $_GET['ft'];
            if ($ft=="DIF"){
                $resultados = mysqli_query($conexion,"select * from `Futbol-equipos` order by `Goles-a-Favor` - `Goles-en-Contra` desc limit 20;");
            }else{
                $resultados = mysqli_query($conexion,"select * from `Futbol-equipos` order by $ft desc limit 20;");
            }
          }

        $tmpCount = 1;
        while($fila=mysqli_fetch_assoc($resultados)){ 
           ?>
                <tr>
                    <th class="mnsz"><?php echo "ㅤ   ".$tmpCount?></th>
                    <th class="wrp"><?php echo $fila['Nombre']?></th>
                    <th class="mnsz"><?php echo $fila['Jugados']?></th>
                    <th class="mnsz"><?php echo $fila['Ganados']?></th>
                    <th class="mnsz"><?php echo $fila['Empatados']?></th>
                    <th class="mnsz"><?php echo $fila['Perdidos']?></th>
                    <th><?php echo $fila['Goles-a-Favor']?></th>
                    <th><?php echo $fila['Goles-en-Contra']?></th>
                    <th><?php echo $fila['Goles-a-Favor'] - $fila['Goles-en-Contra']?></th>
                    <th><?php echo $fila['Puntos']?></th>
                </tr>
                <?php
        $tmpCount ++; }
        ?>
                <tr>
                </tbody>
        </table>
        </div>
    </section>
    <footer>
      <p>All Sports SRL</p>
    </footer>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
    <script src="js/main.js" crossorigin="anonymous"></script>
</body>

</html>
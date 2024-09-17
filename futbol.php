<?php
    /*$servername = "127.0.0.1";
    $database = "AllSports";
    $username = "alumno";
    $password = "alumnoipm";
    
    $conexion = mysqli_connect($servername, $username, $password, $database); // se crea la conexion
    if (!$conexion) {
        die("Conexion fallida: " . mysqli_connect_error());
    }*/
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
        <a href="/index.php" class="mnic"><img src="img/bx-menu.svg" alt="logo"></a>
        <a href="/index.php"><img src="img/logo.svg" alt="logo"></a>
        <div><a href="/futbol.php" class="link">Futbol</a></div>
        <div><a href="" class="link">Basquet</a></div>
        <div><a href="" class="link">F1</a></div>
        <div><a href="/MMA.php" class="link">MMA</a></div>
        <div><a href="" class="link">Medallero</a></div>
    </header>
    <section class="tmain">
        <select class="botong">
            <?php 
        $resultados = mysqli_query($conexion,"select * from `Futbol-torneos`;");
        while($fila=mysqli_fetch_assoc($resultados)){ // recorremos cada fila obtenida y mostramos el nombre y el apellido
           ?>
            <option class="opcion" value="<?php echo $fila['idFutbol-torneos']?>"><?php echo $fila['Nombre']?></option>
            <?php
        }
        ?>
            
        </select>
        <div class="table_wrapper">
        <table>
            <thead>
                <tr class="futbolhead">
                    <th> # | </th>
                    <th> Equipo | </th>
                    <th><a href="?ft=PJ">PJ</a> | </th>
                    <th><a href="?ft=PG">PG</a> | </th>
                    <th><a href="?ft=PE">PE</a> | </th>
                    <th><a href="?ft=PP">PP</a> | </th>
                    <th><a href="?ft=GF">GF</a> | </th>
                    <th><a href="?ft=GC">GC</a> | </th>
                    <th><a href="?ft=DIF">DIF</a> | </th>
                    <th><a href="?ft=PTS">PTS</a> | </th>
                </tr>
            </thead>
            <tbody>
                <?php 
        $resultados = mysqli_query($conexion,"select * from `Futbol-equipos`;");
        $tmpCount = 1;
        while($fila=mysqli_fetch_assoc($resultados)){ // recorremos cada fila obtenida y mostramos el nombre y el apellido
           ?>
                <tr>
                    <th class="mnsz"><?php echo "ㅤ   ".$tmpCount?></th>
                    <th class="wrp"><?php echo $fila['Nombre']?></th>
                    <th class="mnsz"><?php echo $fila['Partidos-jugados']?></th>
                    <th class="mnsz"><?php echo $fila['Partidos-ganados']?></th>
                    <th class="mnsz"><?php echo $fila['Partidos-empatados']?></th>
                    <th class="mnsz"><?php echo $fila['Partidos-perdidos']?></th>
                    <th><?php echo $fila['Goles-a-Favor']?></th>
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
</body>

</html>
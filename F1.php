<?php
    $servername = "127.0.0.1";
    $database = "AllSports";
    $username = "alumno";
    $password = "alumnoipm";
    $carreras = ['PTS', 'MEL', 'BAH', 'MON', 'BAR', 'MUG', 'SIL', 'HUN', 'SPAF', 'ZAN', 'MONZ', 'RUS', 'SING', 'JAP', 'EEUU', 'MEX', 'BRA', 'ABUD', 'AUST', 'TUR', 'ARAB'];

    
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
      <div class="divlink futbolm"><p>Futbol</p></div>
      <div class="divlink tenism"><p>Tennis</p></div>
      <div class="divlink f1m"><p>F1</p></div>
      <div class="divlink mmam"><p>MMA</p></div>
      <div class="divlink"><p>Medallero</p></div>
    </div>
  </header>
  <div class="menunav3">
    <div class="subfutbolm subms hh">
      <div class="divlink subm ligasm">
        <p>Ligas</p>
      </div>
      <div class="subligasm subms">
        <div class="divlink submm"><a href="futbol.php?lc=La%20Liga">Liga Española</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Premier%20League">Liga Inglesa</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Ligue%201">Liga Francesa</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Serie%20A">Liga Italiana</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Bundesliga">Liga Alemana</a></div>
      </div>
    </div>
    <div class="subtenism subms hh">
      <div class="divlink subm"><a href="">Puntos</a></div>
      <div class="divlink subm singlem">
        <p>Single</p>
      </div>
      <div class="subsinglem subms">
        <div class="divlink submm"><a href="tennis.php?ft=PTS&sd=s" class="">Mas titulos</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=ganados&sd=s" class="">Mas ganados</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=perdidos&sd=s" class="">Mas perdidos</a></div>
      </div>
      <div class="divlink subm doblem">
        <p>Dobles</p>
      </div>
      <div class="subdoblem subms">
        <div class="divlink submm"><a href="tennis.php?ft=PTS&sd=d" class="">Mas titulos</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=ganados&sd=d" class="">Mas ganados</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=perdidos&sd=d" class="">Mas perdidos</a></div>
      </div>
    </div>
    <div class="subf1m subms hh">
      <div class="divlink subm"><a href="/F1.php">Pilotos</a></div>
      <div class="divlink subm"><a href="/F1.php">Constructoras</a></div>
    </div>
    <div class="submmam subms hh">
      <div class="divlink subm divisionesm">
        <p>Divisiones</p>
      </div>
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
      <div class="divlink subm mayoresm">
        <p>Mayores</p>
      </div>
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
  </div>
  <div class="menunav2">
    <div class="divlink futbolm">
      <p>Futbol</p>
    </div>
    <div class="subfutbolm subms">
      <div class="divlink subm ligasm">
        <p>Ligas</p>
      </div>
      <div class="subligasm subms">
        <div class="divlink submm"><a href="futbol.php?lc=La%20Liga">Liga Española</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Premier%20League">Liga Inglesa</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Ligue%201">Liga Francesa</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Serie%20A">Liga Italiana</a></div>
        <div class="divlink submm"><a href="futbol.php?lc=Bundesliga">Liga Alemana</a></div>
      </div>
    </div>
    <div class="divlink tenism">
      <p>Tenis</p>
    </div>
    <div class="subtenism subms">
      <div class="divlink subm"><a href="">Puntos</a></div>
      <div class="divlink subm singlem">
        <p>Single</p>
      </div>
      <div class="subsinglem subms">
        <div class="divlink submm"><a href="tennis.php?ft=PTS&sd=s" class="">Mas titulos</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=ganados&sd=s" class="">Mas ganados</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=perdidos&sd=s" class="">Mas perdidos</a></div>
      </div>
      <div class="divlink subm doblem">
        <p>Dobles</p>
      </div>
      <div class="subdoblem subms">
        <div class="divlink submm"><a href="tennis.php?ft=PTS&sd=d" class="">Mas titulos</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=ganados&sd=d" class="">Mas ganados</a></div>
        <div class="divlink submm"><a href="tennis.php?ft=perdidos&sd=d" class="">Mas perdidos</a></div>
      </div>
    </div>
    <div class="divlink f1m">
      <p>F1</p>
    </div>
    <div class="subf1m subms">
      <div class="divlink subm"><a href="/F1.php">Pilotos</a></div>
      <div class="divlink subm"><a href="/F1c.php">Constructoras</a></div>
    </div>
    <div class="divlink mmam">
      <p>MMA</p>
    </div>
    <div class="submmam subms">
      <div class="divlink subm divisionesm">
        <p>Divisiones</p>
      </div>
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
      <div class="divlink subm mayoresm">
        <p>Mayores</p>
      </div>
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
    <div class="divlink"><a href="medallero.php" class="link">Medallero</a></div>
  </div>
    <section class="tmain">
        <div class="table_wrapper">
        <table>
            <thead>
                <tr class="futbolhead">
                    <th> #</th>
                    <th> <a href="../F1c.php">Piloto</a></th>
                    <th><a href="?ft=0">PTS</a></th><!--suma de puntos de todas las carreras-->
                    <th><a href="?ft=1">MEL</a></th><!-- id1-->
                    <th><a href="?ft=2">BAH</a></th><!-- id2-->
                    <th><a href="?ft=3">MON</a></th><!-- id3-->
                    <th><a href="?ft=4">BAR</a></th><!-- id4-->
                    <th><a href="?ft=5">MUG</a></th><!-- id5-->
                    <th><a href="?ft=6">SIL</a></th><!--id6 -->
                    <th><a href="?ft=7">HUN</a></th><!-- id7-->
                    <th><a href="?ft=8">SPA-F</a></th><!-- id8-->
                    <th><a href="?ft=9">ZAN</a></th><!-- id9-->
                    <th><a href="?ft=10">MONZ</a></th><!-- id10-->
                    <th><a href="?ft=11">RUS</a></th><!--id11 -->
                    <th><a href="?ft=12">SING</a></th><!-- id12-->
                    <th><a href="?ft=13">JAP</a></th><!-- id13-->
                    <th><a href="?ft=14">EEUU</a></th><!--id14 -->
                    <th><a href="?ft=15">MEX</a></th><!--id15 -->
                    <th><a href="?ft=16">BRA</a></th><!-- id16-->
                    <th><a href="?ft=17">ABU-D</a></th><!-- id17-->
                    <th><a href="?ft=18">AUST</a></th><!--id18 -->
                    <th><a href="?ft=19">TUR</a></th><!-- id19-->
                    <th><a href="?ft=20">ARAB</a></th><!-- id20-->
                </tr>
            </thead>
            <tbody>
                <?php 
        if (empty($_GET['ft']) or $_GET['ft']=="0" or $_GET['ft']>20 or $_GET['ft']<0) {
          $querypts = "SELECT 
          Pilotos.apellido, 
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 1 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MEL,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 2 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS BAH,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 3 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MON,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 4 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS BAR,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 5 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MUG,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 6 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS SIL,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 7 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS HUN,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 8 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS SPAF,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 9 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS ZAN,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 10 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MONZ,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 11 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS RUS,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 12 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS SING,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 13 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS JAP,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 14 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS EEUU,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 15 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MEX,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 16 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS BRA,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 17 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS ABUD,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 18 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS AUST,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 19 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS TUR,
          SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 20 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS ARAB,
          (
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 1 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 2 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 3 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 4 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 5 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 6 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 7 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 8 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 9 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 10 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 11 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 12 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 13 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 14 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 15 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 16 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 17 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 18 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 19 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
              SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 20 THEN Pilotos_has_Carrera.puntos ELSE 0 END)
          ) AS PTS
      FROM 
          Pilotos 
      JOIN 
          Pilotos_has_Carrera ON Pilotos.idPilotos = Pilotos_has_Carrera.Pilotos_idPilotos
      GROUP BY 
          Pilotos.apellido 
      ORDER BY 
          PTS DESC;
      ";
            $resultados = mysqli_query($conexion, $querypts);
          } else {
            $ft = $_GET['ft'];
            $queryft = "SELECT 
            Pilotos.apellido, 
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 1 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MEL,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 2 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS BAH,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 3 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MON,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 4 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS BAR,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 5 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MUG,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 6 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS SIL,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 7 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS HUN,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 8 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS SPAF,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 9 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS ZAN,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 10 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MONZ,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 11 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS RUS,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 12 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS SING,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 13 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS JAP,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 14 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS EEUU,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 15 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS MEX,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 16 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS BRA,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 17 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS ABUD,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 18 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS AUST,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 19 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS TUR,
            SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 20 THEN Pilotos_has_Carrera.puntos ELSE 0 END) AS ARAB,
            (
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 1 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 2 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 3 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 4 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 5 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 6 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 7 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 8 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 9 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 10 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 11 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 12 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 13 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 14 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 15 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 16 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 17 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 18 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 19 THEN Pilotos_has_Carrera.puntos ELSE 0 END) +
                SUM(CASE WHEN Pilotos_has_Carrera.Carrera_idCarrera = 20 THEN Pilotos_has_Carrera.puntos ELSE 0 END)
            ) AS PTS
        FROM 
            Pilotos 
        JOIN 
            Pilotos_has_Carrera ON Pilotos.idPilotos = Pilotos_has_Carrera.Pilotos_idPilotos
        GROUP BY 
            Pilotos.apellido 
        ORDER BY 
            {$carreras[$ft]} DESC;";
            $resultados = mysqli_query($conexion, $queryft);
          }

        $tmpCount = 1;
        while($fila=mysqli_fetch_assoc($resultados)){ 
           ?>
                <tr>
                    <th class="mnsz"><?php echo "ㅤ   ".$tmpCount?></th>
                    <th class="wrp"><?php echo $fila['apellido']?></th>
                    <th><?php echo $fila['PTS']?></th>
                    <th><?php echo $fila['MEL']?></th>
                    <th><?php echo $fila['BAH']?></th>
                    <th><?php echo $fila['MON']?></th>
                    <th><?php echo $fila['BAR']?></th>
                    <th><?php echo $fila['MUG']?></th>
                    <th><?php echo $fila['SIL']?></th>
                    <th><?php echo $fila['HUN']?></th>
                    <th><?php echo $fila['SPAF']?></th>
                    <th><?php echo $fila['ZAN']?></th>
                    <th><?php echo $fila['MONZ']?></th>
                    <th><?php echo $fila['RUS']?></th>
                    <th><?php echo $fila['SING']?></th>
                    <th><?php echo $fila['JAP']?></th>
                    <th><?php echo $fila['EEUU']?></th>
                    <th><?php echo $fila['MEX']?></th>
                    <th><?php echo $fila['BRA']?></th>
                    <th><?php echo $fila['ABUD']?></th>
                    <th><?php echo $fila['AUST']?></th>
                    <th><?php echo $fila['TUR']?></th>
                    <th><?php echo $fila['ARAB']?></th>
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
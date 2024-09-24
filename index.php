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
  <title>All Sports</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Anek+Devanagari&family=Open+Sans&display=swap" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body class="scrollbody">
  <div class="cubrir">
    <img src="img/logo.svg" alt="logo">
  </div>
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
      <div class="divlink"><a href="/futbol.php" class="link">Futbol</a></div>
      <div class="divlink"><a href="" class="link">Tennis</a></div>
      <div class="divlink"><a href="" class="link">F1</a></div>
      <div class="divlink"><a href="/atletas.php?dv=PfP" class="link">MMA</a></div>
      <div class="divlink"><a href="" class="link">Medallero</a></div>
    </div>
<div class="asideynews">
  <aside>
    <div class="medallero">
      <p>Medallero 2024</p>
      <table>
            <thead>
                <tr class="futbolhead">
                    <th> # | </th>
                    <th> 🌎 | </th>
                    <th>🟡 | </th>
                    <th>⚪ | </th>
                    <th>🟤 | </th>
                    <th>⭕ | </th>
                </tr>
            </thead>
            <tbody>
                <?php 
                $query = "SELECT 
                p.Nombre AS Pais,
                COUNT(CASE WHEN m.Tipo = 1 THEN 1 END) AS Oro,
                COUNT(CASE WHEN m.Tipo = 2 THEN 1 END) AS Plata,
                COUNT(CASE WHEN m.Tipo = 3 THEN 1 END) AS Bronce
            FROM 
                Pais p
            JOIN 
                Atleta a ON p.idPais = a.Pais_idPais
            JOIN 
                Medalla m ON a.idAtleta = m.Atleta_idAtleta
            GROUP BY 
                p.Nombre
            ORDER BY 
                Oro DESC, 
                Plata DESC, 
                Bronce DESC
            LIMIT
                10;
            ";
       $resultados = mysqli_query($conexion,$query);
        $tmpCount = 1;
        while($fila=mysqli_fetch_assoc($resultados)){ // recorremos cada fila obtenida y mostramos el nombre y el apellido
           ?>
                <tr>
                    <th><?php echo "ㅤ   ".$tmpCount?></th>
                    <th><?php echo $fila['Pais']?></th>
                    
                    <th><?php echo $fila['Oro']?></th>
                    <th><?php echo $fila['Plata']?></th>
                    <th><?php echo $fila['Bronce']?></th>
                    <th><?php echo $fila['Oro']+$fila['Plata']+$fila['Bronce']?></th>
                </tr>
                <?php
        $tmpCount ++; }
        ?>
        </tbody>
        </table>
    </div>
  </aside>
  <div id="news-section">
    <div class="padding">
      <?php 
        $resultados = mysqli_query($conexion,"select idnoticias, img, titulo from noticias order by idnoticias desc;");
            
        while($fila=mysqli_fetch_assoc($resultados)){ // recorremos cada fila obtenida y mostramos el nombre y el apellido
          ?>
          <a href="noticia.php?id=<?php echo $fila['idnoticias']?>">
      <div class="news">
        <img src="img/<?php echo $fila['img']?>" alt="" class="nimg">
        <h2 class="ntitle"><?php echo $fila['titulo']?></h2>
      </div>
      </a>
      <?php
        }
        ?>
    </div>
  </div>
  <aside>
    <div class="imgad">
      <img src="img/image.jpg" alt="">
    </div>
  </aside>
</div>
  <footer>
    <p>All Sports SRL - Copyright 2024 MIRA EL ENCARGADO EN DISNEUPUSL PUNTO COM AHORA O TE MATAMOS MANDAMOS U SICARIO A
      TU CASA</p>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <script src="js/main.js" crossorigin="anonymous"></script>
</body>

</html>
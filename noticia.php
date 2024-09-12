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
        $res = mysqli_query($conexion,"select idnoticias, img, titulo from noticias where idnoticias=$id;");
            ?>
    <div class="headernoti">
        <div class="notimg"><img src="img/Francella.jpg" alt=""></div>
        <h1><?php echo $res['titulo']?></h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro, excepturi eligendi officia aperiam atque eius quia doloribus maiores. Repudiandae tempora vero sint fuga aliquam harum consequuntur fugit? Sed, distinctio molestiae neque cumque fugit ipsa placeat? Minus rerum nisi placeat commodi accusamus consequatur, aliquam vero maiores! Doloremque, illo! Nihil aspernatur nam deserunt iusto enim culpa neque corporis, in accusantium eos soluta. Nemo perferendis voluptatem ipsa esse voluptate incidunt debitis libero, corrupti, maiores sapiente itaque illo suscipit, obcaecati nesciunt minima aut optio dolores officia. Nemo ex quidem, exercitationem consequatur deserunt maxime harum quisquam itaque saepe voluptas, totam quae. Recusandae voluptatibus deleniti tempore natus quibusdam ullam voluptatum, quos illum iste incidunt illo eligendi alias accusantium unde impedit libero, cupiditate veniam cumque, sit amet architecto ut ad sunt. Nemo temporibus eius adipisci, delectus possimus consectetur nisi excepturi quis facilis repudiandae. Iusto, error. Libero, reprehenderit. Modi ab quaerat id impedit veritatis. Labore, suscipit fugit tempora temporibus unde, quibusdam vitae a nulla magnam eum, eveniet blanditiis sapiente. Autem laborum expedita unde quia! Aperiam sed impedit provident, sequi atque laborum animi iure a perspiciatis ad harum repudiandae repellat perferendis, culpa libero molestias, accusamus beatae? Officiis tenetur esse error perspiciatis, similique maxime tempore iure, deleniti, maiores blanditiis consequatur. Perferendis rerum tempora natus exercitationem eius est ipsa sapiente laudantium quis, at porro eaque nulla nemo, dignissimos incidunt aut, praesentium nobis. Perspiciatis inventore non maxime earum deleniti blanditiis excepturi, sapiente alias debitis error praesentium porro eaque accusantium consequatur, eum ratione, eligendi obcaecati sint autem aperiam sed ipsum! Nemo voluptatum alias dolorem aliquam placeat ullam qui. Explicabo odit iusto cumque quod omnis laudantium commodi facilis a saepe? Repudiandae voluptatibus facere quod soluta facilis, sit laboriosam odio! Optio doloribus corrupti laborum nihil ad dolores recusandae harum accusamus laboriosam, eius temporibus, praesentium voluptatum exercitationem reiciendis voluptas. Quae corrupti inventore sed laborum pariatur dolores!</p>
    </div>
    <footer>
    <p>All Sports SRL - Copyright 2024 MIRA EL ENCARGADO EN DISNEUPUSL PUNTO COM AHORA O TE MATAMOS MANDAMOS U SICARIO A
      TU CASA</p>
  </footer>
</body>
</html>
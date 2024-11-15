<?php
    session_start(); // Inicia la sesión

    // Destruye todas las variables de sesión
    $_SESSION = array();

    // Destruye la sesión
    session_destroy();

    // Redirige a index.php
    header("Location: index.php");
    exit;
?>

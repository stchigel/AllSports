<?php
    session_start(); // Iniciar la sesión al principio de la página

    $servername = "127.0.0.1";
    $database = "AllSports";
    $username = "alumno";
    $password = "alumnoipm";

    $conexion = mysqli_connect($servername, $username, $password, $database);
    if (!$conexion) {
        die("Conexion fallida: " . mysqli_connect_error());
    }

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $usuario = $_POST['usuario'];
        $contrasena = $_POST['contrasena'];

        $sql = "SELECT contrasena FROM cuentas WHERE usuario = ?";
        $stmt = mysqli_prepare($conexion, $sql);
        mysqli_stmt_bind_param($stmt, "s", $usuario);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_bind_result($stmt, $hashed_password);
        mysqli_stmt_fetch($stmt);

        if ($hashed_password && password_verify($contrasena, $hashed_password)) {
            $_SESSION['usuario'] = $usuario; // Guarda el nombre de usuario en la sesión
            header("Location: index.php");
            exit;
        } else {
            echo "Usuario o contraseña incorrectos.";
        }
        mysqli_stmt_close($stmt);
    }
    mysqli_close($conexion);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <form method="post" action="iniciar_sesion.php">
        <div class="form-group">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" required>
        </div>
        <div class="form-group">
            <label for="contrasena">Contraseña:</label>
            <input type="password" id="contrasena" name="contrasena" required>
        </div>
        <button type="submit">Iniciar sesión</button>
    </form>
</body>
</html>

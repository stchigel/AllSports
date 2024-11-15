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
        $correo = $_POST['correo'];
        $contrasena = password_hash($_POST['contrasena'], PASSWORD_DEFAULT);

        $sql = "INSERT INTO cuentas (usuario, correo, contrasena) VALUES (?, ?, ?)";
        $stmt = mysqli_prepare($conexion, $sql);
        mysqli_stmt_bind_param($stmt, "sss", $usuario, $correo, $contrasena);

        if (mysqli_stmt_execute($stmt)) {
            $_SESSION['usuario'] = $usuario; // Guarda el nombre de usuario en la sesión
            header("Location: index.php");
            exit;
        } else {
            echo "Error: " . mysqli_error($conexion);
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
    <title>Crear Cuenta</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <form method="post" action="crear_cuenta.php">
        <div class="form-group">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" required>
        </div>
        <div class="form-group">
            <label for="correo">Correo:</label>
            <input type="email" id="correo" name="correo" required>
        </div>
        <div class="form-group">
            <label for="contrasena">Contraseña:</label>
            <input type="password" id="contrasena" name="contrasena" required>
        </div>
        <button type="submit">Crear cuenta</button>
    </form>
</body>
</html>

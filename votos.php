<?php
require 'conexion.php';


// datos del formulario
$nombreApellido = $_POST['nombre_apellido'];
$alias = $_POST['Alias'];
$rut = $_POST['Rut'];
$email = $_POST['Email'];
$regionId = $_POST['Region'];
$comunaId = $_POST['Comuna'];
$candidato = $_POST['Candidato'];
$comoSupoIds = $_POST['como_supo'];


// Insertar en la tabla votos
$sql = "INSERT INTO votos (Nombre_Apellido, alias, rut, email, comuna_id, candidato)
        VALUES ('$nombreApellido', '$alias', '$rut', '$email', '$comunaId', '$candidato')";

if ($conn->query($sql) === TRUE) {
    $votoId = $conn->insert_id; // Obtener el ID del voto insertado

    // Insertar en tabla intermedia voto_como_supo
    foreach ($comoSupoIds as $comoSupoId) {
        $sql = "INSERT INTO voto_como_supo (voto_id, como_supo_id)
        VALUES ($votoId, $comoSupoId)";
        $conn->query($sql);
    }

    echo "Gracias por votar.";
    echo '<script>
    setTimeout(function() {
        window.location.href = "resultados.php";
    }, 2000); // 2000 milisegundos (2s)
    </script>';
    
} else {
    echo "Error al registrar el voto: " . $conn->error;
}

$conn->close();
?>
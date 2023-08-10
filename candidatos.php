<?php
require 'conexion.php';

//Listado de candidatos
$sql = "SELECT id, candidato FROM candidatos";
$result = $conn->query($sql);

$candidatos = "";
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $candidatos .= "<option value='" . $row['id'] . "'>" . $row['candidato'] . "</option>";
    }
}


echo $candidatos;
$conn->close();
?>

<?php
require 'conexion.php';

//listado de regiones

$sql = "SELECT id, region FROM regiones";
$result = $conn->query($sql);

$regiones = "";
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $regiones .= "<option value='" . $row['id'] . "'>" . $row['region'] . "</option>";
    }
}


echo $regiones;
$conn->close();
?>

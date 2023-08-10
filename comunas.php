<?php
require 'conexion.php';

//listado de comunas segun regiones

$region_id = $_GET['region_id'];

$sql = "SELECT id, comuna FROM comunas WHERE region_id = '$region_id'";
$result = $conn->query($sql);

$comunas = "";
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $comunas .= "<option value='" . $row['id'] . "'>" . $row['comuna'] . "</option>";
    }
}


echo $comunas;
$conn->close();
?>

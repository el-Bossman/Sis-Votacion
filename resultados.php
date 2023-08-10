<!DOCTYPE html>
<html>
<head>
    <title>Resultados de Votos</title>
    <style>table {
    border-collapse: collapse;
    width: 70%;
    margin-bottom: 20px;
    }

    table, th, td {
    border: 1px solid black;
    }

    th, td {
    padding: 2px;
    text-align: left;
    }

    th {
    background-color: #f2f2f2;
    }
</style>
</head>
<body>

<h2>Detalles de Votos</h2>
<?php include 'ver_votos.php'; ?>

<h2>Conteo de Votos por Candidato</h2>
<?php include 'ver_conteo.php'; ?>

</body>
</html>
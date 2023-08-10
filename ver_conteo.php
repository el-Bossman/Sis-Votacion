<?php

//Conteo de candidatos y votos
$sql = "SELECT ca.candidato, COUNT(*) AS cantidad_votos
        FROM votos v
        INNER JOIN candidatos ca ON v.candidato = ca.ID
        GROUP BY ca.candidato
        ORDER BY cantidad_votos DESC";

$result = $conn->query($sql);

$conn->close();
?>

<table>
    <thead>
        <tr>
            <th>Candidato</th>
            <th>Cantidad de Votos</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $row['candidato']; ?></td>
                <td><?php echo $row['cantidad_votos']; ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
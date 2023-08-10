<?php
require 'conexion.php';

$sql = "SELECT v.ID, v.Nombre_Apellido, v.alias, v.rut, v.email, c.Comuna AS comuna, ca.candidato, GROUP_CONCAT(cs.Opcion SEPARATOR ', ') AS como_supo 
        FROM votos v 
        INNER JOIN comunas c ON v.comuna_id = c.ID 
        INNER JOIN candidatos ca ON v.candidato = ca.ID
        LEFT JOIN voto_como_supo vcs ON v.ID = vcs.voto_id 
        LEFT JOIN como_supo cs ON vcs.como_supo_id = cs.ID 
        GROUP BY v.ID";

$result = $conn->query($sql);


?>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre y Apellido</th>
            <th>Alias</th>
            <th>RUT</th>
            <th>Email</th>
            <th>Comuna</th>
            <th>Candidato</th>
            <th>Cómo se Enteraron</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $row['ID']; ?></td>
                <td><?php echo $row['Nombre_Apellido']; ?></td>
                <td><?php echo $row['alias']; ?></td>
                <td><?php echo $row['rut']; ?></td>
                <td><?php echo $row['email']; ?></td>
                <td><?php echo $row['comuna']; ?></td>
                <td><?php echo $row['candidato']; ?></td>
                <td><?php echo $row['como_supo']; ?></td>
            </tr>
        <?php } ?>
    </tbody>
</table>
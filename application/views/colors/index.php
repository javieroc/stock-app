<h2>Colores</h2>
<?= anchor('colors/add', ' Agregar Color', array('class' => 'button fi-plus'));?>

<table class="hover stack">
    <thead>
        <tr>
            <th> Color </th>
            <th> Creado </th>
            <th> Actualizado </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($colors as $color): ?>
        <tr>
            <td><?= $color->name; ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($color->created)); ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($color->updated)); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

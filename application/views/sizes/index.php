<h2>Talles</h2>
<?= anchor('sizes/add', ' Agregar Talle', array('class' => 'button fi-plus'));?>

<table class="hover stack">
    <thead>
        <tr>
            <th> Talle </th>
            <th> Creado </th>
            <th> Actualizado </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($sizes as $size): ?>
        <tr>
            <td><?= $size->size; ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($size->created)); ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($size->updated)); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

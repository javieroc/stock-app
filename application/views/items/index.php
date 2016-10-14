<h2>Artículos</h2>
<?= anchor('items/add', ' Agregar Artículo', array('class' => 'button fi-plus'));?>

<table class="hover stack">
    <thead>
        <tr>
            <th> Nombre </th>
            <th> Descripción </th>
            <th> Temporada </th>
            <th> Año </th>
            <th> Precio </th>
            <th> Creado </th>
            <th> Actualizado </th>
        </tr>
    </thead>
    <tbody>
        <?php foreach ($items as $item): ?>
        <tr>
            <td><?= $item->name; ?></td>
            <td><?= $item->description; ?></td>
            <td><?= $item->season; ?></td>
            <td><?= $item->year; ?></td>
            <td><?= $item->price; ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($item->created)); ?></td>
            <td><?= date("d/m/Y H:i:s", strtotime($item->updated)); ?></td>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

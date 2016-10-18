<h2>Curvas de talles</h2>
<?= anchor('sizes/add_group', ' Agregar Curva de Talles', array('class' => 'button fi-plus'));?>

<table class="hover stack">
    <tbody>
        <?php foreach ($groups as $name => $sizes): ?>
        <tr>
            <td><?= $name; ?></td>
            <?php foreach ($sizes as $size): ?>
            <td><?= $size->size; ?></td>
            <?php endforeach; ?>
        </tr>
        <?php endforeach; ?>
    </tbody>
</table>

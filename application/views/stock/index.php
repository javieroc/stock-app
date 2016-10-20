<h2 class="title-h2">Stock de Artículos</h2>

<?= anchor('stock/add', ' Agregar Stock', array('class' => 'button fi-plus'));?>

<div class="filters">
    <div class="filter input-group">
        <span class="input-group-label"><i class="fi-magnifying-glass"></i></span>
        <input id="item-search" class="input-group-field" type="text" placeholder="Escriba el nombre de un artículo.">
    </div>
</div>

<div class="table-scroll-index">
    <table class="hover stack">
        <thead>
            <tr>
                <th> Nombre </th>
                <th> Temporada </th>
                <th> Año </th>
                <th> Color </th>
                <th> Talle </th>
                <th> Cantidad </th>
            </tr>
        </thead>
        <tbody id="result">
            <?php foreach ($items as $item): ?>
            <tr>
                <td><?= $item->item; ?></td>
                <td><?= $item->season; ?></td>
                <td><?= $item->year; ?></td>
                <td><?= $item->color; ?></td>
                <td><?= $item->size; ?></td>
                <td><?= $item->quantity; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<script src="<?= base_url('js/stock/stock.js'); ?>"></script>

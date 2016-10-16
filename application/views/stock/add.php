<?= errors_messages(validation_errors()); ?>
<div id="add-item">
    <h2>Agrega Stock</h2>
    <?= form_open('stock/validate'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Artículo
                <select id="item" name="item_id">
                    <?php foreach ($items as $key => $item): ?>
                    <option value="<?= $key; ?>"><?= $item; ?></option>
                    <?php endforeach; ?>
                </select>
                </label>
            </div>

            <div class="medium-12 columns">
                <label>Colores
                <select name="colors[]" multiple>
                    <?php foreach ($colors as $key => $color): ?>
                    <option value="<?= $key; ?>"><?= $color; ?></option>
                    <?php endforeach; ?>
                </select>
                </label>
            </div>

            <div class="medium-12 columns">
                <table class="hover stack">
                    <thead>
                        <tr>
                            <th> Artículo </th>
                            <th> Temporada </th>
                            <th> Año </th>
                            <th> Talle </th>
                            <th> Cantidad </th>
                    </thead>
                    <tbody id="result">
                    </tbody>
                </table>
            </div>

            <div class="medium-12 columns">
                <label>Cantidad por defecto
                    <input type="number" placeholder="Cantidad de stock" id="default_quantity">
                </label>
            </div>

            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'button success')); ?>
                <?= anchor('stock/index', 'Cancelar', array('class' => 'button secondary'));?>
            </div>
        </div>
    <?= form_close(); ?>
</div>
<script src="<?= base_url('js/stock/stock.js'); ?>"></script>
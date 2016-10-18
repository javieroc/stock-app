<?= errors_messages(validation_errors()); ?>
<div>
    <h2>Agrega Curva de talles</h2>
    <?= form_open('sizes/validate_group'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Nombre o descripción
                    <input type="text" placeholder="Nombre o descripción de la curva" name="name">
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Talles disponibles
                <select name="sizes[]" multiple size="10">
                    <?php foreach ($sizes as $key => $size): ?>
                    <option value="<?= $key; ?>"><?= $size; ?></option>
                    <?php endforeach; ?>
                </select>
                </label>
            </div>
            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'button success')); ?>
                <?= anchor('sizes/groups', 'Cancelar', array('class' => 'button secondary'));?>
            </div>
        </div>
    <?= form_close(); ?>
</div>

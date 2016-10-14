<?= errors_messages(validation_errors()); ?>
<div id="add-item">
    <h2>Agrega un artículo</h2>
    <?= form_open('items/validate'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Nombre
                    <input type="text" placeholder="Nombre del artículo" name="name">
                </label>
            </div>
            <div class="medium-12 columns">
                <label>
                    Descripción
                    <textarea name="description" placeholder="Escribe una descripción del artículo"></textarea>
                </label>
            </div>
            <div class="medium-12 columns">
                <label>
                    Precio
                    <input type="number" placeholder="Precio de lista" name="price" value="100">
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Temporada
                <select name="season">
                    <option value="pri-ver">Primaver/verano</option>
                    <option value="oto-inv">Otoño/Invierno</option>
                </select>
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Año
                <select name="year">
                    <option value="2015">2015</option>
                    <option value="2016">2016</option>
                    <option value="2017">2017</option>
                    <option value="2018">2018</option>
                </select>
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Curva de talle
                <select name="sizes[]" multiple>
                    <?php foreach ($sizes as $key => $size): ?>
                    <option value="<?= $key; ?>"><?= $size; ?></option>
                    <?php endforeach; ?>
                </select>
                </label>
            </div>
            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'button success')); ?>
                <?= anchor('items/index', 'Cancelar', array('class' => 'button secondary'));?>
            </div>
        </div>
    <?= form_close(); ?>
</div>

<?= errors_messages(validation_errors()); ?>
<div id="add-item">
    <h2>Agrega un Talle</h2>
    <?= form_open('sizes/validate'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Talle
                    <input type="text" placeholder="Escribir un talle" name="size">
                </label>
            </div>

            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'button success')); ?>
                <?= anchor('sizes/index', 'Cancelar', array('class' => 'button secondary'));?>
            </div>
        </div>
    <?= form_close(); ?>
</div>

<?= errors_messages(validation_errors()); ?>
<div>
    <h2>Agrega un Color</h2>
    <?= form_open('colors/validate'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Color
                    <input type="text" placeholder="Escribir un color" name="name">
                </label>
            </div>

            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Aceptar', 'class'=>'button success')); ?>
                <?= anchor('colors/index', 'Cancelar', array('class' => 'button secondary'));?>
            </div>
        </div>
    <?= form_close(); ?>
</div>

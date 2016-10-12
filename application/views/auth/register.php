<?= errors_messages(validation_errors()); ?>
<div id="register">
    <h2>Register</h2>
    <?= form_open('auth/validate_register'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Email
                    <?= form_input(array('type'=>'email', 'name'=>'email', 'placeholder'=>'Your email', 'value'=>set_value('email'))); ?>
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Firstname
                    <?= form_input(array('type'=>'text', 'name'=>'firstname', 'placeholder'=>'Your firstname', 'value'=>set_value('firstname'))); ?>
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Lastname
                    <?= form_input(array('type'=>'text', 'name'=>'lastname', 'placeholder'=>'Your lastname', 'value'=>set_value('lastname'))); ?>
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Password
                    <input type="password" placeholder="Your password" name="password">
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Repeat Password
                    <input type="password" placeholder="Your password" name="repeat_password">
                </label>
            </div>
            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Sing up', 'class'=>'button')); ?>
            </div>
        </div>
    <?= form_close(); ?>
</div>

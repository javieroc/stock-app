<?= errors_messages(validation_errors()); ?>
<div id="login">
    <h2>Log in</h2>
    <?= form_open('auth/validate_login'); ?>
        <div class="row callout">
            <div class="medium-12 columns">
                <label>Email
                    <input type="text" placeholder="Your user email" name="email">
                </label>
            </div>
            <div class="medium-12 columns">
                <label>Password
                    <input type="password" placeholder="Your password" name="password">
                </label>
            </div>
            <div class="medium-12 columns">
                <?= form_button(array('type'=>'submit', 'content'=>'Login', 'class'=>'button')); ?>
            </div>
        </div>
    <?= form_close(); ?>
</div>

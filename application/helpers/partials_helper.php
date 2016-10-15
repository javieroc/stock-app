<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('errors_messages')) {
    function errors_messages($errors) {
        $markup = "";
        if ($errors) {
            $markup = '<div class="callout alert" data-closable>';
            $markup = $markup.'<button class="close-button" aria-label="Dismiss alert" type="button" data-close>';
            $markup = $markup.'<span aria-hidden="true">&times;</span>';
            $markup = $markup.'</button>';
            $markup = $markup."<h6>".$errors."</h6>";
            $markup = $markup."</div>";
        }
        return $markup;
    }
}

if (!function_exists('success_message')) {
    function success_message($message) {
        $markup = "";
        if (!empty($message)) {
            $markup = '<div class="callout success" data-closable>';
            $markup = $markup.'<button class="close-button" aria-label="Dismiss alert" type="button" data-close>';
            $markup = $markup.'<span aria-hidden="true">&times;</span>';
            $markup = $markup.'</button>';
            $markup = $markup."<h6>".$message."</h6>";
            $markup = $markup."</div>";
        }
        return $markup;
    }
}

if (!function_exists('top_bar_right_items')) {
    function top_bar_right_items() {
        $markup = '';
        if (get_instance()->session->userdata('user_email')) {
            $markup = $markup . '<li>' . anchor('auth/logout', 'Log out') . '</li>';
        }else{
            $markup = $markup . '<li>' . anchor('auth/login', 'Log in') . '</li>';
            $markup = $markup . '<li>' . anchor('auth/register', 'Sing up') . '</li>';
        }
        return $markup;
    }
}

if (!function_exists('left_side_bar_items')) {
    function left_side_bar_items() {
        $markup = '';
        $markup = $markup . '<li>' . anchor('users/listing', 'Usuarios') . '</li>';
        $markup = $markup . '<li>' . anchor('stock/index', 'Stock') . '</li>';
        $markup = $markup . '<li>' . anchor('items/index', 'Artículos') . '</li>';
        $markup = $markup . '<li>' . anchor('sizes/index', 'Talles') . '</li>';
        $markup = $markup . '<li>' . anchor('auth/login', 'Colores disponibles') . '</li>';
        return $markup;
    }
}

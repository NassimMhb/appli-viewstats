<?php
session_start();
//afficher les données stockées dans session
//echo '<pre>';var_dump($_SESSION);echo '</pre>';
if (isset($_SESSION['login'])) {
} else {
    header('location:login.php');
}
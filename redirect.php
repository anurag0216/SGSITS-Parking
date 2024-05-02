<?php
session_start();

if(isset($_GET['role'])) {
    $role = $_GET['role'];
    if($role == 'admin') {
        header("Location: admin_login.php");
        exit;
    } elseif($role == 'attendant') {
        header("Location: attendant_login.php");
        exit;
    } elseif($role == 'user') {
        header("Location: user_login.php");
        exit;
    } else {
        echo "Invalid role specified.";
        exit;
    }
} else {
    echo "Please select a role.";
    exit;
}
?>

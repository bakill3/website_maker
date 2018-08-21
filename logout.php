<?php
include 'ligar_db.php';
session_destroy();
header ('location: index.php');
?>
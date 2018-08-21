<?php 
include 'header.php'; 
$query = "INSERT INTO galeria_template (src, referencia_galeria) VALUES ('".$_POST['src']."', '1')";
mysqli_query($link, $query) or die(mysqli_error($link));


?>

<?php 
include '../../../../../ligar_db.php'; 
$query = "INSERT INTO galeria_template (src, referencia_galeria) VALUES ('".$_POST['src']."', '2')";
mysqli_query($link, $query) or die(mysqli_error($link));


?>

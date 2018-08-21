<?php 
include 'header.php';
?>
<?php
if (isset($_SESSION['info_projeto'])) {
	$id_template = $_SESSION['info_projeto'][0];
	$referencia = $_SESSION['info_projeto'][1];

} else {
	echo "<script>window.loaction.href='home.php'</script>";
}
if (isset($_POST['btn-sub'])) {
	$file_name = $_FILES['file']['name'];
	$file_type = $_FILES['file']['type'];
	$file_size = $_FILES['file']['size'];
	$file_tem_loc = $_FILES['file']['tmp_name'];
	$file_store = "imagens/perfil/".$sessao."/".$file_name;

	move_uploaded_file($file_tem_loc, $file_store);

	mysqli_query($link, "UPDATE users SET foto_perfil = '$file_store' WHERE username = '$sessao';");

}
?>

<div style="padding-bottom: 1%;">
	<h1>Logótipo</h1><hr>
</div>
<form method="POST" enctype="multipart/form-data">
	<caption>Logótipo</caption>
	<input type="file" name="file"><br><br>
	<input type="submit" name="btn-sub" class="btn btn-dark">
</form>


</div>
</div>		
</body>
<script src="js/classie.js"></script>
<script src="js/borderMenu.js"></script>
</html>
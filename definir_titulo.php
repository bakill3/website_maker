<?php include 'header.php'; ?>
<?php
if (isset($_SESSION['info_projeto'])) {
	$id_template = $_SESSION['info_projeto'][0];
	$referencia = $_SESSION['info_projeto'][1];

} else {
	echo "<script>window.loaction.href='home.php'</script>";
}
?>

<form method="POST" enctype="multipart/form-data">
	<h2>Definir Título do Projeto</h2>
	<div class="col-6" style="margin: 0 auto;">
		<input type="text" name="titulo_main" class="form-control" placeholder="Título do Projeto">
	</div>
	<br>
	<?php
	$query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON opcoes_template.referencia_rand = lista_templates.referencia_rand INNER JOIN lista_secoes ON lista_secoes.id = opcoes_template.id_secao WHERE lista_templates.id_admin='$id_user' AND lista_templates.id_template='$id_template' AND opcoes_template.referencia_rand = '$referencia'");

	if (mysqli_num_rows($query) > 0) {
		while ($info_definir = mysqli_fetch_array($query)) {
			$id_secao = $info_definir['id_secao'];
			$secao_txt = $info_definir['secao'];
			$titulo = $info_definir['titulo'];
			$info = $info_definir['info'];
	?>
	<?php
	if (isset($_POST['btn_tit'])) {
		$titulo = mysqli_real_escape_string($link, $_POST['titulo_main']);
		$titulo_loop = mysqli_real_escape_string($link, $_POST["titulo_$id_secao"]);
		$info_loop = mysqli_real_escape_string($link, $_POST["info_$id_secao"]);



		if (!empty($titulo_loop) && !empty($info_loop) && !empty($titulo))  {
			$_SESSION['info_projeto'][2] = $titulo;

			$existe = "galeria/".$id_user;
			if (!is_dir($existe)) {
				mkdir($existe);
			}

			/*
			$file_name = $_FILES['file']['name'];
			$file_type = $_FILES['file']['type'];
			$file_size = $_FILES['file']['size'];
			$file_tem_loc = $_FILES['file']['tmp_name'];
			$file_store = "galeria/".$id_user."/".$file_name;

			move_uploaded_file($file_tem_loc, $file_store);
			*/

			mysqli_query($link, "UPDATE lista_templates SET titulo_template='$titulo' WHERE id_admin='$id_user' AND id_template='$id_template' AND referencia_rand='$referencia'");


			mysqli_query($link, "UPDATE opcoes_template SET titulo='$titulo_loop', info='$info_loop' WHERE id_secao='$id_secao' AND referencia_rand='$referencia'");
			//echo "UPDATE opcoes_template SET titulo='$titulo_loop', info='$info_loop' WHERE id_secao='$id_secao'";

			echo "<script>window.location.href='template_final.php'</script>";
		} else {
			echo "Preencha todos os campos";
		}
		
	}
	?>
	<h2>Definir Secção <?php echo $secao_txt; ?></h2>
	<div class="col-6" style="margin: 0 auto;">
		<input type="text" name="titulo_<?php echo $id_secao; ?>" class="form-control" placeholder="Título da Secção <?php echo $secao_txt; ?>">
		<br>
		<h4>Informações da Secção <?php echo $secao_txt; ?></h4>
		<textarea class="form-control" name="info_<?php echo $id_secao; ?>" placeholder="Informações no <?php echo $secao_txt; ?>"></textarea>
	<?php /*<input type="hidden" name="secao_id" value="<?php echo $id_secao; ?>"> */ ?>
	</div>
	<?php
		}
	} else {
		echo "<script>window.location.href='home.php'</script>";
	}
	?>

	<br>
	<br>
	<input type="submit" name="btn_tit" class="btn btn-warning">
</form>

<?php include 'footer.php'; ?>
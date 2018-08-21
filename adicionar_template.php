<?php include 'header.php'; ?>
<h2>Adicionar Template</h2>
<form method="POST">
	<?php if (isset($_SESSION['erro'])) { echo $_SESSION['erro']; unset($_SESSION['erro']); } ?>
	<div class='panel panel-default'>
		<div class='panel-body'>

			<h1>Nome do Template</h1><br>
			<div class='form-group'>
				<input type="text" class='form-control' name='nome_template' placeholder='Nome do Template';'>
			</div>


		</div>
	</div>
	<hr>

	<?php
	$nova_array = array();
	$query = mysqli_query ($link, "SELECT * FROM lista_secoes");
	while ($info_sec = mysqli_fetch_array($query)) {
		$id_secao = $info_sec['id'];
		$secao = $info_sec['secao'];


			if (isset($_POST['adiciona'])) {
		$template_tit = mysqli_real_escape_string($link, $_POST['nome_template']);
		$codigo = mysqli_real_escape_string($link, $_POST['codigo_'.$id_secao.'']);

		if (!empty($template_tit) && !empty($codigo)) {
			if (strpos ($codigo, '$titulo') !== false && strpos ($codigo, '$info') !== false) {
				$verifica = mysqli_query($link, "SELECT * FROM template WHERE titulo='$template_tit' LIMIT 1");
				if (mysqli_num_rows($verifica) == 0) {
					mysqli_query($link, "INSERT INTO template(titulo) VALUES ('$template_tit')");
				}

				mysqli_query($link, "INSERT INTO codigo_template (id_secao, id_template, codigo) VALUES ('$id_secao', (SELECT id FROM template WHERE titulo='$template_tit' LIMIT 1), '$codigo')");

			} else {
			$_SESSION['erro'] = "Tem que ter as variáveis $titulo e $info todas as secções!";
		}
		}
		echo "<script>window.location.href='adicionar_template.php'</script>";
	}	






		echo "
		<div class='panel panel-default'>
		<div class='panel-body'>

		<h1>Código da Secção $secao</h1><br>
		<div class='form-group'>
		<textarea class='form-control' name='codigo_$id_secao' placeholder='Código da secção $secao';'></textarea>
		</div>


		</div>
		</div>
		<hr>
		";
	}
	?>
	<?php

/*
if (strpos($a, 'are') !== false) {
*/
	?>
	<input type="submit" name="adiciona" class="btn btn-primary">
</form>
<?php include 'footer.php'; ?>
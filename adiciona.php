<?php include 'header.php'; ?>
<?php
if (isset($_GET['id'])) {
	$id_template = preg_replace('#[^0-9]#i', '', $_GET['id']); 
	$query = mysqli_query($link, "SELECT * FROM template WHERE id='$id_template'");
	if (mysqli_num_rows($query) > 0) {
		while($info_template = mysqli_fetch_array($query)) {
			$tipo = $info_template['referencia'];
			$template_path = $info_template['template'];
			$imagem = $info_template['imagem'];
		}

?>	

			<h1>Adicionar Projeto</h1>
			<form method="POST">
				<?php
				$busca_lista_secoes = mysqli_query($link, "SELECT lista_secoes.id id_nome, lista_secoes.secao secao_nome, lista_secoes.scroll_tag scroll FROM lista_secoes LEFT JOIN codigo_template ON codigo_template.id_secao = lista_secoes.id WHERE codigo_template.id_template='$id_template'");
				while ($info_lista_secoes = mysqli_fetch_array($busca_lista_secoes)) {
					$id_lista_secoes = $info_lista_secoes['id_nome'];
					$secao_lista_text = $info_lista_secoes['secao_nome'];
					echo $id_lista_secoes;
				?>
					<input type="checkbox" name="check[]" value="<?php echo $id_lista_secoes; ?>">
					<label><?php echo $secao_lista_text; ?></label><br>
				<?php
				}
				?>
				<div style="padding-bottom: 3%;">
					<input type="submit" name="opcoes" class="btn btn-primary">
				</div>
			</form> 
			</header>
		
		
			
		</div><!-- /container -->
<?php
if (isset($_POST['opcoes'])) {
	$opcoes_array = array();
	foreach($_POST['check'] as $value) {
		//BUSCA SECÇÕES ESCOLHIDAS
		$busca_sec = mysqli_query($link, "SELECT * FROM lista_secoes WHERE id='$value'");
		if (mysqli_num_rows($busca_sec) > 0) {
			mysqli_query($link, "INSERT INTO opcoes_template (id_secao, id_template, id_user, id_codigo, referencia_rand) VALUES ('$value', '$id_template', '$id_user', (SELECT id FROM codigo_template WHERE id_secao='$value' AND id_template='$id_template'), '$referencia')") or die (mysqli_error($link));

		} else {
			//ERROU
		}
	}
	mysqli_query($link, "INSERT INTO lista_templates (id_admin, id_template, referencia_rand) VALUES ('$id_user', '$id_template', '$referencia')") or die(mysqli_error($link));

	$_SESSION['info_projeto'] = array($id_template, $referencia);
	//echo "<script>window.location.href='template_final.php?id=$id_template&ref=$referencia'</script>";
	echo "<script>window.location.href='definir_titulo.php'</script>";
}
?>
<?php
	}
}
?>
<?php include 'footer.php'; ?>
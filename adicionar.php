<?php include 'header.php'; ?>
			
					<h1>Adicionar Projetos</h1>
					
					
			<?php
		if (isset($_POST['seguinte'])) {
			echo "<br><h2>Templates:</h2>";
			$refer = mysqli_real_escape_string($link, $_POST['sel_opt']);
			$busca_temp = mysqli_query($link, "SELECT * FROM template WHERE referencia='$refer'");
			if (mysqli_num_rows($busca_temp) > 0) {
				while ($info_template = mysqli_fetch_array($busca_temp)) {
					$id_template = $info_template['id'];
					$referencia = $info_template['referencia'];
					$template = $info_template['template'];
					$imagem = $info_template['imagem'];
		?>			
					<a href="adiciona.php?id=<?php echo $id_template; ?>"><div style="display: inline-block; padding: 6px; display: inline-block; padding-bottom: 3%;"><img style="width: 300px" src="<?php echo $imagem; ?>"></div></a>
		<?php
				}
			} else {
				echo "<h2>Não existem templates dessa referência. Se pretender escolher outra clique <a href='adicionar.php'>aqui</a></h2>";
			}
			?>



<?php //INÍCIO ?>
			<?php

		} else {
		?>
					<h2>Atividade Comercial: </h2>
					<form method="POST" style="padding-bottom: 3%;">
						<select name="sel_opt">
							<option value="Restaurante">Restaurante</option>
						</select><br><br>
					
						<input type="submit" class="btn btn-info" name="seguinte">
					</form>
			<?php
				}
			?>
			</header>
		
		
			
		</div><!-- /container -->
<?php include 'footer.php'; ?>
<?php include 'header.php'; ?>
<style type="text/css">
.image {
	opacity: 1;
	display: block;
	width: 100%;
	height: auto;
	transition: .5s ease;
	backface-visibility: hidden;
}
.middle {
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}
.col-md-3:hover .image {
	opacity: 0.3;
}

.col-md-3:hover .middle {
	opacity: 1;
}
</style>
<?php
if (isset($_GET['id']) && $_GET['ref']) {
	$ref = preg_replace("/[^-a-z0-9\\/]+/i", '', $_GET['ref']);
	//$ref = mysqli_real_escape_string($link, $_GET['ref']);
	$id_template = preg_replace('#[^0-9]#i', '', $_GET['id']); 
	$query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON opcoes_template.id_template = lista_templates.id_template INNER JOIN lista_secoes ON lista_secoes.id = opcoes_template.id_secao WHERE lista_templates.id_admin='$id_user' AND lista_templates.id_template='$id_template' AND lista_templates.referencia_rand='$ref' AND opcoes_template.referencia_rand='$ref'") or die(mysqli_error($link));

	$query_no_loop = mysqli_query($link, "SELECT * FROM lista_templates WHERE referencia_rand='$ref'") or die(mysqli_error($link));
	$info_no_loop = mysqli_fetch_assoc($query_no_loop);
	$template_cri = $info_no_loop['template_criado'];
	$template_criado = $template_cri."/index.php";
	$latitude_db = $info_no_loop['latitude'];
	$longitude_db = $info_no_loop['longitude'];
	$nome_localizacao_db = $info_no_loop['nome_localizacao'];

	$titulo = $info_no_loop['titulo_template'];
	$css_extra = $info_no_loop['css_extra'];

	echo "<br><div style='position: fixed; top: 5%; right: 1.1%;'><a href='$template_cri' target='_blank' style='font-size: 150%;' class='btn btn-danger'>Visitar Template</a></div>";
	//	$query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template, opcoes_template.id = lista_templates.id_opcao INNER JOIN lista_secoes ON lista_secoes.id = opcoes_template.id_secao WHERE lista_templates.id_admin='$id_user' AND lista_templates.id_template='$id_template'");


	

	echo '<div style="position: fixed; right: 0px; top: 10.6%; right: 0%; width: 50%; height: 89.5%; border: 4px solid black;"><iframe height="100%" width="100%" src="'.$template_criado.'" name="iframe_a"></iframe></div>';

	echo "<form method='POST' style='text-align: justify;'>";
	echo "

	<div class='panel panel-default'>
	<div class='panel-body'>

	<h1>Editar Título</h1>
	<div class='col-4'>
	<div class='form-group'>
	<input type='text' class='form-control' name='titulo_template_final' placeholder='Título do projeto' value='".$titulo."';'>
	<textarea name='css_extra' placeholder='CSS Extra' class='form-control'>".$css_extra."</textarea><br>";
	for ($i=1; $i < 7; $i++) { 
		# code...

		echo "
		<div style='display: inline-block; text-align: center;padding: 5px;'>
		<select name='h".$i."_style'>
		<option value='0'>H".$i."</option>
		";
		for ($x=10; $x < 501; $x+=10) { 
			echo "<option value='".$x."'>".$x."px</option>";
		}
		
		
		echo "
		</select><br>
		<input type='color' name='h".$i."_color' value='#ff5733'>
		</div>
		";
	}

	echo "
	</div>
	</div>
	</div>
	</div>
	<hr>
	";
	//echo $_SESSION['user'][5];


	if (mysqli_num_rows($query) > 0) {
		while ($info = mysqli_fetch_assoc($query)) {
			$id_info = $info['id_info'];


			//TABELA LISTA_TEMPLATES
			$titulo_template = $info['titulo_template'];
			/*
			$sobre_titulo = $info['Sobre_titulo'];
			$sobre_info = $info['Sobre_info'];
			$especialidades_titulo = $info['Especialidades_titulo'];
			$especialidades_info = $info['Especialidades_info'];
			$menu_titulo = $info['Menu_titulo'];
			$menu_info = $info['Menu_info'];
			$noticias_titulo = $info['Notícias_titulo'];
			$noticias_info = $info['Notícias_info'];
			$galeria_titulo = $info['Galeria_titulo'];
			$galeria_info = $info['Galeria_info'];
			$contactos_titulo = $info['Contactos_titulo'];
			$contactos_info = $info['Contactos_info'];

			*/
			$path = $info['template_criado'];

			//TABELA LISTA_SECOES
			$id_secao = $info['id'];
			$secao = $info['secao'];
			
			$some_titulo = $info['titulo'];
			$some_info = $info['info'];
			$template_cr = $info['template_criado'];
			$some_css = $info['css'];



			//RANDOM BOTOES
			$btns=array("primary", "warning", "danger", "info", "default", "secondary", "success", "light");


			if (isset($_POST['submeter_secoes'])) {
				$titulo = mysqli_real_escape_string($link, $_POST["titulo_$id_secao"]);
				$info = mysqli_real_escape_string($link, $_POST["info_$id_secao"]);
				$css_form = mysqli_real_escape_string($link, $_POST["css_$id_secao"]);
				$titulo_template_final = mysqli_real_escape_string($link, $_POST["titulo_template_final"]);
				$css_extra = mysqli_real_escape_string($link, $_POST['css_extra']);

				$latitude = mysqli_real_escape_string($link, $_POST['latitude']);
				$longitude = mysqli_real_escape_string($link, $_POST['longitude']);
				$nome_localizacao = mysqli_real_escape_string($link, $_POST['nome_localizacao']);

				mysqli_query($link, "UPDATE opcoes_template SET titulo='$titulo', info='$info', css='$css_form' WHERE id_secao='$id_secao' AND referencia_rand='$ref'") or die(mysqli_error($link));

				mysqli_query($link, "UPDATE lista_templates SET latitude='$latitude', longitude='$longitude', nome_localizacao='$nome_localizacao' WHERE referencia_rand='$ref'");

				for ($i=1; $i < 7; $i++) { 
					$search = "/[^h".$i." {](.*)[^\/}]/";
					//$search = "#h$i.*?}";
					$h_style = mysqli_real_escape_string($link, $_POST['h'.$i.'_style']);
					$h_color = mysqli_real_escape_string($link, $_POST['h'.$i.'_color']);
					if ($h_color != "#ff5733" && $h_style != 0 && $h_color && !empty($h_color) && !empty($h_style)) {
						if (strpos($css_extra, 'h'.$i.'') !== false) {
							$replace = "font-size: ".$h_style." !important; color: ".$h_color." !important;";

							$novo_css_extra = preg_replace($search,$replace,$css_extra);
						} else {
							$css_extra .= "h".$i." {font-size: ".$h_style." !important;color: ".$h_color." !important; }";
						}
						

					} elseif ($h_color != "#ff5733" && !empty($h_color)) {
						if (strpos($css_extra, 'h'.$i.'') !== false) {
							$replace = "color: ".$h_color." !important;";

							$novo_css_extra = preg_replace($search,$replace,$css_extra);
						} else {
							$css_extra .= "h".$i." { color: ".$h_color." !important; }";
												}
					} elseif (!empty($h_style) && $h_style != 0) {

						if (strpos($css_extra, 'h'.$i.' {') !== false) {
							$replace = "font-size: ".$h_style."px !important;";
							

							$novo_css_extra = preg_replace($search, $replace, $css_extra);
						} else {
							$css_extra .= "h".$i." { font-size: ".$h_style." !important; }";
						}
					}
				}
					
				if (isset($novo_css_extra)) {
					mysqli_query($link, "UPDATE lista_templates SET titulo_template='$titulo_template_final', css_extra='$novo_css_extra' WHERE id_info='$id_info' AND referencia_rand='$ref' LIMIT 1");
				} else {
					mysqli_query($link, "UPDATE lista_templates SET titulo_template='$titulo_template_final', css_extra='$css_extra' WHERE id_info='$id_info' AND referencia_rand='$ref' LIMIT 1");
				}
				
				$_SESSION['user'][6] = $titulo_template_final;


				header ('location: edita_template.php?id='.$id_template.'&ref='.$ref.'');
					//$info_t = mysqli_real_escape_string($link, $_POST['info']);
					//mysqli_query($link, "UPDATE opcoes_template SET info='$info' WHERE id_secao='$id_secao'") or die(mysqli_error($link));

				

				//mysqli_query($link, "UPDATE opcoes_template SET titulo='$titulo', info='$info_t' WHERE id_secao='$id_secao'") or die(mysqli_error($link));
				//echo "<script>window.location.href='home.php'</script>";
			}



			echo "
			<div class='panel panel-default'>
			<div class='panel-body'>

			<h1>$secao</h1>
			<div class='col-4'>
			<div class='form-group'>
			<input type='text' class='form-control' name='titulo_$id_secao' placeholder='Título $secao' value='$some_titulo'>
			</div>
			<div class='form-group'>
			<textarea type='text' class='form-control' name='info_$id_secao' placeholder='Informação $secao'>$some_info</textarea>
			</div>
			<div class='form-group'>
			<textarea type='text' class='form-control' name='css_$id_secao' placeholder='CSS Externo $secao'>$some_css</textarea>
			</div>


			</div>
			</div>
			</div>
			<hr>
			";
		}


		
		?>


		<?php

	}

} else {
	header('location: home.php');
}
echo "
<div class='panel panel-default'>
			<div class='panel-body'>

			<h1>Localização do Mapa</h1>
			<p><a href='https://mycurrentlocation.net/' target='_blank'>Minha Localização</a></p>
			<div class='col-4'>
			<div class='form-group'>
			<input type='number' step='0.00000000001' class='form-control' name='latitude' placeholder='Latitude' value='$latitude_db'>
			</div>
			<div class='form-group'>
			<input type='number' step='0.00000000001' class='form-control' name='longitude' placeholder='Longitude' value='$longitude_db'>
			</div>
			<div class='form-group'>
			<input type='text' class='form-control' name='nome_localizacao' placeholder='Nome da Localização' value='$nome_localizacao_db'>
			</div>


			</div>
			</div>
			</div>
			<hr>
";
echo "<input type='submit' name='submeter_secoes' class='btn btn-".$btns[array_rand($btns)]."'><br>";
?>
<br>
</form>
<?php
/*
if (isset($_POST['upload']) && isset($_POST['id_foto'])) {

}
*/
?>
<br>
<div class="row" style="padding-right: 32%; max-width: 82%;">

	<?php

	$query_gal = mysqli_query($link, "SELECT *, galeria_template.id AS id_gal FROM galeria_template INNER JOIN template ON galeria_template.referencia_galeria = template.ref_galeria WHERE template.id='$id_template'");


	  if (isset($_POST['remover'])) {
	  	$hidden = mysqli_real_escape_string($link, $_POST['src_foto']);
	  	if (!unlink($hidden)) {
	  		echo "<script>alert('erro')</script>";
	  	} else {
	  		echo "<script>alert('Sucesso')</script>";
	  	}
	  	header ('location: edita_template.php?id='.$id_template.'&ref='.$ref.'');
	  }
	  if (isset($_POST['atualiza'])) {
	  	$src_foto_hid = mysqli_real_escape_string($link, $_POST['src_foto_hid']);
	  	$file_name = $_FILES['file']['name'];
	  	$file_type = $_FILES['file']['type'];
	  	$file_size = $_FILES['file']['size'];
	  	$file_tem_loc = $_FILES['file']['tmp_name'];

	  	move_uploaded_file($file_tem_loc, $src_foto_hid);
	  	header ('location: edita_template.php?id='.$id_template.'&ref='.$ref.'');
	  }
	  while ($info_gal = mysqli_fetch_array($query_gal)) {
	  	$src = $info_gal['src'];
	  	$id_foto = $info_gal['id_gal'];

	  	$localizacao_foto = $template_cri. '/' . $src;



		//$apaga = "http://localhost:8012/estagio/site_maker/". $localizacao_foto;
	  		?>

	  		<div class="modal" id="foto_<?php echo $id_foto; ?>">
	  			<div class="modal-dialog">
	  				<div class="modal-content">

	  					<!-- Modal Header -->
	  					<div class="modal-header">
	  						<h4 class="modal-title" style="color: black;">Foto <?php echo $id_foto; ?></h4>
	  						<button type="button" class="close" data-dismiss="modal">&times;</button>
	  					</div>

	  					<!-- Modal body -->
	  					<div class="modal-body" style="color: black;">
	  						<form method="POST" enctype="multipart/form-data">
	  							<input type="file" name="file">
	  							<input type="hidden" name="src_foto_hid" value="<?php echo $localizacao_foto; ?>">
	  							<input type="submit" name="atualiza" class="btn btn-success">
	  						</form>
	  					</div>

	  					<!-- Modal footer -->
	  					<div class="modal-footer">
	  						<button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
	  					</div>

	  				</div>
	  			</div>
	  		</div>

	  		<div class='modal fade' id='eliminar_<?php echo $id_foto; ?>' role='dialog'>
		      <div class='modal-dialog'>
		      
		        <div class='modal-content'>
		          <div class='modal-header'>
		          <h4 class='modal-title' style='color: black;'>Aviso</h4>
		            <button type='button' class='close' data-dismiss='modal'>&times;</button>
		          </div>
		          <div class='modal-body'>
		            <p style='color: black;'>Tem a certeza que quer eliminar a foto <?php echo $id_foto; ?> ? </p>
		          </div>
		          <div class='modal-footer'>
		            <form action='' method='POST'>
		              <button type='submit' class='btn btn-danger' name='remover'>Sim</button>
		              <input type="hidden" name="src_foto" value="<?php echo $localizacao_foto; ?>">


		              <button type='button' class='btn btn-default' data-dismiss='modal'>Não</button>
		            </form>
		          </div>
		        </div>
		        
		      </div>
		    </div>




	  		<div class="col-md-3" style="width: 200px; height: 300px;padding: 25px;">
	  			Foto <?php echo $id_foto; ?>
	  			<img src="<?php if (file_exists($localizacao_foto)) { echo $localizacao_foto; } else { echo 'indisponivel.jpg'; } ?>" style="width: 100%; height: 80%; border-radius: 25px; border: 2px solid #ffe4e1;" class="image">
	  			<div class="middle">
	  					<button type="button" name="upload" class="btn btn-primary" data-toggle="modal" data-target="#foto_<?php echo $id_foto; ?>"><i class="fas fa-images"></i></button>
	  					<input type="hidden" name="src_foto" value="<?php echo $localizacao_foto; ?>">
	  					<button data-toggle='modal' data-target='#eliminar_<?php echo $id_foto; ?>' class="btn btn-danger"><i class="fas fa-minus-circle"></i></button>
	  			</div>

	  		</div>
	  		<?php
	  }
	  ?>
	</div>

	<?php include 'footer.php'; ?>
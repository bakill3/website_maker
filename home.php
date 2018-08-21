<?php 
include 'header.php';
 ?>
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
	width: 100%;
	transition: .5s ease;
	opacity: 0;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	text-align: center;
}
.main-ya:hover .image {
	opacity: 0.3;
}
.main-ya:hover .middle {
	opacity: 1;
}
	</style>
	<div style="padding-bottom: 1%;">
				<h1>Bem-vindo <?php echo $_SESSION['user'][0]; ?></h1><hr>
				<h3>Aqui estão os seus projetos: </h3>
	</div>
				<div class="row" style="padding-left: 2%;padding-right: 2%; padding-bottom: 3%;">
				<?php
				 function rrmdir($dir) {
				  if (is_dir($dir)) {
				    $objects = scandir($dir);
				    foreach ($objects as $object) {
				      if ($object != "." && $object != "..") {
				        if (filetype($dir."/".$object) == "dir") 
				           rrmdir($dir."/".$object); 
				        else unlink   ($dir."/".$object);
				      }
				    }
				    reset($objects);
				    rmdir($dir);
				  }
				 }


				$id_user = $_SESSION['user'][2];
				$busca_temps = mysqli_query($link, "SELECT * FROM lista_templates INNER JOIN template ON template.id = lista_templates.id_template WHERE id_admin='$id_user' ORDER BY lista_templates.id_info");

				if (isset($_POST['apagar_projeto'])) {
					$refi = mysqli_real_escape_string($link, $_POST['refer']);

					$src = mysqli_real_escape_string($link, $_POST['src']);

					mysqli_query($link, "DELETE FROM lista_templates WHERE referencia_rand='$refi'");

					mysqli_query($link, "DELETE FROM opcoes_template WHERE referencia_rand='$refi'");

					if (is_dir($src)) {
						rrmdir($src);

					}
					header('Location: home.php');
					//die();
				}
				if (mysqli_num_rows($busca_temps) > 0) {
					while ($info_templates = mysqli_fetch_array($busca_temps)) {
						$id_info = $info_templates['id_info'];
						$id_template = $info_templates['id_template'];
						$titulo_t = $info_templates['titulo_template'];
						$tipo_template = $info_templates['referencia'];
						$imagem_template = $info_templates['imagem'];
						$template_cri = $info_templates['template_criado'];
						$referencia_db = $info_templates['referencia_rand'];

						$titulo = substr($titulo_t, 0, 18)."..";


						$template_criado = $template_cri."/index.php";

						$_SESSION['user'][5] = $template_criado;
						$_SESSION['user'][6] = $titulo;
						//<a href='edita_template.php?id=$id_template&ref=$referencia_db' style='padding: 5px;'><div class='card' style='width: 250px;'>
						echo "
						<div class='modal fade' id='eliminar_$id_info' role='dialog'>
						      <div class='modal-dialog'>
						      
						        <div class='modal-content'>
						          <div class='modal-header'>
						          <h4 class='modal-title' style='color: black;'>Aviso</h4>
						            <button type='button' class='close' data-dismiss='modal'>&times;</button>
						          </div>
						          <div class='modal-body'>
						            <p style='color: black;'>Tem a certeza que quer eliminar o projeto $titulo_t ? </p>
						          </div>
						          <div class='modal-footer'>
						            <form action='' method='POST'>
						              <button type='submit' class='btn btn-danger' name='apagar_projeto'>Sim</button>
						              <input type='hidden' name='refer' value='$referencia_db'>
						              <input type='hidden' name='src' value='$template_cri'>

						              <button type='button' class='btn btn-default' data-dismiss='modal'>Não</button>
						            </form>
						          </div>
						        </div>
						        
						      </div>
						    </div>


						<div style='padding: 5px;' class='main-ya'>
						<div style='width: 250px;' class='card' >
							<div class='image'>
								<img class='card-img-top' src='$imagem_template' alt='$titulo' style='width: 100%; max-height: 250px;'>
								<div class='card-body'>
								<h4 class='card-title' style='color: black; font-size: 143%;'>$titulo</h4>
								<p class='card-text' style='color: black;'>Projeto de $nome_user</p>
							</div>
							</div>
								<div class='middle'>

								<a href='edita_template.php?id=$id_template&ref=$referencia_db' style='display: inline-block;'><button type='button' class='btn btn-success'><i class='fas fa-edit'></i></button></a>
									<button type='submit' data-toggle='modal' data-target='#eliminar_$id_info' class='btn btn-danger' style='display: inline-block;'><i class='far fa-trash-alt'></i></button>
								</div>
							</div>
						</div>
							
						";
					}
				} else {
					echo "<p>Ainda não tem projetos.</p>";
				}
				?>
			</div>

			
</div>
</div>		
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>
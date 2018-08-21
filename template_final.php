<?php include 'header.php'; ?>
<?php
if (isset($_SESSION['info_projeto'])) {
	$id_template = $_SESSION['info_projeto'][0];
	$referencia = $_SESSION['info_projeto'][1];
	$titulo = $_SESSION['info_projeto'][2];

	//$id_template = preg_replace('#[^0-9]#i', '', $_GET['id']); 
	//$referencia = preg_replace('#[^0-9]#i', '', $_GET['ref']); 

	$query = mysqli_query($link, "SELECT * FROM template WHERE id='$id_template'");
	if (mysqli_num_rows($query) > 0) {
		while($info_template = mysqli_fetch_array($query)) {
			$tipo = $info_template['referencia'];
			$src = $info_template['template']; //LINK ORIGINAL
			$imagem = $info_template['imagem'];
		}
	}

	$dst = "templates_criados/".$nome_user."/".$id_user."/".$tipo."/".$referencia."";
	mkdir($dst, 0755, true);


	//Tive de ver este código na internet pois não sei mexer bem em ficheiros usando PHP
	function recurse_copy($src,$dst) { 
	    $dir = opendir($src); 
	    @mkdir($dst); 
	    while(false !== ( $file = readdir($dir)) ) { 
	        if (( $file != '.' ) && ( $file != '..' )) { 
	            if ( is_dir($src . '/' . $file) ) { 
	                @recurse_copy($src . '/' . $file,$dst . '/' . $file); 
	            } 
	            else { 
	                @copy($src . '/' . $file,$dst . '/' . $file); 
	            } 
	        } 
	    } 
	    closedir($dir); 
	} 

	recurse_copy($src,$dst);
	//----------------------------------------------------------------------------------------

	

	/*
	//DEFINIR TITULO
	$str=implode("",file($dst.'/index.php'));
	$fp=fopen($dst.'/index.php','w');
	//replace something in the file string, here i am replacing an IP address from  127.0.0.1 to 127.1.9.9
	$str=str_replace('<!--Titulo_sub-->',''.$titulo.'',$str);
	//now, save the file
	fwrite($fp,$str,strlen($str));
	*/


	//DEFINIR INFO
	$query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template INNER JOIN codigo_template ON codigo_template.id_template = opcoes_template.id_template WHERE lista_templates.id_admin='$id_user' AND lista_templates.id_template='$id_template' AND lista_templates.referencia_rand = '$referencia'") or die(mysqli_error($link));
	while ($info_imp = mysqli_fetch_array($query)) {
		$id_lista_templates = $info_imp['id_info'];
		$titulo_main = $info_imp['titulo_template'];

		$id_secao = $info_imp['id_secao'];
		$titulo_secao = $info_imp['titulo'];
		$info_secao = $info_imp['info']; 





		/*
		$main_query = mysqli_query($link, "SELECT * FROM lista_templates WHERE id=\'$id_puro\'";
		while ($info_main = mysqli_fetch_array($main_query)) {
			$sobre_titulo = $info_imp["Sobre_titulo"];
			$sobre_info = $info_imp["Sobre_info"];
			$especialidades_titulo = $info_imp["Especialidades_titulo"];
			$especialidades_info = $info_imp["Especialidades_info"];
			$menu_titulo = $info_imp["Menu_titulo"];
			$menu_info = $info_imp["Menu_info"];
			$noticias_titulo = $info_imp["Notícias_titulo"];
			$noticias_info = $info_imp["Notícias_info"];
			$galeria_titulo = $info_imp["Galeria_titulo"];
			$galeria_info = $info_imp["Galeria_info"];
			$contactos_titulo = $info_imp["Contactos_titulo"];
			$contactos_info = $info_imp["Contactos_info"];
		}
		*/


		//SUBSTITUIR TUDO DE TITULOS E INFO
		$str=implode("",file($dst.'/index.php'));
		$fp=fopen($dst.'/index.php','w');
		//replace something in the file string, here i am replacing an IP address from  127.0.0.1 to 127.1.9.9
		$str=str_replace('//main_query','',$str);
		//$str=str_replace('<!--Titulo_Sobre_sub-->',''.$sobre_titulo.'',$str);
		//$str=str_replace('<!--P_Titulo_Sobre_sub-->',''.$sobre_info.'',$str);
		//SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes.id_template WHERE id_admin=\''.$id_user.'\' AND id_template=\''.$id_template.'\'
		//INNER JOIN codigo_template ON codigo_template.id_template = opcoes_template.id_template
		//SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template INNER JOIN codigo_template ON codigo_template.id_template = opcoes_template.id_template INNER JOIN lista_secoes ON opcoes_template.id_secao = lista_secoes.id WHERE lista_templates.id_admin=\''.$id_user.'\' AND lista_templates.id_template=\''.$id_template.'\'") or die (mysqli_error($link));	
		//$main_query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template INNER JOIN lista_secoes ON opcoes_template.id_secao = lista_secoes.id WHERE lista_templates.id_admin=\''.$id_user.'\' AND lista_templates.id_template=\''.$id_template.'\'") or die (mysqli_error($link));	
		$str=str_replace('/*hello*/','
					$main_query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template INNER JOIN codigo_template ON codigo_template.id_template = opcoes_template.id_template INNER JOIN lista_secoes ON opcoes_template.id_secao = lista_secoes.id WHERE lista_templates.id_admin=\''.$id_user.'\' AND lista_templates.id_template=\''.$id_template.'\' AND opcoes_template.id_secao = codigo_template.id_secao AND opcoes_template.referencia_rand=\''.$referencia.'\' AND lista_templates.referencia_rand=\''.$referencia.'\'") or die (mysqli_error($link));

					$nova_query = mysqli_query($link, "SELECT * FROM lista_templates WHERE id_admin=\''.$id_user.'\' AND id_template=\''.$id_template.'\' AND referencia_rand=\''.$referencia.'\'");
    				$info_single = mysqli_fetch_assoc($nova_query);
    				$titulo_main = $info_single["titulo_template"];
    				$latitude = $info_single["latitude"];
    				$longitude = $info_single["longitude"];
    				$nome_localizacao = $info_single["nome_localizacao"];
		',$str);
		$str=str_replace('<!--WHILE-->','
	  <?php     	
	  if (mysqli_num_rows($main_query)) { 
		  while ($info_imp = mysqli_fetch_array($main_query)) {
	      $titulo = $info_imp["titulo"]; 
	      $info = $info_imp["info"]; 
	      $id_secao = $info_imp["id_secao"];

	      $codigo = $info_imp["codigo"];

	      //eval("\$codigo = \"$codigo\";");
	      //echo $codigo;
	      eval("\$codigo = \"$codigo\";");
	      echo $codigo;
      ?>
		',$str);

		$str=str_replace('<!--fim_WHILE-->','<?php  } } ?>	
		',$str);


		$str=str_replace('/*css*/','$css_query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template INNER JOIN codigo_template ON codigo_template.id_template = opcoes_template.id_template INNER JOIN lista_secoes ON opcoes_template.id_secao = lista_secoes.id WHERE lista_templates.id_admin=\''.$id_user.'\' AND lista_templates.id_template=\''.$id_template.'\' AND opcoes_template.id_secao = codigo_template.id_secao AND opcoes_template.referencia_rand=\''.$referencia.'\' AND lista_templates.referencia_rand=\''.$referencia.'\'");', $str);

		$str=str_replace('/*css_main*/','$css_main = mysqli_query($link, "SELECT * FROM lista_templates WHERE referencia_rand=\''.$referencia.'\'");', $str);
		

		$str=str_replace('<!--menu_query-->','<?php $menu = mysqli_query($link, "SELECT * FROM lista_secoes INNER JOIN opcoes_template ON lista_secoes.id = opcoes_template.id_secao WHERE opcoes_template.referencia_rand=\''.$referencia.'\'"); ?>', $str);

		
		//$menu = mysqli_query($link, "SELECT * FROM lista_secoes INNER JOIN opcoes_template ON lista_secoes.id = opcoes_template.id_secao WHERE opcoes_template.referencia_rand='

		//$main_query = mysqli_query($link, "SELECT * FROM opcoes_template INNER JOIN lista_templates ON lista_templates.id_template = opcoes_template.id_template INNER JOIN lista_secoes ON opcoes_template.id_secao = lista_secoes.id WHERE lista_templates.id_admin=\''.$id_user.'\' AND lista_templates.id_template=\''.$id_template.'\'") or die (mysqli_error($link));

		/*
		$main_query = mysqli_query($link, "SELECT * FROM lista_templates WHERE id_info=\''.$id_puro.'\'");
		$info_imp = mysqli_fetch_array($main_query)) {
			$sobre_titulo = $info_imp["Sobre_titulo"];
			$sobre_info = $info_imp["Sobre_info"];
			$especialidades_titulo = $info_imp["Especialidades_titulo"];
			$especialidades_info = $info_imp["Especialidades_info"];
			$menu_titulo = $info_imp["Menu_titulo"];
			$menu_info = $info_imp["Menu_info"];
			$noticias_titulo = $info_imp["Notícias_titulo"];
			$noticias_info = $info_imp["Notícias_info"];
			$galeria_titulo = $info_imp["Galeria_titulo"];
			$galeria_info = $info_imp["Galeria_info"];
			$contactos_titulo = $info_imp["Contactos_titulo"];
			$contactos_info = $info_imp["Contactos_info"];
		}
		*/
		//$str=str_replace('<!--Titulo_Especialidades_sub-->',''.$especialidades_titulo.'',$str);
		//$str=str_replace('<!--info_Especialidades_sub-->',''.$especialidades_info.'',$str);
		//$str=str_replace('<!--Titulo_Menu_sub-->',''.$menu_titulo.'',$str);
		//$str=str_replace('<!--Info_Menu_sub-->',''.$menu_titulo.'',$str);
		//$str=str_replace('<!--Titulo_Noticias_sub-->',''.$noticias_titulo.'',$str);
		//$str=str_replace('<!--Info_Noticias_sub-->',''.$noticias_info.'',$str);
		//$str=str_replace('<!--Titulo_Galeria_sub-->',''.$galeria_titulo.'',$str);
		//$str=str_replace('<!--Info_Galeria_sub-->',''.$galeria_info.'',$str);
		//$str=str_replace('<!--Titulo_Contactos_sub-->',''.$contactos_titulo.'',$str);
		//$str=str_replace('<!--Info_Contactos_sub-->',''.$contactos_info.'',$str);


		//now, save the file
		fwrite($fp,$str,strlen($str));
	}

	mysqli_query($link, "UPDATE lista_templates SET template_criado='$dst' WHERE id_admin='$id_user' AND id_template='$id_template' AND referencia_rand='$referencia'");

	/*
	$main_query = mysqli_query($link, "SELECT * FROM lista_templates WHERE id='$id_definido_no_template'";

	*/



	//$sql = "SELECT * FROM lista_secoes LEFT JOIN opcoes_template ON lista_secoes.id != opcoes_template.id_secao GROUP BY (lista_secoes.id)";




	//ELIMINAR OS DADOS
	//mysqli_query($link, "DELETE FROM lista_templates WHERE id_admin=(SELECT id FROM administradores WHERE id='$id_user') AND id_template=(SELECT id FROM template WHERE id='$id_template')");
	//mysqli_query($link, "DELETE FROM opcoes_template WHERE id_template=(SELECT id FROM template WHERE id='$id_template')");
	//--------------------------------------------------------------------------------------------------------------
	
	echo "<div style='padding-bottom: 3%;'>Sucesso! <a href='edita_template.php?id=$id_template&ref=$referencia' style='color: red;'>Editar Template</a></div>";

}





	
?>
<?php include 'footer.php'; ?>
<?php include 'header.php'; ?>
<?php
if (isset($_GET['id']) && isset($_GET['ref'])) {
	$id_template = preg_replace('#[^0-9]#i', '', $_GET['id']); 
	$referencia = preg_replace('#[^0-9]#i', '', $_GET['ref']); 

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



	function recurse_copy($src,$dst) { 
	    $dir = opendir($src); 
	    @mkdir($dst); 
	    while(false !== ( $file = readdir($dir)) ) { 
	        if (( $file != '.' ) && ( $file != '..' )) { 
	            if ( is_dir($src . '/' . $file) ) { 
	                recurse_copy($src . '/' . $file,$dst . '/' . $file); 
	            } 
	            else { 
	                copy($src . '/' . $file,$dst . '/' . $file); 
	            } 
	        } 
	    } 
	    closedir($dir); 
	} 

	recurse_copy($src,$dst);

	

	$sql = "SELECT * FROM lista_secoes INNER JOIN opcoes_template ON lista_secoes.id = opcoes_template.id_secao";

	$t = mysqli_query($link, $sql) or die(mysqli_error($link));
	while ($info_t = mysqli_fetch_array($t)) {
		$secao_t = $info_t['secao'];
		//echo $secao_t. "<br>";

		$str=implode("",file($dst.'/index.php'));
		$fp=fopen($dst.'/index.php','w');
		//replace something in the file string, here i am replacing an IP address from  127.0.0.1 to 127.1.9.9
		
		$str=str_replace('<!--'.$secao_t.'-->','<?php /*',$str);
		$str=str_replace('<!--fim_'.$secao_t.'-->','*/ ?>',$str);
		//now, save the file
		fwrite($fp,$str,strlen($str));

		echo "<H3>SUCESSO</H3>";

	}




	}
?>
<?php include 'footer.php'; ?>
<?php include 'ligar_db.php'; ?>
<?php
if (!isset($_SESSION['user'])) {
	header('location: index.php');
}
$id_user = $_SESSION['user'][2];
$nome_user = $_SESSION['user'][0];

/* Fui buscar esta função ao stack overflow para generar uma string unica */
function generateRandomString($length = 150) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

$referencia = generateRandomString();
/* ---------------------------------------------------------------------- */
?>
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>

		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Administração de projetos</title>
		<link rel="shortcut icon" href="../favicon.ico">
		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style5.css" />
		<link href="https://fonts.googleapis.com/css?family=Karla" rel="stylesheet">
		<link href="fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">

		<script src="js/modernizr.custom.js"></script>
		<script src="jquery.min.js"></script>

		
	</head>
	<body style="background-color: #ED0A3F;">
		<nav id="bt-menu" class="bt-menu" style="z-index: 2">
				<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
				<ul>
					<li><a href="home.php">Projetos</a></li>
					<li style="height: 150px;">
						<a>ADICIONAR: </a>
						<a href="adicionar.php" style="font-size: 85%; box-shadow: none;">- Projeto</a>
						<a href="adicionar_admin.php">Admin</a>

					</li>
					
					<?php /* <li><a href="#">Blog</a></li> */ ?>
					<li><a href="logout.php" style="color: red">Sair</a></li>
				</ul>
				<ul>
				<?php /*
					<li><a href="#">Twitter</a></li>
					<li><a href="#" class="bt-icon icon-gplus">Google+</a></li>
					<li><a href="#" class="bt-icon icon-facebook">Facebook</a></li>
					<li><a href="#" class="bt-icon icon-github">icon-github</a></li>
				*/ ?>
				</ul>
			</nav>
		<div style="width: 100%; height: 100px; background-color: #333; text-align: center;">
			<h1 style="font-family: 'Karla', sans-serif; margin: 0; padding-top: 1%; font-size: 300%;">Criad<i class="fas fa-globe" style="font-size: 38px;"></i>r de <i class="fab fa-wordpress-simple"></i>ebsites</h1>
			<?php /* <p style="right: 0px;">WordPress 2.0</p> */ ?>
		</div>
			<div class="container-fluid" style="text-align: center; margin: 0 auto; background-color: #333; border-radius: 25px; margin-top: 3%; width: 98%;">
				<!-- <header class="codrops-header"> -->
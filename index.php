<?php
include 'ligar_db.php';
if (isset($_SESSION['user'])) {
	header('location: home.php');
}
if (isset($_POST['login'])) {
	$email = mysqli_real_escape_string($link, $_POST['email']);
	$password = mysqli_real_escape_string($link, $_POST['password']);

	$ver = mysqli_query($link, "SELECT * FROM administradores WHERE email='$email'");
	if (mysqli_num_rows($ver) > 0) {

		$info_ver = mysqli_fetch_assoc($ver);
		$pass_db = $info_ver['password'];
		$nome_db = $info_ver['nome'];
		$id_db = $info_ver['id'];


		//VERIFICAR SE A HASH QUE O USER METEU É IGUAL Á DA BASE DE DADOS
		if (password_verify($password, $pass_db)) {
			$_SESSION['user'] = array("$nome_db", "$email", "$id_db");
			header('location: home.php');
		} else {
			$_SESSION['erro'] = "Email/Password Inválidos";
		}

	} else {
		$_SESSION['erro'] = "Email/Password Inválidos";
	}
}
?>


<link href="bootstrap4/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="jquery.min.js"></script>
<script src="bootstrap4/bootstrap.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="utf-8"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">


	<title>Gerar Sites</title>

			<link href="https://fonts.googleapis.com/css?family=Karla" rel="stylesheet">
		<link href="fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">

</head>
<body style="background-color: #ED0A3F;">
	<div style="width: 100%; height: 100px; background-color: #333; text-align: center;">
			<h1 style="font-family: 'Karla', sans-serif; margin: 0; padding-top: 1%; font-size: 300%; color: #fff;">Criad<i class="fas fa-globe" style="font-size: 38px;"></i>r de <i class="fab fa-wordpress-simple"></i>ebsites</h1>
			<?php /* <p style="right: 0px;">WordPress 2.0</p> */ ?>
		</div>
	<div class="container" style="padding-top: 1.5%; ">
		<form class="form-horizontal" role="form" method="POST" style="background-color: #2D383A; color: #ffffff;border-radius: 30px;">
		<div style="padding: 30px;">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h2>Login</h2>
					<hr style="border-top: 1px solid rgba(255, 255, 255, .5)">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="form-group has-danger">
						<label class="sr-only" for="email">E-Mail Address</label>
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-at"></i></div>
							<input type="text" name="email" class="form-control" id="email"
							placeholder="Email" required autofocus>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-control-feedback">
						<span class="text-danger align-middle">
							<?php if (isset($_SESSION['erro'])) { echo "<i class='fa fa-close'></i> ".$_SESSION['erro'].""; unset($_SESSION['erro']);  } ?>
						</span>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<div class="form-group">
						<label class="sr-only" for="password">Password</label>
						<div class="input-group mb-2 mr-sm-2 mb-sm-0">
							<div class="input-group-addon" style="width: 2.6rem"><i class="fa fa-key"></i></div>
							<input type="password" name="password" class="form-control" id="password"
							placeholder="Password" required>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="form-control-feedback">
						<span class="text-danger align-middle">
							<!-- Put password error message here -->    
						</span>
					</div>
				</div>
			</div>
                   <div class="row" style="padding-top: 1rem">
                   	<div class="col-md-3"></div>
                   	<div class="col-md-6">
                   		<button type="submit" name="login" class="btn btn-lg btn-success" style="width: 100%;"><i class="fa fa-sign-in"></i> Login</button>
                   		<a class="btn btn-link" href="/password/reset"><?php /* Forgot Your Password? */ ?></a>
                   	</div>
                   </div>
                 </div>
               </form>
           </div>
       </body>
       </html>
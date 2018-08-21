<?php include 'header.php'; ?>
			<?php
			if (isset($_POST['regista'])) {
				$nome = mysqli_real_escape_string($link, $_POST['nome_admin']);
				$email = mysqli_real_escape_string($link, $_POST['email_admin']);
				$password = mysqli_real_escape_string($link, $_POST['password_admin']);

				$query = mysqli_query($link, "SELECT * FROM administradores WHERE email='$email'");
				if (!empty($nome) && !empty($email) && !empty($password)) {
					if (mysqli_num_rows($query) == 0) {
						$pass_hash = password_hash($password, PASSWORD_DEFAULT);
						mysqli_query($link, "INSERT INTO administradores (nome, email, password) VALUES ('$nome', '$email', '$pass_hash')") or die(mysqli_error($link));
						$_SESSION['erro'] = "<span style='color: green;'>Conta Registada com Sucesso</span>";
					} else {
						$_SESSION['erro'] = "<span style='color: red;'>Esse email já se encontra em uso!</span>";
					}
				} else {
					$_SESSION['erro'] = "<span style='color: red;'>Preencha todos os campos!</span>";
				}

			}
			?>
					<?php if (isset($_SESSION['erro'])) { echo $_SESSION['erro']; unset($_SESSION['erro']); } ?>
					<h1>Adicionar Administrador</h1>
					<form method="POST" style="text-align: center; padding-bottom: 2%;">
						<input type="text" name="nome_admin" placeholder="Nome do Administrador" class="form-control" autocomplete="off">
						<input type="email" name="email_admin" placeholder="Email do Administrador" class="form-control" autocomplete="off">
						<input type="password" name="password_admin" placeholder="Password do Administrador" class="form-control" autocomplete="off"><br>
						<input type="submit" name="regista" class="btn btn-primary">
					</form>
<?php include 'footer.php'; ?>
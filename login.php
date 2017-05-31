<?php
require_once 'core/init.php';

if (Input::exists()) {
	if (Token::check(Input::get('token'))) {
		$validate = new Validate();
		$validation = $validate->check($_POST,
			array(
				'username' => array('required' => true),
				'password' => array('required' => true)
				)
			);
		if ($validate->passed()) {

			$user = new User();

			$login = $user->login(Input::get('username'), Input::get('password'));
			if ($login) {
				Redirect::to('index.php');
			} else {
				echo "Invalid";
			}

		} else {
			foreach ($validation->errors() as $error) {
				echo $error.'<br>';
			}
		}
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="public/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
<div class="wapper">
	<ul>
	 	<li><a href="register.php">Register</a></li>
	 	<li><a href="login.php">Log In</a></li>
	 </ul>
	<div class="form">
		<form action="" method="post" role="form">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" name="username" id="username" placeholder="username" autocomplete="off">
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" name="password" id="password" placeholder="password" autocomplete="off">
			</div>

			<input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
			<input type="submit" class="btn-primary" name="" value="Login">
		</form>
	</div>
</div>
</body>
</html>
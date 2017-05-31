<?php
//get error in browser
	error_reporting(E_ALL);
	ini_set('display_errors', 1);
//
require_once 'core/init.php';
if (Input::exists()) {
	if (Token::check(Input::get('token'))) {
		$validate = new Validate();
		$validation = $validate->check($_POST, array(
			'username' => array(
				'name'     => 'Username',
				'required' => true,
				'min'      => 2,
				'max'      => 20,
				'unique'   => 'users'
			),
			'password' => array(
				'required' => true,
				'min'      => 6,
			),
			'password-again' => array(
				'required' => true,
				'matches'  => 'password',
			),
			'name' => array(
				'required' => true,
				'min'	   => 2,
				'max'      => 50
			)
			));

		if ($validation->passed()) {
			$user = new User();

			$salt = Hash::salt(32);

			try {
				$user->create(
					array(
						'username' => Input::get('username'),
						'password' => Hash::make(Input::get('password'), $salt),
						'salt' => $salt,
						'name' => Input::get('name'),
						'joined' => date('Y-m-d H:i:s'),
						'group' => 1
						)
					);
				Session::flash('home', 'You have been registed and can login');
				Redirect::to('index.php');

			} catch (Exception $e) {
				die($e->getMessage());
			}
		}else {
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
	<title>Register</title>
	<link rel="stylesheet" type="text/css" href="public/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="public/css/style.css">
</head>
<body>
	<ul>
	 	<li><a href="register.php">Register</a></li>
	 	<li><a href="login.php">Log In</a></li>
	 </ul>
	<div class="form">
		<form action="" method="post" role="form">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" name="username" id="username" value="<?php echo escape(Input::get('username')); ?>" placeholder="Username" autocomplete="off">
			</div>

			<div class="form-group">
				<label for="password">Enter your password</label>
				<input type="password" name="password" placeholder="password">
			</div>

			<div class="form-group">
				<label for="password-again">Enter your password again</label>
				<input type="password" name="password-again" placeholder="password-again">
			</div>

			<div class="form-group">
				<label for="name">Name</label>
				<input type="text" name="name" id="name" value="<?php echo escape(Input::get('name')); ?>" placeholder="Your Name">
			</div>

			<input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
			<input type="submit" class="btn-primary" name="Register" value="Register">
		</form>
	</div>
</body>
</html>
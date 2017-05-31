<?php

//get error in browser
	error_reporting(E_ALL);
	ini_set('display_errors', 1);
//
require_once 'core/init.php';

if (Session::exists('home')) {
	echo '<p>'.Session::flash('home').'</p>';
}

$user = new User();

if ($user->isLoggedIn()) {
?>
<p>Hello <a href="#"><?php echo escape($user->data()->username); ?></a></p>
<ul>
	<li><a href="logout.php">Logout</a></li>
</ul>
<?php
} else {
	echo "<p>You need to <a href='login.php'>log in</a> or <a href = 'register.php'>register</a></p>";
}
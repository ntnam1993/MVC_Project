<?php
require_once 'core/init.php';

$user = new User();
echo "Goodbye ".$user->data()->name;
include_once 'login.php';
$user->logout();
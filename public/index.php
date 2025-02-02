<?php

require_once __DIR__ . '/../app.php';

use App\Controllers\ClientController;

$page = filter_input(INPUT_GET, 'page', FILTER_VALIDATE_INT) ?: 1;
$controller = new ClientController();
$controller->listClients($page);
?>

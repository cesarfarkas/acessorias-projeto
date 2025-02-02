<?php

namespace App\Controllers;

use App\Models\Client;

class ClientController {
    private Client $clientModel;

    public function __construct() {
        $this->clientModel = new Client(getDatabaseConnection());
    }

    public function listClients(int $page): void {
        $limit = 10;
        $offset = ($page - 1) * $limit;
        $totalClients = $this->clientModel->getTotalClients();
        $clients = $this->clientModel->getClients($offset, $limit);
        $totalPages = (int) ceil($totalClients / $limit);

        require __DIR__ . '/../Views/clients.php';
    }
}
?>

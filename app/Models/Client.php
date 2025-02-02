<?php

namespace App\Models;

use PDO;

class Client {
    private PDO $db;

    public function __construct(PDO $db) {
        $this->db = $db;
    }

    public function getClients(int $offset, int $limit): array {
        $stmt = $this->db->prepare("SELECT * FROM clients ORDER BY created_at DESC LIMIT :offset, :limit");
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetchAll();
    }

    public function getTotalClients(): int {
        $stmt = $this->db->query("SELECT COUNT(*) as total FROM clients");
        return (int) $stmt->fetch()['total'];
    }
}
?>

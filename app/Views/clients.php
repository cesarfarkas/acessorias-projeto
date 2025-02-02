<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Clientes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../../public/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="light-mode">
    <div class="container mt-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1><i class="fas fa-users"></i> Lista de Clientes</h1>
            
            <div>
                <button id="increase-font-btn" class="btn btn-outline-secondary">
                    <i class="fas fa-search-plus"></i>
                </button>
                <button id="decrease-font-btn" class="btn btn-outline-secondary">
                    <i class="fas fa-search-minus"></i>
                </button>
                <button id="toggle-theme-btn" class="btn btn-outline-secondary">
                    <i class="fas fa-moon"></i>
                </button>
            </div>
        </div>

        <table class="table table-bordered table-hover">
            <thead>
                <tr>
                    <th>ID <i class="fas fa-id-card"></i></th>
                    <th>Nome <i class="fas fa-user"></i></th>
                    <th>Telefone <i class="fas fa-phone-alt"></i></th>
                    <th>Email <i class="fas fa-envelope"></i></th>
                    <th>Data de Criação <i class="fas fa-calendar-alt"></i></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($clients as $client): ?>
                    <tr>
                        <td><?= htmlspecialchars($client['id']) ?></td>
                        <td><?= htmlspecialchars($client['name']) ?></td>
                        <td><?= htmlspecialchars($client['phone']) ?></td>
                        <td><?= htmlspecialchars($client['email']) ?></td>
                        <td><?= htmlspecialchars($client['created_at']) ?></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>

        <nav>
            <ul class="pagination">
                <?php if ($page > 5): ?>
                    <li class="page-item"><a class="page-link" href="?page=1">1</a></li>
                    <li class="page-item disabled"><span class="page-link">…</span></li>
                <?php endif; ?>

                <?php for ($i = max(1, $page - 4); $i <= min($totalPages, $page + 4); $i++): ?>
                    <?php if ($i == $page): ?>
                        <li class="page-item active"><span class="page-link"><?= $i ?></span></li>
                    <?php else: ?>
                        <li class="page-item"><a class="page-link" href="?page=<?= $i ?>"><?= $i ?></a></li>
                    <?php endif; ?>
                <?php endfor; ?>

                <?php if ($page < $totalPages): ?>
                    <li class="page-item disabled"><span class="page-link">…</span></li>
                    <li class="page-item"><a class="page-link" href="?page=<?= $totalPages ?>"><?= $totalPages ?></a></li>
                <?php endif; ?>
            </ul>
        </nav>
    </div>

    <script src="theme.js"></script>
</body>
</html>

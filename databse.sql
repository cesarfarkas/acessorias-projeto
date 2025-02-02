-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Fev-2025 às 19:19
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `acessorias_projeto`
--
CREATE DATABASE IF NOT EXISTS `acessorias_projeto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `acessorias_projeto`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clients`
--

INSERT INTO `clients` (`id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Alice Silva', '(11) 99999-1111', 'alice.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(2, 'Bruno Santos', '(21) 98888-2222', 'bruno.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(3, 'Carla Mendes', '(31) 97777-3333', 'carla.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(4, 'David Costa', '(41) 96666-4444', 'david.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(5, 'Eva Lima', '(51) 95555-5555', 'eva.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(6, 'Fabio Souza', '(71) 94567-1212', 'fabio.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(7, 'Gabriela Teixeira', '(85) 98765-4321', 'gabriela.teixeira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(8, 'Heitor Almeida', '(44) 99874-1234', 'heitor.almeida@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(9, 'Isabela Rocha', '(81) 91234-5678', 'isabela.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(10, 'João Pedro', '(34) 93456-7890', 'joao.pedro@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(11, 'Luciana Nunes', '(11) 91345-6789', 'luciana.nunes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(12, 'Marcos Oliveira', '(21) 96789-1234', 'marcos.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(13, 'Natalia Silva', '(31) 91234-5678', 'natalia.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(14, 'Pedro Ferreira', '(41) 96543-2100', 'pedro.ferreira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(15, 'Raquel Mendes', '(51) 98765-4321', 'raquel.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(16, 'Samuel Costa', '(71) 99874-5678', 'samuel.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(17, 'Tatiana Rocha', '(85) 91234-5678', 'tatiana.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(18, 'Vinicius Almeida', '(44) 93456-7890', 'vinicius.almeida@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(19, 'Yara Teixeira', '(81) 98765-4321', 'yara.teixeira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(20, 'Zeca Lima', '(34) 99874-1234', 'zeca.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(21, 'Adriana Martins', '(11) 90000-1111', 'adriana.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(22, 'Bernardo Souza', '(21) 98899-2222', 'bernardo.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(23, 'Claudia Almeida', '(31) 97788-3333', 'claudia.almeida@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(24, 'Diego Lima', '(41) 96677-4444', 'diego.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(25, 'Elisa Mendes', '(51) 95566-5555', 'elisa.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(26, 'Fernando Rocha', '(71) 94567-6666', 'fernando.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(27, 'Gisele Nunes', '(85) 98765-7777', 'gisele.nunes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(28, 'Hugo Teixeira', '(44) 99874-8888', 'hugo.teixeira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(29, 'Isabela Martins', '(81) 91234-9999', 'isabela.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(30, 'Joana Pedro', '(34) 93456-1212', 'joana.pedro@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(31, 'Luis Gonzaga', '(48) 92345-5678', 'luis.gonzaga@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(32, 'Mariana Oliveira', '(31) 93412-9876', 'mariana.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(33, 'Nicolas Ferreira', '(85) 95432-1234', 'nicolas.ferreira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(34, 'Olivia Costa', '(47) 96432-9871', 'olivia.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(35, 'Paulo Mendes', '(19) 92134-5643', 'paulo.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(36, 'Renata Silva', '(13) 94321-1234', 'renata.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(37, 'Sandro Teixeira', '(27) 93421-7654', 'sandro.teixeira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(38, 'Thiago Rocha', '(41) 92123-6543', 'thiago.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(39, 'Ursula Nunes', '(51) 93214-7896', 'ursula.nunes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(40, 'Vicente Almeida', '(21) 92345-0987', 'vicente.almeida@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(41, 'Wesley Pereira', '(91) 93214-4321', 'wesley.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(42, 'Xavier Mendes', '(62) 94532-8765', 'xavier.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(43, 'Yasmin Costa', '(73) 91234-9876', 'yasmin.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(44, 'Zélia Teixeira', '(81) 98765-4329', 'zelia.teixeira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(45, 'Ana Paula Souza', '(32) 92134-5674', 'ana.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(46, 'Brenda Martins', '(24) 94521-1234', 'brenda.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(47, 'Carlos Mendes', '(35) 93412-8976', 'carlos.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(48, 'Daniela Rocha', '(53) 93214-9876', 'daniela.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(49, 'Eduardo Silva', '(55) 96543-1234', 'eduardo.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(50, 'Fernanda Costa', '(44) 92134-7654', 'fernanda.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(51, 'Giovanna Nunes', '(91) 93421-6789', 'giovanna.nunes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(52, 'Henrique Almeida', '(51) 98765-3214', 'henrique.almeida@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(53, 'Ingrid Pereira', '(85) 91234-4321', 'ingrid.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(54, 'Jonas Mendes', '(43) 94532-7890', 'jonas.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(55, 'Kelly Rocha', '(87) 93214-5678', 'kelly.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(56, 'Leandro Costa', '(51) 92345-0987', 'leandro.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(57, 'Marta Silva', '(13) 94532-1234', 'marta.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(58, 'Natasha Gonzaga', '(92) 98765-0987', 'natasha.gonzaga@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(59, 'Otávio Nunes', '(63) 93214-7654', 'otavio.nunes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(60, 'Patricia Teixeira', '(21) 92134-4321', 'patricia.teixeira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(61, 'Roberto Mendes', '(83) 93214-7890', 'roberto.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(62, 'Silvana Costa', '(88) 94532-4321', 'silvana.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(63, 'Tadeu Rocha', '(34) 98765-6543', 'tadeu.rocha@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(64, 'Valéria Gonzaga', '(61) 93214-0987', 'valeria.gonzaga@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(65, 'Wagner Pereira', '(77) 93412-4321', 'wagner.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(66, 'Ximena Silva', '(99) 98765-5432', 'ximena.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(67, 'Yuri Nunes', '(33) 92134-0987', 'yuri.nunes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(68, 'Zuleika Mendes', '(45) 98765-3210', 'zuleika.mendes@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(69, 'Alice Silva', '(11) 99999-1111', 'alice.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(70, 'Bob Oliveira', '(21) 98888-2222', 'bob.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(71, 'Carol Santos', '(31) 97777-3333', 'carol.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(72, 'David Rodrigues', '(41) 96666-4444', 'david.rodrigues@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(73, 'Eva Pereira', '(51) 95555-5555', 'eva.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(74, 'Fernando Souza', '(61) 94444-6666', 'fernando.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(75, 'Gabriela Lima', '(71) 93333-7777', 'gabriela.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(76, 'Henrique Costa', '(81) 92222-8888', 'henrique.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(77, 'Isabela Martins', '(91) 91111-9999', 'isabela.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(78, 'João Silva', '(11) 98765-4321', 'joao.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(79, 'Maria Oliveira', '(21) 97654-3210', 'maria.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(80, 'Pedro Santos', '(31) 96543-2109', 'pedro.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(81, 'Ana Rodrigues', '(41) 95432-1098', 'ana.rodrigues@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(82, 'Lucas Pereira', '(51) 94321-0987', 'lucas.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(83, 'Julia Souza', '(61) 93210-9876', 'julia.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(84, 'Rafael Lima', '(71) 92109-8765', 'rafael.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(85, 'Bruna Costa', '(81) 91098-7654', 'bruna.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(86, 'Guilherme Martins', '(91) 90987-6543', 'guilherme.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(87, 'Amanda Silva', '(11) 99876-5432', 'amanda.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(88, 'Thiago Oliveira', '(21) 98765-4321', 'thiago.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(89, 'Larissa Santos', '(31) 97654-3210', 'larissa.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(90, 'Felipe Rodrigues', '(41) 96543-2109', 'felipe.rodrigues@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(91, 'Camila Pereira', '(51) 95432-1098', 'camila.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(92, 'Vinicius Souza', '(61) 94321-0987', 'vinicius.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(93, 'Letícia Lima', '(71) 93210-9876', 'leticia.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(94, 'Eduardo Costa', '(81) 92109-8765', 'eduardo.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(95, 'Patrícia Martins', '(91) 91098-7654', 'patricia.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(96, 'Gustavo Silva', '(11) 98901-2345', 'gustavo.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(97, 'Bianca Oliveira', '(21) 97890-1234', 'bianca.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(98, 'Marcelo Santos', '(31) 96789-0123', 'marcelo.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(99, 'Fernanda Rodrigues', '(41) 95678-9012', 'fernanda.rodrigues@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(100, 'Ricardo Pereira', '(51) 94567-8901', 'ricardo.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(101, 'Aline Souza', '(61) 93456-7890', 'aline.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(102, 'Roberto Lima', '(71) 92345-6789', 'roberto.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(103, 'Juliana Costa', '(81) 91234-5678', 'juliana.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(104, 'Leonardo Martins', '(91) 90123-4567', 'leonardo.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(105, 'Sofia Silva', '(11) 99123-4567', 'sofia.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(106, 'André Oliveira', '(21) 98234-5678', 'andre.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(107, 'Mariana Santos', '(31) 97345-6789', 'mariana.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(108, 'Daniel Rodrigues', '(41) 96456-7890', 'daniel.rodrigues@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(109, 'Laura Pereira', '(51) 95567-8901', 'laura.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(110, 'Vitor Souza', '(61) 94678-9012', 'vitor.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(111, 'Isadora Lima', '(71) 93789-0123', 'isadora.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(112, 'Enzo Costa', '(81) 92890-1234', 'enzo.costa@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(113, 'Valentina Martins', '(91) 91901-2345', 'valentina.martins@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(114, 'Arthur Silva', '(11) 98123-4567', 'arthur.silva@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(115, 'Helena Oliveira', '(21) 97234-5678', 'helena.oliveira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(116, 'Bernardo Santos', '(31) 96345-6789', 'bernardo.santos@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(117, 'Isabela Rodrigues', '(41) 95456-7890', 'isabela.rodrigues@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(118, 'Miguel Pereira', '(51) 94567-8901', 'miguel.pereira@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(119, 'Sophia Souza', '(61) 93678-9012', 'sophia.souza@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10'),
(120, 'Davi Lima', '(71) 92789-0123', 'davi.lima@example.com', '2025-02-02 15:03:10', '2025-02-02 15:03:10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

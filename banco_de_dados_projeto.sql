
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Banco de dados: `sql9592123`
--
CREATE DATABASE IF NOT EXISTS `sql9592123` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sql9592123`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(40) NOT NULL,
  `endereco` varchar(60) NOT NULL,
  `industria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `endereco`, `industria`) VALUES
(101, 'Bib Business Federation', 'Exemplo de endereco 1', 'Negocois em Geral'),
(102, 'eCommerce GmbH', 'Exemplo de endereco 2', 'Textil'),
(103, 'AutoMaker AG', 'Exemplo de endereco 3', 'Automotivo'),
(104, 'Banko Bank', 'Exemplo de endereco 4', 'Financeiro'),
(105, 'WeMoveIt GmbH', 'Exemplo de endereco 5', 'Logistica');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_cursos` int(11) NOT NULL,
  `nome_curso` varchar(40) NOT NULL,
  `linguagem` varchar(3) NOT NULL,
  `nivel` varchar(2) DEFAULT NULL,
  `duracao_semanas` int(11) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `id_escola` tinyint(1) DEFAULT NULL,
  `professor` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cursos`
--

INSERT INTO `cursos` (`id_cursos`, `nome_curso`, `linguagem`, `nivel`, `duracao_semanas`, `data_inicio`, `id_escola`, `professor`, `cliente`) VALUES
(12, 'Exemplo de Curso 1', 'PT', 'A1', 10, '2023-01-24', 1, 1, 105),
(13, 'Exemplo de Curso 2', 'PT', 'A1', 40, '2023-01-12', 1, 6, 101),
(14, 'Exemplo de Curso 3', 'ENG', 'C1', 40, '2022-12-25', 0, 6, 101),
(15, 'Exemplo de Curso 4', 'ESP', 'B1', 40, '2022-12-13', 0, 6, 101),
(16, 'Exemplo de Curso 5', 'RUS', 'B1', 30, '2020-11-22', 1, 3, 103),
(17, 'Exemplo de Curso 6', 'PT', 'A1', 10, '2023-01-22', 0, 2, 101),
(18, 'Exemplo de Curso 7', 'PT', 'A1', 20, '2023-12-22', 1, 4, 102),
(19, 'Exemplo de Curso 8', 'ENG', 'B1', 30, '2021-11-15', 0, 1, 104),
(20, 'Exemplo de Curso 9', 'ESP', 'B1', 40, '2022-11-25', 0, 5, 103);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursosafazer`
--

CREATE TABLE `cursosafazer` (
  `id_participante` int(11) NOT NULL DEFAULT '0',
  `id_curso` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `cursosafazer`
--

INSERT INTO `cursosafazer` (`id_participante`, `id_curso`) VALUES
(106, 13),
(107, 13),
(108, 13),
(109, 14),
(101, 15),
(111, 16),
(101, 17),
(102, 17),
(103, 18),
(104, 18),
(105, 18),
(112, 19),
(113, 19),
(110, 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `participantes`
--

CREATE TABLE `participantes` (
  `id_participante` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sobrenome` varchar(40) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `participantes`
--

INSERT INTO `participantes` (`id_participante`, `nome`, `sobrenome`, `telefone`, `cliente`) VALUES
(101, 'José', 'Alcir', '+558678945632', 101),
(102, 'Carlos', 'Pereira', '+558678945612', 101),
(103, 'Beto', 'Silva', '+558614782563', 102),
(104, 'Flávia', 'Lima', '+558632149875', 102),
(105, 'Cristina', 'Lima', '+558647896325', 102),
(106, 'Paula', 'Escórcio', '+558614523698', 101),
(107, 'Luiza', 'Druke', '+858612369874', 101),
(108, 'Roberta', 'Lima', '+558621479632', 101),
(109, 'Pedro', 'Soares', '+558678963254', 101),
(110, 'Edilberto', 'Davian', '+558621479632', 103),
(111, 'Mariano', 'Cerqueira', '+558621478965', 103),
(112, 'Marina', 'Britto', '+558636985741', 104),
(113, 'Silvia', 'Sousa', '+558621479632', 104),
(114, 'Renato', 'Lima', '+558632147965', 105);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id_professor` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `sobrenome` varchar(40) NOT NULL,
  `linguagem_1` varchar(3) NOT NULL,
  `linguagem_2` varchar(3) DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `tax_id` int(11) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `professores`
--

INSERT INTO `professores` (`id_professor`, `nome`, `sobrenome`, `linguagem_1`, `linguagem_2`, `data_nascimento`, `tax_id`, `telefone`) VALUES
(1, 'José', 'Magalhães', 'ENG', NULL, '0000-00-00', 12345, '+558699998784'),
(2, 'Maria', 'Alice', 'ESP', NULL, '0000-00-00', 23456, '+55867412365'),
(3, 'Carlos', 'Alberto', 'PT', NULL, '1996-12-23', 34567, '+558698742365'),
(4, 'João', 'Paulo', 'DEU', 'IRA', '1990-11-23', 45678, '+55864123654'),
(5, 'Luiz', 'Mendonça', 'ENG', 'RUS', '1985-12-25', 56789, '+678779885454'),
(6, 'Paulo', 'Silva', 'ESP', NULL, '1998-09-12', 67890, '+556987452136');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_cursos`),
  ADD KEY `professor` (`professor`),
  ADD KEY `cliente` (`cliente`);

--
-- Índices de tabela `cursosafazer`
--
ALTER TABLE `cursosafazer`
  ADD PRIMARY KEY (`id_participante`,`id_curso`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Índices de tabela `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id_participante`),
  ADD KEY `cliente` (`cliente`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id_professor`),
  ADD UNIQUE KEY `tax_id` (`tax_id`);

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_ibfk_2` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE SET NULL,
  ADD CONSTRAINT `cursos_ibfk_1` FOREIGN KEY (`professor`) REFERENCES `professores` (`id_professor`) ON DELETE SET NULL;

--
-- Restrições para tabelas `cursosafazer`
--
ALTER TABLE `cursosafazer`
  ADD CONSTRAINT `cursosafazer_ibfk_1` FOREIGN KEY (`id_participante`) REFERENCES `participantes` (`id_participante`) ON DELETE CASCADE,
  ADD CONSTRAINT `cursosafazer_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_cursos`) ON DELETE CASCADE;

--
-- Restrições para tabelas `participantes`
--
ALTER TABLE `participantes`
  ADD CONSTRAINT `participantes_ibfk_1` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

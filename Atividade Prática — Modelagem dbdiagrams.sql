CREATE TABLE `autores` (
  `id_autor` integer PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `nacionalidade` varchar(50)
);

CREATE TABLE `livros` (
  `id_livro` integer PRIMARY KEY AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `ano_publicacao` integer,
  `genero` varchar(50),
  `quantidade` integer,
  `id_autor` integer NOT NULL
);

CREATE TABLE `leitores` (
  `id_leitor` integer PRIMARY KEY AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100),
  `telefone` varchar(20)
);

CREATE TABLE `emprestimos` (
  `id_emprestimo` integer PRIMARY KEY AUTO_INCREMENT,
  `id_livro` integer NOT NULL,
  `id_leitor` integer NOT NULL,
  `data_emprestimo` date NOT NULL,
  `data_devolucao` date
);

ALTER TABLE `livros` ADD FOREIGN KEY (`id_autor`) REFERENCES `autores` (`id_autor`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_livro`) REFERENCES `livros` (`id_livro`);

ALTER TABLE `emprestimos` ADD FOREIGN KEY (`id_leitor`) REFERENCES `leitores` (`id_leitor`);

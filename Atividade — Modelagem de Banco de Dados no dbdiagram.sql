CREATE TABLE `alunos` (
  `id_aluno` integer PRIMARY KEY AUTO_INCREMENT,
  `nome_completo` varchar(255) NOT NULL,
  `email` varchar(255) UNIQUE,
  `data_nascimento` date,
  `nivel_turma` varchar(255)
);

CREATE TABLE `professores` (
  `id_professor` integer PRIMARY KEY AUTO_INCREMENT,
  `nome_completo` varchar(255) NOT NULL,
  `especialidade` varchar(255),
  `email` varchar(255) UNIQUE,
  `experiencia` integer
);

CREATE TABLE `cursos` (
  `id_curso` integer PRIMARY KEY AUTO_INCREMENT,
  `curso` varchar(255) NOT NULL,
  `linguagem` varchar(255),
  `horario` integer,
  `nivel` varchar(255),
  `id_professor` integer NOT NULL
);

CREATE TABLE `matriculas` (
  `id_matricula` integer PRIMARY KEY AUTO_INCREMENT,
  `id_aluno` integer NOT NULL,
  `id_curso` integer NOT NULL,
  `data_matricula` date,
  `status` varchar(255),
  `nota_final` decimal
);

ALTER TABLE `cursos` ADD FOREIGN KEY (`id_professor`) REFERENCES `professores` (`id_professor`);

ALTER TABLE `matriculas` ADD FOREIGN KEY (`id_aluno`) REFERENCES `alunos` (`id_aluno`);

ALTER TABLE `matriculas` ADD FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`);

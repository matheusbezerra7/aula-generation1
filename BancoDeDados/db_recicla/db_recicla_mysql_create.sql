CREATE TABLE `tb_usuario` (
	`id` INT(200) NOT NULL AUTO_INCREMENT,
	`Nome` varchar(200) NOT NULL,
	`Email` varchar(200) NOT NULL,
	`Senha` varchar(200) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id` INT(200) NOT NULL AUTO_INCREMENT,
	`Tema` varchar(200) NOT NULL,
	`Categoria` varchar(200) NOT NULL,
	`Local` varchar(2) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_postagem` (
	`id` INT(200) NOT NULL AUTO_INCREMENT,
	`Postagem` varchar(255) NOT NULL,
	`Data` DATETIME NOT NULL,
	`Curtida` INT NOT NULL,
	`Imagem` varchar(255) NOT NULL,
	`tema_id` INT(255) NOT NULL,
	`usuario_id` INT(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_tema`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario`(`id`);


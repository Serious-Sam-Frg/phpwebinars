CREATE TABLE `books` (
	`id` int unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL DEFAULT '',
	PRIMARY KEY(id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;




INSERT INTO `books`(`name`) VALUES ('book8');

SELECT `id`, `name` FROM `books`;

select id, name from books;



INSERT INTO `books`(`name`) VALUES ('book2'), ('book3'), ('book4'), ('book5'), ('book6'), ('book7');


SELECT * FROM `books` WHERE `id` > 4 ORDER BY `id` DESC;

UPDATE `books` SET `name` = 'book -- 8', `field2` = '1', `field3` = '3' WHERE `id` = 7; 

DELETE FROM `books` WHERE `id` = 7;


REPLACE INTO `books`(`id`, `name`) VALUES (3, 'book3');


ALTER TABLE `books` ADD COLUMN `year` int unsigned NOT NULL DEFAULT 0;
ALTER TABLE `books` ADD COLUMN `author` varchar(255) NOT NULL DEFAULT '';
ALTER TABLE `books` ADD COLUMN `author_id` int unsigned NOT NULL DEFAULT 0;
ALTER TABLE `books` DROP COLUMN `author`;


UPDATE books SET author = 'author1', year = 2008 WHERE id = 3;
UPDATE books SET author = 'author2', year = 1995 WHERE id = 2;
UPDATE books SET author = 'author1', year = 2011 WHERE id = 6;


CREATE TABLE `authors` (
	`id` int unsigned NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL DEFAULT '',
	PRIMARY KEY(id)
);

INSERT INTO `authors`(`name`) VALUES ('author1'), ('author2'), ('author3'), ('author4'), ('author5'), ('author6');


SELECT b.id AS book_id, b.name AS book_name, a.id AS author_id, a.name AS author_name FROM books b JOIN authors a ON b.author_id = a.id;


SELECT * FROM `books` WHERE id > 2 ORDER BY id DESC LIMIT 3;


ALTER TABLE products
    ADD COLUMN article VARCHAR(255) NOT NULL DEFAULT '',
    ADD COLUMN price FLOAT UNSIGNED NOT NULL DEFAULT 0,
    ADD COLUMN amount INT UNSIGNED NOT NULL DEFAULT 0;

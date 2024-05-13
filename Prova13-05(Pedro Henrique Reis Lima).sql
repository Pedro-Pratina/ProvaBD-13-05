/*Pedro Henrique Reis Lima | 22TB*/

/*Exercicio 1 -"Insira um Novo Livro"*/
INSERT INTO Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
("As Crônicas de  Nárnia", "C.S. Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "Editora HarperCollins", 768, "Inglês");

/*Execicio 2 - "Atualizar Disponibilidade"*/

UPDATE Livros
SET disponivel = false
WHERE ano_publicacao <= 2000;

/*Exercicio 3 - "Atualizar Editora"*/

UPDATE Livros
SET editora = "Plume Books"
WHERE titulo = "1984";

/*Exercicio 4 - "Deletar por Idioma e Ano"*/
delete from livros
where idioma = "Francês" and ano_publicacao <= 1970;

/*Exercicio 5 - "Selecionar com WHERE"*/

select * from livros
where quantidade_paginas >= 500;

/*Exercicio 6 - "Selecionar com GROUP BY"*/

select count(categoria), categoria from livros
group by categoria;

/*Exercicio 7 - "Selecionar com LIMIT"*/

select * from livros
limit 5 offset 0;

/*Exercicio 8 - "Selecionar com AVG"*/

select AVG(ano_publicacao) from livros;

/*Exercicio 9 - "Selecionar com ORDER BY"*/

select * from livros
order by ano_publicacao desc;

/*Exercicio 10 - "Selecionar"*/

select * from livros
where titulo like "a%" and ano_publicacao between 1980 and 2000;

/*Fim*/
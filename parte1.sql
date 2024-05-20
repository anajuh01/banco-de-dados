use avaliacao_22b;

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("As Crônicas de Nárnia", "C.S Lewis", 1950, true, "Fantasia", "978-0064471190", "HaperCollins", 768, "Inglês");

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("Cem Anos de Solidão", "Gabriel Garcia Marquez", 1967, true, "Ficção", '978-0241968581', "Penguin Books", 422, "Espanhol"),
("Harry Potter e a Pedra Filosofal", "J.K. Rowling, 1997", true, "Fantasia", '978-0439708180', "Bloomsbury", 309, "Inglês"),
("O Senhor dos Anéis: A Sociedade do Anel", "J.R.R. Tolkien", 1954, true, "Fantasia", '978-0618640157', "HarperCollins", 423, "Inglês");

update Livros
set disponivel = false
where ano_publicacao >= 2000;

update Livros 
set editora = "Plume Books"
where titulo = "1984"; 

update Livros
set editora =  "Penguin Books" 
where idioma =  "Inglês";

update Livros
set isbn = '978-0439708180'
where titulo =  "Harry Potter e a Pedra Filosofal (Edição Especial)";

delete from Livros 
where categoria = "Terror";

delete  from Livros
where idioma = "Francês" and ano_publicacao < 1970;

delete from Livros
where titulo = "As Crônicas de Nárnia";

delete from Livros
where editora = "Penguin Books";

select * from Livros
where quantidade_paginas > 500;

select count(categoria) from Livros
group by categoria; 

select * from Livros
limit 0,5;

select count(categoria) from Livros
group by categoria; 


select avg(ano_publicacao) from Livros;

select * from Livros
order by ano_publicacao desc;

select titulo FROM Livros
UNION
SELECT titulo FROM Livros;

select * from Livros
where autor = "George Orwell";





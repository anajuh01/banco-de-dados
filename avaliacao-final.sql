use avaliacao_22b;

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("As Crônicas de Nárnia", "C.S Lewis", 1950, true, "Fantasia", "978-0064471190", "HaperCollins", 768, "Inglês");

select * from Livros
where titulo = "As Crônicas de Nárnia";



update Livros
set disponivel = false
where ano_publicacao >= 2000;


update Livros 
set editora = "Plume Books"
where titulo = "1984"; 


delete  from Livros
where idioma = "Francês" and ano_publicacao < 1970;

select * from Livros
where quantidade_paginas > 500;

select count(categoria) from Livros
group by categoria; 


select * from Livros
limit 0,5;

select avg(ano_publicacao) from Livros;


select * from Livros
order by ano_publicacao desc;


select * from Livros
where titulo





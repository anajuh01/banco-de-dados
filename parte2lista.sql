use avaliacao_22b;


select *
from livros
where disponivel = true;


select *
from livros
where editora = "HarperCollins";



select *
from livros
where ano_publicacao > 2000 and ano_publicacao < 2010;


select titulo
from livros
where titulo like '%Senhor%';



select *
from livros
where quantidade_paginas between 200 and 400;


select titulo, ano_publicacao
from livros
order by ano_publicacao

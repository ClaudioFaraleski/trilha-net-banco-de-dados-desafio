-- 1 – Buscar o nome e ano dos filmes

SELECT Nome, Ano
FROM Filmes;
--2 – Nome e ano dos filmes, ordenados por ano

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;
-- 3 – Filme "De Volta Para o Futuro", com nome, ano e duração

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta Para o Futuro';
--4 – Filmes lançados em 1997

SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;
-- 5 – Filmes lançados após o ano 2000

SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;
-- 6 – Filmes com duração entre 100 e 150 minutos

SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
--7 – Quantidade de filmes por ano, ordenando pelo ano (e não duração)

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;
-- 8 – Atores do gênero masculino

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';
-- 9 – Atores do gênero feminino, ordenados pelo primeiro nome

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
--10 – Nome do filme e seu(s) gênero(s)

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id;
-- 11 – Filmes com gênero "Mistério"

SELECT f.Nome AS Filme, g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
--12 – Nome do filme, primeiro nome, último nome e papel dos atores

SELECT f.Nome AS Filme, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM ElencoFilme ef
JOIN Filmes f ON ef.IdFilme = f.Id
JOIN Atores a ON ef.IdAtor = a.Id;
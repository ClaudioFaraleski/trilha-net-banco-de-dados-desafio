# Desafio SQL - Banco de Dados de Filmes 🎬

[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![SQL Server](https://img.shields.io/badge/SQL%20Server-2019-red.svg)](https://www.microsoft.com/sql-server)
[![DIO](https://img.shields.io/badge/DIO-Curso%20.NET-blue.svg)](https://www.dio.me)

## 📑 Sobre o Projeto

Desafio prático do curso .NET da Digital Innovation One (DIO) focado em consultas SQL. O projeto simula um banco de dados de um site de filmes, onde são armazenados dados sobre filmes, atores e gêneros.

## 🎯 Objetivos

Desenvolver 12 consultas SQL diferentes para extrair informações específicas do banco de dados, demonstrando domínio em:
- Consultas básicas e avançadas
- Relacionamentos entre tabelas
- Ordenação e agrupamento de dados
- Filtros e condições

## 🗃️ Estrutura do Banco de Dados

<div align="center">
    <img src="./Imagens/diagrama.png" alt="Diagrama do banco de dados" style="max-width: 800px"/>
</div>

## 📊 Consultas e Resultados

### 1 - Buscar o nome e ano dos filmes
```sql
SELECT Nome, Ano FROM Filmes
```
<div align="center">
    <img src="./Resultado/1.png" alt="Resultado consulta 1" style="max-width: 600px"/>
</div>

## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
```sql
SELECT Nome, Ano FROM Filmes ORDER BY Ano
```
<div align="center">
    <img src="./Resultado/2.png" alt="Resultado da consulta 2 - Filmes ordenados por ano" style="max-width: 600px"/>
</div>

## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
```
<div align="center">
    <img src="./Resultado/3.png" alt="Resultado da consulta 3 - Filme De Volta para o Futuro" style="max-width: 600px"/>
</div>

## 4 - Buscar os filmes lançados em 1997
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997
```
<div align="center">
    <img src="./Resultado/4.png" alt="Resultado da consulta 4 - Filmes lançados em 1997" style="max-width: 600px"/>
</div>

## 5 - Buscar os filmes lançados APÓS o ano 2000
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000
```
<div align="center">
    <img src="./Resultado/5.png" alt="Resultado da consulta 5 - Filmes lançados após 2000" style="max-width: 600px"/>
</div>

## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao
```
<div align="center">
    <img src="./Resultado/6.png" alt="Resultado da consulta 6 - Filmes com duração entre 100 e 150" style="max-width: 600px"/>
</div>

## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
```sql
SELECT Ano, COUNT(*) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Ano DESC
```
<div align="center">
    <img src="./Resultado/7.png" alt="Resultado da consulta 7 - Quantidade de filmes por ano" style="max-width: 600px"/>
</div>

## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
```sql
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
```
<div align="center">
    <img src="./Resultado/8.png" alt="Resultado da consulta 8 - Atores do gênero masculino" style="max-width: 600px"/>
</div>

## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
```sql
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
```
<div align="center">
    <img src="./Resultado/9.png" alt="Resultado da consulta 9 - Atores do gênero feminino" style="max-width: 600px"/>
</div>

## 10 - Buscar o nome do filme e o gênero
```sql
SELECT f.Nome, g.Nome as Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
```
<div align="center">
    <img src="./Resultado/10.png" alt="Resultado da consulta 10 - Nome do filme e gênero" style="max-width: 600px"/>
</div>

## 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
```sql
SELECT f.Nome, g.Nome as Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Nome = 'Mistério'
```
<div align="center">
    <img src="./Resultado/11.png" alt="Resultado da consulta 11 - Filmes do gênero Mistério" style="max-width: 600px"/>
</div>

## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
```sql
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
```
<div align="center">
    <img src="./Resultado/12.png" alt="Resultado da consulta 12 - Filmes e seus atores" style="max-width: 600px"/>
</div>

## 🤝 Contribuindo

Sinta-se à vontade para contribuir com este projeto:

1. Faça um Fork
2. Crie uma Branch para sua Feature (`git checkout -b feature/NovaFeature`)
3. Commit suas mudanças (`git commit -m 'Adicionando nova feature'`)
4. Push para a Branch (`git push origin feature/NovaFeature`)
5. Abra um Pull Request

## 📝 Licença

Este projeto está sob a licença Dio.

## 🔗 Links Úteis

- [Digital Innovation One](https://www.dio.me)
- [Documentação SQL Server](https://docs.microsoft.com/sql)
- [Curso .NET](https://www.dio.me/curso-net)

---
⌨️ com ❤️ por [Seu Nome](https://github.com/claudiofaraleski) 😊
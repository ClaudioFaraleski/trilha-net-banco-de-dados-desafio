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

![Diagrama banco de dados](Imagens/diagrama.png)

### Tabelas Principais
- **Filmes**: Armazena dados dos filmes
- **Atores**: Contém informações dos atores
- **Generos**: Lista os gêneros disponíveis
- **ElencoFilme**: Relacionamento N:N entre filmes e atores
- **FilmesGenero**: Relacionamento N:N entre filmes e gêneros

## 🚀 Como Executar

1. Clone este repositório
2. Abra o SQL Server Management Studio
3. Execute o script [`Script Filmes.sql`](Script%20Filmes.sql)
4. Execute as consultas conforme necessário

## 📊 Consultas e Resultados

### Resultado

## 1 - Buscar o nome e ano dos filmes
```sql
SELECT Nome, Ano FROM Filmes
```
![Resultado1](Resultado/1.png)

## 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
```sql
SELECT Nome, Ano FROM Filmes ORDER BY Ano
```
![Resultado2](Resultado/2.png)

## 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'
```
![Resultado3](Resultado/3.png)

## 4 - Buscar os filmes lançados em 1997
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997
```
![Resultado4](Resultado/4.png)

## 5 - Buscar os filmes lançados APÓS o ano 2000
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000
```
![Resultado5](Resultado/5.png)

## 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
```sql
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao
```
![Resultado6](Resultado/6.png)

## 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
```sql
SELECT Ano, COUNT(*) as Quantidade FROM Filmes GROUP BY Ano ORDER BY Ano DESC
```
![Resultado7](Resultado/7.png)

## 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
```sql
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
```
![Resultado8](Resultado/8.png)

## 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
```sql
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
```
![Resultado9](Resultado/9.png)

## 10 - Buscar o nome do filme e o gênero
```sql
SELECT f.Nome, g.Nome as Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
```
![Resultado10](Resultado/10.png)

## 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
```sql
SELECT f.Nome, g.Nome as Genero 
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Nome = 'Mistério'
```
![Resultado11](Resultado/11.png)

## 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
```sql
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
```
![Resultado12](Resultado/12.png)

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
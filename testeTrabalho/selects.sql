-- Qual é o preço médio, máximo e mínimo dos produtos?
SELECT MAX(preco) AS max, MIN(preco) AS min, AVG(preco) AS media FROM produtos;
-- Quantos produtos existem em cada categoria?
SELECT COUNT(id) FROM produtos;
-- Quais são as categorias distintas existentes na tabela de produtos?
SELECT DISTINCT(categoria) FROM produtos;
-- Quais categorias possuem mais de 2 produtos?
SELECT categoria  FROM produtos GROUP BY categoria HAVING COUNT(id) > 2;
-- Quais são os produtos que possuem a palavra "Livro" em seu nome?
SELECT * FROM produtos WHERE nome = "Livro";
-- Quais são os 3 produtos mais caros?
SELECT * FROM produtos GROUP BY id ORDER BY preco DESC LIMIT 3;
-- Quais produtos têm o preço dentro do intervalo de R$ 50 a R$ 100?
SELECT * FROM produtos WHERE preco > 50 AND preco < 100;
-- Quais são os produtos com ID 1, 3 e 5?
SELECT * FROM produtos WHERE id = 1 OR id = 3 OR id = 5;
-- Qual é o valor total gasto em produtos da categoria "Eletrônicos"?
SELECT SUM(preco) AS valorTotal FROM produtos WHERE categoria = "Eletrônicos";
-- Quais são os produtos que pertencem às categorias "Vestuário" ou "Acessórios" e possuem um preço entre R$ 30 e R$ 50?
SELECT * FROM produtos WHERE (categoria = "Vestuário" OR "Acessórios") AND (preco >= 30 AND preco <= 50);
CREATE VIEW catalog_name AS
SELECT
  p.name AS product,
  c.name AS catalog_name
FROM products p
JOIN catalogs c
ON p.catalog_id = c.id
ORDER BY product;

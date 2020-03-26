DELIMITER /

DESC products;

CREATE TRIGGER new_product_check BEFORE INSERT ON products
FOR EACH ROW BEGIN
DECLARE CONTINUE HANDLER FOR SQLSTATE '45000' SET @error = 'Both values are NULL';
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000';
  END IF;
END/

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, NULL, 50000, 1)/

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('new_product', 'prod_desc', 10000, 1)/

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('new_product2', NULL, 1000, 1)/

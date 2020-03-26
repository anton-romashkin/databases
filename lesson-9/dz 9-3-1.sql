DELIMITER /

DROP FUNCTION IF EXISTS hello/

CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE time INT;
  SET time = HOUR(NOW());
  CASE
    WHEN time BETWEEN 0 AND 5 THEN
      RETURN "Доброй ночи";
    WHEN time BETWEEN 6 AND 11 THEN
      RETURN "Доброе утро";
    WHEN time BETWEEN 12 AND 17 THEN
      RETURN "Добрый день";
    WHEN time BETWEEN 18 AND 23 THEN
      RETURN "Добрый вечер";
  END CASE;
END/

SELECT NOW(), hello ()/

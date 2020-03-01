CREATE DATABASE IF NOT EXISTS example;
use example;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED,
  name VARCHAR(255) COMMENT 'Имя пользователя'
) COMMENT = 'Пользователи';
CREATE DATABASE sample;

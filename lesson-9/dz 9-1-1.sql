START TRANSACTION;

INSERT INTO sample.users (name, birthday_at) (
  SELECT name, birthday_at FROM shop.users WHERE id = 1
);

DELETE FROM shop.users WHERE id = 1;

COMMIT;

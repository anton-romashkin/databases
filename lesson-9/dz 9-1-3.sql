CREATE TABLE meetings (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  meeting_date DATE NOT NULL
);

INSERT INTO meetings VALUES
  (NULL, 'John Doe', '2018-08-02'),
  (NULL, 'Alex Sanders', '2018-08-03'),
  (NULL, 'Richard Black', '2018-08-10'),
  (NULL, 'Simon Johnson', '2018-08-12'),
  (NULL, 'Jack Brown', '2018-08-25');

CREATE TEMPORARY TABLE aug_days (
  day INT
);

INSERT INTO aug_days VALUES
(0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
(21), (22), (23), (24), (25), (26), (27), (28), (29), (30);

SELECT
  DATE(DATE('2018-08-31') - INTERVAL ad.day DAY) AS calendar,
  NOT ISNULL(m.name) AS got_appointment
FROM aug_days ad
LEFT JOIN meetings m
ON DATE(DATE('2018-08-31') - INTERVAL ad.day DAY) = m.meeting_date
ORDER BY
  day;

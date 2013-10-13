WITH RECURSIVE wholeNumbers(n) AS (
    VALUES (0)
  UNION ALL
    SELECT n+1 FROM wholeNumbers
)
SELECT n FROM wholeNumbers LIMIT 50;

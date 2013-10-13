WITH RECURSIVE thousand(n) AS (
    VALUES (cast(1 as numeric))
  UNION ALL
    SELECT cast((n + 1) as numeric) FROM thousand WHERE n < 1000
)
SELECT cast(sum(n^n) % 10000000000 as int8) FROM thousand;

-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
--
-- Find the sum of all the multiples of 3 or 5 below 1000.


WITH RECURSIVE wholeNumbers(n) AS (
    VALUES (0)
  UNION ALL
    SELECT n+1 FROM wholeNumbers
), thousand AS (
  SELECT n FROM wholeNumbers LIMIT 1000
)

SELECT sum(CASE WHEN ((0 = n % 3) OR (0 = n % 5)) THEN n ELSE 0 END) FROM thousand;

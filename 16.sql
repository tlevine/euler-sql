CREATE OR REPLACE FUNCTION sumDigits(numeric)
RETURNS numeric AS $$
DECLARE
  rightDigit numeric;
  nextNumber numeric;
BEGIN
  SELECT ($1 % 10) INTO rightDigit;
  SELECT (($1 - rightDigit) / 10) INTO nextNumber;
  IF nextNumber = 0
  THEN
    RETURN 0;
  ELSE
    RETURN rightDigit + sumDigits(nextNumber);
  END IF;
END;
$$ LANGUAGE plpgsql;

SELECT cast(sumDigits(cast(2 as numeric)^cast(1000 as numeric)) as int);

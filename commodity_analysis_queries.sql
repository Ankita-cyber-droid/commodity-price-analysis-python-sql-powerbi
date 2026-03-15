-- Q1: How much have commodity prices increased since the 1960s?

SELECT
    year,
    AVG(NULLIF(gold,'...')::numeric) AS gold_price
FROM cmo_data
GROUP BY year
ORDER BY year;

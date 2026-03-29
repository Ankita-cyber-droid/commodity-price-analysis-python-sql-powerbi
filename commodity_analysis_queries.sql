--Energy: --1 crude oil: (Brent, WTI, Dubai, Average)
          --2 coal: (Australia, South Africa)
          --3 natural gas: (US, Europe, LNG Japan)

--Agriculture: coffee, tea, rice, wheat, maize, sugar, banana

-- Metals / Industrial: gold, silver, copper, zinc, nickel, aluminum

SELECT * FROM cmo_data;
-- How much have commodity prices increased since the 1960s?
SELECT year,
AVG(NULLIF(gold,'...')::numeric) AS gold_price
FROM cmo_data
GROUP BY year
ORDER BY year;

--Which oil benchmark is usually more expensive?
SELECT
year::int AS year,
AVG(NULLIF(NULLIF(TRIM(crude_oil_brent),'...'),'…')::numeric) AS brent,
AVG(NULLIF(NULLIF(TRIM(crude_oil_wti),'...'),'…')::numeric) AS wti,
AVG(NULLIF(NULLIF(TRIM(crude_oil_dubai),'...'),'…')::numeric) AS dubai
FROM cmo_data
GROUP BY year
ORDER BY year;


--Which region has the highest gas prices?
SELECT
year::int AS year,
AVG(NULLIF(NULLIF(TRIM(natural_gas_us),'...'),'…')::numeric) AS us_gas,
AVG(NULLIF(NULLIF(TRIM(natural_gas_europe),'...'),'…')::numeric) AS europe_gas,
AVG(NULLIF(NULLIF(TRIM(liquefied_natural_gas_japan),'...'),'…')::numeric) AS japan_lng
FROM cmo_data
GROUP BY year
ORDER BY year;

--How have coffee prices changed over time?
SELECT
year::int,

AVG(
    CASE 
        WHEN coffee_arabica::text IN ('...', '…', '') THEN NULL
        ELSE coffee_arabica::numeric
    END
) AS arabica,

AVG(
    CASE 
        WHEN coffee_robusta::text IN ('...', '…', '') THEN NULL
        ELSE coffee_robusta::numeric
    END
) AS robusta

FROM cmo_data
GROUP BY year
ORDER BY year;

--Which commodity is the most volatile?

SELECT
    year::int,

    STDDEV(
        CASE 
            WHEN gold::text IN ('...', '…', '') THEN NULL
            ELSE gold::numeric
        END
    ) AS gold_volatility,

    STDDEV(
            CASE 
            WHEN silver::text IN ('...', '…', '') THEN NULL
            ELSE silver::numeric
        END
    ) AS silver_volatility,

    STDDEV(
        CASE 
            WHEN copper::text IN ('...', '…', '') THEN NULL
            ELSE copper::numeric
        END
    ) AS copper_volatility

FROM cmo_data
GROUP BY year
ORDER BY year;

-- Global Food Inflation Trend

SELECT
    year::int,

    AVG(
        CASE 
            WHEN rice_thai_5_::text IN ('...', '…', '') THEN NULL
            ELSE rice_thai_5_::numeric
        END
    ) AS rice_price,

    AVG(
        CASE 
            WHEN wheat_us_srw::text IN ('...', '…', '') THEN NULL
            ELSE wheat_us_srw::numeric
        END
    ) AS wheat_price,

    AVG(
        CASE 
            WHEN maize::text IN ('...', '…', '') THEN NULL
            ELSE maize::numeric
        END
    ) AS maize_price,

    AVG(
        CASE 
            WHEN sugar_world::text IN ('...', '…', '') THEN NULL
            ELSE sugar_world::numeric
        END
    ) AS sugar_price

FROM cmo_data
GROUP BY year
ORDER BY year;

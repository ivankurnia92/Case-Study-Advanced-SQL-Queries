WITH ExtremePoints AS (
    -- CTE untuk menghimpun empat nilai ekstrem
    SELECT
        MIN(LAT_N) AS MinLat,
        MAX(LAT_N) AS MaxLat,
        MIN(LONG_W) AS MinLong,
        MAX(LONG_W) AS MaxLong
    FROM
        STATION
)

SELECT
    CAST(
        ABS(MaxLat - MinLat) + ABS(MaxLong - MinLong)
        AS DECIMAL(10, 4)
    )
FROM
    ExtremePoints;

WITH CTE AS (
    SELECT STARTED_AT
    FROM {{ source('DEMO', 'BIKE') }}
)

SELECT *
FROM CTE
-- 코드를 입력하세요
WITH TB AS (
    SELECT
        FLAVOR,
        TOTAL_ORDER
    FROM
        FIRST_HALF
    UNION ALL
    SELECT
        FLAVOR,
        TOTAL_ORDER
    FROM
        JULY
)

SELECT 
    FLAVOR
FROM
    TB
GROUP BY
    FLAVOR
ORDER BY
    SUM(TOTAL_ORDER) DESC
LIMIT 3
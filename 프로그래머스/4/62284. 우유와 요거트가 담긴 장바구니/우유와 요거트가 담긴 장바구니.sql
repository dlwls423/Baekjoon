-- 코드를 입력하세요
SELECT
    DISTINCT CART_ID
FROM
    CART_PRODUCTS
WHERE
    CART_ID IN 
    (
        SELECT 
            CART_ID
        FROM
            CART_PRODUCTS
        WHERE
            NAME = 'Milk'
    ) AND
    CART_ID IN
    (
        SELECT 
            CART_ID
        FROM
            CART_PRODUCTS
        WHERE
            NAME = 'Yogurt'
    )
ORDER BY
    CART_ID
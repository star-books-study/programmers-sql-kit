SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM  ONLINE_SALE
WHERE  1=1
    AND YEAR(SALES_DATE) = 2022 
    AND MONTH(SALES_DATE) = 3
UNION ALL
SELECT  DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    NULL AS USER_ID,
    SALES_AMOUNT
FROM  OFFLINE_SALE
WHERE  1=1
    AND YEAR(SALES_DATE) = 2022 
    AND MONTH(SALES_DATE) = 3
 ORDER BY SALES_DATE,
    PRODUCT_ID,
    USER_ID

-- NULL AS USER_ID는 다른 분 답 참고해서 썼다.
-- JOIN을 사용하면 된다고 생각했는데
-- 데이터를 각각 뽑아 합쳐야 하므로 UNION ALL을 사용해야 했다.
-- UNION ALL : 쿼리의 결과를 중복도 제거하지 않고 합친다
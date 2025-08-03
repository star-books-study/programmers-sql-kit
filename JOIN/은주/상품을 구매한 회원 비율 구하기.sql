SELECT 
    YEAR(SALES_DATE) AS YEAR,
    MONTH(SALES_DATE) AS MONTH,
    (
        -- 1. 2021년에 가입한 회원 중 상품을 구매한 회원 수 (year, month 기준으로 카운트 해야 하므로, 조건에 추가함)
        SELECT
            COUNT(DISTINCT(OS.USER_ID))
        FROM ONLINE_SALE OS
        JOIN USER_INFO UI
              ON OS.USER_ID = UI.USER_ID          
        WHERE YEAR(UI.JOINED) = 2021 
            AND YEAR(OS.SALES_DATE) = YEAR
            AND MONTH(OS.SALES_DATE) = MONTH
    ) AS PURCHASED_USERS,
    ROUND(
        (SELECT
            COUNT(DISTINCT(OS.USER_ID))
        FROM ONLINE_SALE OS
        JOIN USER_INFO UI
          ON OS.USER_ID = UI.USER_ID          
        WHERE YEAR(UI.JOINED) = 2021
            AND YEAR(OS.SALES_DATE) = YEAR
            AND MONTH(OS.SALES_DATE) = MONTH) / 
        (SELECT
            COUNT(*)
        FROM USER_INFO
        WHERE YEAR(JOINED) = 2021
    ), 1) AS PUCHASED_RATIO
FROM ONLINE_SALE
GROUP BY YEAR, MONTH
ORDER BY YEAR, MONTH

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 24분

✅ 리뷰
- 

✅ 알아두기
-
*/
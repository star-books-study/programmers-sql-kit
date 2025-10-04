SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
    CASE 
        WHEN DATE_FORMAT(OUT_DATE, '%Y-%m-%d') <= '2022-05-01'
        THEN '출고완료'
        WHEN DATE_FORMAT(OUT_DATE, '%Y-%m-%d') > '2022-05-01'
        THEN '출고대기'
        ELSE '출고미정'
    END AS '출고여부'
FROM FOOD_ORDER
ORDER BY ORDER_ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 5분

✅ 리뷰
- 

✅ 알아두기
- 
*/
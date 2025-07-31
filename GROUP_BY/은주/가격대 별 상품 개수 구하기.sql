SELECT 
    TRUNCATE(PRICE/10000, 0) * 10000 AS PRICE_GROUP,
    COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY PRICE_GROUP 

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 6분

✅ 리뷰
- 만 원 단위 가격대 기준으로 노출해야 하므로, PRICE/10000 으로 나눈 값을 GROUP BY 조건으로 사용
- 이 때 ROUND 를 사용할 경우 만원 미만의 값들이 1로 반올림 되므로 TRUNCATE 함수 사용하여 버림 처리

✅ 알아두기
- 반올림 : ROUND(숫자, 반올림할 자릿수)
- 버림 : TRUNCATE(숫자, 버림할 자릿수)
*/
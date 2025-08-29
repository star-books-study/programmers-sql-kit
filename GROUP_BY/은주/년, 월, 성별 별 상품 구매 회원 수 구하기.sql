SELECT
    YEAR(SALES_DATE) AS YEAR,
    MONTH(SALES_DATE) AS MONTH,
    GENDER,
    COUNT(DISTINCT UI.USER_ID) AS USERS
FROM ONLINE_SALE OS
JOIN USER_INFO UI
    ON OS.USER_ID = UI.USER_ID
WHERE GENDER IS NOT NULL
GROUP BY YEAR, MONTH, GENDER
ORDER BY YEAR, MONTH, GENDER

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 9분

✅ 리뷰
- 동일한 날짜 + 회원 id + 상품 id 에 대해서 하나의 판매 데이터가 존재하므로, 날짜가 다를 경우에는 회원 id 가 중복될 수 있음.
- 따라서 COUNT(*) 로 구할 게 아니라 회원 id 의 고유한 값 기준으로 카운트하도록 해야 "상품을 구매한 회원 수" 를 집계할 수 있음.

✅ 알아두기
-
*/
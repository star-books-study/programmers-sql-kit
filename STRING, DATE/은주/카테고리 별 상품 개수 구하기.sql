SELECT 
    SUBSTRING(PRODUCT_CODE, 1, 2) AS CATEGORY,
    COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY CATEGORY

/* 
❌ 스스로 풀었는가?
☑️ 소요 시간 : 5분

✅ 리뷰
- 2자리를 자르는 방법을 몰라서 SUBSTRING 함수 찾아봄

✅ 알아두기
- SUBSTRING(문자열, 시작 위치, 길이)
*/
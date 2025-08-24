SELECT
    CATEGORY,
    PRICE AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT FP
WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
AND PRICE IN (
    SELECT MAX(PRICE)
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY
)
ORDER BY PRICE DESC

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 11분

✅ 리뷰
- 식품 분류별로 가격이 제일 비싼 식품의 분류, 가격, 이름을 조회해야 함
-> 단순히 GROUP BY CATEGORY + MAX(PRICE) 출력으로는 최고가에 해당하는 상품명이 제대로 매치되지 않은 결과값이 나옴
- 따라서 PRICE 를 비교할 때 카테고리별로 가장 높은 가격에 해당하는지를 체크 -> 최고가를 가진 경우에 조회하도록 쿼리를 짜야함

✅ 알아두기
SELECT
    CATEGORY,
    MAX(PRICE) AS MAX_PRICE,
    PRODUCT_NAME
FROM FOOD_PRODUCT
GROUP BY CATEGORY
HAVING CATEGORY IN ('과자', '국', '김치', '식용유')
ORDER BY PRICE DESC

- GROUP BY CATEGORY를 했는데 PRICE, PRODUCT_NAME을 그냥 SELECT에 넣었어요.
SQL 표준상 GROUP BY에 없는 컬럼은 집계함수로 감싸야 합니다.
(MySQL은 ONLY_FULL_GROUP_BY가 꺼져있으면 실행은 되지만, 임의의 값이 나오게 돼요.)

즉, PRODUCT_NAME과 PRICE가 어떤 기준으로 선택될지 보장되지 않음 -> 따라서 임의의 값이 나오므로 오답

*/
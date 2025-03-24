SELECT
    PRODUCT_ID, 
    PRODUCT_NAME, 
    PRODUCT_CD, 
    CATEGORY, 
    PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1

/* 
✅ 스스로 풀었는가?
✅ 소요 시간 : 8분

✅ 리뷰
- group by 로 어케저케 해야될 거 같은데 어떻게 짜야할 지 감이 안와서 price 내림차순 정렬해서 하나 조회하도록 함 -> grouo

✅ 알아두기
SELECT
    PRODUCT_ID, 
    PRODUCT_NAME, 
    PRODUCT_CD, 
    CATEGORY, 
    MAX(PRICE) AS PRICE
FROM FOOD_PRODUCT

- 위와 같이 출력하면 첫번째 요소 데이터 4개 컬럼 + price 최댓값이 출력됨
- 위 쿼리와 같이 짜면 안되는 이유는 MAX(PRICE)는 전체 테이블의 PRICE 컬럼에서 가장 큰 값을 반환하는 집계 함수인데, WHERE 절에서 이 집계 함수를 직접 사용하는 것은 문법적으로 허용되지 않음.
- WHERE 절은 각 행을 평가할 때 사용되는데, MAX(PRICE)는 모든 행을 고려하여 계산된 단일 값이므로, 각 행의 PRICE 값과 직접 비교할 수 없다

SELECT *
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT);
- 위 쿼리로도 풀 수 있다
*/
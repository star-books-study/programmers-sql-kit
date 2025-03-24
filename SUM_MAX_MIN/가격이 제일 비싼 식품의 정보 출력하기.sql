SELECT *
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT)

-- 처음에 PRICE = MAX(PRICE)로 이상하게 작성했다
-- 이런 식으로 서브쿼리를 사용하는 방법 외에도 LIMIT를 사용하는 방법도 있다.
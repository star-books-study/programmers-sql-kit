SELECT
    WAREHOUSE_ID,
    WAREHOUSE_NAME,
    ADDRESS,
    IF(FREEZER_YN IS NULL, 'N', FREEZER_YN)
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE '경기도%'
ORDER BY WAREHOUSE_ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 5분

✅ 리뷰
1. IF문 형태가 기억이 안나서.. 막 IF_NULL / IS_NULL 이런식으로 메소드 만들어보다가 IF(조건, 참일 경우 실행, 거짓일 경우 실행) 이 떠올라서 풀 수 있었음

✅ 알아두기
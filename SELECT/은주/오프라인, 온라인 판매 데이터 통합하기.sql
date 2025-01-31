SELECT
    DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'
UNION
SELECT 
    DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE,
    PRODUCT_ID,
    NULL,
    SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE LIKE '2022-03%' 
ORDER BY SALES_DATE, PRODUCT_ID, USER_ID

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 9분

✅ 리뷰
- 어떻게 다른 테이블끼리 데이터를 합치지? 하다가 UNION 이 문득 떠올라서 사용함
- select 하는 컬럼 개수가 동일하지 않으면 에러가 나는 것 같아서 추가해줬는데 USER_ID 라는 컬럼이 없을 때 null 로 어떻게 출력해야 할 지 몰랐음
- IF 문으로 해도 컬럼 자체가 없는 경우는 처리가 불가능하니까 UNION 에 뭔가 추가 문법이 있나 하고 찾아봤는데 없는 거 같아서 그냥 열 자체를 NULL 로 출력하도록 해보았더니 통과함 

✅ 알아두기
1. UNION, UNION ALL 차이
- UNION : 쿼리의 결과를 합치고 중복된 ROW는 제거 
- UNION ALL : 모든 컬럼값이 같은 ROW도 결과로 보여주며 중복제거 하지 않음
  - UNION ALL 이 중복제거하지 않으므로 UNION 보다 속도가 빠르다
- UNION 보다는 UNION ALL 을 사용하자. UNION 을 사용해야 한다면, 최소 필요 컬럼만 SELECT 하자.
*/
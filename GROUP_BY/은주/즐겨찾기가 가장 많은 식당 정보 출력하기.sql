SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    FAVORITES
FROM REST_INFO
WHERE (FOOD_TYPE, FAVORITES) IN (
    SELECT FOOD_TYPE, MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE
)
ORDER BY FOOD_TYPE DESC

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 29분

✅ 리뷰
SELECT
    FOOD_TYPE,
    REST_ID,
    REST_NAME,
    MAX(FAVORITES)
FROM REST_INFO
GROUP BY FOOD_TYPE
ORDER BY FOOD_TYPE DESC

- 이렇게 풀어서 계속 틀림.. ㅎㅎ 
- GROUP BY FOOD_TYPE 만 하면 REST_ID, REST_NAME은 집계 기준에 포함되지 않기 때문에 SQL 문법상 오류이거나, RDBMS에 따라 에러 없이도 잘못된 값을 반환할 수 있음
- REST_ID, REST_NAME은 어떤 값이든 그룹 내 임의의 값이 반환될 수 있음 -> 즉, MAX(FAVORITES)를 가진 식당이 아닐 수 있음
- SELECT FOOD_TYPE, MAX(FAVORITES)
    FROM REST_INFO
    GROUP BY FOOD_TYPE
이거까지 해봐놓고 WHERE 절에 중복 컬럼 넣어서 체크할 생각을 못했음 

✅ 알아두기
- 
*/
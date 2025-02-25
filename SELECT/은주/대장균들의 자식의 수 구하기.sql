SELECT 
    ID, 
    IF(
        ID IN (
            SELECT PARENT_ID
            FROM ECOLI_DATA
            WHERE PARENT_ID IS NOT NULL
        ),
        (
            SELECT COUNT(*)
            FROM ECOLI_DATA
            GROUP BY PARENT_ID
            HAVING PARENT_ID = ID
        ), 
        0
    ) AS CHILD_COUNT
FROM ECOLI_DATA
ORDER BY ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 30분

✅ 리뷰
SELECT 
    ID, 
    IF(
        ID IN ( 
            ⭐️ 1. PARENT_ID 가 NULL 이 아닌 PARENT_ID 리스트 구하기 (1,2,4)
            SELECT PARENT_ID
            FROM ECOLI_DATA
            WHERE PARENT_ID IS NOT NULL
        ),
        ( ⭐️ 2. 현재 조회하는 ID 가 1번에서 구한 PARENT_ID 리스트에 들어있다면, 자식을 가진 부모 대장균 개체임. 따라서 PARENT_ID 로 GROUP BY 해서 수를 세면 해당 PARENT_ID 가 가진 자식 수를 얻을 수 있음. 
            SELECT COUNT(*)
            FROM ECOLI_DATA
            GROUP BY PARENT_ID
            HAVING PARENT_ID = ID
            
            -- SELECT PARENT_ID, COUNT(*)
            -- FROM ECOLI_DATA
            -- GROUP BY PARENT_ID
            -- HAVING PARENT_ID IS NOT NULL
            위 쿼리 실행해보았을 때 (1,1) (2,2) (4,1) 이런식으로 나오는 것을 보고 COUNT(*) 만 SELECT 하면 되겠다고 생각함.
        ), 
        0 ⭐️ 3. 현재 조회하는 ID 가 1번에서 구한 PARENT_ID 리스트에 없다면 자식이 없는 대장균 개체이므로 0 출력
    ) AS CHILD_COUNT
FROM ECOLI_DATA
ORDER BY ID


✅ 알아두기
- 
*/
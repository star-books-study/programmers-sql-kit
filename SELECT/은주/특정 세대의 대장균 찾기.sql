WITH ED_FAMILY AS (
    SELECT ED1.ID, ED1.PARENT_ID AS P_ID, ED2.PARENT_ID AS PP_ID
    FROM ECOLI_DATA ED1
    LEFT JOIN (
        SELECT ID, PARENT_ID
        FROM ECOLI_DATA 
    ) AS ED2 ON ED1.PARENT_ID = ED2.ID 
) -- 1.

SELECT ID
FROM ED_FAMILY EDF
WHERE EDF.P_ID IN ( -- 3.
    SELECT ID
    FROM ED_FAMILY
    WHERE P_ID IS NOT NULL AND PP_ID IS NULL -- 2.
)


/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 40분

✅ 리뷰
1. parent_id = p.id 기준으로 조인해서 각 id 에 해당하는 parent_id, parent_id 의 parent_id 를 가지고 있는 테이블 생성

ID	PARENT_ID	
1	NULL	
2	NULL	
3	1	
4	2	
5	2	
6	4	
7	3	
8	6

ID	PARENT_ID	PP_ID
1   NULL       NULL -> 1세대
2   NULL       NULL -> 1세대 
3   1          NULL -> 2세대 (P_ID IS NOT NULL && PP_ID IS NULL)
4   2          NULL -> 2세대 (P_ID IS NOT NULL && PP_ID IS NULL)
5   2          NULL -> 2세대 (P_ID IS NOT NULL && PP_ID IS NULL)
6   4          2    -> 3세대 (P_ID 에 해당하는 row 의 PARENT_ID IS NOT NULL && PP_ID IS NULL)
7   3          1    -> 3세대 (P_ID 에 해당하는 row 의 PARENT_ID IS NOT NULL && PP_ID IS NULL)
8   6          4    -> 4세대 (P_ID 에 해당하는 row 의 PARENT_ID IS NOT NULL && PP_ID IS NOT NULL)

2. 3세대에 해당하는 대장균의 id 를 구하기 위해서는 "P_ID 에 해당하는 row 의 PARENT_ID IS NOT NULL && PP_ID IS NULL" 이 조건을 만족해야 함.
3. 2번에서 조건을 만족하는 ID 를 구하고 기존 테이블에서 PARENT_ID 와 비교해서 필터링

✅ 알아두기
** 또 다른 풀이

SELECT ID -- 3,4,5번 대장균을 부모로 하는 6,7 번 대장균
FROM ECOLI_DATA
WHERE PARENT_ID IN (
    SELECT ID -- 1,2번 대장균을 부모로 하는 3,4,5 번 대장균
    FROM ECOLI_DATA 
    WHERE PARENT_ID IN (  
        SELECT ID  -- 1,2 번 대장균
        FROM ECOLI_DATA 
        WHERE PARENT_ID IS NULL
    )
)

*/




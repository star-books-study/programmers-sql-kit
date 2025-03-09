WITH RANKED_DATA AS (
    SELECT 
        ID, 
        SIZE_OF_COLONY,
        ROW_NUMBER() OVER (ORDER BY SIZE_OF_COLONY DESC) as row_num,
        (SELECT COUNT(*) FROM ECOLI_DATA) as total_count
    FROM ECOLI_DATA
)
SELECT 
    ID,
    CASE
        WHEN row_num <= total_count / 4 * 1 THEN 'CRITICAL'
        WHEN row_num <= total_count / 4 * 2 THEN 'HIGH'
        WHEN row_num <= total_count / 4 * 3 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS COLONY_NAME
FROM RANKED_DATA
ORDER BY ID;

/* 
✅ 스스로 풀었는가?
✖️ 소요 시간 : 35분

✅ 리뷰
-

✅ 알아두기
-
*/
SELECT 
    ID,
    CASE
        WHEN SIZE_OF_COLONY <= 100
            THEN 'LOW'
        WHEN SIZE_OF_COLONY > 100 AND SIZE_OF_COLONY <= 1000
            THEN 'MEDIUM'
        WHEN SIZE_OF_COLONY > 1000
            THEN 'HIGH'
    END AS SIZE
FROM ECOLI_DATA
ORDER BY ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 3분

✅ 리뷰
-

✅ 알아두기
-
*/
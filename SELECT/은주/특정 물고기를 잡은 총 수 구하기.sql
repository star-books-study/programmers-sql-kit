SELECT
    COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE FISH_TYPE IN (
    SELECT 
        FISH_TYPE
    FROM FISH_NAME_INFO
    WHERE FISH_NAME IN ('BASS', 'SNAPPER') 
)

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 3분

✅ 리뷰
-

✅ 알아두기
- join 으로도 풀 수 있음

SELECT
    COUNT(*) AS FISH_COUNT
FROM FISH_INFO AS FI 
JOIN FISHNAMEINFO AS FNI
ON FI.FISH_TYPE = FNI.FISH_TYPE
WHERE FISH_NAME IN ('BASS', 'SNAPPER');
*/
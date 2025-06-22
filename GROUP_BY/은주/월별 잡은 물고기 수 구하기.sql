SELECT
    COUNT(*) AS FISH_COUNT,
    MONTH(TIME) AS MONTH
FROM FISH_INFO
GROUP BY MONTH(TIME)
ORDER BY MONTH(TIME) 

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 1분

✅ 리뷰
-

✅ 알아두기
-
*/
SELECT 
    COUNT(*)
FROM USER_INFO
WHERE 1=1 
    AND YEAR(JOINED) = 2021
    AND AGE >= 20 AND AGE <= 29

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 1분

✅ 리뷰
-

✅ 알아두기
- BETWEEN 20 AND 29
*/
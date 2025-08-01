SELECT
    MCDP_CD AS '진료과코드', 
    COUNT(*) AS '5월예약건수'
FROM APPOINTMENT
WHERE YEAR(APNT_YMD) = 2022 
    AND MONTH(APNT_YMD) = 5
GROUP BY MCDP_CD
ORDER BY COUNT(*), MCDP_CD

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 8분

✅ 리뷰
-

✅ 알아두기
-
*/
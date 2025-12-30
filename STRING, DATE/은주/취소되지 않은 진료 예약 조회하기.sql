SELECT
    APNT_NO,
    PT_NAME,
    P.PT_NO,
    D.MCDP_CD,
    DR_NAME,
    APNT_YMD
FROM APPOINTMENT A
JOIN DOCTOR D
    ON A.MDDR_ID = D.DR_ID
JOIN PATIENT P
    ON A.PT_NO = P.PT_NO
WHERE A.MCDP_CD = 'CS'
AND APNT_CNCL_YN = 'N'
AND (YEAR(APNT_YMD) = 2022 && MONTH(APNT_YMD) = 4 && DAY(APNT_YMD) = 13)
ORDER BY APNT_YMD

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 6분

✅ 리뷰
- 

✅ 알아두기
- DATE_FORMAT(APNT_YMD, '%Y-%m-%d') = '2022-04-13'
- DATE(expression) : 주어진 expression에 해당하는 날짜 정보 반환
*/
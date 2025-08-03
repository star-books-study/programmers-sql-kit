SELECT
    MONTH(START_DATE) AS MONTH,
    CAR_ID,
    COUNT(*) AS RECORDS
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE CAR_ID IN ( -- 22년 8~10월까지의 총 대여횟수가 5회 이상인 자동차들에 대해서 
    SELECT 
        CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE YEAR(START_DATE) = 2022
        AND (MONTH(START_DATE) BETWEEN 8 AND 10)
    GROUP BY CAR_ID
    HAVING COUNT(*) >= 5
) 
AND YEAR(START_DATE) = 2022
AND (MONTH(START_DATE) BETWEEN 8 AND 10) -- 해당 기간 동안의 
GROUP BY MONTH, CAR_ID -- 월별, 자동차ID 별 
HAVING RECORDS != 0 -- 총 대여횟수가 0인 경우 결과에서 제외
ORDER BY MONTH, CAR_ID DESC

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 18분

✅ 리뷰
- "해당 기간 동안의" 디스크립션을 놓쳐서 헤맸음. ㅎㅎ

✅ 알아두기
*/
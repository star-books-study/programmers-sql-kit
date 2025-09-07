SELECT 
    HISTORY_ID,
    CAR_ID,
    DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE,
    DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE,
    IF(DATEDIFF(END_DATE, START_DATE) >= 29, '장기 대여', '단기 대여') AS RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE LIKE '2022-09%'
ORDER BY HISTORY_ID DESC

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 15분

✅ 리뷰
- 날짜간격을 구하는 함수를 몰라서 헤맴.. 그리고 START_DATE == END_DATE 인 경우도 1일로 계산하기 때문에 29 보다 큰 경우로 조건을 넣어야 함

✅ 알아두기
- DATEDIFF(DATE1, DATE2) : DATE2 - DATE1 (날짜와 날짜 사이의 간격 계산)
*/
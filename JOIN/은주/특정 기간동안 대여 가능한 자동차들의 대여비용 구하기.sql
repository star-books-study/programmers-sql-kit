SELECT
    CRCC.CAR_ID,
    CRCC.CAR_TYPE,
    ROUND(CRCC.DAILY_FEE * (100 - CRCDP.DISCOUNT_RATE) / 100 * 30, 0) AS FEE
FROM CAR_RENTAL_COMPANY_CAR CRCC
JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN CRCDP
    ON CRCC.CAR_TYPE = CRCDP.CAR_TYPE
WHERE CRCC.CAR_TYPE IN ('세단', 'SUV')
    AND CRCC.CAR_ID NOT IN (
        SELECT CAR_ID 
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE END_DATE >= "2022-11-01" AND START_DATE <= "2022-11-30"
    )
    AND CRCDP.DURATION_TYPE = '30일 이상'
    AND (ROUND(CRCC.DAILY_FEE * (100 - CRCDP.DISCOUNT_RATE) / 100 * 30, 0) BETWEEN 500000 AND 1999999)
ORDER BY FEE DESC, CAR_TYPE, CAR_ID DESC

/* 
✅ 스스로 풀었는가?
❌ 소요 시간 : 37분

✅ 리뷰
1. 대여기간에 대해 체크할 때 history 테이블을 참고해야한다는 생각을 못해서 그냥 duration_type 만 체크했었음
2. history 테이블을 활용해서 2022-11-01 ~ 2022-11-30 사이에 대여가 가능한지 확인해야 함.
-> start_date >= '2022-11-01' and end_date <= '2022-11-30' 에 포함되는 히스토리가 있는지 확인하는 것으로는 해결할 수 없음
-> 왜냐하면 '2022-11-30 ~ 2022-12-01' 인 경우에는 해당 조건에 걸리지 않음.
-> 따라서 날짜 범위의 교집합이 존재하는지 여부를 확인하려면, END_DATE >= "2022-11-01" AND START_DATE <= "2022-11-30" 로 체크해야 함

✅ 알아두기
- 숫자 비교 시 BETWEEN A AND B 는 A 이상 B 이하를 의미함

*/
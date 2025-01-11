SELECT 
    ROUND(SUM(DAILY_FEE) / COUNT(*), 0) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'

-- 한줄평
-- 1. 반올림 함수 기억안났는데 인출 성공함
-- 2. 평균 구하는게 있었나? 하다가 기억 안나서 sum + count 로 했는데 AVG 가 있었네
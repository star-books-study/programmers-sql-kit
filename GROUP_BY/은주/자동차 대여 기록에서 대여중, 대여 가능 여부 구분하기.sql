SELECT
    CAR_ID,
    IF(CAR_ID IN (
        SELECT 
            CAR_ID
        FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
        WHERE START_DATE <= '2022-10-16' AND END_DATE >= '2022-10-16'
    ), '대여중', '대여 가능') AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 11분

✅ 리뷰
- 2022년 10월 16일에 대여중이려면 start_date, end_date 조건을 거꾸로 해줘야 함
# 2022/10/14 ~ 2022/10/17
# 2022/10/16 ~ 2022/10/18
# 2022/10/13 ~ 2022/10/16
# 2022/10/13 ~ 2022/10/15 < 해당 안됨

✅ 알아두기
*/
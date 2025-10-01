SELECT
    CAR_ID,
    CASE
        WHEN
            MAX(START_DATE <= '2022-10-16'
            AND
            END_DATE >= DATE '2022-10-16')
        THEN '대여중'
        ELSE '대여 가능'
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC

-- CASE WHEN ... THEN ... ELSE ... END 구문
-- 반납일 포함 조건을 BETWEEN으로 처리
-- GROUP BY를 쓰지 않으면 CAR_ID 기준으로 정렬이 되지 않음
-- 가장 최근 기록을 보여줘야 하므로 MAX를 써야 함
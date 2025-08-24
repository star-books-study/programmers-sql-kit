WITH RECURSIVE HOURS AS (
    SELECT 0 AS H
    UNION ALL
    SELECT H + 1 FROM HOURS WHERE H < 23
)
, COUNT_TABLE AS ( 
    SELECT
        HOUR(DATETIME) AS HOUR,
        COUNT(*) AS COUNT
    FROM ANIMAL_OUTS
    GROUP BY HOUR
    ORDER BY HOUR
)

SELECT 
    H.H AS HOUR,
    IFNULL(CT.COUNT, 0) AS COUNT
FROM HOURS H
LEFT JOIN COUNT_TABLE CT 
    ON H.H = CT.HOUR


/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 20분

✅ 리뷰
-

✅ 알아두기
- 재귀 CTE 를 활용하여 WITH RECURSIVE 문으로 0~23 까지의 숫자를 생성 
    - 반드시 UNION 사용해야한다.
    - 반드시 비반복문(Non-Recursive)도 최소한 1개 요구된다. 처음 한번만 실행
*/
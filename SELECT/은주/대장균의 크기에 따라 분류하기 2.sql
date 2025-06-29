WITH TEMP AS (SELECT 
    ROW_NUMBER() OVER (ORDER BY SIZE_OF_COLONY DESC) AS IDX, 
    ID, 
    SIZE_OF_COLONY
FROM ECOLI_DATA
ORDER BY SIZE_OF_COLONY DESC
) -- 1.

SELECT 
    ID, 
    CASE -- 2.
        WHEN IDX <= (SELECT COUNT(*) FROM TEMP)/4 * 1
            THEN 'CRITICAL'
        WHEN IDX <= (SELECT COUNT(*) FROM TEMP)/4 * 2
            THEN 'HIGH'
        WHEN IDX <= (SELECT COUNT(*) FROM TEMP)/4 * 3
            THEN 'MEDIUM'
        WHEN IDX <= (SELECT COUNT(*) FROM TEMP)/4 * 4
            THEN 'LOW'
    END AS COLONY_NAME
FROM TEMP
ORDER BY ID


/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 28분

✅ 리뷰
1. SIZE_OF_COLONY 내림차순 기준으로 정렬된 테이블의 순번을 행마다 구해서,
2. 행 번호 기준으로 1/4 에 해당하면 CRITICAL, 2/4 에 해당하면 HIGH.. 와 같이 표기하도록 함

✅ 알아두기
- 서브 쿼리 또는 임시테이블처럼 활용하기

WITH 이름 AS (
	SELECT ...
    FROM ...
    WHERE ...
)

- ROW_NUMBER() 함수 : 특정 정렬 기준에 따라 각 행에 고유한 순번 (인덱스) 를 부여
  ROW_NUMBER() OVER (ORDER BY ~)
  - OVER (ORDER BY SIZE_OF_COLONY DESC): SIZE_OF_COLONY 값을 기준으로 내림차순(DESC) 정렬한 후 그 순서대로 번호를 매김

- CASE WHEN THEN 문 기억하기
  CASE
    WHEN ~
        THEN a
    WHEN ~
        THEN b
    ELSE c
  END AS ...

** 또 다른 풀이
- NTILE(n) 함수 : 지정한 개수(n)만큼 그룹을 나누어 자동으로 구간을 나눠주는 함수

SELECT
    ID,
    CASE NTILE(4) OVER (ORDER BY SIZE_OF_COLONY DESC)
        WHEN 1 THEN 'CRITICAL'
        WHEN 2 THEN 'HIGH'
        WHEN 3 THEN 'MEDIUM'
        WHEN 4 THEN 'LOW'
    END AS COLONY_NAME
FROM ECOLI_DATA
ORDER BY ID;

*/


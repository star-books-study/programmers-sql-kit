SELECT
    ANIMAL_TYPE,
    IF(NAME IS NULL, 'No name', NAME),
    SEX_UPON_INTAKE
FROM ANIMAL_INS

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 2분

✅ 리뷰
-

✅ 알아두기
1. CASE 문으로도 풀 수 있음
SELECT
    ANIMAL_TYPE,
    CASE
        WHEN NAME IS NULL THEN 'No name' ELSE NAME
    END,
    SEX_UPON_INTAKE
FROM ANIMAL_INS

SELECT
    CASE
        WHEN(조건A) THEN A
        WHEN(조건B) THEN B
		ELSE C
END AS 원하는 컬럼명
FROM TABLE;
*/
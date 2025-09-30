SELECT
    ANIMAL_ID,
    NAME,
    IF(SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%', 'O', 'X') AS '중성화'
FROM ANIMAL_INS

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 2분

✅ 리뷰
- 

✅ 알아두기
- 
*/
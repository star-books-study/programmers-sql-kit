SELECT 
    NAME
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 1분

✅ 리뷰
-

✅ 알아두기
- 서브쿼리를 활용해서도 풀 수 있음
- SELECT NAME 
FROM ANIMAL_INS
WHERE DATETIME = (SELECT MIN(DATETIME) FROM ANIMAL_INS)
*/
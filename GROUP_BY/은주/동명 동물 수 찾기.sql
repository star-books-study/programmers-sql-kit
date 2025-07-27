SELECT
    NAME,
    COUNT(*)
FROM ANIMAL_INS
WHERE NAME IS NOT NULL 
GROUP BY NAME
HAVING COUNT(*) > 1
ORDER BY NAME

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 1분

✅ 리뷰
- 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회해야 함 
=> "해당 이름이 쓰인 횟수" 는 이미 GROUP BY 된 NAME 대상으로 조건을 걸어야 하므로 HAVING 절 사용

✅ 알아두기
-
*/
SELECT 
    CASE 
        WHEN (SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python') > 0) 
            AND (SKILL_CODE & (SELECT SUM(CODE) FROM SKILLCODES WHERE CATEGORY = 'Front End') > 0) -- 프론트엔드 스킬을 가지고 있는지 확인하려면, code 합산 값과 skillcode 를 비교해야 함
            THEN 'A'
        WHEN (SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#') > 0)
            THEN 'B'
        WHEN (SKILL_CODE & (SELECT SUM(CODE) FROM SKILLCODES WHERE CATEGORY = 'Front End') > 0)
            THEN 'C'
        ELSE NULL
    END AS GRADE,
    ID,
    EMAIL
FROM DEVELOPERS D
JOIN SKILLCODES S
    ON SKILL_CODE & CODE = CODE -- 해당 개발자가 CODE 에 맞는 기술을 보유했을 때에만 JOIN 이 성립하며 => 각 개발자가 가진 기술을 모두 가져올 수 있음
GROUP BY GRADE, EMAIL, ID
HAVING GRADE IS NOT NULL
ORDER BY GRADE, ID

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 30분 이상 고민하다가 포기. 이후에 6분만에 풀이 완료

✅ 리뷰
- 비트마스킹으로 조인할 생각을 못했음

✅ 알아두기
-
*/
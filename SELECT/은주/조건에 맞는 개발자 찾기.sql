-- 2:00~2:30 / 10:04~10:20
SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python')
    OR SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#')
ORDER BY ID

/* 
✅ 스스로 풀었는가?
✖️ 소요 시간 : 1시간

✅ 리뷰
- 

✅ 알아두기
- 
*/
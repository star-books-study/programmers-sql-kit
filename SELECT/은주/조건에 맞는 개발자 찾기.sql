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
❌ 소요 시간 : 1시간

✅ 리뷰
-  Python이나 C# 스킬을 가진 개발자의 정보를 조회하려면 SKILL_CODE 와 & 연산을 했을 때 1이 나와야 함

✅ 알아두기
- 
*/
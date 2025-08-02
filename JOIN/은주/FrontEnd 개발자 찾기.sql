SELECT
    ID,
    EMAIL,
    FIRST_NAME,
    LAST_NAME
FROM DEVELOPERS
WHERE (SELECT COUNT(*)
    FROM SKILLCODES
    WHERE SKILL_CODE & CODE = CODE
        AND CATEGORY = 'Front End') > 0
ORDER BY ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 15분

✅ 리뷰
- SKILL_CODE가 400 (=b'110010000')이라면, 이는 SKILLCODES 테이블에서 CODE가 256 (=b'100000000'), 128 (=b'10000000'), 16 (=b'10000') 에 해당하는 스킬을 가졌다는 것
    - SKILL_CODE 와 CODE 값에 & 연산을 했을 때 CODE 와 동일한 값이 나왔을 경우에는 해당 SKILL_CODE 에 CODE 값이 포함된 것으로 판단
- 그리고 위 조건 + 프론트엔드 스킬 여부 확인 시, 조회된 행이 1개 이상일 경우 프론트엔드 스킬을 가진 개발자이므로 WHERE 절에 조건을 넣음

✅ 알아두기
-
*/
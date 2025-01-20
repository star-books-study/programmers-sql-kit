SELECT
    PT_NAME,
    PT_NO,
    GEND_CD,
    AGE,
    IF(TLNO IS NULL, 'NONE', TLNO) AS TLNO
FROM PATIENT
WHERE AGE <= 12 
    AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 1분

✅ 리뷰
-

✅ 알아두기
-
*/
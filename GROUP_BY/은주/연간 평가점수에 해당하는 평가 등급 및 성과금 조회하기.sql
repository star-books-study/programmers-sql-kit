SELECT 
    HG.EMP_NO, 
    EMP_NAME, 
    CASE 
        WHEN AVG(SCORE) >= 96 
            THEN 'S'
        WHEN AVG(SCORE) >= 90
            THEN 'A'
        WHEN AVG(SCORE) >= 80 
            THEN 'B'
        ELSE 'C'
    END AS GRADE,
    CASE 
        WHEN AVG(SCORE) >= 96 
            THEN SAL * 0.2
        WHEN AVG(SCORE) >= 90
            THEN SAL * 0.15
        WHEN AVG(SCORE) >= 80 
            THEN SAL * 0.1
        ELSE SAL * 0
    END AS BONUS
FROM HR_GRADE HG
JOIN HR_EMPLOYEES HE
    ON HG.EMP_NO = HE.EMP_NO
GROUP BY EMP_NO
ORDER BY EMP_NO

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 11분

✅ 리뷰
-

✅ 알아두기
-
*/
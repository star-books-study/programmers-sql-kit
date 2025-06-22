SELECT
    COUNT(*) AS FISH_COUNT,
    FISH_NAME
FROM FISH_INFO FI
JOIN FISH_NAME_INFO FNI 
    ON FI.FISH_TYPE = FNI.FISH_TYPE
GROUP BY FISH_NAME
ORDER BY FISH_COUNT DESC

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 4분

✅ 리뷰
1. ROUND(숫자, 반올림할 자릿수) 
- 소수 둘째자리, 소수 셋째자리에서 반올림한다고 해서 2,3 으로 적었는데 1,2 로 했어야 함

2. 총 누계거리 기준으로 내림차순 정렬해달래서 TOTAL_DISTANCE 그대로 썼는데, 이렇게 하면 km 가 붙은 문자열 기준으로 정렬됨
-> 따라서 SUM 함수 다시 사용하여 숫자 기준으로 정렬하도록 수정

✅ 알아두기
-
*/
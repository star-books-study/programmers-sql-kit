SELECT
    COUNT(*) AS FISH_COUNT,
    MAX(FI.LENGTH) AS MAX_LENGTH,
    FI.FISH_TYPE
FROM (
    SELECT 
        ID,
        FISH_TYPE,
        IF(LENGTH IS NULL, 10, LENGTH) AS LENGTH
    FROM FISH_INFO
) AS FI
GROUP BY FISH_TYPE
HAVING AVG(LENGTH) >= 33
ORDER BY FISH_TYPE

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 6분

✅ 리뷰
- LENGTH <= 10일 경우 10으로 취급해서 평균 길이를 구해야했음. 
따라서 if 문으로 치환한 뒤 해당 SELECT 문으로부터 max, avg 를 구하도록 수정함

✅ 알아두기

SELECT
    COUNT(*) AS FISH_COUNT,
    MAX(FI.LENGTH) AS MAX_LENGTH,
    FI.FISH_TYPE
FROM FISH_INFO FI
GROUP BY FISH_TYPE
HAVING AVG(IFNULL(LENGTH, 10)) >= 33
ORDER BY FISH_TYPE

- AVG() 함수는 NULL 값을 자동으로 제외하고 평균을 계산
    - 즉, NULL 값은 계산에 포함되지 않음 
- 만약 NULL 값을 0으로 처리하여 평균을 구하고 싶다면, IFNULL() 함수를 함께 사용해야함
    - ex. SELECT AVG(IFNULL(salary, 0)) FROM employees; 
    
*/
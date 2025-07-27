SELECT
    CAR_TYPE,
    COUNT(CAR_ID) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%'
    OR OPTIONS LIKE '%열선시트%'
    OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE

/* 
✅ 스스로 풀었는가?
🔼 소요 시간 : 11분

✅ 리뷰
- 특정 문자열 포함되는 경우를 어떻게 해야할지 기억이 안나서 like 검색 찾아봄

✅ 알아두기
- 1. 복수개의 특정 문자를 포함하는 데이터를 검색하기 위해서 OR연산자를 사용해야한다
SELECT [필드명] 
FROM [테이블명] 
WHERE [필드명] LIKE '%특정 문자열%' 
    OR [필드명] LIKE '%특정문자열'

- 2. REGEXP 또는 RLIKE (MySQL 기준)
MySQL이라면 REGEXP 또는 RLIKE를 사용할 수 있어 훨씬 간결하게 표현 가능하다
-> 복수개의 특정 문자를 포함하는 데이터 검색 (특정 문자열을 '|' 를 기준으로 나눈다)
SELECT [필드명] 
FROM [테이블명] 
WHERE [필드명] REGEXP '특정 문자열|특정 문자열2'; 

SELECT
    CAR_TYPE,
    COUNT(CAR_ID) AS CARS
WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE 

*/
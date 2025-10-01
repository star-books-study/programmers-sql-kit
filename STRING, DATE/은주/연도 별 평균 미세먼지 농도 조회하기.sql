SELECT
    YEAR(YM) AS YEAR,
    ROUND(AVG(PM_VAL1), 2) AS 'PM10',
    ROUND(AVG(PM_VAL2), 2) AS 'PM2.5'
FROM AIR_POLLUTION
WHERE LOCATION2 = '수원'
GROUP BY YEAR(YM)
ORDER BY YEAR(YM)

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 문제 읽고 바로 풀었음

✅ 리뷰
- 

✅ 알아두기
- ROUND(숫자, 반올림할 자릿수)
 ex. 소수점 셋째 자리에서 반올림한다면 반올림할 자릿수는 2가 됨
*/
SELECT ROUND(AVG(IF(LENGTH IS NULL, 10, LENGTH)), 2) AS AVERAGE_LENGTH
FROM FISH_INFO

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 2분

✅ 리뷰
1. N번째 자리에서 반올림할 경우 ROUND(반올림할 값, N-1) 기억하자 !!!

✅ 알아두기
- 
*/
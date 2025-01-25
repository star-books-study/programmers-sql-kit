SELECT
    BOOK_ID,
    DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d')
FROM BOOK
WHERE YEAR(PUBLISHED_DATE) = '2021' 
    AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 5분

✅ 리뷰
1. DATE_FORMAT 인자가 기억이 안나서 DATE_FORMAT(PUBLISHED_DATE, 'yyMMdd') 이런식으로 넣다가.. % 이거 끼워넣어보다가 때려맞음.

✅ 알아두기
-
*/
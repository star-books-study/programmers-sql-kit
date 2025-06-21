SELECT CONCAT(MAX(LENGTH), 'cm') AS MAX_LENGTH
FROM FISH_INFO

/* 
✅ 스스로 풀었는가?
❌ 소요 시간 : 5분

✅ 리뷰
- 문자열 연결하는 함수 기억이 안나서 혼자 풀기 실패..

✅ 알아두기
- CONCAT 함수 :  둘 이상의 문자열을 입력한 순서대로 합쳐서 반환해주는 함수
- GROUP_CONCAT : 지정된 컬럼에서 NULL이 아닌 값을 합쳐 하나의 문자열로 가져오는 함수
*/
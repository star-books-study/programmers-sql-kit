SELECT
    ANIMAL_ID,
    NAME
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Dog'
AND NAME LIKE '%el%' 
ORDER BY NAME

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 문제 읽고 바로 풀었음

✅ 리뷰
- 

✅ 알아두기
- MySQL에서는 like로 검사시 대소문자 구분을 하지 않는다.

MySQL에서 대소문자 구분하는 방법
BINARY(NAME) like '%el%'
*/
SELECT 
    MEMBER_ID, 
    MEMBER_NAME, 
    GENDER,
    CONCAT(DATE_OF_BIRTH) AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE 1=1
    AND MONTH(DATE_OF_BIRTH) = 3
    AND GENDER = 'W'
    AND TLNO IS NOT NULL
ORDER BY MEMBER_ID

/*
✅ 스스로 풀었는가?
☑️ 소요 시간 : 10분

✅ 리뷰
1. is not null 을 != 요따구로 썼음
2. DATE_OF_BIRTH 에서 연월일만 뽑아내는 걸 어떻게 하는 지 몰라서 혹시 YEAR, MONTH, DAY 함수가 있나 해서 테스트해봤는데 있었음. 그거를 뽑아내고 '-' 로 이어서 문자열로 만들려고 했는데 문자열 잇는 방법을 모름. 그래서 혹시 CONCAT 이 있나 해봤는데 DATE_OF_BIRTH 만 넣어서 해보니까 연월일 형태로 나옴.

✅ 알아두기
1. 모범답안 : DATE_FORMAT(date_of_birth, '%Y-%m-%d') date_of_birth
DATE_FORMAT(날짜, 형식) : 날짜를 지정한 형식으로 출력

2. 문자열 잇기 
CONCAT(YEAR(DATE_OF_BIRTH), '-', MONTH(DATE_OF_BIRTH), '-', DAY(DATE_OF_BIRTH))

3. CONCAT(DATE 타입 변수) 를 넣었을 때 시간 정보 사라진 이유
CONCAT() 함수는 문자열 인자를 기대하기 때문에, DATE 타입의 값이 자동으로 문자열로 변환된다. 
이 과정에서 MySQL은 DATE 값을 'YYYY-MM-DD' 형식의 문자열로 변환
*/
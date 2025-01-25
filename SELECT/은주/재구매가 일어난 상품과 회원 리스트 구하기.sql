SELECT 
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID, PRODUCT_ID DESC

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 12분

✅ 리뷰
처음에는 USER_ID, PRODUCT_ID 만 그대로 출력해보았는데 중복된 행이 연달아서 나오는 것을 보고, 어떻게 중복된 행을 거를 수 있을까 고민
-> (USER_ID, PRODUCT_ID) 기준으로 묶으면 되지 않나 ?! 하고 GROUP BY 절이 떠오름. 
-> GROUP BY 절을 써도 (USER_ID, PRODUCT_ID) 기준으로 묶이기만 하고 그게 중복된 행인지 알수는 없음
-> 그러면 묶인 거 기준으로 동일한 데이터를 가진 행이 몇개인)지 세보면 되지 않나? 해서 COUNT(*) 를 SELECT 문에 찍어봄
-> (USER_ID, PRODUCT_ID) 기준으로 묶인 행이 몇개인지 COUNT(*) 로 계산되어 나옴
-> 근데 여기서 COUNT(*) 가 SELECT 문에 들어가면 안되고 조건문에 들어갔어야 함
-> WHERE 절에 넣었는데 에러가 나서 GROUP BY 에 대해 검색해보려다가 자동 검색어 추천에 HAVING 이 뜨는 걸 보고 HAVING 이 GROUP BY 뒤에 조건을 걸 수 있는게 아니었나? 하고 써봄
-> HAVING 절에 카운트 값이 1 이상 (즉, 중복 데이터가 존재하는 것) 인 걸로 걸러주어 풀었음

✅ 알아두기
- GROUP BY 명령어를 통해 특정 컬럼을 기준으로 그룹화 할 수 있다.
    - 하지만 GROUP BY 절을 통해 그룹화한 열이 반드시 SELECT 절 안에 포함되어 있어야 함
- GROUP BY 절에서 조건을 주려면 WHERE이 아닌, HAVING 절을 사용해야 한다

*/
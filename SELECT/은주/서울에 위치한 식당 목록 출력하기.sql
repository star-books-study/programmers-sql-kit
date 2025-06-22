SELECT
    DISTINCT REST.REST_ID,
    REST_NAME,
    FOOD_TYPE,
    FAVORITES,
    ADDRESS,
    (
        SELECT ROUND(AVG(REVIEW_SCORE), 2)
        FROM REST_REVIEW
        WHERE REST_REVIEW.REST_ID = REST.REST_ID
    ) AS SCORE
FROM REST_INFO AS REST
JOIN REST_REVIEW AS REVIEW
    ON REST.REST_ID = REVIEW.REST_ID
WHERE 1=1
    AND ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, FAVORITES DESC

/*
✅ 스스로 풀었는가?
🔼 소요 시간 : 27분

✅ 리뷰
1. '서울' 이 포함된 문자열을 어떻게 해야하는 지 몰라서 contains, in 이런거 다써보다가 결국 검색해봄. 검색하고보니 알던 거라 아쉽..  +) LEFT(I.ADDRESS,2) = '서울' 이렇게도 처리 가능.
2. 처음에 암 생각없이 아래처럼 짰는데 이렇게 짜면 AVG 를 계산할 때 각 식당별 리뷰 점수의 평균을 계산하는게 아니라, 전체 리뷰 평균을 계산하게 됨.

SELECT
    REST.REST_ID,
    REST_NAME,
    FOOD_TYPE,
    ADDRESS,
    ROUND(AVG(REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS REST
JOIN REST_REVIEW AS REVIEW
    ON REST.REST_ID = REVIEW.REST_ID
WHERE ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, FAVORITES DESC

따라서 식당별 리뷰 평균 점수 계산하려면 `GROUP BY REVIEW.REST_ID` 추가해주어야 함.
group by 를 생각도 안했던 터라 그냥 서브쿼리로 review 테이블에서 평균점수 계산한 거를 출력값에 넣어줌
이렇게 하면 REST_ID 에 여러 개의 리뷰가 있는 경우 행이 여러개 나오니까 DISTINCT 로 중복 제거해줌

✅ 알아두기
1. LIKE 검색
*/
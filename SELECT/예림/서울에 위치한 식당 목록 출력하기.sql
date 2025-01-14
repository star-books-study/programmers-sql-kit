SELECT 
    I.REST_ID,
    I.REST_NAME,
    I.FOOD_TYPE,
    I.FAVORITES,
    I.ADDRESS,
    ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS I 
    INNER JOIN REST_REVIEW AS R
    ON I.REST_ID = R.REST_ID
WHERE 1=1
    AND I.ADDRESS LIKE '서울%'
GROUP BY I.REST_ID
ORDER BY SCORE DESC, I.FAVORITES DESC

-- 포함되는 문자열 찾기 - LIKE 찾아봄
-- 삽질
    -- 정렬
        -- REST_REVIEW 테이블을 R1, R2로 해서 두 개 만들어서 ORDER BY 절에서 CASE WHEN 뒤에 AVG(R1.REVIEWSCORE) = AVG(R2.REVIEWSCORE)이면 FAVORITES 기준으로 정렬하는 식으로 작성했는데 문법 오류 발생 (당연)
        -- 그냥 SCORE DESC, I.FAVORITES DESC로 뒤에 붙여주면 되는 거였음
    -- GROUP BY 누락
    -- '%서울%' -> '서울%'로 하니까 성공
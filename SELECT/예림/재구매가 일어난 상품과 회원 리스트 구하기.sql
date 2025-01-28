SELECT
    USER_ID,
    PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) >= 2
ORDER BY USER_ID, PRODUCT_ID DESC

-- 처음에 똑같은 테이블 B로 지정해서 USER_ID, PROUCT_ID 같은 것들끼리 모아서 DISTINCT로 처리했는데 당연히 틀렸음. 그래서 풀이 보고 풀었다..
-- GROUP BY가 아직도 헷갈린다
    -- GROUP BY USER_ID, PRODUCT_ID는 USER_ID와 PRODUCT_ID의 조합을 기준으로 데이터를 그룹화한다. 즉, 같은 USER_ID와 PRODUCT_ID를 가진 레코드를 하나로 묶는다.
    -- HAVING COUNT(*) >= 2는 그룹화된 결과에서 카운트가 2 이상인 그룹만 필터링한다.
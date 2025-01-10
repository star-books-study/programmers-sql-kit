SELECT I.FLAVOR
FROM FIRST_HALF AS F
INNER JOIN ICECREAM_INFO AS I
ON I.FLAVOR = F.FLAVOR
WHERE I.INGREDIENT_TYPE = 'fruit_based' AND F.TOTAL_ORDER > 3000
ORDER BY F.TOTAL_ORDER DESC

-- 좀 복잡하게 푼 것 같지만... 어쨌든 성공!
-- INNER JOIN 절 위치 까먹어서 검색했다.
-- WHERE 절이랑 ON 절 차이점이 궁금해서 찾아봤는데
    -- on : join 전에 조건을 필터링
    -- where : join 후에 조건을 필터링
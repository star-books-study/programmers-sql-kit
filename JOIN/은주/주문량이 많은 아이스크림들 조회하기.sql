SELECT
    FH.FLAVOR
FROM FIRST_HALF FH
LEFT JOIN (
    SELECT 
        FLAVOR,
        SUM(TOTAL_ORDER) AS J_TOTAL_ORDER
    FROM JULY J
    GROUP BY FLAVOR
) AS J_TEMP
ON FH.FLAVOR = J_TEMP.FLAVOR
ORDER BY FH.TOTAL_ORDER + J_TEMP.J_TOTAL_ORDER DESC
LIMIT 3

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 8분

✅ 리뷰
- FIRST_HALF <> JULY 테이블을 조인했을 때 JULY 테이블에는 SHIPMENT_ID 에 매칭되지 않는 데이터들도 존재하고 있음.
- 따라서 FIRST_HALF 의 TOTAL_ORDER 와 (JULY 테이블의 TOTAL_ORDER SUM 값)을 더하기 위해서 서브 쿼리를 사용해서 조인함.

✅ 알아두기
-
*/
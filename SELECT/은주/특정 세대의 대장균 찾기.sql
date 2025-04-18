WITH SECOND AS (
    SELECT
        ORIGIN.ID AS ORIGIN_ID,
        ORIGIN.PARENT_ID AS PARENT_ID, -- 부모
        SELF.PARENT_ID AS GRANDPARENT_ID -- 부모의 부모
    FROM ECOLI_DATA ORIGIN 
    JOIN ECOLI_DATA SELF
    ON ORIGIN.PARENT_ID = SELF.ID
)

SELECT 
    DISTINCT SECOND.ORIGIN_ID AS ID
FROM SECOND SECOND
JOIN SECOND THIRD
ON SECOND.GRANDPARENT_ID = THIRD.PARENT_ID
WHERE THIRD.GRANDPARENT_ID IS NULL
ORDER BY ID;

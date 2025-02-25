SELECT ID, EMAIL, FIRST_NAME, LAST_NAME
FROM DEVELOPER_INFOS
WHERE 1=1
 AND SKILL_1 = 'Python'
 OR SKILL_2 = 'Python'
 OR SKILL_3 = 'Python'
ORDER BY ID

-- WHERE 'KeyWord' IN (Col1, Col2, Col3)을 쓰면 쿼리문을 더 간결히 쓸수 있다.
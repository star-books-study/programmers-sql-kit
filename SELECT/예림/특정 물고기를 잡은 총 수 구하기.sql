SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO AS I
INNER JOIN FISH_NAME_INFO AS N
ON I.FISH_TYPE = N.FISH_TYPE
WHERE N.FISH_NAME IN ('BASS', 'SNAPPER')
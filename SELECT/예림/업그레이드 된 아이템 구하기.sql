SELECT
    I.ITEM_ID,
    I.ITEM_NAME,
    I.RARITY
FROM ITEM_INFO AS I
INNER JOIN ITEM_TREE AS T
ON I.ITEM_ID = T.ITEM_ID
AND T.PARENT_ITEM_ID IN (SELECT ITEM_ID FROM ITEM_INFO WHERE RARITY = 'RARE')
ORDER BY I.ITEM_ID DESC


-- 오래 고민했지만 결국 답 보고 푼 문제
-- IN을 생각하지 못했음 / JOIN에 대한 이해도 아직 부족
-- IN을 사용하면 된다는 것을 알게 된 후에도 `I.ITEM_ID = T.ITEM_ID` 조건절을 빼고 써서 틀렸음! 주의하자
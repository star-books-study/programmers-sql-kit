SELECT 
    TREE.ITEM_ID,
    INFO.ITEM_NAME,
    INFO.RARITY
FROM ITEM_TREE TREE
JOIN ITEM_INFO INFO
    ON TREE.ITEM_ID = INFO.ITEM_ID
WHERE PARENT_ITEM_ID IN (
    SELECT
        ITEM_ID
    FROM ITEM_INFO
    WHERE RARITY = 'RARE'
)
ORDER BY ITEM_ID DESC

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 14분

✅ 리뷰
- 그냥 눈으로 풀려고 하다가 잘 이해가 안가서 아이패드에 적으면서 풀었음.
- 문제에서 요구하는 것들에 대해서 순차적으로 하나씩 살을 붙여가면서 쿼리를 각각 짜봄.

1. 아이템의 희귀도가 'RARE'인 아이템 ID
SELECT
    ITEM_ID
FROM ITEM_INFO
WHERE RARITY = 'RARE'

2. 아이템의 희귀도가 'RARE'인 아이템들의 모든 다음 업그레이드 아이템의 아이템 ID
- 다음 업그레이드 아이템은 ITEM_TREE 테이블에서 알 수 있으니까 WHERE 절에는 1번 쿼리를 사용
SELECT 
    ITEM_ID
FROM ITEM_TREE
WHERE PARENT_ITEM_ID IN (
    SELECT
        ITEM_ID
    FROM ITEM_INFO
    WHERE RARITY = 'RARE'
)

3. 아이템의 희귀도가 'RARE'인 아이템들의 모든 다음 업그레이드 아이템의 아이템 ID, 아이템 명, 아이템 희귀도
- 2번까지 되었으면 이제 ITEM_INFO 를 조인해주고 컬럼을 출력하면 됨
SELECT 
    TREE.ITEM_ID,
    INFO.ITEM_NAME,
    INFO.RARITY
FROM ITEM_TREE TREE
JOIN ITEM_INFO INFO
    ON TREE.ITEM_ID = INFO.ITEM_ID
WHERE PARENT_ITEM_ID IN (
    SELECT
        ITEM_ID
    FROM ITEM_INFO
    WHERE RARITY = 'RARE' 
)

✅ 알아두기
- 
*/
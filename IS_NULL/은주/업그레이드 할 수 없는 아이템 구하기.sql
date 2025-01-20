SELECT
    INFO.ITEM_ID,
    ITEM_NAME,
    RARITY
FROM ITEM_INFO INFO
WHERE 1=1
    AND INFO.ITEM_ID NOT IN (
        SELECT
            DISTINCT PARENT_ITEM_ID	
        FROM ITEM_TREE
        WHERE PARENT_ITEM_ID IS NOT NULL
    )
ORDER BY INFO.ITEM_ID DESC

SELECT
    INFO.ITEM_ID,
    ITEM_NAME,
    RARITY
FROM ITEM_INFO INFO
JOIN ITEM_TREE TREE ON INFO.ITEM_ID = TREE.ITEM_ID
WHERE 1=1
    AND INFO.ITEM_ID NOT IN (
        SELECT
            DISTINCT PARENT_ITEM_ID	
        FROM ITEM_TREE 
        WHERE 1=1
            AND PARENT_ITEM_ID IS NOT NULL
    )
    -- PARENT_ITEM_ID 에 있는 번호들의 ITEM_ID 는 출력 안되어야 함 (업그레이드 가능한 중간 지점 아이템이기 때문)
ORDER BY INFO.ITEM_ID DESC

-- 첫코드

SELECT
    INFO.ITEM_ID,
    ITEM_NAME,
    RARITY
FROM ITEM_INFO INFO
WHERE 1=1
    AND INFO.ITEM_ID NOT IN (
        SELECT
            DISTINCT PARENT_ITEM_ID	
        FROM ITEM_TREE
        WHERE PARENT_ITEM_ID IS NOT NULL
    )
    -- PARENT_ITEM_ID 에 있는 번호들의 ITEM_ID 는 출력 안되어야 함 (업그레이드 가능한 중간 지점 아이템이기 때문)
ORDER BY INFO.ITEM_ID DESC


/* 
🔼 스스로 풀었는가?
☑️ 소요 시간 : 30분

✅ 리뷰
1. 테스트케이스 6개 중 2개가 실패라고 떴는데 이유를 모르겠어서 다른 사람들 코드를 보다가 join 이 없길래 join 이 필요없나..? 하고 줄여봤더니 성공함


SELECT
    INFO.ITEM_ID,
    ITEM_NAME,
    RARITY
FROM ITEM_INFO INFO
JOIN ITEM_TREE TREE ON INFO.ITEM_ID = TREE.ITEM_ID
WHERE 1=1
    AND PARENT_ITEM_ID IS NOT NULL -- 루트 아이템은 업그레이드 가능하므로 루트 아이템 제거
    AND INFO.ITEM_ID NOT IN (
        SELECT
            DISTINCT TREE.PARENT_ITEM_ID	
        FROM ITEM_INFO INFO
        JOIN ITEM_TREE TREE ON INFO.ITEM_ID = TREE.ITEM_ID
        WHERE 1=1
            AND PARENT_ITEM_ID IS NOT NULL
    )
    -- PARENT_ITEM_ID 에 있는 번호들의 ITEM_ID 는 출력 안되어야 함 (업그레이드 가능한 중간 지점 아이템이기 때문)
ORDER BY INFO.ITEM_ID DESC


✅ 알아두기

*/
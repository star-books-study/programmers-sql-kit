SELECT
    ED1.ID,
    ED1.GENOTYPE,
    ED2.GENOTYPE AS PARENT_GENOTYPE
FROM ECOLI_DATA ED1
JOIN ECOLI_DATA ED2
    ON ED1.PARENT_ID = ED2.ID
WHERE ED1.GENOTYPE & ED2.GENOTYPE = ED2.GENOTYPE
ORDER BY ED1.ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 9분

✅ 리뷰
1. 부모 대장균 형질을 구하기 위해서 셀프 조인을 해서 parent_id 랑 id 가 동일한 것을 찾음
2. 부모 대장균 형질을 모두 보유하고 있는지 판별하려면, 부모 대장균 & 자식 대장균 = 부모 대장균 이어야 함

✅ 알아두기
-
*/
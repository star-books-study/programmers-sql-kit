SELECT 
    COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE GENOTYPE & 7 IN (5, 4, 1)

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 6분

✅ 리뷰
2번 형질 미보유 -> 2번째 자리가 무조건 0이어야 함.
1번 or 3번 형질 보유 -> 1 or 3번째 자리가 1이어야 함

N && 111 -> (101 or 100 or 1) 이어야 함

✅ 알아두기
- 
*/
SELECT FI.ID, FNI.FISH_NAME, FI.LENGTH
FROM FISH_INFO FI
LEFT JOIN FISH_NAME_INFO FNI ON FI.FISH_TYPE = FNI.FISH_TYPE
WHERE FI.LENGTH = (
        SELECT MAX(FI2.LENGTH)
        FROM FISH_INFO FI2
        GROUP BY FI2.FISH_TYPE
        HAVING FI2.FISH_TYPE = FI.FISH_TYPE
    )
ORDER BY FI.ID

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 27분

✅ 리뷰
- GROUP BY 를 활용해서 FISH_TYPE 마다 MAX 값을 구한다. 
- 이 때 HAVING 절을 활용해서 FI 테이블에서 조회한 ROW 와 FISH_TYPE 이 동일한지를 확인한다.
-> HAVING 절을 사용함으로써 현재 조회한 ROW 의 FISH_TYPE 에 대한 MAX LENGTH 를 구할 수 있다.
- 현재 조회한 ROW 의 LENGTH 와 MAX_LENGTH 가 동일할 경우 조회한다


✅ 알아두기
- 
*/
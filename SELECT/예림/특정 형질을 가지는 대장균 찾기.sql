SELECT COUNT(*) AS COUNT
FROM ECOLI_DATA
WHERE 1=1
    AND ((GENOTYPE & 1) = 1 OR (GENOTYPE & 4) = 4)
    AND (GENOTYPE & 2) = 0

-- 비트 연산을 이해하지 못해서 답을 찾아봤던 문제
-- 만약 1번 형질과 3번 형질을 갖고 있다면 0001 / 0100과 & 연산을 했을 때 그 값이 그대로 나온다
-- ex. 1111 & 0001 = 0001
-- 2번 형질을 갖고 있지 않다면 0이 나온다
-- ex. 0000 & 0010 = 0000
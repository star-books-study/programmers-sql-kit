SELECT
    TITLE,
    REPLY.BOARD_ID,
    REPLY_ID,
    REPLY.WRITER_ID,
    REPLY.CONTENTS,
    DATE_FORMAT(REPLY.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM USED_GOODS_BOARD BOARD
JOIN USED_GOODS_REPLY REPLY
    ON BOARD.BOARD_ID = REPLY.BOARD_ID
WHERE 1=1
    AND YEAR(BOARD.CREATED_DATE) = 2022
    AND MONTH(BOARD.CREATED_DATE) = 10
ORDER BY REPLY.CREATED_DATE, TITLE

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 10분

✅ 리뷰
1. 게시글 작성일이 2022-10 일인거에 조건을 걸었어야 했는데 댓글 작성일 기준으로 작성해서 몇번 틀림

✅ 알아두기
1. 2022년 11월 작성글인거를 알아내기 위해서 WHERE BOARD.CREATED_DATE LIKE '2022-10%' 로 해도 됨
 
*/
SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN ('CS','GS')
ORDER BY HIRE_YMD DESC, DR_NAME

/* 
✅ 스스로 풀었는가?
☑️ 소요 시간 : 4분

✅ 리뷰
1. '3월에 태어난 여성 회원 목록 출력하기' 에서 DATE_FORMAT 함수 썼던게 기억나서 사용해보았다. 다행히 떠올라서 쓸 수 있었고 뒤에 yyyymmdd 와 같은 형식은 대충 때려 맞춰보면서 넣었다

✅ 알아두기
- DATE_FORMAT 역할
| %Y | 4자리 년도 |
| %y | 2자리 년도 |
| %M | 긴 월(영문) |
| %b | 짧은 월(영문) |
| %W | 긴 요일 이름(영문) |
| %a | 짧은 요일 이름(영문) |
| %m | 숫자 월 (두자리) |
| %c | 숫자 월(한자리는 한자리) |
| %d | 일자 (두자리) |
| %e | 일자(한자리는 한자리) |
| %I | 시간 (12시간) |
| %H | 시간(24시간) |
| %i | 분 |
| %r | hh:mm:ss AM,PM |
| %T | hh:mm:SS |
| %S | 초 |

*/
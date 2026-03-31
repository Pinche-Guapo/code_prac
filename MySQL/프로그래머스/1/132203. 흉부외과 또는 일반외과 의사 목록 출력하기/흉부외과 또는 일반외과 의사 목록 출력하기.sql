-- 코드를 입력하세요
#SELECT dr_name, dr_id, mcdp_cd, TO_CHAR(HIRE_YMD, 'YYYY-MM-DD') as hire_ymd FROM doctor where mcdp_cd = "CS" or mcdp_cd ="GS" order by hire_ymd desc, dr_name asc;

SELECT DR_NAME, DR_ID, MCDP_CD, DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD IN ('CS', 'GS')
ORDER BY HIRE_YMD DESC, DR_NAME ASC;
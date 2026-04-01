-- 코드를 입력하세요
SELECT count(*) FROM user_info where age BETWEEN 20 and 29 and to_char(joined, 'YYYY') = '2021';
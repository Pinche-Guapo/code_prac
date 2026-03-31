-- 코드를 입력하세요
 SELECT book_id, to_char(PUBLISHED_DATE,'YYYY-MM-DD') FROM book WHERE to_char(published_date, 'YYYY') = '2021' and category = '인문' order by published_date asc;
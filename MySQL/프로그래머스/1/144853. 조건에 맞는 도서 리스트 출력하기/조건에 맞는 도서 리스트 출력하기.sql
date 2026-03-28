-- 코드를 입력하세요
# SELECT book_id, published_date FROM book WHERE published_date >= '2021-01-01' and published_date < '2022-01-01', category == "인문";
 SELECT book_id, DATE_FORMAT(PUBLISHED_DATE,'%Y-%m-%d') FROM book WHERE year(published_date) = 2021 and category = '인문' order by published_date asc;
#select * from book;
-- 코드를 입력하세요

-- SELECT animal_id, name, to_char(datetime, 'YYYY-MM-DD') from animal_ins order by name, datetime desc;
SELECT animal_id, name, datetime from animal_ins order by name asc, datetime desc;
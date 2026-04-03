-- 코드를 작성해주세요
SELECT 
    id, 
    (SELECT COUNT(id) FROM ecoli_data WHERE parent_id = ed.id) AS child_count 
FROM ecoli_data ed 
ORDER BY id;
# select * from ecoli_data;
# select id, (select count(id) from ecoli_data where id in (select parent_id from ecoli_data)) as child_count from ecoli_data ;
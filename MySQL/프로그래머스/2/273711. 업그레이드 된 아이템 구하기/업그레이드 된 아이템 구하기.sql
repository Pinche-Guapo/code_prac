-- 코드를 작성해주세요
# select a.item_id, a.item_name, a.rarity from item_info as a join item_tree as b where a.item_id = b.item_id and a.item_id <> 0 and b.parent_item_id is not null ORDER BY item_id desc;
#SELECT A.ITEM_ID, A.ITEM_NAME, A.RARITY FROM ITEM_INFO AS A LEFT JOIN ITEM_TREE AS B ON A.ITEM_ID = B.ITEM_ID WHERE PARENT_ITEM_ID IN (SELECT ITEM_ID FROM ITEM_INFO AS C WHERE RARITY = 'RARE') ORDER BY A.ITEM_ID DESC;
SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
WHERE ITEM_ID IN (
    SELECT A.ITEM_ID
    FROM ITEM_TREE AS A
    WHERE PARENT_ITEM_ID IN (
        SELECT ITEM_ID 
        FROM ITEM_INFO AS C
        WHERE RARITY = 'RARE'))
ORDER BY ITEM_ID DESC;
-- 코드를 입력하세요
SELECT f.flavor from first_half as f join icecream_info as i where f.flavor = i.flavor and i.ingredient_type = "fruit_based" and f.total_order > 3000;
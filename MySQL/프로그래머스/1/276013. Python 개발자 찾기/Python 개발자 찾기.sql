-- 코드를 작성해주세요
#select * from developer_infos;
SELECT ID, EMAIL, FIRST_NAME, LAST_NAME FROM DEVELOPER_INFOS WHERE SKILL_1 = 'Python' or SKILL_2 = 'Python' or SKILL_3 = 'Python' order by id asc;
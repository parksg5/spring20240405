USE w3schools;

CREATE TABLE my_table99
(
    col1 INT
);
# DROP TABLE : 테이블 삭제
# 매우 주의해서 실행해야 하는 쿼리
DROP TABLE my_table99;
SELECT *
FROM my_table99;

# table100 테이블 만들고, 테이블 삭제하기
CREATE TABLE table100
(
    name VARCHAR(10)
);
DROP TABLE table100;
SELECT *
FROM table100;
USE w3schools;

# IN 하나라도 같으면...
SELECT *
FROM Customers
WHERE Country = 'Germany'
   OR Country = 'UK';

SELECT *
FROM Customers
WHERE Country IN ('germany', 'uk');

SELECT *
FROM Customers
WHERE Country IN ('germany', 'uk', 'sweden', 'france');

# 2, 3, 6 번 카테고리에 있는 상품들 조회
SELECT *
FROM Products
WHERE ProductID IN (2, 3, 6);
# 브라질, 일본, 이탈리아에 있는 공급자(Suppliers) 조회
SELECT *
FROM Suppliers
WHERE Country IN ('brazil', 'japan', 'italy');
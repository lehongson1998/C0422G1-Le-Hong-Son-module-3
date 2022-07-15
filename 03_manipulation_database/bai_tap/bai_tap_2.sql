DROP DATABASE IF EXISTS QuanLyBanHang;
CREATE DATABASE QuanLyBanHang;
USE QuanLyBanHang;

CREATE TABLE Customer (
    cId INT AUTO_INCREMENT PRIMARY KEY,
    cName VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    CHECK (age > 0)
);

CREATE TABLE `Order` (
    oId INT AUTO_INCREMENT PRIMARY KEY,
    cId INT,
    oDate DATE NOT NULL,
    oTotalprice DOUBLE,
    FOREIGN KEY (cId)
        REFERENCES Customer (cId)
);

CREATE TABLE Product (
    pId INT AUTO_INCREMENT PRIMARY KEY,
    pName VARCHAR(45) NOT NULL,
    pPrice DOUBLE
);

CREATE TABLE OrderDetail (
    oId INT,
    pId INT,
    PRIMARY KEY (oId , pId),
    odQTY VARCHAR(50),
    FOREIGN KEY (oId)
        REFERENCES `order` (oId),
    FOREIGN KEY (pId)
        REFERENCES product (pId)
);

INSERT INTO customer(cName, age)
VALUES("Minh Quan",10),
	  ("Ngoc Oanh",20),
	  ("Hong Ha",50);
      
INSERT INTO `order`(cId, oDate, oTotalprice)
VALUES(1, '2006-03-21', NULL),
	  (2,'2006-3-23',NULL),
	  (1,'2006-3-16',NULL);
      
INSERT INTO product(pName, pPrice)
VALUES('May Giat', 3),
	  ('Tu Lanh', 5),
	  ('Dieu Hoa', 7),
	  ('Quat', 1),
	  ('Bep Dien', 2);
      
INSERT INTO orderdetail(oId, pId, odQTY)
VALUES(1, 1, 3),
	  (1, 3, 7),
      (1, 4, 2),
      (2, 1, 1),
      (3, 1, 8),
	  (2, 5, 4),
      (2, 3, 3);
    
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order    
SELECT 
    o.oId AS order_id,
    o.oDate AS order_date,
    p.pPrice AS product_price
FROM
    `order` o
        INNER JOIN
    product p ON o.oId = p.pId;
    
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.cName AS customer_name, p.pName AS product_name, ord.odQTY as so_luong
FROM
    customer c
        JOIN
    `order` o ON c.cId = o.cId
        JOIN
    orderdetail ord ON o.oId = ord.oId
        JOIN
    product p ON ord.pId = p.pId;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.cName AS customer_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.cId = o.cId
WHERE
    o.cId IS NULL;   
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn

SELECT 
    o.oId AS order_id,
    o.oDate AS order_date,
    ord.odQTY * p.pPrice AS total_price
FROM
    customer c
        JOIN
    `order` o ON c.cId = o.cId
        JOIN
    orderdetail ord ON o.oId = ord.oId
        JOIN
    product p ON ord.pId = p.pId
WHERE
    ord.odQTY * p.pPrice IS NOT NULL;








    
	





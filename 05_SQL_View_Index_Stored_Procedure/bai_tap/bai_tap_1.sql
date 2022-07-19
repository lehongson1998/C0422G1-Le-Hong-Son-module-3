DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;

USE demo;
CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    product_code INT NOT NULL,
    product_name VARCHAR(45),
    product_price DOUBLE,
    product_amount INT,
    product_description TEXT(150),
    product_status VARCHAR(45)
);

INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (1, 'Galaxy Note 10', 1000, 10, 'design by samsung', 'New 100%'),
	   (2, 'Nokia 1280', 50, 15, 'design by nokia', 'Like New'),
       (3, 'Iphone 11 Pro', 900, 5, 'design by apple', 'New 100%'),
       (4, 'Asus Zenbook UX481', 2000, 100, 'design by asus', 'New 100%');
INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (5, 'Galaxy Note 8', 1000, 10, 'design by samsung', 'New 100%'),
	   (6, 'Nokia lumia 520', 500, 15, 'design by nokia', 'Like New'),
       (7, 'Iphone 11 Pro max', 900, 5, 'design by apple', 'New 100%'),
       (8, 'Asus Zenbook UX482', 2000, 100, 'design by asus', 'New 100%');
INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (9, 'Galaxy Note 9', 700, 10, 'design by samsung', 'New 100%'),
	   (10, 'Nokia N95', 50, 15, 'design by nokia', 'Like New'),
       (11, 'Iphone 12 Pro', 900, 5, 'design by apple', 'New 100%'),
       (12, 'Asus Zenbook UX581', 2000, 100, 'design by asus', 'New 100%');
INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (13, 'Galaxy Note 20', 1000, 10, 'design by samsung', 'New 100%'),
	   (14, 'Nokia N90', 50, 15, 'design by nokia', 'Like New'),
       (15, 'Iphone 12 Pro max', 900, 5, 'design by apple', 'New 100%'),
       (16, 'Asus Zenbook UX582', 2000, 100, 'design by asus', 'New 100%');
INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
VALUES (17, 'Galaxy S20', 1000, 10, 'design by samsung', 'New 100%'),
	   (18, 'Nokia lumia 525', 50, 15, 'design by nokia', 'Like New'),
       (19, 'Iphone 13 Pro', 900, 5, 'design by apple', 'New 100%'),
       (20, 'Asus Zenbook pro duo', 2000, 100, 'design by asus', 'New 100%');
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

CREATE UNIQUE INDEX i_product_code
ON products(product_code);

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

CREATE INDEX compsite_indexs
ON products(product_name, product_price);

-- Sử dụng câU lệnh EXPLAIN Để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT 
	*
FROM products where product_code = 2;

-- SO SÁnH CÂU truY VẤN trước và sAU KHi tạo index
-- trước khi tạo index:
DROP INDEX i_product_code ON products;
EXPLAIN SELECT 
	*
FROM products where product_code = 20;
-- sau khi tạo index

CREATE UNIQUE INDEX i_product_code
ON products(product_code);

CREATE INDEX compsite_indexs
ON products(product_name, product_price);

EXPLAIN SELECT 
	*
FROM products where product_code = 20;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW new_table_products AS
    SELECT 
        p.product_code,
        p.product_name,
        p.product_price,
        p.product_status
    FROM
        products p
        WITH CHECK OPTION;
        
SELECT 
    *
FROM
    new_table_products;
    
-- Tiến hành sửa đổi view
INSERT INTO new_table_products(product_code, product_name, product_price, product_status)
VALUES(21, 'Xiaomi redmi note 4', 200, 'New 100%'),
      (22, 'Xiaomi Mi11 ultra', 600, 'New 100%'),
      (23, 'Xiaomi Mi10', 300, 'Like New');
      
-- Tiến hành xoá view
DROP VIEW new_table_products;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

DELIMITER //
CREATE PROCEDURE display_all_product()
BEGIN
	SELECT *
    FROM products;
END //
DELIMITER ;

CALL display_all_product();

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER //
CREATE PROCEDURE add_product(p_code int, p_name varchar(45), p_price double, p_amout int, p_description TEXT(150), p_status VARCHAR(45))
BEGIN 
	INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
    VALUES (p_code, p_name, p_price, p_amout, p_description, p_status);
END //
DELIMITER ;

CALL add_product(24, 'Lenovo Idepad slim 5', 1200, 1, 'design by lenovo', 'New 100%');

-- Tạo store procedure sửa thông tin sản phẩm theo id

DELIMITER //
CREATE PROCEDURE edit_product_by_ID( id int, p_code int, p_name varchar(45), p_price double, p_amount int, p_description TEXT(150), p_status VARCHAR(45))
BEGIN
	SET sql_safe_updates = 0;
	UPDATE products 
		   SET product_code =  p_code,
		       product_name = p_name,
               product_price = p_price,
               product_amount = p_amount,
               product_description = p_description,
               product_status = p_status
	WHERE 
		id = products.id;
	SET sql_safe_updates = 1;
END //
DELIMITER ;

CALL edit_product_by_ID('24', '26', 'Lenovo Idepad slim 3', '1100', '2', 'design by lenovo', 'Like New');

-- Tạo store procedure xoá sản phẩm theo id

DELIMITER //
CREATE PROCEDURE delete_product_by_ID( id int)
BEGIN
	DELETE FROM products
	WHERE 
		id = products.id;
END //
DELIMITER ;

CALL delete_product_by_ID(24);












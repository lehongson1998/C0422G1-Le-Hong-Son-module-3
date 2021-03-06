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
-- T???o Unique Index tr??n b???ng Products (s??? d???ng c???t productCode ????? t???o ch??? m???c)

CREATE UNIQUE INDEX i_product_code
ON products(product_code);

-- T???o Composite Index tr??n b???ng Products (s??? d???ng 2 c???t productName v?? productPrice)

CREATE INDEX compsite_indexs
ON products(product_name, product_price);

-- S??? d???ng c??U l???nh EXPLAIN ????? bi???t ???????c c??u l???nh SQL c???a b???n th???c thi nh?? n??o
EXPLAIN SELECT 
	*
FROM products where product_code = 2;

-- SO S??nH C??U truY V???N tr?????c v?? sAU KHi t???o index
-- tr?????c khi t???o index:
DROP INDEX i_product_code ON products;
EXPLAIN SELECT 
	*
FROM products where product_code = 20;
-- sau khi t???o index

CREATE UNIQUE INDEX i_product_code
ON products(product_code);

CREATE INDEX compsite_indexs
ON products(product_name, product_price);

EXPLAIN SELECT 
	*
FROM products where product_code = 20;

-- T???o view l???y v??? c??c th??ng tin: productCode, productName, productPrice, productStatus t??? b???ng products.
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
    
-- Ti???n h??nh s???a ?????i view
INSERT INTO new_table_products(product_code, product_name, product_price, product_status)
VALUES(21, 'Xiaomi redmi note 4', 200, 'New 100%'),
      (22, 'Xiaomi Mi11 ultra', 600, 'New 100%'),
      (23, 'Xiaomi Mi10', 300, 'Like New');
      
-- Ti???n h??nh xo?? view
DROP VIEW new_table_products;

-- T???o store procedure l???y t???t c??? th??ng tin c???a t???t c??? c??c s???n ph???m trong b???ng product

DELIMITER //
CREATE PROCEDURE display_all_product()
BEGIN
	SELECT *
    FROM products;
END //
DELIMITER ;

CALL display_all_product();

-- T???o store procedure th??m m???t s???n ph???m m???i
DELIMITER //
CREATE PROCEDURE add_product(p_code int, p_name varchar(45), p_price double, p_amout int, p_description TEXT(150), p_status VARCHAR(45))
BEGIN 
	INSERT INTO products(product_code, product_name, product_price, product_amount, product_description, product_status)
    VALUES (p_code, p_name, p_price, p_amout, p_description, p_status);
END //
DELIMITER ;

CALL add_product(24, 'Lenovo Idepad slim 5', 1200, 1, 'design by lenovo', 'New 100%');

-- T???o store procedure s???a th??ng tin s???n ph???m theo id

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

-- T???o store procedure xo?? s???n ph???m theo id

DELIMITER //
CREATE PROCEDURE delete_product_by_ID( id int)
BEGIN
	DELETE FROM products
	WHERE 
		id = products.id;
END //
DELIMITER ;

CALL delete_product_by_ID(24);












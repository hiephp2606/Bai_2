-- Tạo bảng Product
CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255),
    price DOUBLE,
    quantity INT
);

-- Thêm 10 sản phẩm vào bảng Product
INSERT INTO Product (product_name, price, quantity)
VALUES
('Product A', 50, 100),
('Product B', 60, 200),
('Product C', 70, 300),
('Product D', 80, 400),
('Product E', 90, 500),
('Product F', 100, 600),
('Product G', 110, 700),
('Product H', 120, 800),
('Product I', 130, 900),
('Product J', 140, 1000);

-- Thêm cột 'description' vào bảng Product
ALTER TABLE Product ADD COLUMN description VARCHAR(255);

-- Cập nhật giá sản phẩm có product_id là 1 thành 99
UPDATE Product SET price = 99 WHERE product_id = 1;

-- Tăng giá sản phẩm có product_id là 2 lên 10%
UPDATE Product SET price = price * 1.1 WHERE product_id = 2;
USE person;

-- Cập nhật tên của người có id là 10 thành 'John Doe'
UPDATE Person SET fullname = 'John Doe' WHERE id = 10;

-- Đổi quốc gia của người có id là 3 thành 'Canada'
UPDATE Person SET country = 'Canada' WHERE id = 3;

-- Sửa ngày sinh và quốc gia của người có id là 7
UPDATE Person
SET birthday = '1990-05-15', country = 'Vietnam'
WHERE id = 7;

-- Tăng lương của người có id là 40 lên 10%
UPDATE Person SET salary = salary * 1.1 WHERE id = 40;

-- Giảm lương của những người có mức lương trên 6000 xuống 15%
UPDATE Person SET salary = salary * 0.85 WHERE salary > 6000;
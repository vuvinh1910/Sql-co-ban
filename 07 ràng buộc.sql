CREATE TABLE levinh.my_table (
  id int NOT NULL, -- đảm bảo không nhận giá trị null
  id2 int CHECK (id2 >= 18),  -- đảm bảo giá trị trong cột thỏa mãn tính chất cụ thể
  id3 varchar(255) DEFAULT 'Hanoi'  -- trả về giá trị default = 0 nếu trong cột không có giá trị chỉ định
);
-- thêm ràng buộc bằng 2 cách:
ALTER TABLE my_table
MODIFY id   varchar(255) PRIMARY KEY;  -- id từ int thêm ràng buộc primary key
-- hoặc:
ALTER TABLE my_table
ADD UNIQUE (id); -- cách này thì không sửa được kiểu dữ liệu của id  

-- xóa khóa chính:
ALTER TABLE my_table:
DROP PRIMARY key;


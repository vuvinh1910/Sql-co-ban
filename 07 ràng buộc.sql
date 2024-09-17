CREATE TABLE database.my_table (
  id int NOT NULL; -- đảm bảo không nhận giá trị null
  id2 int CHECK;  -- đảm bảo giá trị trong cột thỏa mãn tính chất cụ thể
  id3 int DEFAULT;  -- trả về giá trị default nếu trong cột không có giá trị chỉ định
)
-- thay đổi ràng buộc bằng cách:
ALTER TABLE my_table
MODIFY id   int PRIMARY KEY;  -- chuyển id từ NOT NULL thành khóa chính

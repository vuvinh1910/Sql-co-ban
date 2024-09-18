-- Lệnh UPDATE trong SQL được sử dụng để cập nhật dữ liệu trong bảng:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
-- table_name: Tên của bảng mà bạn muốn cập nhật dữ liệu.
-- column1, column2, ...`: Các cột bạn muốn cập nhật.
-- value1, value2, ...`: Các giá trị mới mà bạn muốn cập nhật cho các cột tương ứng.
-- WHERE condition: Điều kiện để chỉ định những bản ghi cần được cập nhật. Nếu không có mệnh đề WHERE, tất cả các bản ghi trong bảng sẽ bị cập nhật.

-- Lệnh này sẽ thay đổi họ của sinh viên thành "Tran" và tuổi thành 22 cho sinh viên có id = 1.
UPDATE SinhVien
SET ho = 'Tran', tuoi = 22
WHERE id = 1;


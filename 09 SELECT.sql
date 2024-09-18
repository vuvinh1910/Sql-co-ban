-- Để lấy tất cả các cột từ một bảng, bạn có thể sử dụng ký tự *:
SELECT * FROM table_name;
-- lấy nhiều cột:
SELECT ho, ten, tuoi FROM SinhVien;

-- sử dụng where để lọc các điều kiện:
SELECT * FROM SinhVien
WHERE tuoi > 20;

-- sắp xếp theo tuổi giảm dần:
SELECT * FROM SinhVien
ORDER BY tuoi DESC;
-- sắp xếp theo thứ tự tăng dần:
SELECT * FROM SinhVien
ORDER BY tuoi ASC;

-- giới hạn số lần:
SELECT * FROM SinhVien
ORDER BY tuoi DESC
LIMIT 5; -- Lệnh này sẽ trả về 5 sinh viên có tuổi lớn nhất.

-- Bạn có thể sử dụng DISTINCT để loại bỏ các bản ghi trùng lặp:
SELECT DISTINCT ten_lop
FROM LopHoc;





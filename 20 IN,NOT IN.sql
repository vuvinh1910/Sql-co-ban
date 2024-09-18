-- cú pháp:
SELECT column1, column2, ...
FROM table_name
WHERE column_name IN (value1, value2, ...);
-- column_name: Tên cột mà bạn ktra.
-- value1, value2, ...: Danh sách các giá trị mà bạn muốn kiểm tra.

-- vd:
-- Tìm tất cả các sinh viên có id là 1, 2 hoặc 3:
SELECT * FROM SinhVien
WHERE id IN (1, 2, 3);
-- Tìm tất cả các sinh viên có ho là "Nguyen" hoặc "Tran":
SELECT * FROM SinhVien
WHERE ho IN ('Nguyen', 'Tran');

-- NOT IN:
-- Tìm tất cả các sinh viên có id không nằm trong danh sách 1, 2 hoặc 3:
SELECT * FROM SinhVien
WHERE id NOT IN (1, 2, 3);


-- kết hợp với dữ liệu từ bảng khác:
-- Lọc sinh viên có id nằm trong danh sách id của sinh viên đã đăng ký môn học Math từ bảng CourseRegistrations:
SELECT * FROM SinhVien
WHERE id IN (SELECT student_id FROM CourseRegistrations WHERE course_name = 'Math');

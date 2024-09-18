SELECT COUNT(column_name) AS count_value ---- column_name: Tên cột mà bạn muốn đếm số lượng giá trị không NULL. Nếu bạn muốn đếm tất cả các bản ghi, sử dụng COUNT(*).
FROM table_name
WHERE condition;

-- Lệnh này sẽ đếm số bản ghi chứa sinh  có tuổi lớn hơn 22.
SELECT COUNT(*) AS number_of_students
FROM SinhVien
WHERE tuoi > 22;
-- Lệnh này sẽ đếm số sinh viên có tuổi lớn hơn 1.
SELECT COUNT(tuoi) AS count_age
FROM SinhVien
WHERE tuoi>1;

-- SUM:
SELECT SUM(tuoi) AS total_age
FROM SinhVien
WHERE tuoi > 22;
-- Lệnh này sẽ tính tổng tuổi của các sinh viên có tuổi lớn hơn 22.


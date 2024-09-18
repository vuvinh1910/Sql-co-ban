-- cú pháp:
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
--column_name: Tên cột mà bạn muốn tìm kiếm.
-- pattern: Mẫu tìm kiếm sử dụng các ký tự đại diện.

-- Tìm tất cả các sinh viên có tên bắt đầu bằng "Nguyen":
SELECT * FROM SinhVien
WHERE ten LIKE 'Nguyen%';

-- Tìm tất cả các sinh viên có tên kết thúc bằng "A":
SELECT * FROM SinhVien
WHERE ten LIKE '%A';

-- Tìm tất cả các sinh viên có tên chứa "Van":
SELECT * FROM SinhVien
WHERE ten LIKE '%Van%';

-- tìm tất cả các sinh viên có tên gồm đúng 4 ký tự, với ký tự đầu tiên là "A" và ký tự thứ ba là "C":
SELECT * FROM SinhVien
WHERE ten LIKE 'A_C_';

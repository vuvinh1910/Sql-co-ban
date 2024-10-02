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

-- Tìm tất cả các sinh viên có tên chứa "Van" kể cả ở đầu và cuối:
SELECT * FROM SinhVien
WHERE ten LIKE '%Van%';

-- tìm tất cả các sinh viên có tên gồm đúng 4 ký tự, với ký tự đầu tiên là "A" và ký tự thứ ba là "C":
SELECT * FROM SinhVien
WHERE ten LIKE 'A_C_';

-- tìm tất cả sinh viên có chữ cái r ở vị trí thứ 2:
SELECT * FROM SinhVien
WHERE ten LIKE '_r%';

-- Trả lại tất cả khách hàng bắt đầu bằng "b" và kết thúc bằng "s":
SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';

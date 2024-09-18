-- các toán tử AND, OR, và NOT được sử dụng để kết hợp hoặc phủ định các điều kiện trong câu lệnh truy vấn (WHERE), giúp bạn lọc dữ liệu

-- Truy vấn để lấy các sinh viên có tuổi lớn hơn 18 và họ là "Nguyen":
SELECT * FROM SinhVien
WHERE tuoi > 18 AND ho = 'Nguyen';

-- Truy vấn để lấy các sinh viên có tuổi lớn hơn 18 hoặc có họ là "Nguyen":
SELECT * FROM SinhVien
WHERE tuoi > 18 OR ho = 'Nguyen';

-- Truy vấn để lấy các sinh viên mà không có họ là "Nguyen":
SELECT * FROM SinhVien
WHERE NOT ho = 'Nguyen';

-- Truy vấn để lấy các sinh viên có tuổi lớn hơn 18 và họ là "Nguyen", nhưng không có tên là "Van A":
SELECT * FROM SinhVien
WHERE tuoi > 18 AND ho = 'Nguyen' AND NOT ten = 'Van A';

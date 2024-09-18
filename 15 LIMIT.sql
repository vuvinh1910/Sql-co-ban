-- giới hạn số lần:
SELECT * FROM SinhVien
ORDER BY tuoi DESC
LIMIT 5; -- Lệnh này sẽ trả về 5 sinh viên có tuổi lớn nhất.

-- Sử dụng LIMIT với OFFSET:
SELECT * FROM SinhVien
LIMIT 5, 3;  -- Lệnh này sẽ bỏ qua 5 bản ghi đầu tiên và trả về 3 bản ghi tiếp theo

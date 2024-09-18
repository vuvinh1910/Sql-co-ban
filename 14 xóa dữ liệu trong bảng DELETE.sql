DELETE FROM table_name
WHERE condition;
-- table_name: Tên của bảng từ đó bạn muốn xóa dữ liệu.
-- WHERE condition: Điều kiện để xác định các bản ghi cần xóa. Nếu bạn không sử dụng mệnh đề WHERE, tất cả các bản ghi trong bảng sẽ bị xóa.

DELETE FROM SinhVien
WHERE tuoi > 22;
--  Lệnh này sẽ xóa tất cả các sinh viên có tuổi lớn hơn 22 khỏi bảng.

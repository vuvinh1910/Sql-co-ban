DROP TABLE yourtable_name; -- xóa bảng của bạn
TRUNCATE TABLE yourtable_name; -- xóa tất cả dữ liệu trong bảng mà không xóa bảng (biến thành bảng trống).  

-- cách thêm cột vào bảng:
ALTER TABLE ten_bang
ADD COLUMN ten_cot   kieu_du_lieu;
--vd:
ALTER TABLE SinhVien
ADD COLUMN dia_chi VARCHAR(100);
-- vd2:
ALTER TABLE SinhVien
ADD COLUMN gioi_tinh VARCHAR(10) DEFAULT 'Nam'; --Nếu bạn muốn thêm cột gioi_tinh với giá trị mặc định là 'Nam'

-- xóa cột trong bảng:
ALTER TABLE ten_bang
DROP COLUMN ten_cot;

-- cú pháp:
SELECT column1, column2, ...
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

--vd:
  -- Tìm tất cả các sinh viên có tuổi từ 18 đến 22:
  SELECT * FROM SinhVien
  WHERE tuoi BETWEEN 18 AND 22;
  
  -- Tìm tất cả các đơn hàng được đặt từ ngày 01/01/2023 đến ngày 31/12/2023:
  SELECT * FROM DonHang
  WHERE ngay_dat BETWEEN '2023-01-01' AND '2023-12-31';
  
  --Tìm tất cả các sản phẩm có tên nằm giữa "A" và "M" (theo thứ tự từ điển):
  SELECT * FROM SanPham
  WHERE ten BETWEEN 'A' AND 'M';

  -- Tìm tất cả các sinh viên có tuổi nằm trong khoảng từ 18 đến 25 và có điểm trung bình lớn hơn 7:
  SELECT * FROM SinhVien
  WHERE tuoi BETWEEN 18 AND 25
  AND diem_trung_binh > 7;


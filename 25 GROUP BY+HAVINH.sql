SELECT column1, column2, aggregate_function(column3)
FROM table_name
WHERE condition
GROUP BY column1, column2
ORDER BY column1, column2;
-- aggregate_function là một hàm tổng hợp như COUNT(), SUM(), AVG(), MIN(), MAX().
-- column1, column2 là các cột mà bạn muốn nhóm dữ liệu lại.

-- vd:
  -- NHÓM TUỔI TRUNG BÌNH THEO LỚP:
  SELECT id_lop, AVG(tuoi)
  FROM SinhVien
  GROUP BY id_lop;
  -- Kết quả:
  id_lop	average_age
  101	      20.33
  102	      22
  103	      23

  -- NHÓM SỐ LƯỢNG SINH VIÊN THEO LỚP:
  SELECT id_lop, COUNT(*) 
  FROM SinhVien
  GROUP BY id_lop;
  -- Kết quả:
  id_lop	so_sinh_vien
  101	      3
  102	      1
  103	      1


-- GROUP BY + HAVINH:
-- HAVING được sử dụng để lọc các nhóm sau khi áp dụng GROUP BY, giống như WHERE nhưng dành cho nhóm.
-- PHÂN BIỆT WHERE VỚI HAVINH:
  -- WHERE: Dùng để lọc dữ liệu trước khi thực hiện các phép tính tổng hợp hoặc nhóm dữ liệu.
  -- HAVINH: Dùng để lọc các nhóm dữ liệu sau khi đã thực hiện nhóm (GROUP BY) và tính toán các hàm tổng hợp.
SELECT id_lop, COUNT(id) AS so_sinh_vien
FROM SinhVien
WHERE tuoi > 20  -- CHỈ ĐẾM SỐ SINH VIÊN TRÊN 20 TUỔI
GROUP BY id_lop
HAVING COUNT(id) > 2;   -- SAU KHI TỔNG HỢP GIỮ LẠI CÁC LỚP CÓ SỐ LƯỢNG SINH VIÊN TRÊN 20 TUỔI LỚN HƠN 2


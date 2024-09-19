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

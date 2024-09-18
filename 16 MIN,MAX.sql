-- cú pháp:
SELECT MIN(column_name) AS min_value  -- min_value là tên biến mình tự đặt, giống như int min_value = MAX(...);
FROM table_name
WHERE condition;

-- vd MIN:
SELECT MIN(tuoi) AS min_age
FROM SinhVien;
-- vd MAX:
SELECT MAX(tuoi) AS max_age
FROM SinhVien;

-- Sử dụng với điều kiện (WHERE):
--  Lệnh này sẽ trả về tuổi nhỏ nhất và lớn nhất của các sinh viên có họ là "Nguyen".
SELECT MIN(tuoi) AS min_age, MAX(tuoi) AS max_age
FROM SinhVien
WHERE ho = 'Nguyen';



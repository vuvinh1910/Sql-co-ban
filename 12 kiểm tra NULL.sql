-- Để kiểm tra các giá trị NULL trong SQL, bạn có thể sử dụng mệnh đề IS NULL hoặc IS NOT NULL trong câu lệnh WHERE. Cụ thể:
SELECT * FROM SinhVien
WHERE tuoi IS NULL;

-- kiểm tra xem không chứa null:
SELECT * FROM table_name
WHERE column_name IS NOT NULL;

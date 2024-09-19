-- hiển thị ra colum1 và các result được biểu diễn trong cột alias_name
SELECT column1,
       CASE
           WHEN condition1 THEN result1
           WHEN condition2 THEN result2
           ELSE result_default
       END AS alias_name  -- đây là tên cột hiển thị mình tự đặt
FROM table_name;  -- table chứa column trong select


-- case dùng để cập nhật kết quả học lực sinh viên:
UPDATE SinhVien
SET trang_thai = CASE
                    WHEN diem >= 90 THEN 'Xuất sắc'
                    WHEN diem >= 80 THEN 'Giỏi'
                    WHEN diem >= 70 THEN 'Khá'
                    ELSE 'Trung bình'
                  END;

-- case với order by kết hợp sắp xếp:
SELECT NAME,ID,AGE FROM SINHVIEN
ORDER BY (
    CASE
      WHEN AGE>10 THEN AGE ASC  -- NẾU SINH VIÊN > 10 TUỔI THÌ SX THEO TUỔI TĂNG
      ELSE ID DESC              -- NẾU <= 10 TUỔI THÌ SX THEO ID GIẢM  
    END 
);


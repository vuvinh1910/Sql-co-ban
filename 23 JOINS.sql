-- INNER JOIN: trả về giao của 2 bảng:
SELECT SinhVien.ho, SinhVien.ten, LopHoc.ten_lop -- chọn cột muốn hiển thị ở các bảng, định vị bằng dấu chấm .  
FROM SinhVien    -- xét SinhVien tham gia vào bảng lớp học  
INNER JOIN LopHoc
ON SinhVien.id_lop = LopHoc.id_lop;  -- hiển thị những cột đã chọn sao cho trong SinhVien có giá trị trong cột id_lop = giá trị trong cột id_lop trong bảng LopHoc  

-- LEFT JOIN: -- TRẢ VỀ TẤT CẢ DANH SÁCH TRONG BẢNG 1 CÒN TRONG BẢNG 2 NẾU KHÔNG ĐÁP ỨNG ĐỦ ĐIỀU KIỆN SAU CÂU LỆNH ON THÌ TRẢ VỀ NULL:
SELECT table1.column1, table2.column2
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
-- RIGHT JOIN TƯƠNG TỰ TRẢ VỀ TẤT CẢ BẢNG 2 CÒN Ở BẢNG 1 KHÔNG ĐÁP ỨNG ĐC THÌ TRẢ VỀ NULL

-- CROSS JOIN: Trả về tích Descartes của hai bảng, nghĩa là tất cả các kết hợp có thể giữa các bản ghi từ hai bảng.
SELECT table1.column1, table2.column2
FROM table1
CROSS JOIN table2;

-- SELF JOIN: Là một dạng đặc biệt của JOIN, trong đó một bảng tự kết hợp với chính nó.
SELECT n1.ten AS ten_nhan_vien, n2.ten AS ten_quan_ly
FROM NhanVien n1
LEFT JOIN NhanVien n2
ON n1.id_nguoi_quan_ly = n2.id;
- HOẶC:
-- chọn ngưởi trong bảng nhân viên khác họ tên và sống cùng thành phố  
FROM NhanVien A, NhanVien B
WHERE A.ho_ten <> B.ho_ten
AND A.City = B.City;

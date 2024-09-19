SELECT * FROM SinhVien
WHERE tuoi > ANY (
    SELECT tuoi
    FROM SinhVien
    WHERE id_lop = 101  -- ví dụ trả về 2,3,4 thì sẽ in ra sinh viên lớn hơn 2  
);

SELECT * FROM SinhVien
WHERE tuoi > ALL (
    SELECT tuoi
    FROM SinhVien
    WHERE id_lop = 101  -- ví dụ trả về 2,3,4 thì in ra sinh viên có tuổi > 4  
);

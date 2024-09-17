ALTER TABLE ten_bang
MODIFY ten_cot   kieu_du_lieu_moi;
-- vd:
CREATE TABLE SinhVien (
    id INT PRIMARY KEY,         -- Khóa chính
    ho VARCHAR(50),
    ten VARCHAR(50),
    tuoi INT
);
ALTER TABLE SinhVien;
MODIFY id   varchar(255); -- int chuyển thành varchar


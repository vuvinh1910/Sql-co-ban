-- Khóa ngoại là một cột (hoặc tập hợp các cột) trong một bảng, mà giá trị của nó phải tương ứng với giá trị của cột khóa chính trong một bảng khác.
CREATE TABLE SinhVien (
    id INT PRIMARY KEY,         -- Khóa chính
    ho VARCHAR(50),
    ten VARCHAR(50),
    tuoi INT
);
-- tạo bảng LopHoc có id_sinhvien là khóa ngoại liên kết với khóa chính id trong bảng sinhvien  
CREATE TABLE LopHoc (
    id INT PRIMARY KEY,             -- Khóa chính của bảng LopHoc
    ten_lop VARCHAR(50),
    id_sinhvien INT,                -- Khóa ngoại tham chiếu đến bảng SinhVien
    FOREIGN KEY (id_sinhvien) REFERENCES SinhVien(id) -- Liên kết với khóa chính của bảng SinhVien
    ON DELETE CASCADE              -- Xóa sinh viên sẽ xóa luôn bản ghi tương ứng trong LopHoc
    ON UPDATE CASCADE              -- Khi cập nhật id trong SinhVien, LopHoc cũng cập nhật theo
);

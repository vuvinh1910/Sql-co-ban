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
-- hoặc nếu lúc đầu bảng chưa có khóa ngoại liên kết, ta có thể thêm vào như sau:
ALTER TABLE LopHoc
ADD FOREIGN KEY (id_sinhvien) REFERENCES SinhVien(id) 
ON DELETE CASCADE
ON UPDATE CASCADE;

-- quan trọng đây là tham chiếu, nên giá trị khóa chính và khóa ngoại muốn liên kết phải giống nhau
-- vd: 
INSERT INTO SinhVien (id, ho, ten, tuoi) 
VALUES 	(1, 'Nguyen', 'Van A1', 20),
		(2, 'Nguyen', 'Van A2', 20),
        (3, 'Nguyen', 'Van A3', 20),
        (4, 'Nguyen', 'Van A4', 20)
;
INSERT INTO LopHoc (id, ten_lop,id_sinhvien) 
VALUES 	(101, 'Lop Toan 1',3), -- bạn A3 học lớp toán 1
		(102, 'Lop Toan 2',4), -- bạn A4 học lớp toán 2
        (103, 'Lop Toan 3',1), -- bạn A1 học lớp toán 3
        (104, 'Lop Toan 4',2); -- bạn A2 học lớp toán 4


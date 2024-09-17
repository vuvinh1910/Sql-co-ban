CREATE TABLE MonHoc (
    id INT PRIMARY KEY,             -- Khóa chính
    ten_monhoc VARCHAR(50) UNIQUE,  -- Khóa độc nhất
    mo_ta TEXT
);
-- Cột id là khóa chính và sẽ không cho phép giá trị trùng lặp hoặc NULL.
-- ten_monhoc là khóa độc nhất, đảm bảo rằng không có hai môn học nào có tên giống nhau.
-- UNIQUE được dùng để đảm bảo rằng các giá trị trong một cột hoặc nhóm cột là duy nhất, nhưng khác với khóa chính, nó vẫn cho phép giá trị NULL.


-- khóa chính kết hợp:
-- Ở đây, id_sinhvien và id_lophoc cùng tạo thành khóa chính, đảm bảo rằng một sinh viên không thể đăng ký cùng một lớp hai lần.
CREATE TABLE DangKyHoc (
    id_sinhvien INT,
    id_lophoc INT,
    ngay_dangky DATE,
    PRIMARY KEY (id_sinhvien, id_lophoc),    -- Khóa chính kết hợp
);

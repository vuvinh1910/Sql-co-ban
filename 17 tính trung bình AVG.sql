--  Ví dụ: Tính giá trị trung bình của tuổi các sinh viên có họ là "Nguyen":
SELECT AVG(tuoi) AS average_age
FROM SinhVien
WHERE ho = 'Nguyen';

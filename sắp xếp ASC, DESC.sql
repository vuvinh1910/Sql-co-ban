-- SẮP XẾP TUỔI TĂNG DẦN:
SELECT * FROM SinhVien
ORDER BY tuoi ASC;
-- SẮP XẾP TUỔI GIẢM DẦN:
SELECT * FROM SinhVien
ORDER BY tuoi DESC;

-- SẮP XẾP THEO HỌ TĂNG DẦN, NẾU TRÙNG HỌ THÌ SẮP XẾP CĂN CỨ THEO TUỔI GIẢM DẦN:
SELECT * FROM SinhVien
ORDER BY ho ASC, tuoi DESC; -- ƯU TIÊN họ , NẾU TRÙNG THÌ ĐẾN tuổi.


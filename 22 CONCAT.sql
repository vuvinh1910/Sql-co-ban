-- Toán tử CONCAT trong SQL được sử dụng để nối (hoặc kết hợp) nhiều chuỗi văn bản thành một chuỗi duy nhất:

-- vd:
  -- Giả sử bạn có bảng SinhVien với các cột ho và ten. Để kết hợp các cột này thành một cột duy nhất ho_ten:
  SELECT CONCAT(ho, ' ', ten) AS ho_ten
  FROM SinhVien;
  --  Lệnh này sẽ nối giá trị trong cột ho và cột ten, với một khoảng trắng giữa chúng, và đặt tên cột kết quả là ho_ten.

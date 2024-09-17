CREATE DATABASE yourdatabase_name; -- tạo database mới
DROP DATABASE yourdatabase_name;  -- xóa database
-- trong database ta tạo bảng table bằng cách:
-- chọn chuột 2 lần vào database muốn tạo thêm bảng ở trong nó rồi nhập lệnh:
CREATE TABLE yourtable_name (
  tên_cột_1    kiểu_dữ_liệu_cột_1,
  tên_cột_2    kiểu_dữ_liệu_cột_2,
  tên_cột_3    kiểu_dữ_liệu_cột_3,
  .....
);
-- ví dụ:
CREATE TABLE NhanVien (
  ID      int,
  Name    varchar(255),
  Address    varchar(255)  -- cuối không còn dấu , 
);

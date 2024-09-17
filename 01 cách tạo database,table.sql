CREATE DATABASE yourdatabase_name; -- tạo database mới
DROP DATABASE yourdatabase_name;  -- xóa database
-- trong database ta tạo bảng table bằng cách:

CREATE TABLE yourdatabase_name.yourtable_name (  -- dấu chấm ở đây nghĩa là tạo bảng có vị trí trong yourdatabase_name 
  tên_cột_1    kiểu_dữ_liệu_cột_1,
  tên_cột_2    kiểu_dữ_liệu_cột_2,
  tên_cột_3    kiểu_dữ_liệu_cột_3,
  .....
);
-- ví dụ:
-- đây là bảng trống không có dữ liệu. 
CREATE TABLE NhanVien (
  ID      int,
  FullName    varchar(255),  
  Address    varchar(255)  -- cuối không còn dấu , 
);

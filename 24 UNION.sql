-- cú pháp:
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;
-- lưu ý số lượng cột select phải giống nhau, và mỗi cột tương ứng ở 2 bảng phải cùng dữ liệu.
-- giống như add trong set, các dữ liệu trùng nhau thì không thêm, các dữ liệu khác nhau thì thêm.
-- vd: 1,2,3 union 2,3,4 thì = 1,2,3,4.


-- đây là set họ tên của 2 bảng dai hoc và cao đẳng.
SELECT ho, ten
FROM SinhVien_DaiHoc
UNION
SELECT ho, ten
FROM SinhVien_CaoDang;

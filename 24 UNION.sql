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
SELECT City,Address FROM Customers
UNION
SELECT City,Address FROM Suppliers
ORDER BY City;
-- nếu bạn thấy kết quả trong cột city hoặc address có trùng lặp
-- thì thực chất nó là khác nhau khi xét về việc nối city và address ví dụ:
-- london - hanoi
-- khác với london - nghean
-- ta xét theo việc nối 2 kết quả nới union



-- nếu không muốn loại bỏ giá trị trùng lặp thì ta dùng UNION ALL:
SELECT ho, ten
FROM SinhVien_DaiHoc
UNION ALL
SELECT ho, ten
FROM SinhVien_CaoDang
ORDER BY ten ASC;

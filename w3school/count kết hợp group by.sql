SELECT COUNT(*) AS Number_records, CategoryID
FROM Products
GROUP BY CategoryID;
-- trả về số Hồ sơ cho từng danh mục trong bảng Sản phẩm

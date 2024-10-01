SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID; 
-- trả về giá nhỏ nhất cho từng danh mục trong bảng Sản phẩm

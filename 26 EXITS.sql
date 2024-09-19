SELECT column1, column2, ...
FROM table_name
WHERE EXISTS (subquery); -- subquery: Là một truy vấn con (subquery), thường trả về một hoặc nhiều hàng. Nếu truy vấn con trả về ít nhất một hàng, điều kiện EXISTS sẽ được thỏa mãn.
--vd:
SELECT * FROM CUSTOMER
WHERE EXISTS (
  SELECT * FROM ORDER_
  WHERE ORDER_ID = CUSTOMERID
  AND Ship_ID = 1
);
-- LIỆT KÊ DỮ LIỆU TRONG BẢNG CUSTOMER, NẾU TỒN TẠI DỮ LIỆU TRONG ORDER THỎA MÃN:
-- CHỌN TẤT CẢ DỮ LIỆU TRONG ORDER_, XÉT NẾU ORDER_ID GIỐNG VỚI CUSTOMERID VÀ
-- CÓ Ship_ID = 1 (NGƯỜI TÊN MÃ = 1 SHIP HÀNG) 
-- THÌ IN CÁC HÀNG DỮ LIỆU TRONG CUSTOMER RA  

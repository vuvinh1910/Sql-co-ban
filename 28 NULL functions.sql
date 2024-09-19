IFNULL (expression, replacement);
-- expression: Biểu thức hoặc cột mà bạn muốn kiểm tra giá trị NULL.
-- replacement: Giá trị sẽ được trả về nếu biểu thức là NULL.

  --vd: 
SELECT 100*IFNULL(SINHVIEN_Id,1)



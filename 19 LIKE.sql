-- cú pháp:
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
--column_name: Tên cột mà bạn muốn tìm kiếm.
-- pattern: Mẫu tìm kiếm sử dụng các ký tự đại diện.

-- Tìm tất cả các sinh viên có tên bắt đầu bằng "Nguyen":
SELECT * FROM SinhVien
WHERE ten LIKE 'Nguyen%';

-- Tìm tất cả các sinh viên có tên kết thúc bằng "A":
SELECT * FROM SinhVien
WHERE ten LIKE '%A';

-- sinh viên không chứa chữ cái cuối là A  
SELECT * FROM SinhVien
WHERE ten NOT LIKE '%A';

-- Tìm tất cả các sinh viên có tên chứa "Van" kể cả ở đầu và cuối:
SELECT * FROM SinhVien
WHERE ten LIKE '%Van%';

-- tìm tất cả các sinh viên có tên gồm đúng 4 ký tự, với ký tự đầu tiên là "A" và ký tự thứ ba là "C":
SELECT * FROM SinhVien
WHERE ten LIKE 'A_C_';

-- tìm tất cả sinh viên có chữ cái r ở vị trí thứ 2:
SELECT * FROM SinhVien
WHERE ten LIKE '_r%';

-- Trả lại tất cả khách hàng bắt đầu bằng "b" và kết thúc bằng "s":
SELECT * FROM Customers
WHERE CustomerName LIKE 'b%s';




% (Percentage Sign):

Description: Đại diện cho một hoặc nhiều ký tự (có thể là bất kỳ ký tự nào).
Ví dụ:
SQL
Sao chép mã
SELECT * FROM users WHERE username LIKE 'John%';
Kết quả sẽ trả về tất cả các username bắt đầu bằng "John" và theo sau là bất kỳ chuỗi ký tự nào.
_ (Underscore):

Description: Đại diện cho đúng một ký tự bất kỳ.
Ví dụ:
SQL
Sao chép mã
SELECT * FROM users WHERE username LIKE 'J_hn';
Kết quả sẽ trả về tất cả các username có bốn ký tự, trong đó ký tự thứ hai là bất kỳ ký tự nào.
[] (Brackets):

Description: Đại diện cho bất kỳ ký tự nào nằm trong dấu ngoặc vuông.
Ví dụ:
SQL
Sao chép mã
SELECT * FROM users WHERE username LIKE '[AB]%';
Kết quả sẽ trả về tất cả các username bắt đầu bằng 'A' hoặc 'B'.
^ (Caret inside brackets):

Description: Đại diện cho bất kỳ ký tự nào không nằm trong ngoặc vuông (dấu mũ ^ đặt ở đầu).
Ví dụ:
SQL
Sao chép mã
SELECT * FROM users WHERE username LIKE '[^AB]%';
Kết quả sẽ trả về tất cả các username mà ký tự đầu tiên không phải là 'A' hoặc 'B'.
- (Hyphen inside brackets):

Description: Đại diện cho bất kỳ ký tự nào trong khoảng xác định.
Ví dụ:
SQL
Sao chép mã
SELECT * FROM users WHERE username LIKE '[A-Z]%';
Kết quả sẽ trả về tất cả các username bắt đầu bằng bất kỳ ký tự chữ cái viết hoa nào từ A đến Z.
{} (Braces):

Description: Đại diện cho bất kỳ ký tự nào thoát (escaped character).
Ví dụ:
Nếu bạn cần tìm kiếm dấu % hoặc dấu _ thật sự trong một chuỗi (vì những ký tự này thường được coi là các ký tự đặc biệt), bạn có thể thoát chúng.
Ví dụ với dấu %:
SQL
Sao chép mã
SELECT * FROM users WHERE username LIKE '%{%}';

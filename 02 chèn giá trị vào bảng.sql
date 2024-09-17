-- cú pháp:
INSERT INTO ten_bang (cot1, cot2, cot3, ...)
VALUES (giatri1, giatri2, giatri3, ...);

-- chèn 1 hàng:  
INSERT INTO sinhvien (id, ho, ten, tuoi)
VALUES (1, 'Nguyen', 'An', 20);

-- Nếu bạn chèn vào tất cả các cột của bảng theo đúng thứ tự của bảng, bạn có thể bỏ qua phần danh sách cột:
INSERT INTO sinhvien
VALUES (5, 'Pham', 'Hung', 23);

-- chèn nhiều hàng:
INSERT INTO sinhvien (id, ho, ten, tuoi)
VALUES
(2, 'Le', 'Hoa', 22),
(3, 'Pham', 'Minh', 21),
(4, 'Tran', 'Lam', 19);

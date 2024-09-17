CREATE TABLE levinh.my_table (
  id int, 
  id2 int,  
  id3 varchar(255) 
);
-- thêm default:
ALTER TABLE my_table
ALTER ID3 SET DEFAULT  'HANOI';

-- loại bỏ default:
ALTER TABLE my_table
ALTER id3 DROP DEFAULT;

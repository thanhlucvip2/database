CREATE DATABASE thanhlucvip
-- tạo database

GO -- chờ lệnh trên thực thi xong thì tiếp tục

USE thahlucvip -- sử dụng database thanhlucvip

CREATE TABLE HOCSINH (
	name nvarchar(10)
	age int
) --tạo table hocsinh

ALTER TABLE HOCSINH add ngaysinh Date -- sửa bảng thêm cột ngày sinh kiểu date

TRUNCATE TABLE HOCSINH -- xóa dữ liệu bảng 

DROP TABLE HOCSINH -- xóa table
DROP DATABASE thanhlucvip --xóa databse
 
-- các kiểu dữ liệu hay sử dụng

-- int : kiểu số nguyên	tập hợp n, ví dụ : 1 ; 2 ; 3 ; -20 ; -3...
-- float : kiểu số thực, tập hợp r, ví dụ : -0.3 ; 0.5 ; 10 ; 9,5...
-- char : kiểu ký tự, bộ nhớ cấp phát cứng, ví dụ : a, A, b, B, f, F...
	-- char(10) : 10 ô bộ nhớ không ai được đụng vào, luôn giữ 10 bộ nhớ
	-- char() : không viết tiếng việt được
	-- nchar() : có thể lưu tiếng việt
-- varchar : kiểu ký tư, bộ nhố cấp phát động, ví dụ 'luc' chỉ dùng 3 bộ nhớ trong số 10 bộ nhớ
	-- varchar(10) 10 ô bộ nhớ chỉ được lấy khi có dữ liệu nằm bên trong
	-- varchar(): không thể lưu tiếng việt
	-- nvarchar(): có thể lưu tiếng việt
-- date : Lưu trữ ngày, tháng, năm, giờ
-- time : Lưu trữ giờ, phút, giây 
-- bit : lưu giá trị 0 và 1
-- text : Lưu văn bản lớn
-- ntext : Lưu văn bản lớn có tiếng việt


--Ví dụ
CREATE TABLE thanhlucvip(
	Doc TEXT, -- cấp phát max khả năng lưu trữ,
	maSV CHAR(10), --khai báo maSV cấp phát cứng 10 ô nhớ
	Doc2 NVARCHAR(50), -- khai báo Doc2 kiểu nvarchar cấp phát động 50 ô bộ nhớ
	Birthday DATE, -- Lưu trữ ngày, tháng, năm, giờ
	SEX BIT, -- Lưu giá trị 0 hoặc 1
)
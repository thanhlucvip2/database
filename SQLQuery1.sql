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
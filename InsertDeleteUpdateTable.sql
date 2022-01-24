-- thêm dữ liệu
INSERT
    dbo.hocsinh(age, name, ngaysinh)
VALUES
    (
        10,
        -- kiểu số -> số bình thường
        N'hocsinh1',
        -- nếu ký tự là unicode cần để N trươc cặp nháy đơn
        '19900405' -- kiểu ký tự đơn hoặc ngày thì để trong dấu nháy đơn (yyyymmdd)
    ) 
    
    
--ví dụ 
USE thanhlucvip CREATE TABLE Test (
        Maso int,
        Ten nvarchar(40),
        NgaySinh date,
        Nam bit,
        DiaChi char(10),
        TienLuong float
    )
GO
--insert giá trị cho từng trường được khai báo ở dưới
INSERT
    dbo.Test(
        Maso,
        Ten,
        NgaySinh,
        Nam,
        DiaChi,
        TienLuong
    )
VALUES
    (
        10,
        N'thanh lực vip pro max',
        '20000430',
        1,
        '',
        1.0202 
    )
--insert giá trị table theo từng trường mặc định trong bảng
INSERT
    dbo.Test
VALUES
    (
        10,
        N'thanh lực vip pro max',
        '20000430',
        1,
        'dasdas',
        1.0202 
    )


-- xóa dữ liệu
-- các toán tử (> , < , >= , <= , <> , = , AND, OR)
-- toán tử khác : <>

-- xóa hết dữ liệu của bảng
DELETE dbo.Test 
-- xóa với điều kiện
DELETE dbo.Test WHERE Maso = 4  -- xóa dòng có Maso = 4 trong bảng
DELETE dbo.Test WHERE Maso < 2  -- xóa dòng có Maso < 2 trong bảng
DELETE dbo.Test WHERE Maso > 2  -- xóa dòng có Maso > 2 trong bảng
DELETE dbo.Test WHERE Maso = 10 AND TienLuong < 25 --xóa dòng Maso = 10 và TienLuong < 25
DELETE dbo.Test WHERE Maso = 10 OR TienLuong < 25 --xóa dòng Maso = 10 và TienLuong < 25


--update dữ liệu toàn bộ bảng
UPDATE dbo.Test SET TienLuong = 1000 -- update tất cả tiền lương thành 1000
UPDATE dbo.Test SET TienLuong = 1000 , DiaChi = 'abc'-- update tất cả tiền lương thành 1000 và địa chỉ thành abc

--update dữ liệu có điều kiện 
UPDATE dbo.Test SET TienLuong = 2312312 WHERE Maso = 1 -- update TienLuong của Maso = 1 thành 2312312
UPDATE dbo.Test SET TienLuong = 1233 WHERE Maso = 3 OR Maso = 4 -- update TienLuong của Maso = 1 và Maso = 4 thành 1233
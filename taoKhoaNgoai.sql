-- điều kiện để tạo khóa ngoại
-- 1 tham chiếu tới khóa chính
-- 2 UNIQUE, NOT NULL
-- 3 cùng kiểu dữ liệu
-- 4 cùng số lượng trường có sắp xếp theo tuần tự
-- lợi ích : đảm bảo toàn vẹn dữ liệu, không có trường hợp tham chiếu tới dữ liệu không tồn tại
create database khoangoai
go
    use khoangoai
go
    create table boMon (
        maBM char(10) PRIMARY KEY,
        Name nvarchar(100) default N'ten bộ môn',
    )
go
    create table Lop (
        MaLop char(100) NOT NULL,
        Name nvarchar(100) default N'Tên Lớp',
        PRIMARY KEY(MaLop)
    )
    
-- cách tạo khóa ngoại
    -- cách 1 tạo trong khi tạo bảng
    go
    create table GiaoVien (
        MaGV char(10) NOT NULL,
        Name nvarchar(100) default N'tên giáo viên',
        DiaChi nvarchar(100) default N'địa chỉ giáo viên',
        Ngaysinh date,
        GioiTinh bit,
        maBM char(10),
        -- khóa ngoại maBM của table GiaoVien sẽ tham chiếu tới khóa chính maBM của table boMon
        FOREIGN KEY (maBM) REFERENCES dbo.boMon(maBM)
    )
    go
    ALTER TABLE
        dbo.GiaoVien
    ADD
        PRIMARY KEY (MaGV)
     -- cách 2 tạo sau khi tạo bảng
      create table Hocsinh (
        MaHS char(10) PRIMARY KEY,
        Name nvarchar(100) default N'Tên Học sinh',
        MaLop char(100) NOT NULL,
    ) 
    ALTER TABLE dbo.Hocsinh ADD FOREIGN KEY(MaLop) REFERENCES dbo.Lop(MaLop)


-- thêm dữ liệu ràng buộc
insert dbo.boMon (maBM, Name)
values (
		'BM01',
		N'Bộ Môn 1'
)
insert dbo.boMon (maBM, Name)
values (
		'BM02',
		N'Bộ Môn 2'
)
insert dbo.boMon (maBM, Name)
values (
		'BM03',
		N'Bộ Môn 3'
)
insert dbo.GiaoVien (MaGV,Name,DiaChi,Ngaysinh,GioiTinh,maBM)
values (
	'GV03',
	N'GV 1',
	N'DC 1',
	GETDATE(),
	1,
	'BM02'
)
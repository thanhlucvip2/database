-- UNIQUE : tạo ra trường duy nhất trong toàn bộ bảng, và không thể có 2 giá trị trùng nhau
-- NOT NULL : trường đó không được phép null
-- DEFAULT 10 : tạo giá trị mặc định của trường đó là 10 nếu kh gán giá trị
CREATE TABLE TESTPrimaryKey1(
    ID int UNIQUE NOT NULL,
    Name nvarchar(190) DEFAULT N'dasda'
) 

-- tạo khóa chính 
--PRIMARY KEY : tạo ra trường khóa chính bao gồm NOT NULL và UNIQUE
-- trường nào muốn tạo khóa chính thì mặc định trước của nó phải NOT NULL
-- cách 1 : tạo trực tiếp PRIMARY KEY
CREATE TABLE TESTPrimaryKey2(
    ID int PRIMARY KEY,
    Name varchar(10)
)
-- cách 2 cập nhật lại bảng khi đã tạo từ trước
ALTER TABLE dbo.TESTPrimaryKey2 ADD PRIMARY KEY (ID)

-- cách 3 Tạo primary key trong bảng không phải ngay khi khai báo
CREATE TABLE TestPrimaryKey2
(
	ID INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
	
	PRIMARY KEY (ID)
)
GO

-- cách 4 Tạo primary key ngay trong bảng mà đặt tên cho key đó
CREATE TABLE TestPrimaryKey3
(
	ID INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
	
	CONSTRAINT PK_Test3 -- sau này xóa key cho dễ
	PRIMARY KEY (ID)
)
GO

-- cách 5 Tạo primary key sau khi tạo bảng và đặt tên cho key đó

CREATE TABLE TestPrimaryKey4
(
	ID INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
)
GO

ALTER TABLE dbo.TestPrimaryKey4 
ADD CONSTRAINT PK_Test4 
PRIMARY KEY (ID)

-- khóa chính có 2 trường
CREATE TABLE TestPrimaryKey5
(
	ID1 INT NOT NULL,
	ID2 INT NOT NULL,
	Name NVARCHAR(100)  DEFAULT N'HowKteam.com'
	
	PRIMARY KEY (ID1, ID2)
)
GO
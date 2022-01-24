USE thanhlucvip CREATE TABLE Test (
	Maso int,
	Ten nvarchar(40),
	NgaySinh date,
	Nam bit,
	DiaChi char(10),
	TienLuong float
)
GO
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
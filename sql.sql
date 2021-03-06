USE [QLBH]
GO
/****** Object:  StoredProcedure [dbo].[XemThongTinNV]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[XemThongTinNV]
GO
/****** Object:  StoredProcedure [dbo].[UpdateNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[UpdateNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[UpdateMatKhau]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[UpdateMatKhau]
GO
/****** Object:  StoredProcedure [dbo].[UpdateKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[UpdateKhach]
GO
/****** Object:  StoredProcedure [dbo].[UpdateHang]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[UpdateHang]
GO
/****** Object:  StoredProcedure [dbo].[ThongKeTonKho]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[ThongKeTonKho]
GO
/****** Object:  StoredProcedure [dbo].[ThongKeSP]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[ThongKeSP]
GO
/****** Object:  StoredProcedure [dbo].[SearchNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[SearchNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[SearchKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[SearchKhach]
GO
/****** Object:  StoredProcedure [dbo].[SearchHang]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[SearchHang]
GO
/****** Object:  StoredProcedure [dbo].[QuenMatKhau]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[QuenMatKhau]
GO
/****** Object:  StoredProcedure [dbo].[LayVaiTroNV]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[LayVaiTroNV]
GO
/****** Object:  StoredProcedure [dbo].[InsertDataNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[InsertDataNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[InsertDataKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[InsertDataKhach]
GO
/****** Object:  StoredProcedure [dbo].[InsertDataHang]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[InsertDataHang]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DeleteDataFromNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DeleteDataFromKhach]
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromHang]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DeleteDataFromHang]
GO
/****** Object:  StoredProcedure [dbo].[DanhSachNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DanhSachNhanVien]
GO
/****** Object:  StoredProcedure [dbo].[DanhSachKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DanhSachKhach]
GO
/****** Object:  StoredProcedure [dbo].[DanhSachHang]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DanhSachHang]
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[DangNhap]
GO
/****** Object:  StoredProcedure [dbo].[ChangePwd]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP PROCEDURE [dbo].[ChangePwd]
GO
ALTER TABLE [dbo].[Hang] DROP CONSTRAINT [FK__Hang__MaNV__286302EC]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 9/01/2022 10:37:01 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hang]') AND type in (N'U'))
DROP TABLE [dbo].[Hang]
GO
USE [master]
GO
/****** Object:  Database [QLBH]    Script Date: 9/01/2022 10:37:01 PM ******/
DROP DATABASE [QLBH]
GO
/****** Object:  Database [QLBH]    Script Date: 9/01/2022 10:37:01 PM ******/
CREATE DATABASE [QLBH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBQLBanHang', FILENAME = N'C:\Database\DBQLBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBQLBanHang_log', FILENAME = N'C:\Database\DBQLBanHang.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLBH] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBH] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [QLBH] SET ANSI_NULLS ON 
GO
ALTER DATABASE [QLBH] SET ANSI_PADDING ON 
GO
ALTER DATABASE [QLBH] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [QLBH] SET ARITHABORT ON 
GO
ALTER DATABASE [QLBH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBH] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [QLBH] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [QLBH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBH] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [QLBH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLBH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBH] SET RECOVERY FULL 
GO
ALTER DATABASE [QLBH] SET  MULTI_USER 
GO
ALTER DATABASE [QLBH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLBH', N'ON'
GO
ALTER DATABASE [QLBH] SET QUERY_STORE = OFF
GO
USE [QLBH]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [int] IDENTITY(1000,1) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[SoLuong] [int] NOT NULL,
	[DonGiaBan] [float] NOT NULL,
	[DonGiaNhap] [float] NOT NULL,
	[HinhAnh] [varchar](400) NOT NULL,
	[GhiChu] [nvarchar](20) NOT NULL,
	[MaNV] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [int] IDENTITY(1000,1) NOT NULL,
	[MaNV] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[TenNV] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[VaiTro] [tinyint] NOT NULL,
	[TinhTrang] [tinyint] NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Hang] ON 

INSERT [dbo].[Hang] ([MaHang], [TenHang], [SoLuong], [DonGiaBan], [DonGiaNhap], [HinhAnh], [GhiChu], [MaNV]) VALUES (3004, N'Khô gà', 5, 50000, 49000, N'Screenshot 2022-01-09 140957.jpg', N'Cơm cháy khô gà 250g', N'NV1000')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [SoLuong], [DonGiaBan], [DonGiaNhap], [HinhAnh], [GhiChu], [MaNV]) VALUES (3005, N'Hạnh Nhân Rang Bơ', 6, 50000, 45000, N'Screenshot 2022-01-09 141129.jpg', N'HẠNH NHÂN MỸ RANG BƠ', N'NV1000')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [SoLuong], [DonGiaBan], [DonGiaNhap], [HinhAnh], [GhiChu], [MaNV]) VALUES (3006, N'Kẹo dâu', 4, 20000, 19000, N'a2.jpg', N'Kẹo dâu tây dâu tằm ', N'NV1012')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [SoLuong], [DonGiaBan], [DonGiaNhap], [HinhAnh], [GhiChu], [MaNV]) VALUES (3007, N'Tăm Cay', 10, 10000, 8000, N'a3.jpg', N'Tăm cay vị điều tôm,', N'NV1000')
INSERT [dbo].[Hang] ([MaHang], [TenHang], [SoLuong], [DonGiaBan], [DonGiaNhap], [HinhAnh], [GhiChu], [MaNV]) VALUES (3008, N'Cơm Cháy', 20, 20000, 15000, N'a4.jpg', N'Cơm cháy lắc khô bò ', N'NV1014')
SET IDENTITY_INSERT [dbo].[Hang] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau]) VALUES (1011, N'NV011', N'khanh@gmail.com', N'khanh22', N'Hue', 0, 1, N'263617819617711222721081031195915165129188')
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau]) VALUES (1000, N'NV1000', N'khanhtran@gmail.com', N'Trần Khánh', N'BRVT', 1, 1, N'263617819617711222721081031195915165129188')
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau]) VALUES (1012, N'NV1012', N'khanh@gmail.com', N'khanh22', N'Hue', 0, 1, N'11918620278908413204214838531858791100')
INSERT [dbo].[NhanVien] ([Id], [MaNV], [Email], [TenNV], [DiaChi], [VaiTro], [TinhTrang], [MatKhau]) VALUES (1014, N'NV1014', N'buu@gmail.com', N'buu', N'ue', 1, 1, N'81078814221422012019924320113414320420194192')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
ALTER TABLE [dbo].[Hang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
/****** Object:  StoredProcedure [dbo].[ChangePwd]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ChangePwd]
@email nvarchar(50) , @oPwd nvarchar(50) , @nPwd nvarchar(50) 
AS BEGIN 

declare @op nvarchar(50) , @result int;
select @op = MatKhau from NhanVien where Email = @email
if @op = @oPwd
begin
	UPDATE NhanVien set MatKhau = @nPwd where Email = @email
	set @result =  1 
end
else 
	set @result = 0
select @result
END
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DangNhap] @email varchar(50) , @matkhau nvarchar(50)
 AS
BEGIN
		Declare @status int 
	if exists(select * from NhanVien where email = @email and MatKhau = @matkhau)
		set @status = 1 
	else
		set @status = 0 
	select @status

END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachHang]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DanhSachHang] 
AS
BEGIN
SELECT MaHang, TenHang , SoLuong , DonGiaNhap , DonGiaBan ,HinhAnh ,GhiChu FROM Hang
END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DanhSachKhach]
AS
BEGIN
SELECT DienThoai, TenKhach , DiaChi,Phai FROM KhachHang
END
GO
/****** Object:  StoredProcedure [dbo].[DanhSachNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DanhSachNhanVien]
AS 
BEGIN
SELECT Email, TenNV , DiaChi,VaiTro,TinhTrang FROM NhanVien
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromHang]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[DeleteDataFromHang] @mahang int
as
BEGIN 
	DECLARE @result int = 1;
if exists(select * from Hang where MaHang = @mahang)
	DELETE Hang where MaHang = @mahang
	else
	set @result = 0
select @result
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteDataFromKhach] @DienThoai varchar(15)
as
BEGIN 

if exists(select * from KhachHang where DienThoai = @DienThoai)
	DELETE KhachHang where DienThoai = @DienThoai

END
GO
/****** Object:  StoredProcedure [dbo].[DeleteDataFromNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DeleteDataFromNhanVien] @Email varchar(50)
as
BEGIN 

if exists(select * from NhanVien where Email = @Email)
	DELETE NhanVien where Email = @Email
END
GO
/****** Object:  StoredProcedure [dbo].[InsertDataHang]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertDataHang] @TenHang nvarchar(50), @Soluong int, @DonGiaBan float, @DonGiaNhap float,
@HinhAnh varchar(400) ,@GhiChu nvarchar(20), @Email varchar(50)
AS 
BEGIN 
	DECLARE @MaNV  varchar(20)
	Select @MaNV =  MaNV from NhanVien where Email = @Email
	INSERT INTO Hang values (@TenHang,@Soluong,@DonGiaBan,@DonGiaNhap,@HinhAnh,@GhiChu,@MaNV)

END
GO
/****** Object:  StoredProcedure [dbo].[InsertDataKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertDataKhach] @DienThoai varchar(15) , @TenKhach nvarchar(50) , 
@DiaChi nvarchar(100) , @Phai nvarchar(3), @Email varchar(50)
AS 
BEGIN 
		DECLARE @MaNV  varchar(20)
	Select @MaNV =  MaNV from NhanVien where Email = @Email
	INSERT INTO KhachHang values (@DienThoai,@TenKhach,@DiaChi,@Phai,@MaNV)

END
GO
/****** Object:  StoredProcedure [dbo].[InsertDataNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertDataNhanVien] @email varchar(50) , @tennv nvarchar(50) , 
@diachi nvarchar(100), @vaitro tinyint, @tinhtrang tinyint , @matkhau varchar(50)
AS 
BEGIN 

	DECLARE @Manv varchar(20);
	DECLARE @Id int
	Select @Id = ISNULL(MAX(Id),1000) + 1 FROM NhanVien
	SELECT @Manv = 'NV' + CONVERT(varchar(4),@Id)
	INSERT INTO NhanVien (MaNV,Email,TenNV,DiaChi,VaiTro,TinhTrang,MatKhau)
	VALUES (@Manv, @email , @tennv , @diachi , @vaitro , @tinhtrang,@matkhau )	
END
GO
/****** Object:  StoredProcedure [dbo].[LayVaiTroNV]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayVaiTroNV] @email varchar(50) 
as 
begin 

	SELECT VaiTro from NhanVien where Email = @email

end
GO
/****** Object:  StoredProcedure [dbo].[QuenMatKhau]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[QuenMatKhau] @email nvarchar(50)
as
begin 
	
	declare @result int 
	if exists(select *from NhanVien where Email = @email)
		set @result = 1
	else 
		set @result = 0 
select @result
end
GO
/****** Object:  StoredProcedure [dbo].[SearchHang]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchHang] @tenHang nvarchar (50)
AS 
BEGIN
	SELECT * FROM Hang WHERE TenHang like '%'  + @tenHang + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SearchKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchKhach] @tenKhach nvarchar (50)
AS 
BEGIN
	SELECT DienThoai, TenKhach,DiaChi,Phai FROM KhachHang WHERE TenKhach like '%'  + @tenKhach + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[SearchNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SearchNhanVien] @tenNV nvarchar (50)
AS 
BEGIN
	SELECT Email,TenNV,DiaChi,VaiTro,TinhTrang FROM NhanVien WHERE TenNV like '%'  + @tenNV + '%'
END
GO
/****** Object:  StoredProcedure [dbo].[ThongKeSP]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKeSP]
as begin 

	SELECT a.MaNV, b.TenNV , Count(a.MaHang) FROM Hang a inner join NhanVien b on a.MaNV = b.MaNV 
	group by a.MaNV ,b.TenNV  
end
GO
/****** Object:  StoredProcedure [dbo].[ThongKeTonKho]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKeTonKho] 
as begin 

	SELECT TenHang , SUM(SoLuong) from Hang group by (TenHang)
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateHang]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateHang] @maHang int, @tenHang nvarchar(50), @soLuong int , 
@donGiaNhap float , @donGiaBan float , @hinhAnh nvarchar(400), @ghiChu nvarchar(50)
as begin

UPDATE Hang set TenHang = @tenHang , SoLuong = @soLuong , DonGiaBan = @donGiaBan , DonGiaNhap = @donGiaNhap,
HinhAnh = @hinhAnh , GhiChu = @ghiChu
where MaHang = @maHang;
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateKhach]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateKhach] @dienThoai varchar(15) , @tenKhach nvarchar(30) , @diaChi nvarchar(100) , @phai nvarchar(3)
as begin
UPDATE KhachHang set TenKhach = @tenKhach, DiaChi = @diaChi , Phai = @phai 
where DienThoai = @dienThoai;
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateMatKhau]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateMatKhau]
	@email varchar(50) , @pass varchar(50)
	
AS BEGIN
	UPDATE NhanVien set MatKhau = @pass where Email = @email
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateNhanVien]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateNhanVien] @email nvarchar(50) , @tenNv nvarchar(50), @diaChi nvarchar(100) ,
@vaitro tinyint , @tinhtrang tinyint
as begin

UPDATE NhanVien set TenNV = @tenNv , DiaChi = @diaChi , VaiTro = @vaitro , TinhTrang = @tinhtrang 
where Email = @email;
end
GO
/****** Object:  StoredProcedure [dbo].[XemThongTinNV]    Script Date: 9/01/2022 10:37:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XemThongTinNV] @email varchar(50)
as 
begin 

	select * from NhanVien where Email = @email

end
GO
USE [master]
GO
ALTER DATABASE [QLBH] SET  READ_WRITE 
GO

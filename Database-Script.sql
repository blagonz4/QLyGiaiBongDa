USE [master]
GO
/****** Object:  Database [QLYGIAIBD]    Script Date: 7/24/2020 4:39:25 PM ******/
CREATE DATABASE [QLYGIAIBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLYGIAIBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLYGIAIBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QLYGIAIBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QLYGIAIBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QLYGIAIBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLYGIAIBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLYGIAIBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLYGIAIBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLYGIAIBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLYGIAIBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLYGIAIBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET RECOVERY FULL 
GO
ALTER DATABASE [QLYGIAIBD] SET  MULTI_USER 
GO
ALTER DATABASE [QLYGIAIBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLYGIAIBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLYGIAIBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLYGIAIBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLYGIAIBD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLYGIAIBD', N'ON'
GO
ALTER DATABASE [QLYGIAIBD] SET QUERY_STORE = OFF
GO
USE [QLYGIAIBD]
GO
/****** Object:  Table [dbo].[BANTHANG]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BANTHANG](
	[MaBanThang] [varchar](45) NOT NULL,
	[MaCauThu] [varchar](45) NULL,
	[LoaiBanThang] [varchar](45) NULL,
	[ThoiDiem] [varchar](45) NULL,
	[MaTranDau] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBanThang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CAUTHU]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAUTHU](
	[MaCauThu] [varchar](45) NOT NULL,
	[TenCauThu] [varchar](45) NULL,
	[NgaySinh] [datetime] NULL,
	[LoaiCauThu] [varchar](45) NULL,
	[ThoiGianThiDau] [varchar](45) NULL,
	[TinhTrang] [varchar](45) NULL,
	[MaDoi] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCauThu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DANGNHAP]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGNHAP](
	[TaiKhoan] [varchar](45) NULL,
	[MatKhau] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOIBONG]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOIBONG](
	[MaDoi] [char](4) NOT NULL,
	[TenDoi] [varchar](45) NULL,
	[SanNha] [varchar](45) NULL,
	[SoCauThu] [int] NULL,
	[DiemSo] [int] NULL,
	[BanThang] [int] NULL,
	[BanThua] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIBANTHANG]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIBANTHANG](
	[LOAIBANTHANG] [varchar](45) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANDAU]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANDAU](
	[MaTranDau] [varchar](45) NOT NULL,
	[DoiChuNha] [char](4) NULL,
	[DoiKhach] [char](4) NULL,
	[NgayThiDau] [datetime] NULL,
	[GioThiDau] [time](7) NULL,
	[SanThiDau] [varchar](45) NULL,
	[TySo] [varchar](10) NULL,
	[MaVongDau] [varchar](45) NULL,
	[BANTHANGDN] [int] NULL,
	[BANTHANGKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTranDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VONGDAU]    Script Date: 7/24/2020 4:39:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VONGDAU](
	[MaVongDau] [varchar](45) NOT NULL,
	[TenVongDau] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVongDau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0001', N'HA05', N'TrucTiep', N'23', N'VB001')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0002', N'HA05', N'Penalty', N'48', N'VB001')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0003', N'HA05', N'TrucTiep', N'65', N'VB001')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0004', N'SG10', N'TrucTiep', N'48', N'VB002')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0005', N'SG10', N'DaPhat', N'50', N'VB002')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0006', N'SG10', N'DaPhat', N'75', N'VB002')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0007', N'SG10', N'TrucTiep', N'70', N'VB003')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0008', N'SG10', N'DaPhat', N'72', N'VB003')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0009', N'HA11', N'DaPhat', N'12', N'VB004')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0010', N'HA11', N'DaPhat', N'15', N'VB004')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0011', N'HA11', N'TrucTiep', N'30', N'VB004')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0012', N'HA11', N'DaPhat', N'5', N'VB006')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0013', N'HA11', N'TrucTiep', N'10', N'VB006')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0014', N'HN05', N'TrucTiep', N'24', N'VB006')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0015', N'HN07', N'TrucTiep', N'75', N'VB006')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0016', N'AG09', N'DaPhat', N'48', N'VB007')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0017', N'AG08', N'TrucTiep', N'55', N'VB007')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0018', N'AG10', N'TrucTiep', N'70', N'VB007')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0019', N'BD10', N'TrucTiep', N'2', N'VB008')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0020', N'BD10', N'TrucTiep', N'35', N'VB008')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0021', N'BD10', N'TrucTiep', N'88', N'VB008')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0022', N'AG08', N'TrucTiep', N'14', N'VB009')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0023', N'AG08', N'TrucTiep', N'79', N'VB009')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0024', N'AG09', N'TrucTiep', N'54', N'VB010')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0025', N'BD10', N'TrucTiep', N'67', N'VB010')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0026', N'BD10', N'DaPhat', N'78', N'VB011')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0027', N'BD10', N'TrucTiep', N'90', N'VB011')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0028', N'BD10', N'TrucTiep', N'65', N'VB012')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0029', N'AG08', N'TrucTiep', N'35', N'VB013')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0030', N'AG10', N'TrucTiep', N'49', N'VB013')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0031', N'BD10', N'TrucTiep', N'18', N'VB015')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0032', N'BD10', N'TrucTiep', N'54', N'VB015')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0033', N'AG07', N'DaPhat', N'48', N'VB017')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0034', N'AG08', N'TrucTiep', N'72', N'VB017')
INSERT [dbo].[BANTHANG] ([MaBanThang], [MaCauThu], [LoaiBanThang], [ThoiDiem], [MaTranDau]) VALUES (N'0035', N'SG05', N'Penalty', N'28', N'VB019')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG01', N'Nguyen Manh Cuong', CAST(N'1997-09-03T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG02', N'Tran Gia Nam', CAST(N'1996-08-18T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG03', N'Nguyen Thanh Cong', CAST(N'2001-02-09T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG04', N'Vo Nguyen Phuong Duy', CAST(N'1989-08-28T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG05', N'Nguyen Phan The Lam', CAST(N'1996-05-07T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG06', N'Nguyen Van Trong', CAST(N'1999-03-03T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG07', N'Luong Thanh Sang', CAST(N'1994-07-31T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG08', N'Tony Stark', CAST(N'1970-05-29T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 20 nam', N'Da chet', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG09', N'Thor Thor', CAST(N'1968-08-08T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 24 nam', N'Beo phi', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'AG10', N'Captain Ameria', CAST(N'1918-07-04T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 36 nam', N'Nghi huu', N'AGFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD01', N'Vo Doan Thuc Kha', CAST(N'1991-05-31T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD02', N'Nguyen Thai Son', CAST(N'1993-04-09T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD03', N'Nguyen Van Thang', CAST(N'1990-01-15T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 10 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD04', N'Nguyen Xuan Kien', CAST(N'2000-01-04T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD05', N'Phan Duc Le', CAST(N'1993-10-17T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 7 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD06', N'Bui Van Hieu', CAST(N'1992-05-31T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD07', N'Huynh Van Thanh', CAST(N'1999-02-10T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 7 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD08', N'Tran Hoang Son', CAST(N'1990-03-31T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 10 nam', N'Lech vai phai', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD09', N'Le Hoang Thien', CAST(N'2001-12-21T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'BD10', N'Thanos', CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 100 nam', N'Rat khoe manh', N'BDFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT01', N'Nguyen Van Buoc', CAST(N'1985-07-13T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT02', N'Nguyen Thanh Hien', CAST(N'1993-04-16T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 4 nam', N'Lech vai', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT03', N'Ho Truong Khang', CAST(N'1994-09-26T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT04', N'Tran Tuan Thanh', CAST(N'1998-01-14T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT05', N'Nguyen Tran Mila', CAST(N'1989-11-16T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT06', N'Nguyen Hoang Duy', CAST(N'1999-06-04T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT07', N'Vo Thanh Hau', CAST(N'1999-05-27T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT08', N'Ngo Duc Thang', CAST(N'1986-03-03T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT09', N'Le Tan Phi', CAST(N'1995-01-02T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'DT10', N'Mia Khalid', CAST(N'1996-02-26T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'DTFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA01', N'Tran Buu Ngoc', CAST(N'1991-02-26T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA02', N'Nguyen Canh Anh', CAST(N'2000-01-11T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA03', N'Nguyen Huu Anh Tai', CAST(N'1996-02-27T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA04', N'Au Duong Quan', CAST(N'1998-04-30T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA05', N'Luong Xuan Truong', CAST(N'1995-06-13T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 4 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA06', N'Nguyen Phong Hong Duy', CAST(N'1998-02-18T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA07', N'Tran Minh Vuong', CAST(N'1999-08-19T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA08', N'Nguyen Van Toan', CAST(N'1996-04-12T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA09', N'Nguyen Huu Canh', CAST(N'1998-01-01T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HA10', N'Nguyen Thanh Dat', CAST(N'2000-07-10T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HAGL')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN01', N'Bui Tan Truong', CAST(N'1986-02-19T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN02', N'Nguyen Van Dung', CAST(N'1994-04-01T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN03', N'Dau Van Toan', CAST(N'1984-04-02T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN04', N'Manh Ngoc Ha', CAST(N'1998-04-23T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN05', N'Nguyen Van Quyet', CAST(N'1995-06-13T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 4 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN06', N'Moses Oloya', CAST(N'1998-03-08T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN07', N'Lebron James', CAST(N'1995-03-19T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN08', N'Giannis Harden', CAST(N'1999-12-12T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN09', N'Pham Duc Huy', CAST(N'2000-11-23T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'HN10', N'Nguyen Thanh Cong', CAST(N'2000-08-10T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HNFC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG01', N'Nguyen Thanh Thang', CAST(N'1988-12-14T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 10 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG02', N'Ngo Tung Quoc', CAST(N'1988-01-27T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG03', N'Nguyen Tang Tien', CAST(N'1994-01-31T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 3 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG04', N'Ngo Viet Phu', CAST(N'1999-06-13T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 2 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG05', N'Sam Ngoc Duc', CAST(N'1995-12-11T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG06', N'Tran Thanh Binh', CAST(N'1989-09-10T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 8 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG07', N'Seo Yonh Duk', CAST(N'1994-09-19T00:00:00.000' AS DateTime), N'Ngoai Nuoc', N'Thi Dau 6 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG08', N'Ngo Hoang Thinh', CAST(N'1993-07-17T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 5 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG09', N'Do Van Thuan', CAST(N'2000-05-15T00:00:00.000' AS DateTime), N'Trong Nuoc', N'Thi Dau 1 nam', N'Khoe manh', N'HCMC')
INSERT [dbo].[CAUTHU] ([MaCauThu], [TenCauThu], [NgaySinh], [LoaiCauThu], [ThoiGianThiDau], [TinhTrang], [MaDoi]) VALUES (N'SG10', N'Vo Huy Toan', CAST(N'1999-01-23T00:00:00.000' AS DateTime), N'Trong Nuoc', N' Thi Dau 1 nam ', N'Khoe manh', N'HCMC')
INSERT [dbo].[DANGNHAP] ([TaiKhoan], [MatKhau]) VALUES (N'ADMIN', N'ADMIN')
INSERT [dbo].[DOIBONG] ([MaDoi], [TenDoi], [SanNha], [SoCauThu], [DiemSo], [BanThang], [BanThua]) VALUES (N'AGFC', N'An Giang', N'SVD An Giang', 10, 11, 7, 3)
INSERT [dbo].[DOIBONG] ([MaDoi], [TenDoi], [SanNha], [SoCauThu], [DiemSo], [BanThang], [BanThua]) VALUES (N'BDFC', N'Binh Dinh', N'SVD Quy Nhon', 10, 13, 8, 3)
INSERT [dbo].[DOIBONG] ([MaDoi], [TenDoi], [SanNha], [SoCauThu], [DiemSo], [BanThang], [BanThua]) VALUES (N'DTFC', N'Dong Thap', N'SVD Dong Thap', 10, 2, 0, 8)
INSERT [dbo].[DOIBONG] ([MaDoi], [TenDoi], [SanNha], [SoCauThu], [DiemSo], [BanThang], [BanThua]) VALUES (N'HAGL', N'Hoang Anh Gia Lai', N'Gia Lai', 10, 10, 10, 6)
INSERT [dbo].[DOIBONG] ([MaDoi], [TenDoi], [SanNha], [SoCauThu], [DiemSo], [BanThang], [BanThua]) VALUES (N'HCMC', N'Tp.Ho Chi Minh', N'SVD Thong Nhat', 10, 8, 5, 4)
INSERT [dbo].[DOIBONG] ([MaDoi], [TenDoi], [SanNha], [SoCauThu], [DiemSo], [BanThang], [BanThua]) VALUES (N'HNFC', N'Ha Noi', N'My Dinh', 10, 5, 2, 8)
INSERT [dbo].[LOAIBANTHANG] ([LOAIBANTHANG]) VALUES (N'TrucTiep')
INSERT [dbo].[LOAIBANTHANG] ([LOAIBANTHANG]) VALUES (N'Penalty')
INSERT [dbo].[LOAIBANTHANG] ([LOAIBANTHANG]) VALUES (N'DaPhat')
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB001', N'HAGL', N'HCMC', CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'05:00:00' AS Time), N'Gia Lai', N'30', N'VB', 3, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB002', N'HNFC', N'HCMC', CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'05:00:00' AS Time), N'SVD Thong Nhat', N'03', N'VB', 0, 3)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB003', N'HAGL', N'HCMC', CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'07:00:00' AS Time), N'Gia Lai', N'11', N'VB', 1, 1)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB004', N'HAGL', N'HNFC', CAST(N'2020-01-05T00:00:00.000' AS DateTime), CAST(N'03:00:00' AS Time), N'Gia Lai', N'30', N'VB', 3, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB005', N'HNFC', N'HCMC', CAST(N'2020-01-07T00:00:00.000' AS DateTime), CAST(N'03:00:00' AS Time), N'My Dinh', N'00', N'VB', 0, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB006', N'HNFC', N'HAGL', CAST(N'2020-01-09T00:00:00.000' AS DateTime), CAST(N'05:00:00' AS Time), N'My Dinh', N'22', N'VB', 2, 2)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB007', N'DTFC', N'AGFC', CAST(N'2020-01-13T00:00:00.000' AS DateTime), CAST(N'04:00:00' AS Time), N'SVD Dong Thap', N'03', N'VB', 0, 3)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB008', N'DTFC', N'BDFC', CAST(N'2020-01-14T00:00:00.000' AS DateTime), CAST(N'05:00:00' AS Time), N'SVD Dong Thap', N'03', N'VB', 0, 3)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB009', N'AGFC', N'BDFC', CAST(N'2020-01-15T00:00:00.000' AS DateTime), CAST(N'05:00:00' AS Time), N'SVD An Giang', N'20', N'VB', 2, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB010', N'AGFC', N'BDFC', CAST(N'2020-01-16T00:00:00.000' AS DateTime), CAST(N'05:30:00' AS Time), N'SVD An Giang', N'11', N'VB', 1, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB011', N'BDFC', N'AGFC', CAST(N'2020-01-17T00:00:00.000' AS DateTime), CAST(N'06:00:00' AS Time), N'SVD Quy Nhon', N'20', N'VB', 2, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB012', N'BDFC', N'DTFC', CAST(N'2020-01-18T00:00:00.000' AS DateTime), CAST(N'07:00:00' AS Time), N'SVD Quy Nhon', N'10', N'VB', 1, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB013', N'HAGL', N'AGFC', CAST(N'2020-01-19T00:00:00.000' AS DateTime), CAST(N'07:30:00' AS Time), N'Gia Lai', N'11', N'VB', 1, 1)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB014', N'HAGL', N'DTFC', CAST(N'2020-01-20T00:00:00.000' AS DateTime), CAST(N'04:00:00' AS Time), N'Gia Lai', N'00', N'VB', 0, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB015', N'HAGL', N'BDFC', CAST(N'2020-01-21T00:00:00.000' AS DateTime), CAST(N'04:00:00' AS Time), N'Gia Lai', N'02', N'VB', 0, 2)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB016', N'HNFC', N'BDFC', CAST(N'2020-01-22T00:00:00.000' AS DateTime), CAST(N'04:30:00' AS Time), N'Gia Lai', N'00', N'VB', 0, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB017', N'HNFC', N'AGFC', CAST(N'2020-01-23T00:00:00.000' AS DateTime), CAST(N'05:30:00' AS Time), N'Gia Lai', N'02', N'VB', 0, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB018', N'HNFC', N'DTFC', CAST(N'2020-01-24T00:00:00.000' AS DateTime), CAST(N'05:00:00' AS Time), N'Gia Lai', N'00', N'VB', 0, 0)
INSERT [dbo].[TRANDAU] ([MaTranDau], [DoiChuNha], [DoiKhach], [NgayThiDau], [GioThiDau], [SanThiDau], [TySo], [MaVongDau], [BANTHANGDN], [BANTHANGKH]) VALUES (N'VB019', N'HCMC', N'DTFC', CAST(N'2020-01-25T00:00:00.000' AS DateTime), CAST(N'06:00:00' AS Time), N'Gia Lai', N'10', N'VB', 1, 0)
INSERT [dbo].[VONGDAU] ([MaVongDau], [TenVongDau]) VALUES (N'BK', N'BanKet')
INSERT [dbo].[VONGDAU] ([MaVongDau], [TenVongDau]) VALUES (N'CK', N'ChungKet')
INSERT [dbo].[VONGDAU] ([MaVongDau], [TenVongDau]) VALUES (N'TK', N'TuKet')
INSERT [dbo].[VONGDAU] ([MaVongDau], [TenVongDau]) VALUES (N'VB', N'VB')
INSERT [dbo].[VONGDAU] ([MaVongDau], [TenVongDau]) VALUES (N'VMS', N'Vong16')
USE [master]
GO
ALTER DATABASE [QLYGIAIBD] SET  READ_WRITE 
GO

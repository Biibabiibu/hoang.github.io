
GO
ALTER TABLE [dbo].[tblQuyen] DROP CONSTRAINT [FK_tblQuyen_tblNguoiSuDung1]
GO
ALTER TABLE [dbo].[tblQuyen] DROP CONSTRAINT [FK_tblQuyen_tblChucNang1]
GO
ALTER TABLE [dbo].[tblPhieuXuat] DROP CONSTRAINT [FK_tblPhieuXuat_tblNguoiBan]
GO
ALTER TABLE [dbo].[tblPhieuXuat] DROP CONSTRAINT [FK_tblPhieuXuat_tblKhachHang]
GO
ALTER TABLE [dbo].[tblPhieuNhap] DROP CONSTRAINT [FK_tblPhieuNhap_tblNCC]
GO
ALTER TABLE [dbo].[tblDongDH] DROP CONSTRAINT [FK_tblDongDH_tblDonHang]
GO
ALTER TABLE [dbo].[tblDongDH] DROP CONSTRAINT [FK_tblDongDH_tblDienThoai]
GO
ALTER TABLE [dbo].[tblDienThoai] DROP CONSTRAINT [FK_tblDienThoai_tblNSX]
GO
/****** Object:  Table [dbo].[tblTemp]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblTemp]
GO
/****** Object:  Table [dbo].[tblQuyen]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblQuyen]
GO
/****** Object:  Table [dbo].[tblPhieuXuat]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblPhieuXuat]
GO
/****** Object:  Table [dbo].[tblPhieuNhap]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblPhieuNhap]
GO
/****** Object:  Table [dbo].[tblNSX]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblNSX]
GO
/****** Object:  Table [dbo].[tblNguoiSuDung]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblNguoiSuDung]
GO
/****** Object:  Table [dbo].[tblNguoiBan]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblNguoiBan]
GO
/****** Object:  Table [dbo].[tblNCC]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblNCC]
GO
/****** Object:  Table [dbo].[tblLuotTruyCap]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblLuotTruyCap]
GO
/****** Object:  Table [dbo].[tblLienHe]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblLienHe]
GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblKhachHang]
GO
/****** Object:  Table [dbo].[tblDonHang]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblDonHang]
GO
/****** Object:  Table [dbo].[tblDongPX]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblDongPX]
GO
/****** Object:  Table [dbo].[tblDongPN]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblDongPN]
GO
/****** Object:  Table [dbo].[tblDongDH]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblDongDH]
GO
/****** Object:  Table [dbo].[tblDienThoai]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblDienThoai]
GO
/****** Object:  Table [dbo].[tblComment]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblComment]
GO
/****** Object:  Table [dbo].[tblChucNang]    Script Date: 12/11/2020 5:40:16 PM ******/
DROP TABLE [dbo].[tblChucNang]
GO
/****** Object:  Table [dbo].[tblChucNang]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChucNang](
	[IDChucNang] [int] IDENTITY(1,1) NOT NULL,
	[TenChucNang] [nvarchar](50) NULL,
	[Mota] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblChucNang] PRIMARY KEY CLUSTERED 
(
	[IDChucNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblComment]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComment](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[IDDT] [nchar](10) NOT NULL,
	[TieuDe] [nvarchar](250) NULL,
	[Comments] [ntext] NULL,
	[TaiKhoan] [nvarchar](50) NOT NULL,
	[NgayDang] [datetime] NULL,
 CONSTRAINT [PK_tblComment_1] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC,
	[IDDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDienThoai]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDienThoai](
	[IDDT] [nchar](10) NOT NULL,
	[IDNSX] [int] NOT NULL,
	[TenDT] [nvarchar](250) NOT NULL,
	[Gia] [money] NULL,
	[SoLuong] [int] NULL,
	[KichThuoc] [nvarchar](230) NULL,
	[TrongLuong] [nvarchar](230) NULL,
	[Camera] [nvarchar](250) NULL,
	[TheNho] [tinyint] NULL,
	[CongNghe3G] [tinyint] NULL,
	[Wifi] [tinyint] NULL,
	[Java] [tinyint] NULL,
	[Pin] [nvarchar](250) NULL,
	[ThoiGianCho] [nvarchar](250) NULL,
	[ThoiGianDamThoai] [nvarchar](250) NULL,
	[BaoHanh] [nvarchar](250) NULL,
	[PhuKien] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](250) NULL,
	[HinhAnh2] [nvarchar](250) NULL,
	[HinhAnh3] [nvarchar](250) NULL,
	[HinhAnh4] [nvarchar](250) NULL,
	[LuotXem] [int] NULL,
	[NCC] [int] NULL,
 CONSTRAINT [PK_tblDienThoai] PRIMARY KEY CLUSTERED 
(
	[IDDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDongDH]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDongDH](
	[IDDonHang] [int] NOT NULL,
	[IDDT] [nchar](10) NOT NULL,
	[SLMua] [int] NULL,
	[Gia] [money] NULL,
 CONSTRAINT [PK_tblDongDH] PRIMARY KEY CLUSTERED 
(
	[IDDonHang] ASC,
	[IDDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDongPN]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDongPN](
	[IDDPN] [int] IDENTITY(1,1) NOT NULL,
	[SoPN] [int] NULL,
	[IDDT] [nvarchar](250) NULL,
	[TenDT] [nvarchar](250) NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDongPX]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDongPX](
	[SoPX] [int] NOT NULL,
	[IDDT] [nchar](10) NOT NULL,
	[SoLuongMua] [int] NULL,
	[GiaBan] [money] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDonHang]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDonHang](
	[IDDonHang] [int] NOT NULL,
	[TaiKhoan] [nvarchar](50) NULL,
	[MaKH] [int] NULL,
	[NgayLap] [nvarchar](50) NULL,
	[DiaChiGiao] [nvarchar](50) NULL,
	[TongTien] [money] NULL,
	[TrangThai] [tinyint] NULL,
	[NgayHuy] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblDonHang] PRIMARY KEY CLUSTERED 
(
	[IDDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhachHang]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](20) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[MaTK] [nvarchar](50) NULL,
	[SoTien] [money] NULL,
 CONSTRAINT [PK_tblKhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLienHe]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLienHe](
	[MaLienHe] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tblLienHe] PRIMARY KEY CLUSTERED 
(
	[MaLienHe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLuotTruyCap]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLuotTruyCap](
	[SoNguoi] [bigint] NOT NULL,
	[Ngay] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNCC]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNCC](
	[IDNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[GioiThieu] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblNCC] PRIMARY KEY CLUSTERED 
(
	[IDNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguoiBan]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiBan](
	[MaNV] [int] NOT NULL,
	[TenNV] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblNguoiBan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguoiSuDung]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiSuDung](
	[TenDangNhap] [nvarchar](20) NOT NULL,
	[MatKhau] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Quyen] [tinyint] NULL,
 CONSTRAINT [PK_tblNguoiSuDung] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNSX]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNSX](
	[IDNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](50) NOT NULL,
	[GioiThieu] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblNSX] PRIMARY KEY CLUSTERED 
(
	[IDNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuNhap]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuNhap](
	[SoPN] [int] NOT NULL,
	[NgayNhap] [datetime] NULL,
	[MaNCC] [int] NULL,
 CONSTRAINT [PK_tblPhieuNhap] PRIMARY KEY CLUSTERED 
(
	[SoPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuXuat]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuXuat](
	[SoPX] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayXuat] [datetime] NULL,
	[DiaChiGiao] [nvarchar](250) NULL,
	[TongTien] [money] NULL,
	[MaNV] [int] NULL,
 CONSTRAINT [PK_tblPhieuXuat] PRIMARY KEY CLUSTERED 
(
	[SoPX] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblQuyen]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuyen](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](20) NOT NULL,
	[IDChucNang] [int] NOT NULL,
	[MoTa] [nvarchar](250) NULL,
	[Page] [nvarchar](50) NULL,
	[Macdinh] [int] NULL,
 CONSTRAINT [PK_tblQuyen] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTemp]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTemp](
	[SOPN] [int] NULL,
	[IDDT] [nchar](10) NULL,
	[TenDT] [nvarchar](250) NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [money] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTinTuc]    Script Date: 12/11/2020 5:40:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

SET IDENTITY_INSERT [dbo].[tblChucNang] ON 

INSERT [dbo].[tblChucNang] ([IDChucNang], [TenChucNang], [Mota]) VALUES (1, N'Enable', N'Mở các trang quản lý')
INSERT [dbo].[tblChucNang] ([IDChucNang], [TenChucNang], [Mota]) VALUES (2, N'Disable', N'Khóa các trang quản lý')
SET IDENTITY_INSERT [dbo].[tblChucNang] OFF
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'IP11      ', 6, N'iPhone 11 64GB', 15500000.0000, 2, N'150.9mm - 75.7mm - 8.3mm', N'194 g', N'12 MP, ƒ/2.2 aperture', 0, 1, 1, 0, N'3110 mAh', N'500', N'5', N'12 tháng', N'', N'iphong11-64gb.jpg', N'iphong11-64gb-1.jpg', N'iphong11-64gb-2.jpg', N'iphong11-64gb-3.jpg', 7, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'IPX       ', 6, N'iPhone X', 19000000.0000, 5, N'143.6 x 70.9 x 7.7 mm (5.65 x 2.79 x 0.30 in)', N'174 g', N'	7 MP (f/2.2, 32mm), 1080p@30fps, 720p@240fps, nhận diện khuôn mặt, HDR', 0, 1, 1, 0, N'2716 mAh', N'200 giờ', N'14 giờ', N'12 tháng', N'', N'iphone_x_256gb-removebg-preview.png.jpg', N'iphone-x-256gb-org-28-removebg-preview.png.jpg', N'iphone-x-256gb-org-18-removebg-preview.png.jpg', N'iphone-x-256gb-org-10-removebg-preview.png.jpg', 0, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'IPXR      ', 6, N'iPhone XR 128GB', 14690000.0000, 5, N'150,9 x 75,7 x 8,3 mm', N'194 g', N'12MP', 0, 1, 1, 0, N'2942 mAh', N'200 giờ', N'14 giờ', N'12 tháng', N'', N'iphone-xr_4_-removebg-preview.png.jpg', N'iphone-xr-org-28-removebg-preview.png.jpg', N'iphone-xr-org-19-removebg-preview.png.jpg', N'iphone-xr-org-10-removebg-preview.png.jpg', 1, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'OPA12     ', 4, N'OPPO A12', 3390000.0000, 6, N'Dài 155.9 mm - Ngang 75.5 mm - Dày 8.3 mm', N'165 g', N'5 MP', 0, 1, 1, 0, N'4230 mAh', N'9 giờ', N'11 giờ', N'24 tháng', N'', N'oppo-a12-xanh-400x460-400x460.png.jpg', N'oppo-a12-org-28-removebg-preview.png.jpg', N'oppo-a12-org-19-removebg-preview.png.jpg', N'oppo-a12-org-10-removebg-preview.png.jpg', 3, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'OPA53     ', 4, N'Oppo A53', 4490000.0000, 6, N'163.9 x 75.1 x 8.4 mm', N'186 g', N'16 MP, f/2.0, (wide), 1/3.06", 1.0µm', 1, 1, 1, 0, N'5000 mAh', N'600 giờ', N'7 giờ', N'12 tháng', N'', N'_0001_photo_2020-08-28_08-34-33-removebg-preview.png.jpg', N'oppo-a53-2020-org-28-removebg-preview.png.jpg', N'oppo-a53-2020-org-19-removebg-preview.png.jpg', N'oppo-a53-2020-org-10-removebg-preview.png.jpg', 0, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'OPA92     ', 4, N'Oppo A92', 5590000.0000, 5, N'162 x 75.5 x 8.9 mm', N'192 g', N'16 MP, f/2.0, (wide), 1/3.1, 1.0µm', 1, 1, 1, 0, N' 5000 mAh', N'450 giờ', N'7 giờ', N'12 tháng', N'', N'oppo_a92-removebg-preview.png.jpg', N'oppo-a92-org-28-removebg-preview.png.jpg', N'oppo-a92-org-19-removebg-preview.png.jpg', N'oppo-a92-org-10-removebg-preview.png.jpg', 1, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'OPA93     ', 4, N'OPPO A93', 6590000.0000, 6, N'7.48mm x 73.8mm x 160.1mm', N'164 g', N'16 MP, f/2.4, (wide), 1/3", 1.0µm', 1, 1, 1, 0, N'4000mAh', N'500 giờ', N'6 giờ', N'12 tháng', N'', N'combo_-_a93-white_2.png.jpg', N'oppo-a93-org-28-removebg-preview.png.jpg', N'oppo-a93-org-19-removebg-preview.png.jpg', N'oppo-a93-org-10-removebg-preview.png.jpg', 0, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'OPFX2     ', 4, N'Oppo Find X2', 17890000.0000, 6, N'Dài 164.9 -Ngang 74.5 -Dày 8 mm', N'196 g', N'32 MP', 0, 1, 1, 0, N'4200 mAh', N'600 giờ', N'7 giờ', N'12 tháng', N'', N'637191049692122812_oppo-find-x2-xanh-1-removebg-preview.png.jpg', N'oppo-find-x2-org-28-removebg-preview.png.jpg', N'oppo-find-x2-org-19-removebg-preview.png.jpg', N'oppo-find-x2-org-10-removebg-preview.png.jpg', 2, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'OPR4      ', 4, N'Oppo Reno4', 11990000.0000, 5, N'160.3 x 73.9 x 7.7 mm', N'165g', N'32 MP', 0, 1, 1, 0, N'4015 mAh', N'330 giờ', N'5 giờ', N'12 tháng', N'', N'_0001_combo_-_reno4_pro_-_white-removebg-preview.png.jpg', N'oppo-reno4-pro-1-org-28-removebg-preview.png.jpg', N'oppo-reno4-pro-1-org-19-removebg-preview.png.jpg', N'oppo-reno4-pro-1-org-10-removebg-preview.png.jpg', 2, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'PIN       ', 15, N'Pin sạc dự phòng Xiaomi Redmi 20000mah sạc nhanh 18W', 430000.0000, 5, N'không', N'không', N'không', 0, 0, 0, 0, N'20000Mah', N'1440 giờ', N'16 giờ', N'12 tháng', N'', N'e3e503071fe06b5800fc264f95fddbca-removebg-preview_1-removebg-preview.png.jpg', N'05d5ceed13cf249556fbbd01ca1844d8-removebg-preview.png.jpg', N'8ade31fdccf8711816a5714db0a4f034-removebg-preview.png.jpg', N'Untitled-2.jpg', 0, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'R5I       ', 5, N'Realme 5i', 3390000.0000, 5, N'Dài 165.4 mm - Ngang 75.6 mm - Dày 9.3 mm', N'198 g', N'8 MP', 1, 1, 1, 0, N'5000 mAh', N'430 giờ', N'5.5 giờ', N'12 tháng', N'', N'637123489264613139_realme-5i-green-1-removebg-preview.png.jpg', N'realme-5i-4gb-org-28-removebg-preview.png.jpg', N'realme-5i-4gb-org-19-removebg-preview.png.jpg', N'realme-5i-4gb-org-10-removebg-preview.png.jpg', 2, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'R6I       ', 5, N'Realme 6i', 4790000.0000, 6, N'Dài 168.4 mm - Ngang 75.4 mm - Dày 9.0 mm', N'199 g', N'16 MP', 1, 1, 1, 0, N'5000 mAh', N'9', N'11', N'12 tháng', N'', N'realme_6i.png.jpg', N'realme-6i-360-org-28-removebg-preview.png.jpg', N'realme-6i-360-org-19-removebg-preview.png.jpg', N'realme-6i-360-org-10-removebg-preview.png.jpg', 0, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'R6P       ', 5, N'Realme 6 Pro', 7290000.0000, 5, N'163.8 x 75.8 x 8.9 mm', N'202 g', N'Chính 16 MP & Phụ 8 MP', 1, 1, 1, 0, N'	4300 mAh', N'8.5', N'9', N'12 tháng', N'', N'637201240317028744_realme-6pro-do-1_1_2-removebg-preview.png.jpg', N'realme-6-pro-org-28-removebg-preview.png.jpg', N'realme-6-pro-org-19-removebg-preview.png.jpg', N'realme-6-pro-org-10-removebg-preview.png.jpg', 1, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'R7I       ', 5, N'Realme 7i', 6290000.0000, 5, N'Dài 164.1 mm - Ngang 75.5 mm - Dày 8.5 mm', N'188 g', N'16 MP', 1, 1, 1, 0, N'5000 mAh', N'9', N'11', N'12 tháng', N'', N'realme-7i-xanh-la_1-removebg-preview.png.jpg', N'realme-7i-org-28-removebg-preview.png.jpg', N'realme-7i-org-19-removebg-preview.png.jpg', N'realme-7i-org-10-removebg-preview.png.jpg', 2, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SAC       ', 15, N'Sạc Aukey Pa-F3 30W 2 cổng Usb-A + Type C', 490000.0000, 5, N'không', N'không', N'không', 0, 0, 0, 0, N'', N'', N'', N'', N'', N'1f407ab52ccd752418ce665690af4886-removebg-preview.png.jpg', N'8167783ee455d20817d1da8db1e05468.jpg', N'a7d6c6606b92838738be1bddc34b02f6.jpg', N'fc717aabfcea38c77669c1beedf813f8.png.jpg', 1, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SSA21S    ', 2, N'Samsung Galaxy A21s', 4250000.0000, 5, N'163.6 x 75.3 x 8.9 mm', N'192 g', N'13 MP, f/2.2, (wide), 1/3.1", 1.12µm', 1, 1, 1, 0, N'5000 mAh', N'300 giờ', N'6 giờ', N'12 tháng', N'', N'a21s_0002_layer_1_2-removebg-preview.png.jpg', N'samsung-galaxy-a21s-org-28-removebg-preview.png.jpg', N'samsung-galaxy-a21s-org-19-removebg-preview.png.jpg', N'samsung-galaxy-a21s-org-10-removebg-preview.png.jpg', 7, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SSA31     ', 2, N'Samsung Galaxy A31', 5950000.0000, 15, N'159.1 x 73.1 x 8.54 mm', N'185 g', N'20 MP', 1, 1, 1, 0, N'5.000  mAh', N'500 giờ', N'5.5 giờ', N'12 tháng', N'', N'3_48_27-removebg-preview.png.jpg', N'samsung-galaxy-a31-org-28-removebg-preview.png.jpg', N'samsung-galaxy-a31-org-19-removebg-preview.png.jpg', N'samsung-galaxy-a31-org-10-removebg-preview.png.jpg', 1, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SSA51     ', 2, N'Samsung galaxy A51', 7100000.0000, 10, N'Dài 158.4 mm - Ngang 73.7 mm - Dày 7.9 mm', N'172 g', N'32MP', 1, 1, 1, 0, N'4000 mAh', N'600 giờ', N'5.5 giờ', N'12 tháng', N'', N'galaxy-a51-2020_qaus-sa_2_2_6_2-removebg-preview.png.jpg', N'samsung-galaxy-a51-8gb-org-28-removebg-preview.png.jpg', N'samsung-galaxy-a51-8gb-org-19-removebg-preview.png.jpg', N'samsung-galaxy-a51-8gb-org-10-removebg-preview.png.jpg', 1, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SSA71     ', 2, N'Samsung Galaxy A71', 8400000.0000, 10, N'163.6 x 76 x 7.7 mm', N'179 g', N'32 MP', 1, 1, 1, 0, N'4500 mAh', N'600 giờ', N'5 giờ', N'12 tháng', N'', N'xanh_78l4-a2_1_2_1-removebg-preview.png.jpg', N'samsung-galaxy-a71-org-28-removebg-preview.png.jpg', N'samsung-galaxy-a71-org-19-removebg-preview.png.jpg', N'samsung-galaxy-a71-org-10-removebg-preview.png.jpg', 0, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SSN20U    ', 2, N'Samsung Galaxy Note 20 Ultra', 22250000.0000, 10, N'164.8 x 77.2 x 8.1 mm', N'	208 g', N'	10 MP, f/2.2, 26mm (wide), 1/3.2", 1.22µm, Dual Pixel PDAF', 0, 1, 1, 0, N'4500 mAh', N'500 giờ', N'5 giờ', N'12 tháng', N'', N'samsung.jpg', N'samsung-2c.jpg', N'samsung-3c.jpg', N'samsung-4c.jpg', 106, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'SSZF      ', 2, N'Samsung Galaxy Z Flip', 32000000.0000, 5, N'-G?p l?i : 73,6 x 87,4 x 17,3mm (B?n l?) - 15,4mm , - M? ra: 73,6 x 167,3 x 7,2mm -Màn hình : 6,9mm', N'183g', N'	- Kích thước pixel: 1,22μm - FOV: 80˚ - - F.Không (khẩu độ): F2.4', 0, 1, 1, 0, N'3300mAh , 900 mAh', N'950', N'25', N'12 tháng', N'', N'637171004138250826_ss-z-flip-den-1-removebg-preview.png.jpg', N'samsung-galaxy-z-flip-org-28-removebg-preview.png.jpg', N'samsung-galaxy-z-flip-org-19-removebg-preview.png.jpg', N'samsung-galaxy-z-flip-org-10-removebg-preview.png.jpg', 4, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'TNKD      ', 15, N'Tai nghe không dây Xiaomi True Wireless Earbuds Basic', 550000.0000, 5, N'không', N'không', N'không', 0, 0, 0, 0, N'không', N'không', N'không', N'12 tháng', N'', N'1161517240_1-removebg-preview.png-1.jpg', N'1567615096_1503854_1-removebg-preview.png.jpg', N'1161517240_1-removebg-preview.png.jpg', N'tai-nghe-redmi-airdots-20_1-removebg-preview.png.jpg', 2, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'VSAC3     ', 3, N'Vsmart Active 3', 3290000.0000, 7, N'Dài 166.25 mm - Ngang 75.62 mm - Dày 8.83 mm', N'183 g', N'16MP', 1, 1, 1, 0, N'4020 mAh', N'600 giờ', N'6.5 giờ', N'12 tháng', N'', N'vsmart-active-3_1_-removebg-preview.png.jpg', N'vsmart-active-3-6gb-org-28-removebg-preview.png.jpg', N'vsmart-active-3-6gb-org-19-removebg-preview.png.jpg', N'vsmart-active-3-6gb-org-10-removebg-preview.png.jpg', 0, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'VSAP      ', 3, N'Vsmart Aris Pro ', 8990000.0000, 8, N'156.2 x 75.04 x 8.55 mm', N'128 GB', N'Camera ẩn dưới màn hình 20MP, công nghệ xử lý hình ảnh AI VCam Kristal', 0, 1, 1, 1, N'	4,000mAh', N'475 giờ', N'5.5 giờ', N'12 tháng', N'', N'vsmart-aris-pro-green-400png-2-400x400-removebg-preview.png.jpg', N'vsmart-aris-pro-360-org-28-removebg-preview.png.jpg', N'vsmart-aris-pro-360-org-19-removebg-preview.png.jpg', N'vsmart-aris-pro-360-org-10-removebg-preview.png.jpg', 4, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'VSJ3      ', 3, N'Vsmart joy 3', 2590000.0000, 8, N'165.13 x 76..4 x 9.19 mm', N'192 g', N'8 MP', 1, 1, 1, 0, N'5000 mAh', N'430 giờ', N'17 giờ', N'12 tháng', N'', N'joy-3-4g-den-removebg-preview.png.jpg', N'vsmart-joy-3-4gb-org-28-removebg-preview.png.jpg', N'vsmart-joy-3-4gb-org-19-removebg-preview.png.jpg', N'vsmart-joy-3-4gb-org-10-removebg-preview.png.jpg', 0, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'VSJ4      ', 3, N'Vsmart joy 4', 3290000.0000, 4, N'163.65 mm x 77.65 mm x 9.15 mm', N'203g', N'13MP', 1, 1, 1, 0, N'5000 mAh', N'430 giờ', N'7 giờ', N'12 tháng', N'', N'vsmart-joy-4-4gb-64gb-171020-021049-400x460.png.jpg', N'vsmart-joy-4-4gb-64gb-360-org-28-removebg-preview.png.jpg', N'vsmart-joy-4-4gb-64gb-360-org-19-removebg-preview.png.jpg', N'vsmart-joy-4-4gb-64gb-360-org-10-removebg-preview.png.jpg', 0, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'VSLIVE    ', 3, N'Vsmart live', 3790000.0000, 6, N'Dài 152 mm - Ngang 74.4 mm - Dày 8.3 mm', N'175 g', N'20MP', 0, 1, 1, 0, N'4000 mAh', N'475 giờ', N'6 giờ', N'12 tháng', N'', N'vsmart-live-xanh_1-removebg-preview.png.jpg', N'vsmart-live-6gb-org-28-removebg-preview.png.jpg', N'vsmart-live-6gb-org-19-removebg-preview.png.jpg', N'vsmart-live-6gb-org-10-removebg-preview.png.jpg', 0, 4)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'VSLIVE4   ', 3, N'Vsmart live 4', 4290000.0000, 5, N'162.4 x 76.5 x 8.9 mm', N'217g', N'13MP', 0, 1, 1, 0, N'5000 mAh', N'450 giờ', N'6 giờ', N'12 tháng', N'', N'vsmart-live-4-6gb-243620-073652-400x460.png.jpg', N'vsmart-live-4-6gb-org-28-removebg-preview.png.jpg', N'vsmart-live-4-6gb-org-19-removebg-preview.png.jpg', N'vsmart-live-4-6gb-org-10-removebg-preview.png.jpg', 1, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'XMM10T    ', 1, N'Xiaomi Mi 10T Pro 5G', 12990000.0000, 10, N'165.1 x 76.4 x 9.3 mm', N'218 g', N'20 MP, f/2.2, 27mm (wide), 1/3.4", 0.8µm', 0, 1, 1, 0, N'5000 mAh', N'850', N'12', N'24 tháng', N'', N'Xiaomi-Mi-10T-Pro-5G.jpg', N'Xiaomi-Mi-10T-Pro-5G-1.jpg', N'Xiaomi-Mi-10T-Pro-5G-2.jpg', N'Xiaomi-Mi-10T-Pro-5G-3.jpg', 32, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'XMN10P    ', 1, N'Xiaomi Mi Note 10 Pro', 10800000.0000, 7, N'Dài 157.8 mm - Ngang 74.2 mm - Dày 9.7 mm', N'208 g', N'32 MP', 0, 1, 1, 0, N'5260 mAh', N'400 giờ', N'5.5 giờ', N'12 tháng', N'', N'mi-cc9-pro-blue_1-removebg-preview.png.jpg', N'xiaomi-mi-note-10-pro-360-org-28-removebg-preview.png.jpg', N'xiaomi-mi-note-10-pro-360-org-19-removebg-preview.png.jpg', N'xiaomi-mi-note-10-pro-360-org-10-removebg-preview.png.jpg', 2, 3)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'XMNFC     ', 1, N'Xiaomi POCO X3 NFC', 6990000.0000, 3, N'165.3 x 76.8 x 9.4 mm', N'215 g', N'20 MP, f/2.2, (wide), 1/3.4", 0.8µm', 1, 1, 0, 0, N'Li-Po 5160 mAh, Sạc nhanh 33W', N'600 giờ', N'11 giờ', N'12 tháng', N'', N'xiaomi-poco-x3_1_-removebg-preview.png.jpg', N'xiaomi-poco-x3-org-28-removebg-preview.png.jpg', N'xiaomi-poco-x3-org-19-removebg-preview.png.jpg', N'xiaomi-poco-x3-org-10-removebg-preview.png.jpg', 1, 1)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'XMR9A     ', 1, N'Xiaomi Redmi 9A', 1900000.0000, 9, N'164.9 x 77.07 x 9.0mm', N'194g', N'5MP camera trước, Khẩu độ ƒ/2.2, Chế độ chân dung', 1, 1, 1, 1, N' 5000 mAh', N'400 giờ', N'6.5 giờ', N'12', N'', N'xiaomi-redmi-9a-grey-400x460-400x460.png.jpg', N'xiaomi-redmi-9a-360-org-28-removebg-preview.png.jpg', N'xiaomi-redmi-9a-360-org-19-removebg-preview.png.jpg', N'xiaomi-redmi-9a-360-org-10-removebg-preview.png.jpg', 1, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'XMR9C     ', 1, N'Xiaomi Redmi 9C', 2490000.0000, 5, N'164.9 x 77 x 9 mm', N'196 g', N'5 MP', 1, 1, 1, 0, N'5000 mAh', N'8.5 giờ', N'850 giờ', N'12 tháng', N'', N'redmi-9c_3__1_2-removebg-preview.png.jpg', N'xiaomi-redmi-9c-org-28-removebg-preview.png.jpg', N'xiaomi-redmi-9c-org-19-removebg-preview.png.jpg', N'xiaomi-redmi-9c-org-10-removebg-preview.png.jpg', 3, 2)
INSERT [dbo].[tblDienThoai] ([IDDT], [IDNSX], [TenDT], [Gia], [SoLuong], [KichThuoc], [TrongLuong], [Camera], [TheNho], [CongNghe3G], [Wifi], [Java], [Pin], [ThoiGianCho], [ThoiGianDamThoai], [BaoHanh], [PhuKien], [HinhAnh], [HinhAnh2], [HinhAnh3], [HinhAnh4], [LuotXem], [NCC]) VALUES (N'XMRN8     ', 1, N'Xiaomi Redmi Note 8', 4790000.0000, 9, N'Dài 158.3 mm - Ngang 75.3 mm - Dày 8.4 mm', N'	190 g', N'13 MP', 1, 1, 1, 1, N'	4000 mAh', N'400 giờ', N'11 giờ', N'12 tháng', N'', N'637060410960077373_xiaomi-redmi-note-8-xanh-1-removebg-preview.png.jpg', N'xiaomi-redmi-note-8-org-28-removebg-preview.png.jpg', N'xiaomi-redmi-note-8-org-19-removebg-preview.png.jpg', N'xiaomi-redmi-note-8-org-10-removebg-preview.png.jpg', 11, 4)
INSERT [dbo].[tblDongDH] ([IDDonHang], [IDDT], [SLMua], [Gia]) VALUES (1, N'XMRN8     ', 1, 4790000.0000)
INSERT [dbo].[tblDongDH] ([IDDonHang], [IDDT], [SLMua], [Gia]) VALUES (2, N'IP11      ', 2, 15500000.0000)
INSERT [dbo].[tblDongDH] ([IDDonHang], [IDDT], [SLMua], [Gia]) VALUES (2, N'XMR9C     ', 3, 2490000.0000)
INSERT [dbo].[tblDongDH] ([IDDonHang], [IDDT], [SLMua], [Gia]) VALUES (3, N'XMN10P    ', 3, 10800000.0000)
INSERT [dbo].[tblDongDH] ([IDDonHang], [IDDT], [SLMua], [Gia]) VALUES (3, N'XMNFC     ', 2, 6990000.0000)
SET IDENTITY_INSERT [dbo].[tblDongPN] ON 

INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (175, 0, N'1         ', N'1', 1, 1.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (176, 1, N'1         ', N'1', 1, 1.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (177, 2, N'NOL800    ', N'Nokia Lumia 800 ', 2, 10559000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (178, 2, N'NON9      ', N'Nokia N9 16GB ', 10, 8999000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (179, 3, N'NON8      ', N'Nokia N8', 5, 6899000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (180, 3, N'NOE72     ', N'Nokia E72', 5, 6099000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (182, 3, N'NOL710    ', N'Nokia Lumia 710', 10, 6299000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (183, 3, N'NO1800    ', N'Nokia 1800', 10, 639000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (184, 3, N'NO101', N'Nokia 101', 3, 679000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (185, 3, N'NON302', N'Nokia N302 (Asha 302) ', 8, 2789000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (186, 3, N'NOC5', N'Nokia C5-06', 5, 2979000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (187, 3, N'NOX3', N'Nokia X3-02', 10, 2999000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (188, 4, N'SSS3      ', N'Samsung Galaxy S3 I9300 ', 5, 15899000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (189, 4, N'SSN7000   ', N'Samsung Galaxy Note N7000 ', 10, 14499000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (190, 4, N'SSS2      ', N'Samsung Galaxy S II I9100G ', 10, 11499000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (191, 4, N'SSS5220   ', N'Samsung Star 3 S5220 ', 5, 2543000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (192, 4, N'SSE1050   ', N'Samsung E1050', 15, 399000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (193, 4, N'SSYS5360  ', N'Samsung Galaxy Y S5360 ', 5, 3510000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (194, 4, N'SSi9003   ', N'Samsung Galaxy S i9003 4GB ', 20, 7999000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (195, 4, N'SSYS5360  ', N'Galaxy Y S5360 - New ', 5, 3999000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (196, 4, N'SSE1232   ', N'Samsung E1232B ', 15, 699000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (197, 4, N'SSC3303', N'Samsung C3303 Champ ', 20, 1379000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (198, 5, N'SNLT26i   ', N'Sony Ericsson LT26i (Sony Xperia S LT26i)', 10, 13900000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (199, 5, N'SNLT18I   ', N'Sony Ericsson Xperia arc S LT18i ', 15, 10490000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (200, 5, N'SNMK16    ', N'ricsson XPERIA Pro MK16i ', 5, 8990000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (201, 5, N'SNST18    ', N'Ericsson Xperia ray ST18i ', 4, 6990000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (205, 6, N'LGA190    ', N'LG A190', 50, 449000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (203, 5, N'SNW8      ', N'Ericsson W8 ', 20, 4100000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (204, 5, N'SSLT22I   ', N'Sony Ericsson LT22i (Sony Xperia P) ', 10, 11990000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (206, 6, N'LGGM360i  ', N'LG GM360i', 20, 2649000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (207, 6, N'LGP3.0    ', N'LG Prada 3.0 ', 10, 11989000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (208, 6, N'LGP698    ', N'LG Optimus Net P698 ', 5, 4199000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (209, 6, N'LGE730    ', N'LG Optimus Sol E730 ', 5, 6799000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (181, 3, N'NOC301    ', N'Nokia C3-01.5', 5, 6599000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (210, 7, N'MTMB525   ', N'Motorola Defy MB525 ', 5, 8589000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (211, 7, N'MT720     ', N'Motorola XT720 Milestone ', 15, 7499000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (212, 7, N'IP4       ', N'iPhone 4 16GB', 20, 10999000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (213, 7, N'BB9790    ', N'BlackBerry Bold 9790 ', 5, 11490000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (214, 7, N'PL523     ', N'Philips Xenium X523 ', 5, 3970000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (215, 7, N'PL        ', N'Philips X501 ', 5, 2600000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (216, 7, N'IP4S      ', N'iPhone 4S 16GB', 20, 17499000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (217, 7, N'BB9900    ', N'BlackBerry Bold Touch 9900 ', 5, 14699000.0000)
INSERT [dbo].[tblDongPN] ([IDDPN], [SoPN], [IDDT], [TenDT], [SoLuong], [GiaNhap]) VALUES (218, 7, N'BB9300    ', N'BlackBerry Curve 9300 ', 5, 4840000.0000)
SET IDENTITY_INSERT [dbo].[tblDongPN] OFF
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (1, N'11        ', 1, 16850000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (2, N'7         ', 1, 4180000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (2, N'9         ', 1, 2770000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (3, N'9         ', 1, 2770000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (4, N'6         ', 1, 3500000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (4, N'7         ', 1, 4180000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (4, N'9         ', 1, 2770000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (3, N'9         ', 2, 2770000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (4, N'11        ', 1, 16850000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (4, N'6         ', 1, 3500000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (6, N'SSGN7     ', 1, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (21, N'SSGN7     ', 1, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (21, N'AP4GS-64  ', 1, 18590000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (10, N'AP4GS-64  ', 1, 18590000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (11, N'AP4GS-64  ', 1, 18590000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (12, N'AP4GS-64  ', 1, 18590000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (14, N'SSGN7     ', 4, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (12, N'SSGN7     ', 4, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (13, N'SSGN7     ', 1, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (14, N'SSGN7     ', 2, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (14, N'SSGN7     ', 1, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (15, N'SSGN7     ', 1, 12490000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (19, N'          ', 0, 0.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (20, N'AP4GS-64  ', 1, 16000000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (21, N'AP4GS-64  ', 1, 16000000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (1, N'XMR9A     ', 1, 1900000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (2, N'VSAP      ', 1, 8990000.0000)
INSERT [dbo].[tblDongPX] ([SoPX], [IDDT], [SoLuongMua], [GiaBan]) VALUES (3, N'IP11      ', 1, 15500000.0000)
INSERT [dbo].[tblDonHang] ([IDDonHang], [TaiKhoan], [MaKH], [NgayLap], [DiaChiGiao], [TongTien], [TrangThai], [NgayHuy]) VALUES (1, N'NamNguyen', NULL, N'12/11/2020 3:20:48 PM', N'Bình Dương', 4790000.0000, 0, N'12/21/2020 3:20:48 PM')
INSERT [dbo].[tblDonHang] ([IDDonHang], [TaiKhoan], [MaKH], [NgayLap], [DiaChiGiao], [TongTien], [TrangThai], [NgayHuy]) VALUES (2, N'NamNguyen1234', NULL, N'12/11/2020 4:39:27 PM', N'Bình Dương', 38470000.0000, 0, N'12/21/2020 4:39:28 PM')
INSERT [dbo].[tblDonHang] ([IDDonHang], [TaiKhoan], [MaKH], [NgayLap], [DiaChiGiao], [TongTien], [TrangThai], [NgayHuy]) VALUES (3, N'Nam123', NULL, N'12/11/2020 4:53:17 PM', N'Bình Dương', 46380000.0000, 0, N'12/21/2020 4:53:17 PM')
SET IDENTITY_INSERT [dbo].[tblKhachHang] ON 

INSERT [dbo].[tblKhachHang] ([MaKH], [TaiKhoan], [MatKhau], [TenKH], [DiaChi], [MaTK], [SoTien]) VALUES (10, N'NamNguyen', N'123456', N'Nguyễn Văn Nam', N'Bình Dương', N'KH8', 123610000.0000)
INSERT [dbo].[tblKhachHang] ([MaKH], [TaiKhoan], [MatKhau], [TenKH], [DiaChi], [MaTK], [SoTien]) VALUES (15, N'Nam123', N'123456789', N'Nguyễn Văn Nam', N'Thủ Dầu Một - Bình Dương', N'KH11', 0.0000)
SET IDENTITY_INSERT [dbo].[tblKhachHang] OFF
SET IDENTITY_INSERT [dbo].[tblLienHe] ON 

INSERT [dbo].[tblLienHe] ([MaLienHe], [HoTen], [Email], [SDT], [NoiDung]) VALUES (16, N'Nguyễn Văn Nam', N'nguyenvannam1a@gmail.com', N'0123456789', N'Bán Hàng tốt')
SET IDENTITY_INSERT [dbo].[tblLienHe] OFF
INSERT [dbo].[tblLuotTruyCap] ([SoNguoi], [Ngay]) VALUES (897, CAST(N'2020-12-11 16:50:51.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblNCC] ON 

INSERT [dbo].[tblNCC] ([IDNCC], [TenNCC], [GioiThieu]) VALUES (1, N'CellphoneS', N'CellphoneS')
INSERT [dbo].[tblNCC] ([IDNCC], [TenNCC], [GioiThieu]) VALUES (2, N'FPT', N'cty FPT')
INSERT [dbo].[tblNCC] ([IDNCC], [TenNCC], [GioiThieu]) VALUES (3, N'TheGioiDiDong', N'Thế Giới Di Động')
INSERT [dbo].[tblNCC] ([IDNCC], [TenNCC], [GioiThieu]) VALUES (4, N'ViettelStore', N'Viettel Store')
SET IDENTITY_INSERT [dbo].[tblNCC] OFF
INSERT [dbo].[tblNguoiSuDung] ([TenDangNhap], [MatKhau], [Email], [HoTen], [SDT], [DiaChi], [Quyen]) VALUES (N'admin', N'admin', N'nguyenvannam1a@gmail.com', N'Nguyễn Văn Nam', N'0386098843', N'Bình Dương', 1)
SET IDENTITY_INSERT [dbo].[tblNSX] ON 

INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (1, N'Xiaomi', N' Xiaomi')
INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (2, N'Samsung', N'Samsung')
INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (3, N'Vsmart', N'Vsmart ')
INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (4, N'Oppo', N' Oppo')
INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (5, N'Redme', N'Redme ')
INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (6, N'Apple', N' Apple')
INSERT [dbo].[tblNSX] ([IDNSX], [TenNSX], [GioiThieu]) VALUES (15, N'Khác', N'')
SET IDENTITY_INSERT [dbo].[tblNSX] OFF
INSERT [dbo].[tblPhieuXuat] ([SoPX], [MaKH], [NgayXuat], [DiaChiGiao], [TongTien], [MaNV]) VALUES (1, 10, CAST(N'2020-12-02 12:16:30.000' AS DateTime), N'Bình Dương', 1900000.0000, NULL)
INSERT [dbo].[tblPhieuXuat] ([SoPX], [MaKH], [NgayXuat], [DiaChiGiao], [TongTien], [MaNV]) VALUES (2, 10, CAST(N'2020-12-02 12:16:39.000' AS DateTime), N'Bình Dương', 8990000.0000, NULL)
INSERT [dbo].[tblPhieuXuat] ([SoPX], [MaKH], [NgayXuat], [DiaChiGiao], [TongTien], [MaNV]) VALUES (3, 10, CAST(N'2020-12-02 12:16:46.000' AS DateTime), N'Bình Dương', 15500000.0000, NULL)
SET IDENTITY_INSERT [dbo].[tblQuyen] ON 

INSERT [dbo].[tblQuyen] ([ID], [TenDangNhap], [IDChucNang], [MoTa], [Page], [Macdinh]) VALUES (1, N'admin', 1, N'Mở tab các trang quản lý', N'0,1,2,3,4,5,6,7,8,9', 1)
SET IDENTITY_INSERT [dbo].[tblQuyen] OFF
SET IDENTITY_INSERT [dbo].[tblTinTuc] ON 

INSERT [dbo].[tblTinTuc] ([MaTinTuc], [TieuDe], [TomTat], [NoiDung], [NgayDangTin], [TacGia], [HinhAnh]) VALUES (41, N'Cộng đồng mạng khoe ảnh sở hữu những chiếc iPhone 12 mini và 12 Pro Max đầu tiên', N'Khi đồng hồ chuyển dần sang ngày 13/11 trên khắp thế giới, những đơn đặt hàng iPhone 12 mini và iPhone 12 Pro Max đầu tiên đã bắt đầu đến tay những khách hàng đặt trước sớm.', N'', N'14/11/2020', N'Như Quỳnh', N'tintuciphone12.jpg')
INSERT [dbo].[tblTinTuc] ([MaTinTuc], [TieuDe], [TomTat], [NoiDung], [NgayDangTin], [TacGia], [HinhAnh]) VALUES (42, N'Quyết chiến Apple, Samsung tung chip cực đỉnh cho dòng Galaxy A', N'Samsung cuối cùng cũng ra mắt chip thế hệ tiếp theo hướng đến phân khúc tầm trung, Exynos 1080, tuy nhiên các tính năng trên chúng rất xứng để gọi là “cao cấp”.', N'', N'13/11/2020', N'Như Quỳnh', N'1-1605194988-542-width660height333.jpg')
SET IDENTITY_INSERT [dbo].[tblTinTuc] OFF
ALTER TABLE [dbo].[tblDienThoai]  WITH CHECK ADD  CONSTRAINT [FK_tblDienThoai_tblNSX] FOREIGN KEY([IDNSX])
REFERENCES [dbo].[tblNSX] ([IDNSX])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDienThoai] CHECK CONSTRAINT [FK_tblDienThoai_tblNSX]
GO
ALTER TABLE [dbo].[tblDongDH]  WITH CHECK ADD  CONSTRAINT [FK_tblDongDH_tblDienThoai] FOREIGN KEY([IDDT])
REFERENCES [dbo].[tblDienThoai] ([IDDT])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDongDH] CHECK CONSTRAINT [FK_tblDongDH_tblDienThoai]
GO
ALTER TABLE [dbo].[tblDongDH]  WITH CHECK ADD  CONSTRAINT [FK_tblDongDH_tblDonHang] FOREIGN KEY([IDDonHang])
REFERENCES [dbo].[tblDonHang] ([IDDonHang])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblDongDH] CHECK CONSTRAINT [FK_tblDongDH_tblDonHang]
GO
ALTER TABLE [dbo].[tblPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuNhap_tblNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblNCC] ([IDNCC])
GO
ALTER TABLE [dbo].[tblPhieuNhap] CHECK CONSTRAINT [FK_tblPhieuNhap_tblNCC]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuat_tblKhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [FK_tblPhieuXuat_tblKhachHang]
GO
ALTER TABLE [dbo].[tblPhieuXuat]  WITH CHECK ADD  CONSTRAINT [FK_tblPhieuXuat_tblNguoiBan] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblNguoiBan] ([MaNV])
GO
ALTER TABLE [dbo].[tblPhieuXuat] CHECK CONSTRAINT [FK_tblPhieuXuat_tblNguoiBan]
GO
ALTER TABLE [dbo].[tblQuyen]  WITH CHECK ADD  CONSTRAINT [FK_tblQuyen_tblChucNang1] FOREIGN KEY([IDChucNang])
REFERENCES [dbo].[tblChucNang] ([IDChucNang])
GO
ALTER TABLE [dbo].[tblQuyen] CHECK CONSTRAINT [FK_tblQuyen_tblChucNang1]
GO
ALTER TABLE [dbo].[tblQuyen]  WITH CHECK ADD  CONSTRAINT [FK_tblQuyen_tblNguoiSuDung1] FOREIGN KEY([TenDangNhap])
REFERENCES [dbo].[tblNguoiSuDung] ([TenDangNhap])
GO
ALTER TABLE [dbo].[tblQuyen] CHECK CONSTRAINT [FK_tblQuyen_tblNguoiSuDung1]
GO

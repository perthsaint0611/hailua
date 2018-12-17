-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 16, 2018 lúc 04:37 AM
-- Phiên bản máy phục vụ: 5.7.23
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
CREATE TABLE IF NOT EXISTS `binhluan` (
  `Noidung` text COLLATE utf8_bin NOT NULL,
  `MaKH` varchar(50) COLLATE utf8_bin NOT NULL,
  `idmonan` varchar(50) COLLATE utf8_bin NOT NULL,
  KEY `MaKH` (`MaKH`),
  KEY `idmonan` (`idmonan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

DROP TABLE IF EXISTS `chitietdondathang`;
CREATE TABLE IF NOT EXISTS `chitietdondathang` (
  `madon` varchar(100) COLLATE utf8_bin NOT NULL,
  `ma` varchar(50) COLLATE utf8_bin NOT NULL,
  `soluong` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `gia` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`madon`),
  KEY `ma` (`ma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`madon`, `ma`, `soluong`, `gia`) VALUES
('1544602240_camtu@gmail.com', 'meh11', 1, 1),
('1544603299_camtu@gmail.com', 'meh41', 1, 1),
('1544603557_camtu@gmail.com', 'meh13', 1, 1),
('1544603572_camtu@gmail.com', 'meh43', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
CREATE TABLE IF NOT EXISTS `danhgia` (
  `Noidung` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MaKH` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idmonan` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  KEY `MaKH` (`MaKH`),
  KEY `idmonan` (`idmonan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE IF NOT EXISTS `dondathang` (
  `madon` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `ngaydathang` datetime NOT NULL,
  `tennguoinhan` varchar(50) COLLATE utf8_bin NOT NULL,
  `sdtnguoinhan` varchar(16) COLLATE utf8_bin NOT NULL,
  `diachinguoinhan` varchar(100) COLLATE utf8_bin NOT NULL,
  `tenKH` varchar(100) COLLATE utf8_bin NOT NULL,
  `tenNV` varchar(100) COLLATE utf8_bin NOT NULL,
  `trangthai` int(1) NOT NULL DEFAULT '0' COMMENT 'Trạng thái:0-3',
  PRIMARY KEY (`madon`),
  KEY `dondathang_ibfk_1` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`madon`, `email`, `ngaydathang`, `tennguoinhan`, `sdtnguoinhan`, `diachinguoinhan`, `tenKH`, `tenNV`, `trangthai`) VALUES
('1544438491_camtu@gmail.com', 'camtu@gmail.com', '2018-12-10 00:00:00', 'Trinh', '0906334554', '38/12 Cao Lỗ', 'null', 'null', 0),
('1544600248_camtu@gmail.com', 'camtu@gmail.com', '2018-12-12 00:00:00', 'phuong', '0755027393', '180 Cao Lỗ', 'null', 'null', 0),
('1544602240_camtu@gmail.com', 'camtu@gmail.com', '2018-12-12 00:00:00', 'an', '0931242299', '180 Phạm Hùng', 'null', 'null', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonbanle`
--

DROP TABLE IF EXISTS `hoadonbanle`;
CREATE TABLE IF NOT EXISTS `hoadonbanle` (
  `MaHD` varchar(100) COLLATE utf8_bin NOT NULL,
  `Tongtien` float NOT NULL,
  `Ngay lap` datetime NOT NULL,
  `MaNV` varchar(200) COLLATE utf8_bin NOT NULL,
  `Madon` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `Madon` (`Madon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

DROP TABLE IF EXISTS `hopdong`;
CREATE TABLE IF NOT EXISTS `hopdong` (
  `mahd` varchar(50) NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL,
  `mancc` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `manv` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`mahd`),
  KEY `mancc` (`mancc`),
  KEY `manv` (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `MaKH` varchar(50) COLLATE utf8_bin NOT NULL,
  `TenKH` varchar(50) COLLATE utf8_bin NOT NULL,
  `Diachi` varchar(200) COLLATE utf8_bin NOT NULL,
  `Sodienthoai` varchar(16) COLLATE utf8_bin NOT NULL,
  `Password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Diachi`, `Sodienthoai`, `Password`, `Email`) VALUES
('', '', '', '', '', 'camtu@gmail.com'),
('1543389353', 'Tran Nhung', '180 Cao Lỗ', '0909033033', '123456', 'mynhungtran2707@gmail.com'),
('1543389542', 'Tran Phuong', '93 Tạ Quang Bửu', '0906334554', '123', 'tranphuong@gmail.com'),
('1543389634', 'Huynh Khang', '174 Huỳnh Tấn Phát, quận 7', '0752233444', '123', 'huyngkhang@gmail.com'),
('1544434863', 'cam tu', '38/12 Cao Lỗ', '125502739', '1', 'camtu@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `maloai` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tenloai` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `STT` int(11) NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `STT`) VALUES
('ac', 'Ăn chay', 5),
('av', 'Ăn vặt', 4),
('bff', 'Buffet', 2),
('cf', 'Cafe', 6),
('h', 'Hot', 12),
('km', 'Khuyến mãi\r\n', 10),
('m', 'Mới', 11),
('nh', 'Nhà hàng', 3),
('qa', 'Quán ăn', 7),
('tb', 'Tiệm bánh', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

DROP TABLE IF EXISTS `monan`;
CREATE TABLE IF NOT EXISTS `monan` (
  `ma` varchar(50) COLLATE utf8_bin NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gia` int(10) NOT NULL,
  `noidung` text COLLATE utf8_bin NOT NULL,
  `img` varchar(50) COLLATE utf8_bin NOT NULL,
  `maNCC` varchar(100) COLLATE utf8_bin NOT NULL,
  `maloai` varchar(100) COLLATE utf8_bin NOT NULL,
  `hot` int(10) UNSIGNED NOT NULL,
  `cha` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ma`),
  KEY `MaNCC` (`maNCC`),
  KEY `maloai` (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`ma`, `ten`, `gia`, `noidung`, `img`, `maNCC`, `maloai`, `hot`, `cha`) VALUES
(' matb5', 'TOUS les JOURS', 150000, 'Mở cửa : 10:00 - 21:00 \r\nGía trung bình:100.000đ - 300.000đ', 'tb5.png', 'nccb5', 'tb', 0, ''),
('ma11', 'King BBQ', 200000, 'Mở cửa từ 10:30 - 22:30 \r\nGía dao động từ 180.000đ - 450.000đ', '11.png', 'ncc26', 'km', 0, ''),
('ma12', 'Food house ', 150000, 'Mở cửa từ 10:00- 22:00\r\nGía dao động từ 30.000đ - 200.000đ', '12.png', 'ncc23', 'km', 0, ''),
('ma13', 'Chang Kang Kung', 250000, 'Mở cửa:10:00 - 22:00\r\nGiá trung bình: 100,000 - 500,000 VNĐ', '13.png', 'ncc27', 'km', 0, ''),
('ma14', 'The Square - Saigon Centre', 400000, 'Mở cửa: 18:00 - 22:00 \r\nGía trung bình: 400.000đ - 1.000.000đ', '14.png', 'ncc28', 'km', 0, ''),
('ma15', 'Meat Bank', 160000, 'Mở cửa:12:00 - 23:00 \r\nGía trung bình:35.000đ - 160.000đ', '15.png', 'ncc29', 'qa', 0, ''),
('ma4', 'Cháo Ếch', 40000, 'Sức chứa 40 người,giá dao động từ 15.000 đến 50.000 VNĐ', '4.png', 'ncc18', 'qa', 0, ''),
('ma5', 'Bánh mì Hạnh-Bò Né', 30000, 'Sức chứa 15 người,giá dao động từ 30.000 đến 50.000 VNĐ', '5.png', 'ncc19', 'qa', 0, ''),
('maac1', 'Bếp Xanh An Duyên', 100000, 'Mở cửa : 10:00 - 14:30 | 16:30 - 21:00 \r\nGía trung bình:30.000đ - 250.000đ', 'ac1.png', 'ncca1', 'ac', 0, ''),
('maac10', 'Quán Chay Thôi Kệ', 15000, 'Mở cửa : 09:00 - 22:00 \r\nGía trung bình:10.000đ - 22.000đ', 'ac10.png', 'ncca10', 'ac', 0, ''),
('maac11', 'K Vegetarian - Ẩm Thực Chay', 100000, 'Mở cửa : 09:00 - 22:00 \r\nGía trung bình:30.000đ - 200.000đ', 'ac11.png', 'ncca11', 'ac', 0, ''),
('maac12', 'Quán Chay Bình An', 25000, 'Mở cửa : 07:00 - 21:30 \r\nGía trung bình:20.000đ - 28.000đ', 'ac12.png', 'ncca12', 'ac', 0, ''),
('maac2', 'Vajra - Nhà Hàng Chay', 80000, 'Mở cửa : 07:00 - 23:00 \r\nGía trung bình:25.000đ - 150.000đ', 'ac2.png', 'ncca2', 'ac', 0, ''),
('maac3 ', 'Nhà Hàng Chay Phương Mai', 100000, 'Mở cửa : 09:00 - 21:00 \r\nGía trung bình:50.000đ - 200.000đ', 'ac3.png', 'ncca3', 'ac', 0, ''),
('maac4', 'Nhà hàng chay Đóa Sen Vàng', 50000, 'Mở cửa : 08:00 - 22:00 \r\nGía trung bình:30.000đ - 100.000đ', 'ac4.png', 'ncca4', 'ac', 0, ''),
('maac5', 'Nhà Hàng Chay Here & Now', 80000, 'Mở cửa : 07:30 - 14:00 | 17:00 - 21:30 \r\nGía trung bình:50.000đ - 100.000đ', 'ac5.png', 'ncca5', 'ac', 0, ''),
('maac6', 'Ấn Tâm - Nhà Hàng Chay', 60000, 'Mở cửa : 09:30 - 21:00 \r\nGía trung bình:50.000đ - 110.000đ', 'ac6.png', 'ncca6', 'ac', 0, ''),
('maac7', 'Hủ Tiếu Chay Cây Đề', 40000, 'Mở cửa : 07:00 - 22:00 \r\nGía trung bình:15.000đ - 80.000đ', 'ac7.png', 'ncca7', 'ac', 0, ''),
('maac8', 'Chay Hoan Hỷ', 100000, 'Mở cửa : 10:00 - 14:00 | 16:00 - 21:00 \r\nGía trung bình:50.000đ - 150.000đ', 'ac8.png', 'ncca8', 'ac', 0, ''),
('maac9', 'Cơm Chay Mani', 40000, 'Mở cửa : 06:30 - 14:00 | 16:00 - 21:00 \r\nGía trung bình:30.000đ - 55.000đ', 'ac9.png', 'ncca9', 'ac', 0, ''),
('maav1', 'Bánh Tráng Trộn Chú Viên-Nguyễn Thượng Hiền', 20000, 'Mở cửa : 11:30 - 19:00 \r\nGía trung bình:10.000đ - 22.000đ', 'av1.png', 'nccav1', 'av', 0, ''),
('maav10', 'Tàu Hủ Xe Lam - Phùng Văn Cung', 25000, 'Mở cửa : 12:00 - 23:00 \r\nGía trung bình:17.000đ - 25.000đ', 'av10.png', 'nccav10', 'av', 0, ''),
('maav11', 'Trà Sữa Bòn Bon - Minh Phụng', 16000, 'Mở cửa : 11:00 - 22:00 \r\nGía trung bình:8.000đ - 17.000đ', 'av11.png', 'nccav11', 'av', 0, ''),
('maav12', 'Nhi Nhi Quán - Đặc Sản Phan Rang', 15000, 'Mở cửa : 16:00 - 22:30 \r\nGía trung bình:6.000đ - 14.000đ', 'av12.png', 'nccav12', 'av', 0, ''),
('maav2', 'Xôi Chè Bùi Thị Xuân - Bùi Thị Xuân', 25000, 'Mở cửa : 06:30 - 18:00 \r\nGía trung bình:25.000đ - 55.000đ', 'av2.png', 'nccav2', 'av', 0, ''),
('maav3', 'Chè Khúc Bạch Thanh - Chân Cầu Hoàng Hoa Thám', 30000, 'Mở cửa : 09:00 - 21:30 \r\nGía trung bình:20.000đ - 33.000đ', 'av3.png', 'nccav3', 'av', 0, ''),
('maav4', 'Quán 223 - Bánh Flan Thập Cẩm', 17000, 'Mở cửa : 11:30 - 21:00 \r\nGía trung bình:15.000đ - 22.000đ', 'av4.png', 'nccav4', 'av', 0, ''),
('maav5', 'Bà Bắc - Bánh Tráng Cuốn Trộn', 17000, 'Mở cửa : 10:00 - 22:00 \r\nGía trung bình:10.000đ - 33.000đ', 'av5.png', 'nccav5', 'av', 0, ''),
('maav6', 'Sakura No Takoyaki - Bánh Bạch Tuộc Nhật', 60000, 'Mở cửa : 10:00 - 22:00 \r\nGía trung bình:50.000đ - 105.000đ', 'av6.png', 'nccb6', 'av', 0, ''),
('maav7', 'A Tùng - Bánh Mì Bò Nướng Bơ Cambodia', 10000, 'Mở cửa : 14:00 - 21:00 \r\nGía trung bình:5.000đ - 15.000đ', 'av7.png', 'nccav7', 'av', 0, ''),
('maav8', 'Cơm Trộn 2 Cô - Xô Viết Nghệ Tĩnh', 45000, 'Mở cửa : 10:00 - 21:00 \r\nGía trung bình:30.000đ - 50.000đ', 'av8.png', 'nccav8', 'av', 0, ''),
('maav9', 'Bánh Tráng Nướng Đà Lạt - Cao Thắng', 26000, 'Mở cửa : 17:00 - 22:00 \r\nGía trung bình:10.000đ - 22.000đ', 'av9.png', 'nccav9', 'av', 0, ''),
('mabf1', 'Red Chilli Seafood Buffet - CHLOE Gallery', 499000, 'Mở cửa : 18:00 - 22:00 \r\nGía trung bình:499.000đ - 699.000đ', 'bf1.png', 'nccbf1', 'bff', 0, ''),
('mabf10', 'Pachi Pachi - Thịt Nướng Nhật Bản', 200000, 'Mở cửa : 10:30 - 14:00 | 17:00 - 23:00 \r\nGía trung bình:50.000đ - 220.000đ', 'bf10.png', 'nccbf10', 'bff', 0, ''),
('mabf11', 'D\'Maris - Buffet Cao Cấp - Parkson Cantavil', 385000, 'Mở cửa : 11:30 - 21:00 \r\nGía trung bình:330.000đ - 510.000đ', 'bf11.png', 'nccbf11', 'bff', 0, ''),
('mabf12', 'Isushi Buffet Nhật Bản - Lê Quý Đôn', 200000, 'Mở cửa : 10:00 - 22:00 \r\nGía trung bình:49.000đ - 369.000đ', 'bf12.png', 'nccbf12', 'bff', 0, ''),
('mabf2', 'Sushi Dining AOI - Món Nhật', 314000, 'Mở cửa : 11:00 - 14:00 | 17:00 - 23:00 \r\nGía trung bình:200.000đ - 500.000đ', 'bf2.png', 'nccbf2', 'bff', 0, ''),
('mabf3', 'Buffet Windsor - Cafe Central An Dong', 500000, 'Mở cửa : 06:00 - 22:00 \r\nGía trung bình:449.000đ - 853.000đ', 'bf3.png', 'nccbf3', 'bff', 0, ''),
('mabf4', 'L\'angfarm Buffet - Trần Hưng Đạo', 59000, 'Mở cửa : 08:00 - 22:00 \r\nGía trung bình:59.000đ - 69.000đ', 'bf4.png', 'nccbf4', 'bff', 0, ''),
('mabf5', 'Hoàng Yến Buffet - Melinh Point', 200000, 'Mở cửa : 11:00 - 14:00 | 18:00 - 22:00 \r\nGía trung bình:200.000đ - 385.000đ', 'bf5.png', 'nccbf5', 'bff', 0, ''),
('mabf6', 'Cheap Eats - Seafood BBQ Buffet', 189000, 'Mở cửa : 11:00 - 14:00 | 17:00 - 22:00 \r\nGía trung bình:200.000đ - 300.000đ', 'bf6.png', 'nccbf5', 'bff', 0, ''),
('mabf7', 'Parkview Buffet - New World Saigon Hotel', 1000000, 'Mở cửa : 18:00 - 22:00 \r\nGía trung bình:500.000đ - 1.650.000đ', 'bf7.png', 'nccbf7', 'bff', 0, ''),
('mabf8', 'Fujiya Restaurant - Yakiniku Nabe Buffet', 199000, 'Mở cửa : 10:00 - 22:00 \r\nGía trung bình:200.000đ - 400.000đ', 'bf8.png', 'nccbf8', 'bff', 0, ''),
('mabf9', 'Hotpot Story - Buffet Lẩu - Phan Văn Trị', 239000, 'Mở cửa : 09:00 - 23:00 \r\nGía trung bình:239.000đ - 269.000đ', 'bf9.png', 'nccbf9', 'bff', 0, ''),
('macf1', 'Monkey In Black Cafe - Trần Quang Khải', 49000, 'Mở cửa : 08:00 - 22:00 \r\nGía trung bình:25.000đ - 100.000đ', 'cf1.png', 'ncccf1', 'cf', 0, ''),
('macf10', 'Trà Sữa R&B Tea - Ngô Đức Kế', 43000, 'Mở cửa : 10:00 - 23:00\r\nGía trung bình:40.000đ - 70.000đ', 'cf10.png', 'ncccf10', 'cf', 0, ''),
('macf11', 'Ding Tea - Cộng Hòa - Tân Bình', 32000, 'Mở cửa : 09:00 - 22:00\r\nGía trung bình:25.000đ - 50.000đ', 'cf11.png', 'ncccf11', 'cf', 0, ''),
('macf12', 'Hebe Tea & Coffee - Cao Thắng', 35000, 'Mở cửa : 07:00 - 22:30 \r\nGía trung bình:25.000đ - 100.000đ', 'cf12.png', 'ncccf12', 'cf', 0, ''),
('macf2', 'Oromia Coffee - Nam Kỳ Khởi Nghĩa', 50000, 'Mở cửa : 07:00 - 22:30\r\nGía trung bình:36.000đ - 146.000đ', 'cf2.png', 'ncccf2', 'cf', 0, ''),
('macf3', 'Partea - English Tearoom - Nguyễn Huệ', 100000, 'Mở cửa : 09:00 - 22:00\r\nGía trung bình:50.000đ - 200.000đ', 'cf3.png', 'ncccf3', 'cf', 0, ''),
('macf4', 'Morico - Contemporary Japanese Lifestyle', 680000, 'Mở cửa : 07:00 - 22:30\r\nGía trung bình:50.000đ - 180.000đ', 'cf4.png', 'ncccf4', 'cf', 0, ''),
('macf5', 'Đen Đá Cafe - Trà Sữa & Trà Đào - Hàm Nghi', 40000, 'Mở cửa : 08:00 - 23:00\r\nGía trung bình:25.000đ - 55.000đ', 'cf5.png', 'ncccf5', 'cf', 0, ''),
('macf6', 'Trà Sữa Gong Cha - 貢茶 - Hồ Tùng Mậu', 43000, 'Mở cửa : 08:30 - 21:30\r\nGía trung bình:40.000đ - 80.000đ', 'cf6.png', 'ncccf6', 'cf', 0, ''),
('macf7', 'Say Coffee 24H - Sư Vạn Hạnh', 36000, 'Mở cửa : Cả ngày \r\nGía trung bình:36.000đ - 60.000đ', 'cf7.png', 'ncccf7', 'cf', 0, ''),
('macf8', 'Phúc Long Coffee & Tea - Lý Tự Trọng', 40000, 'Mở cửa : 07:00 - 22:30 \r\nGía trung bình:25.000đ - 100.000đ', 'cf8.png', 'ncccf8', 'cf', 0, ''),
('macf9', 'Japanit Matcha & Coffee House - Trần Hưng Đạo', 52000, 'Mở cửa : 07:00 - 22:30 \r\nGía trung bình:40.000đ - 150.000đ', 'cf9.png', 'ncccf9', 'cf', 0, ''),
('manh1', 'Tony sushi - Yersin Nguyễn Thái Bình', 500000, 'Sức chứa 50 người,giá dao động từ 15.000 đến 900.000 VNĐ', 'nh1.png', 'nccnh1\r\n', 'nh', 0, ''),
('manh10', 'Beefsteak Titi - Vũ Huy Tấn - Bình Thạnh', 75000, 'Mở cửa : 10:00 - 21:30 \r\nGía trung bình:55.000đ - 110.000đ', 'nh10.png', 'nccnh10\r\n\r\n', 'nh', 0, ''),
('manh11', 'Hancook Korean Fast Food - Đường 3 Tháng 2', 50000, 'Mở cửa : 09:00 - 22:00 \r\nGía trung bình:60.000đ - 165.000đ', 'nh11.png', 'nccnh11', 'nh', 0, ''),
('manh12', 'Papa\'s Chicken - Phú Mỹ Hưng', 135000, 'Mở cửa : 10:30 - 23:00\r\nGía trung bình:100.000đ - 165.000đ', 'nh12.png', 'nccnh12', 'nh', 0, ''),
('manh2', 'Beefsteak Lục Nguyên - Cách Mạng Tháng 8', 60000, 'Sức chứa 50 người,giá dao động từ 60.000 đến 110.000 VNĐ', 'nh2.png', 'nccnh2\r\n', 'nh', 0, ''),
('manh3', 'Pizza 4P’s - Pizza Kiểu Nhật - Lê Thánh Tôn', 300000, 'Mở cửa : 10:00 - 23:00 \r\nGía trung bình:250.000đ - 500.000đ', 'nh3.png', 'nccnh3', 'nh', 0, ''),
('manh4', 'Buzza Pizza - Nguyễn Trung Trực', 284000, 'Mở cửa : 10:00 - 22:30 \r\nGía trung bình:49.000đ - 199.000đ', 'nh4.png', 'nccnh4', 'nh', 0, ''),
('manh5', 'Hanuri - Quán Ăn Hàn Quốc - Nguyễn Đình Chiểu', 49000, 'Mở cửa : 09:00 - 21:30 \r\nGía trung bình:50.000đ - 110.000đ', 'nh5.png', 'nccnh5', 'nh', 0, ''),
('manh6', 'Marukame Udon - Udon & Tempura - Lý Tự Trọng', 87000, 'Mở cửa : 07:00 - 21:30 \r\nGía trung bình:60.000đ - 300.000đ', 'nh6.png', 'nccnh6\r\n', 'nh', 0, ''),
('manh7', 'Sumo BBQ - Nguyễn Đình Chiểu - Buffet Nướng & Lẩu', 350000, 'Mở cửa : 11:00 - 16:00 | 17:00 - 22:00 \r\nGía trung bình:300.000đ - 407.000đ', 'nh7.png', 'nccnh7\r\n', 'nh', 0, ''),
('manh8', 'San Fu Lou - Ẩm Thực Trung Hoa', 100000, 'Mở cửa : 07:00 - 03:00 \r\nGía trung bình:30.000đ - 190.000đ', 'nh8.png', 'nccnh8\r\n', 'nh', 0, ''),
('manh9', 'Baoz Dimsum Restaurant - Nguyễn Tri Phương', 100000, 'Mở cửa : 06:30 - 14:00 | 16:00 - 23:00 \r\nGía trung bình:50.000đ - 200.000đ', 'nh9.png', 'nccnh9\r\n', 'nh', 0, ''),
('matb1', 'Pappa Roti', 12000, 'Mở cửa : 09:00 - 22:00 \r\nGía trung bình: 12.000đ - 12.000đ', 'tb1.png', 'nccb1', 'tb', 0, ''),
('matb10', 'Bánh Mochi Sweets', 80000, 'Mở cửa  08:30 - 22:00 \r\n32.000đ - 200.000đ', 'tb10.png', 'nccb10', 'tb', 0, ''),
('matb11', 'Donut Cake', 20000, 'Mở cửa  08:00 - 22:00 \r\nGía trung bình:12.000đ - 33.000đ', 'tb11.png', 'nccb11', 'tb', 0, ''),
('matb12', 'Bánh Bông Lan Trứng Muối', 100000, 'Mở cửa : 09:00 - 22:00 \r\nGía trung bình: 12.000đ - 150.000đ', 'tb12.png', 'nccb12', 'tb', 0, ''),
('matb2', 'Morico Japanese', 100000, 'Mở cửa: 10:00 - 22:00 \r\nGía trung bình:70.000đ - 220.000đ', 'tb2.png', 'nccb2\r\n\r\n', 'tb', 0, ''),
('matb3', 'Paris Baguette', 100000, 'Mở cửa : 07:00 - 23:00 \r\nGía trung bình :20.000đ - 180.000đ', 'tb3.png', 'nccb3', 'tb', 0, ''),
('matb4', 'Dallas Cakes & Coffee', 40000, 'Mở cửa :  08:00 - 22:00 \r\nGía trung bình :20.000đ - 44.000đ', 'tb4.png', 'nccb4', 'tb', 0, ''),
('matb6', 'Cake Boutique Star Kitchen', 100000, 'Mở cửa : 09:00 - 22:00 \r\nGía trung bình :50.000đ - 200.000đ', 'tb6.png', 'nccb6', 'tb', 0, ''),
('matb7', 'Cheesecake ', 50000, 'Mở cửa : 09:00 - 21:00 \r\nGía trung bình :20.000đ - 55.000đ', 'tb7.png', 'nccb7', 'tb', 0, ''),
('matb8', 'Pacey Cupcakes - Đặng Dung', 50000, 'Mở cửa  09:00 - 22:00 \r\nGía trung bình:30.000đ - 66.000đ', 'tb8.png', 'nccb8', 'tb', 0, ''),
('matb9', 'Bánh Su Kem Chewy Junior', 40000, 'Mở cửa  08:00 - 22:00 \r\nGía trung bình:27.000đ - 55.000đ', 'tb9.png', 'nccb9', 'tb', 0, ''),
('meh11', 'Cơm chiên cá hồi', 108900, '', 'meh11.png', 'ncch1', 'h', 0, ''),
('meh12', 'Cuộn cá hồi với trứng tôm', 82500, '', 'meh12.png', 'ncch1', 'h', 0, ''),
('meh13', 'Cá hồi nướng sốt Mentai ', 192500, '', 'meh13.png', 'ncch1', 'h', 0, ''),
('meh41', 'Bánh mì sườn', 20000, '', 'meh41.png', 'ncch4', 'av', 0, ''),
('meh42', 'Bánh mì xíu mại', 20000, '', 'meh42.png', 'ncch4', 'av', 0, ''),
('meh43', 'Bánh mì ba chỉ', 20000, '', 'meh43.png', 'ncch4', 'av', 0, ''),
('mh1', 'Sushi Tei', 250000, 'Sức chứa 80 người,giá dao động từ 250.000 đến 500.000 VNĐ', 'mh1.png', 'ncch1', 'h', 1, ''),
('mh2', 'Napoli Pizza', 150000, 'Sức chứa 30 người,giá dao động từ 40.000 đến 176.000 VNĐ', 'mh2.png', 'ncch2\r\n', 'h', 2, ''),
('mh3', 'The Alley - Trà Sữa Đài Loan', 40000, 'Mở cửa : 08:00 - 22:00 \r\nGía trung bình :30.000đ - 70.000đ', 'mh3.png', 'ncch3\r\n', 'h', 3, ''),
('mh4', 'Bánh Mì Thịt Nướng', 20000, 'Mở cửa : 15:00 - 23:00 \r\nGía trung bình: 10.000đ - 30.000đ', 'mh4.png', 'ncch4', 'h', 4, ''),
('mh5', 'Bánh Cuốn Hai Lúa - An Dương Vương', 40000, 'Mở cửa : 6:30 - 22:00 \r\nGía trung bình:40.000đ - 200.000đ', 'mh5.png', 'ncch5', 'h', 0, ''),
('mm1', 'Bánh Thịt Nướng', 150000, 'Mở cửa  11:30 - 22:00 \r\n100.000đ - 1.000.000đ', 'mm1.png', 'nccmm1', 'm', 0, ''),
('mm10', 'Mì xào', 35000, 'Mở cửa  08:00 - 22:00 \r\nGiá dao động:50.000đ - 200.000đ', 'mm10.png', 'nccmm10', 'm', 0, ''),
('mm11', 'Bánh Bông Lan', 80000, 'Mở cửa  08:00 - 22:00 \r\nGiá dao động:50.000đ - 400.000đ', 'mm11.png', 'nccmm11', 'm', 0, ''),
('mm12', 'Buffer', 200000, 'Mở cửa  08:00 - 22:00 \r\nGiá dao động:100.000đ - 400.000đ', 'mm12.png', 'nccmm12', 'm', 0, ''),
('mm2', 'BBQ', 200000, 'Mở cửa  06:30 - 22:00 \r\n25.000đ - 250.000đ', 'mm2.png', 'nccmm2', 'm', 0, ''),
('mm3', 'Cơm Chay ', 20000, 'Mở cửa  10:00 - 14:00 | 17:00 - 21:00 \r\nGiá Dao Động: 30.000đ - 77.000đ', 'mm3.png', 'nccmm3', 'm', 0, ''),
('mm4', 'Bánh Plan', 25000, 'Mở cửa  08:00 - 17:30 \r\nGiá dao động: 10.000đ - 30.000đ', 'mm4.png', 'nccmm4', 'm', 0, ''),
('mm5', 'Gà ', 250000, 'Mở cửa  08:00 - 17:30 \r\nGiá Dao động: 100.000đ - 400.000đ', 'mm5.png', 'nccmm5', 'm', 0, ''),
('mm6', 'Bánh cuộn nhân dâu ', 55000, ' mở cửa  08:00 - 22:30 \r\nGía dao động 50.000đ - 300.000đ', 'mm6.png', 'nccmm6', 'm', 0, ''),
('mm7', 'Sushi', 200000, 'Mở cửa  08:00 - 22:00 \r\nGía dao động:50.000đ - 400.000đ', 'mm7.png', 'nccmm7', 'm', 0, ''),
('mm8', 'Bánh mì phố', 20000, 'Mở cửa  08:00 - 22:00 \r\nGiá dao động:20.000đ - 50.000đ', 'mm8.png', 'nccmm8', 'm', 0, ''),
('mm9', 'Cơm chay thập cẩm', 35000, 'Mở cửa  08:00 - 22:00 \r\nGiá dao động:50.000đ - 100.000đ', 'mm9.png', 'nccmm9', 'm', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
CREATE TABLE IF NOT EXISTS `nhacungcap` (
  `maNCC` varchar(100) COLLATE utf8_bin NOT NULL,
  `tenNCC` varchar(100) COLLATE utf8_bin NOT NULL,
  `diachi` varchar(50) COLLATE utf8_bin NOT NULL,
  `sodienthoai` varchar(16) COLLATE utf8_bin NOT NULL,
  `trangchu` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`maNCC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`maNCC`, `tenNCC`, `diachi`, `sodienthoai`, `trangchu`) VALUES
('ncc1', 'Nhà cung cấp NowZone', '235 Nguyễn Văn Cừ,P.Ngyễn Cư Trinh,Q1', '0956783344', 'nowzone.com'),
('ncc10', 'Nhà cung cấp Thiên Ân', '193 Bành Văn Trân,P7,Quận Tân Bình', '0283456712', 'thienanquan.com'),
('ncc11', 'Nhà cung cấp Bà Dú', '466 Nguyễn Tri Phương,Q10', '0283456712', 'du.com'),
('ncc12', 'Nhà cung cấp Ngói Đỏ', '295/22 Phạm Văn Đồng,P13,Quận Bình Thạnh', '0283456712', 'nuongngoi.com'),
('ncc18', 'Nhà cung cấp Thèm ', '62 Tô Vĩnh Diện,Q.Thủ Đức', '0168719765', 'them.com'),
('ncc19', 'Nhà cung cấp Hạnh ', '235 Đường số 3, Q.Bình Tân', '0913955955', 'hanhdao.com'),
('ncc23', 'Food House-Phan Xích Long', '133-135 Phan Xích Long,P7,Quận Phú Nhuận', '0399142124', 'foodhouse.com'),
('ncc24', 'KFC', '95 Bà Hom,P13,Q6', '0399345678', 'kfc.com'),
('ncc26', 'KING BBQ BUFFET ', '716-718 Sư Vạn Hạnh , P.12, Q.10, Tp.HCM ', '08 22 531 531', ''),
('ncc27', 'Chang Kang Kung', 'Tầng 1,14 Lê Quý Đôn, P. 6,Quận 3, TP. HCM', 'Không có', ''),
('ncc28', 'The Square - Novotel Saigon Centre', 'Tầng 2,167 Hai Bà Trưng,Quận 3,TP.HCM', 'Không có', ''),
('ncc29', 'Meat Bank', '27 Hải Triều, Phường Bến Nghé, Q.1', '028 3915 3767', 'https://www.facebook.com/MeatBankVN/'),
('ncc5', 'Nhà cung cấp Quán Hải', '109/22 Dương Bá Trạc,P1,Q8', '0965977662', 'quanhai.com'),
('ncc7', 'Nhà cung cấp Ramen', '245 Trần Hưng Đạo,P10,Q5', '0912345612', 'thanrongramen.com'),
('ncc8', 'Nhà cung cấp Cẩm Tuyết', '229/17/19 Bùi Thị Xuân,P1,Quận Tân Bình', '0283456712', 'camtuyet.com'),
('ncc9', 'Nhà cung cấp Bento', '738 Sư Vạn Hạnh,P12,Q10', '0283456712', 'comnhatbento.com'),
('ncca1', 'An Duyên', '10 Nguyễn Tri Phương,  Quận 5, TP. HCM', '', ''),
('ncca10', 'Thôi Kệ', '733 Lê Hồng Phong, P. 12,  Quận 10, TP. HCM', '', ''),
('ncca11', 'K Vegetarian', '20/15 Phan Đăng Lưu, P. 6,Quận Bình Thạnh', '', ''),
('ncca12', 'Bình An', '49 Ngô Quyền, P. 6,  Quận 10, TP. HCM', '', ''),
('ncca2', 'Vajra', '711 Lê Hồng Phong, P. 12,  Quận 10, TP. HCM', '', ''),
('ncca3', 'Phương Mai', '86F Võ Thị Sáu, P. Tân Định,  Quận 1, TP. HCM', '', ''),
('ncca4', 'Đóa Sen Vàng', '253/8 Nguyễn Văn Trỗi, P. 10,  Quận Phú Nhuận', '', ''),
('ncca5', 'Here & Now', '89E Nguyễn Công Hoan, P. 7,  Quận Phú Nhuận', '', ''),
('ncca6', 'Ấn Tâm', '18 Đường A4, P. 12,  Quận Tân Bình, TP. HCM', '', ''),
('ncca7', 'Cây Đề', '386 Lê Văn Sỹ,  Quận Tân Bình, TP. HCM', '', ''),
('ncca8', 'Hoan Hỷ', '73 Bà Huyện Thanh Quan,  Quận 3, TP. HCM', '', ''),
('ncca9', 'Mani', '291/2 Võ Văn Tần, P. 5,  Quận 3, TP. HCM', '', ''),
('nccav1', 'Chú Viên', '38 Nguyễn Thượng Hiền, P. 5,  Quận 3, TP. HCM', '', ''),
('nccav10', 'Lam Thạch', '70 Phùng Văn Cung, P. 7,  Quận Phú Nhuận, TP. HCM', '', ''),
('nccav11', 'Minh Phụng', '529 Minh Phụng, P. 10,  Quận 11, TP. HCM', '', ''),
('nccav12', 'Nhi Nhi', '125/48 Lê Đức Thọ, P. 17,  Quận Gò Vấp, TP. HCM', '', ''),
('nccav2', 'Thị Xuân', '111 Bùi Thị Xuân, P. Phạm Ngũ Lão ,Quận 1, TP. HCM', '', ''),
('nccav3', 'Thanh ', '68/210 Trần Quang Khải,  Quận 1, TP. HCM', '', ''),
('nccav4', 'Thanh Hùng', '223 Trần Bình Trọng,  Quận 5, TP. HCM', '', ''),
('nccav5', 'Nguyễn Thị Bắc', '40 Đường Số 11,  Quận 4, TP. HCM', '', ''),
('nccav6', 'Sakura No Takoyaki', '15B/12A Lê Thánh Tôn,  Quận 1, TP. HCM', '', ''),
('nccav7', 'A Tùng', '171 Cống Quỳnh,  Quận 1, TP. HCM', '', ''),
('nccav8', 'Cô Hai', '294/63 Xô Viết Nghệ Tĩnh,P. 21,Quận Bình Thạnh', '', ''),
('nccav9', 'Trung Quân', '53 - 57 Cao Thắng,  Quận 3, TP. HCM', '', ''),
('nccb1', 'Pappa Roti - Now Zone Nguyễn Văn Cừ\r\n', 'Tầng 4,  235 Nguyễn Văn Cừ, P. Nguyễn Cư Trinh, Q1', '', ''),
('nccb10', 'Mochi Sweets', '77 Hai Bà Trưng,  Quận 1, TP. HCM', '', ''),
('nccb11', 'Thế Giới Donut ', '210 Hai Bà Trưng, P. Tân Định,  Quận 1, TP. HCM', '', ''),
('nccb12', 'Beo Bakery', '73 Cô Giang,  Quận 1, TP. HCM', '', ''),
('nccb2\r\n\r\n', 'Morico ', 'Tầng B3, 70 - 72 Lê Thánh Tôn, P. Bến Nghé, Q1', '', ''),
('nccb3', 'Paris Baguette', '147 Nguyễn Đức Cảnh, P. Tân Phong,  Quận 7', '', ''),
('nccb4', 'Dallas Cakes', '53 Phan Xích Long, P. 2, Quận Phú Nhuận', '', ''),
('nccb5', 'TOUS les JOURS', '201 Khánh Hội, P. 6,  Q4', '', ''),
('nccb6', 'Cake Boutique', 'Tầng B2, 92  Nam Kỳ Khởi Nghĩa, P. Bến Nghé, Q1', '', ''),
('nccb7', 'Cheesecake', '70 Đường Số 66, P. Thảo Điền,  Quận 2, TP. HCM', '', ''),
('nccb8', 'Đặng Dung', '14 Đặng Dung, P. Tân Định,  Quận 1, TP. HCM', '', ''),
('nccb9', 'Nhà cung cấp Chewy', '216 Nguyễn Tri Phương,P4,Q10', '0965988662', 'chewyjunior.com'),
('nccbf1', 'CHLOE', '2 - 6 Phan Văn Chương, Phú Mỹ Hưng, Quận 7', '', ''),
('nccbf10', 'Pachi ', '52 Mạc Đĩnh Chi, P. Đakao, Quận 1,TP. HCM', '', ''),
('nccbf11', 'Parkson ', 'Tầng 6 Parkson Cantavil, Xa Lộ Hà Nội, Quận 2', '', ''),
('nccbf12', 'Sakura', '13 Lê Quý Đôn, P. 6, Quận 3, TP. HCM', '', ''),
('nccbf2', 'AOI', '53 - 55 Bà Huyện Thanh Quan,P. 6,Quận 3', '', ''),
('nccbf3', 'An Đông', 'Windsor Plaza, 18 An Dương Vương,  Quận 5, TP. HCM', '', ''),
('nccbf4', 'L\'angfarm', '771 -775 Trần Hưng Đạo, P. 1,  Quận 5, TP. HCM', '', ''),
('nccbf5', 'Hoàng Yến', 'Lầu 1, 2 Ngô Đức Kế, P. Bến Nghé,  Quận 1, TP. HCM', '', ''),
('nccbf6', 'Micheal', 'Tầng 5, 9 Nguyễn Trãi, P. Bến Thành,Quận 1,TP. HCM', '', ''),
('nccbf7', 'New World Saigon Hotel', '76 Lê Lai, P. Bến Nghé,  Quận 1, TP. HCM', '', ''),
('nccbf8', 'Fujiya ', 'B3 Vincom Center, 72 Lê Thánh Tôn, Quận 1,TP. HCM', '', ''),
('nccbf9', 'Hotpot ', '12 Phan Văn Trị, P. 5,  Quận Gò Vấp, TP. HCM', '', ''),
('ncccf1', 'Thiên Phong', '263 Trần Quang Khải, P. Tân Định,  Quận 1, TP. HCM', '', ''),
('ncccf10', 'Bai Yu', '86 Ngô Đức Kế, P. Bến Nghé,  Quận 1, TP. HCM', '', ''),
('ncccf11', 'Yi Long', '47 Cộng Hòa,  Quận Tân Bình, TP. HCM', '', ''),
('ncccf12', 'Hebe', 'Tầng Trệt,  110 Cao Thắng,  Quận 3, TP. HCM', '', ''),
('ncccf2', 'Sơn Vũ', '193A/D3 Nam Kỳ Khởi Nghĩa,  Quận 3, TP. HCM', '', ''),
('ncccf3', 'Nhã Thảo', 'Tầng 4, 42 Nguyễn Huệ,  Quận 1, TP. HCM', '', ''),
('ncccf4', 'Kuroko ', 'Morico - Contemporary Japanese Lifestyle', '', ''),
('ncccf5', 'Bảo Bình', '96 Hàm Nghi,  Quận 1, TP. HCM', '', ''),
('ncccf6', 'Yang Yang', '83 Hồ Tùng Mậu,  Quận 1, TP. HCM', '', ''),
('ncccf7', 'Thiên Ân', '756 Sư Vạn Hạnh,  Quận 10, TP. HCM', '', ''),
('ncccf8', 'Phúc Long', '325 Lý Tự Trọng,  Quận 1, TP. HCM', '', ''),
('ncccf9', 'Testuya', '130 Trần Hưng Đạo, P. Phạm Ngũ Lão,Quận 1', '', ''),
('ncch1', 'Sushi Tei', 'Ngã Tư Lí Tự Trọng Trương Định,Quận 1,TP.HCM', '0962841188', 'sushitei.com'),
('ncch2\r\n', 'Nhà cung cấp Napoli', '372/19 Hoàng Hữu Nam,Quận 9,TP.HCM', '0385656788', 'napoli.com'),
('ncch3\r\n', 'The Alley', '114 Hồ Tùng Mậu,  Quận 1, TP. HCM', '125502739', 'sushitei.com'),
('ncch4', 'Trương Thị Cẩm ', '118B Nguyễn Thần Hiến,  Quận 4, TP. HCM', '01255027393', 'sushitei.com'),
('ncch5', 'Minh Văn', '301B An Dương Vương, P. 3,Quận 5,TP. HCM', '', ''),
('nccmm1', 'Dimsum Hồng Kông', '67 Tỉnh Lộ 10,Phường 5,Quận Bình Tân', '0399567098', 'disim.vn'),
('nccmm10', 'Thái Hạnh', '4 Đặng Văn Ngữ,Phường 3,Quận 5,TPHCM.', '0365234987', 'thaihanh.vn'),
('nccmm11', 'Madame Hương Dessert', '39 Lí Thường Kiệt,Phường 3,Quận 8,TPHCM', '03662354567', 'huonghuong.com'),
('nccmm12', 'Legend Beer Brew House No1', '123 Vũ Ngọc Phan,Quận 5,TPHCM', '0399234900', 'legen.vn'),
('nccmm2', 'Restaurant,Hàng Thùng', '21 Hàng Thùng,Quận 5,TPHCM', '0399142567', 'hangthung.vn'),
('nccmm3', 'Cơm Chay Chùa Láng', '6/10 Ngõ 121 Chùa Láng,Quận Bình Tân,TPHCM', '03995678900', 'chualang.com'),
('nccmm4', 'Ngọc Thạch Quán', 'C5 TT. Kim Liên, Lương Định Của, Quận 3,TPHCM', '0367891242', 'thachquan.com'),
('nccmm5', 'Tân Lương Sơn Quán', '23 Nguyễn Thị Định, Quận 6,TPHCM', '0399678345', 'dinhdinh.vn'),
('nccmm6', 'Crepes K', '56 Nguyễn Tri Phương,Phường 5,Quận 2.', '03995677234', 'banhngon.vn'),
('nccmm7', 'AEON Bình Tân', '56 Tên Lửa,Phường 12,Quận Binh Tân', '0399564567', 'tenlua.com'),
('nccmm8', 'Bánh Mì Phố', 'Phan Thuần Hiến ,Phường 2,Quận 4.', '03995677000', 'pho.com'),
('nccmm9', 'Cơm Chay Nàng Tấm', '130 Trần Hưng Đạo,Phường 6,Quận 3', '03995677256', 'nangtam.com'),
('nccnh1\r\n', 'Nhà cung cấp Tony ', '108 Yersin,P.Nguyễn Thái Bình,Q1', '0965758908', 'tony.com'),
('nccnh10\r\n\r\n', 'Tấn Huy', '67/4/118 Vũ Huy Tấn, P. 3,Quận Bình Thạnh', '', ''),
('nccnh11', 'HeeChul', '181/2 Đường 3 Tháng 2,  Quận 10, TP. HCM', '', ''),
('nccnh12', 'ShinDong', 'Papa\'s Chicken - Phú Mỹ Hưng', '', ''),
('nccnh2\r\n', 'Nhà cung cấp Lục Nguyên', '127 CMT8,P5,Q3', '0125503456', 'lucnguyen.com'),
('nccnh3', 'Alicia', '8/15 Lê Thánh Tôn, P. Bến Nghé,  Quận 1, TP. HCM', '', ''),
('nccnh4', 'Ariel', 'Tầng 3,9 Nguyễn Trung Trực, P. Bến Thành,Quận 1', '', ''),
('nccnh5', 'Hanuri ', '284A Nguyễn Đình Chiểu, P. 6,Quận 3, TP. HCM', '', ''),
('nccnh6\r\n', 'Hitomi', '215 Lý Tự Trọng, P. Bến Thành,  Quận 1, TP. HCM', '', ''),
('nccnh7\r\n', 'Nako', '120 Bis Nguyễn Đình Chiểu,  Quận 1, TP. HCM', '', ''),
('nccnh8\r\n', 'Wang Yuan', 'Tầng Trệt, AB Tower, 76A Lê Lai,  Quận 1, TP. HCM', '', ''),
('nccnh9\r\n', 'Wang Jun Kai', 'Baoz Dimsum Restaurant - Nguyễn Tri Phương', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `maNV` varchar(200) COLLATE utf8_bin NOT NULL,
  `tenNV` varchar(50) COLLATE utf8_bin NOT NULL,
  `sodienthoai` varchar(16) COLLATE utf8_bin NOT NULL,
  `diachi` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`maNV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON UPDATE CASCADE,
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idmonan`) REFERENCES `monan` (`ma`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `chitietdondathang_ibfk_1` FOREIGN KEY (`ma`) REFERENCES `monan` (`ma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON UPDATE CASCADE,
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`idmonan`) REFERENCES `monan` (`ma`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadonbanle`
--
ALTER TABLE `hoadonbanle`
  ADD CONSTRAINT `hoadonbanle_ibfk_1` FOREIGN KEY (`Madon`) REFERENCES `dondathang` (`madon`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`mancc`) REFERENCES `nhacungcap` (`maNCC`) ON UPDATE CASCADE,
  ADD CONSTRAINT `hopdong_ibfk_2` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`maNV`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `monan`
--
ALTER TABLE `monan`
  ADD CONSTRAINT `monan_ibfk_1` FOREIGN KEY (`maNCC`) REFERENCES `nhacungcap` (`maNCC`),
  ADD CONSTRAINT `monan_ibfk_2` FOREIGN KEY (`maloai`) REFERENCES `loai` (`maloai`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

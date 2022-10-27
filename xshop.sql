-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2022 lúc 06:54 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `ma_bl` int(10) NOT NULL COMMENT 'mã bình luận',
  `noi_dung` varchar(255) NOT NULL COMMENT 'nội dung bình luận',
  `ma_hh` int(10) NOT NULL,
  `ma_kh` varchar(20) NOT NULL,
  `ngay_bl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`ma_bl`, `noi_dung`, `ma_hh`, `ma_kh`, `ngay_bl`) VALUES
(4, 'hang dep', 23, 'DDD1', '0000-00-00'),
(10, 'xấu', 25, 'DDD1', '0000-00-00'),
(17, 'hàng này chơi tầm tuần là hỏng', 19, 'DDD1', '2022-10-20'),
(18, 'hàng này mà mặc chơi bóng rổ là hết chỗ nói', 19, 'DDD1', '2022-10-20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoa`
--

CREATE TABLE `hang_hoa` (
  `ma_hh` int(11) NOT NULL COMMENT 'mã hàng hóa',
  `ten_hh` varchar(50) NOT NULL COMMENT 'tên hàng hóa',
  `don_gia` double(10,2) NOT NULL COMMENT 'đơn giá',
  `giam_gia` double(10,2) DEFAULT 0.00 COMMENT 'giảm giá',
  `hinh` varchar(50) NOT NULL COMMENT 'hình ảnh',
  `ngay_nhap` date DEFAULT NULL COMMENT 'ngày nhập',
  `mo_ta` text NOT NULL COMMENT 'mô tả',
  `dac_biet` tinyint(1) NOT NULL COMMENT 'đặc biệt(1) bình thường(2)',
  `so_luot_xem` int(12) NOT NULL COMMENT 'số lượt xem',
  `ma_loai` int(10) NOT NULL COMMENT 'mã loại'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hang_hoa`
--

INSERT INTO `hang_hoa` (`ma_hh`, `ten_hh`, `don_gia`, `giam_gia`, `hinh`, `ngay_nhap`, `mo_ta`, `dac_biet`, `so_luot_xem`, `ma_loai`) VALUES
(19, 'Maxi Milian Chicago Bulls Jersey', 590000.00, 10.00, 'ao.webp', '2022-10-09', 'không', 1, 20, 1),
(20, 'Áo HCM CITYWING', 400000.00, 10.00, 'áo citywing.jpg', '2022-10-09', 'không', 2, 51, 2),
(21, 'Molten BG3200', 650000.00, 15.00, 'bongda.webp', '2022-10-09', 'không', 1, 112, 6),
(22, 'UNK NBA Lebron James', 390000.00, 10.00, 'UNK NBA LE.webp', '2022-10-11', 'không', 2, 5, 1),
(23, 'Ultra Game NBA Kyrie Irving', 355000.00, 15.00, 'ULTRA GAME NBA IVING.webp', '2022-10-11', 'không', 2, 14, 1),
(24, 'Bộ quần áo bóng rổ hanoi buffaloes', 250000.00, 5.00, 'HANOI BUFF.jpg', '2022-10-11', 'không', 2, 90, 2),
(25, 'Under Armour Compression', 335000.00, 8.00, 'UNDER ARMOUR COMPRESSION.webp', '2022-10-11', 'không', 2, 124, 3),
(26, 'UNK NBA Curry / Hayward', 250000.00, 9.00, 'UNK NBA CURRY.webp', '2022-10-11', 'không', 2, 50, 3),
(27, 'UNK NBA Jogger Training Slim', 285000.00, 12.00, 'UNK NBA JOGGER.webp', '2022-10-11', 'không', 2, 10, 3),
(28, 'UNK NBA Jogger Training Slim', 285000.00, 12.00, 'UNK NBA JOGGER.webp', '2022-10-11', 'không', 2, 20, 3),
(29, 'Spalding NBA Graffiti Outdoor', 430000.00, 10.00, 'bong2.webp', '2022-10-11', 'không', 1, 203, 5),
(30, 'Spalding NBA Highlight', 480000.00, 10.00, 'bong3.webp', '2022-10-11', 'không', 1, 207, 5),
(31, 'Molten BG4500 Indoor Size 6/7', 1400000.00, 20.00, 'bong4.webp', '2022-10-11', 'không', 1, 1000, 4),
(32, 'Spalding JrNBA Silver', 860000.00, 10.00, 'bong5.webp', '2022-10-11', 'không', 1, 300, 4),
(33, 'Rigorer Băng gối đệm tổ ong', 220000.00, 10.00, 'bv1.webp', '2022-10-11', 'không', 2, 50, 7),
(34, 'Copper Fit WRIST SLEEVE', 100000.00, 10.00, 's-l500_master.webp', '2022-10-11', 'không', 2, 30, 7),
(35, 'Vành Bóng Rổ Sodex 1', 600000.00, 5.00, 'vr1.webp', '2022-10-11', 'không', 1, 110, 10),
(36, 'Vành Bóng Rổ Sodex 2', 750000.00, 10.00, 'vr2.webp', '2022-10-11', 'không', 1, 100, 10),
(37, 'Nike KD Trey 5 VIII Bred', 2200000.00, 5.00, 'n1.webp', '2022-10-11', 'không', 1, 400, 11),
(38, 'Nike LeBron Witness 5 Gym Red', 2300000.00, 10.00, 'n2.webp', '2022-10-11', 'không', 1, 503, 11),
(39, 'Nike Freak 3 UNO Blue', 3500000.00, 10.00, 'n3.webp', '2022-10-11', 'không', 1, 3065, 11),
(40, 'Nike Freak 3 UNO Green', 3500000.00, 10.00, 'n4.webp', '2022-10-11', 'không', 1, 3002, 11),
(41, 'adidas DON Issue 3 Christmas', 2500000.00, 11.00, 'a1.webp', '2022-10-11', 'không', 1, 1021, 12),
(42, 'adidas DON Issue 3 Time in', 2500000.00, 10.00, 'a2.webp', '2022-10-11', 'không', 1, 1000, 12),
(43, 'adidas DON Issue 3 GCA White', 2500000.00, 10.00, 'a3.webp', '2022-10-11', 'không', 1, 1003, 12),
(44, 'adidas Dame 7 Victory Crimson', 2500000.00, 10.00, 'a4.webp', '2022-10-11', 'không', 1, 0, 12),
(45, 'Jordan Why Not Zer0.5 PF 1', 3000000.00, 10.00, 'j1.webp', '2022-10-11', 'không', 1, 0, 13),
(46, 'Jordan Why Not Zer0.5 PF 2', 3000000.00, 10.00, 'j2.webp', '2022-10-11', 'không', 1, 0, 13),
(57, 'Jordan Why Not Zer0.4 PF', 2600000.00, 10.00, 'j3.webp', '2022-10-11', 'không', 1, 0, 13),
(58, 'Jordan One Take 3 Black White', 2500000.00, 10.00, 'j4.webp', '2022-10-11', 'không', 1, 0, 13),
(64, 'Dụng cụ tập ném bóng', 40000.00, 0.00, 'dụng cụ tập ném.jpg', '2022-10-13', 'không', 2, 4, 8),
(65, 'Bảng rổ treo tường', 7000000.00, 10.00, 'bang-ro-treo-tuong-elip-eb03-1559707947.jpg', '2022-10-13', 'không', 1, 1, 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_kh` varchar(20) NOT NULL COMMENT 'mã khách hàng',
  `mat_khau` varchar(50) NOT NULL COMMENT 'mật khẩu',
  `ho_ten` varchar(50) NOT NULL COMMENT 'họ tên',
  `kich_hoat` tinyint(1) NOT NULL COMMENT 'không kích hoạt(0),kích hoạt(1)',
  `hinh` varchar(50) NOT NULL COMMENT 'hình ảnh',
  `email` varchar(50) NOT NULL COMMENT 'email',
  `vai_tro` varchar(50) NOT NULL COMMENT 'vai trò'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `mat_khau`, `ho_ten`, `kich_hoat`, `hinh`, `email`, `vai_tro`) VALUES
('DDD1', 'duongtkqn1999', 'Nguyễn Đức Hoàng Dương Dương', 1, 'WIN_20221013_21_40_13_Pro.jpg', 'duongtk59@yahoo.com', 'Nhân viên'),
('DDDD1', 'duong', 'Nguyễn Đức Hoàng Dương', 0, 'WIN_20221013_21_40_13_Pro.jpg', 'duongtk59@yahoo.com', 'Khách hàng'),
('KH1', 'duongtkqn1999', 'Nguyễn Đức Hoàng Dương', 1, 'áo-just-do-it-trắng-Copy-300x300.jpg', 'duongtkqn1999@gmail.com', 'Nhân viên'),
('KH2', 'viet2k1', 'Phạm Bảo Việt', 1, 'viet.jpg', 'vietsatda@gmaill.com', 'Khách hàng'),
('KH3', 'nguyen', 'Võ Xuân Nguyên', 1, 'nguyen.jpg', 'nguyen@gmail.com', 'Khách hàng'),
('KKK1', 'quan', 'quan', 1, 'quan.jpg', 'quan@gmail.com', 'Khách hàng'),
('VT', 'thuong', 'Trương Văn Thương', 0, 'thuong.jpg', 'thuong@gmail.com', 'Khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `ma_loai` int(10) NOT NULL COMMENT 'mã loại hàng',
  `ten_loai` varchar(50) NOT NULL COMMENT 'tên loại hàng'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`ma_loai`, `ten_loai`) VALUES
(1, 'áo quần nba'),
(2, 'áo quần vba'),
(3, 'áo quần outlet'),
(4, 'bóng indoor'),
(5, 'bóng outdoor'),
(6, 'bóng indoor and outdoor'),
(7, 'phụ kiện bảo vệ'),
(8, 'phụ kiện hỗ trợ tập luyện'),
(9, 'bảng rổ'),
(10, 'vành rổ'),
(11, 'giày nike'),
(12, 'giày adidas'),
(13, 'giày jordan');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`ma_bl`),
  ADD KEY `ma_hh` (`ma_hh`),
  ADD KEY `ma_kh` (`ma_kh`);

--
-- Chỉ mục cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD PRIMARY KEY (`ma_hh`),
  ADD KEY `ma_loai` (`ma_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`ma_loai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `ma_bl` int(10) NOT NULL AUTO_INCREMENT COMMENT 'mã bình luận', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  MODIFY `ma_hh` int(11) NOT NULL AUTO_INCREMENT COMMENT 'mã hàng hóa', AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `ma_loai` int(10) NOT NULL AUTO_INCREMENT COMMENT 'mã loại hàng', AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`ma_hh`) REFERENCES `hang_hoa` (`ma_hh`),
  ADD CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`ma_kh`) REFERENCES `khach_hang` (`ma_kh`);

--
-- Các ràng buộc cho bảng `hang_hoa`
--
ALTER TABLE `hang_hoa`
  ADD CONSTRAINT `hang_hoa_ibfk_1` FOREIGN KEY (`ma_loai`) REFERENCES `loai` (`ma_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

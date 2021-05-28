-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 28, 2021 lúc 12:40 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_cnpm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(4, 'Đồng hồ '),
(3, 'Giày thể thao'),
(5, 'Kính mắt'),
(1, 'Thời trang Nam'),
(2, 'Thời trang Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `prd_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `prd_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `prd_price` int(11) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_details` text CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prd_id`, `prd_name`, `prd_image`, `prd_price`, `prd_featured`, `prd_status`, `prd_details`, `cat_id`) VALUES
(0, '2323', 'asophoongdoi.png', 12345, 1, 1, '', 1),
(1, 'Quần áo ngủ', 'bodongu.png', 120000, 1, 1, 'Bộ đồ cá tính với chất vải mêm mịn tạo cảm giác mát mẻ khi đi ngủ', 1),
(2, 'Áo phông nam Trắng', 'aophongnamtrang.png', 135000, 1, 0, 'Bộ đồ cá tính với chất vải mêm mịn tạo cảm giác mát mẻ ', 1),
(3, 'Áo thun nam đen', 'aophongnamden.png', 175000, 1, 1, 'Đẹp', 1),
(4, 'Áo thun nam đỏ', 'aophongnamdo.png', 185000, 1, 1, 'Đẹp', 1),
(5, 'Áo thun nam trắng', 'aophongnamtrang.png', 195000, 0, 0, 'Đẹp', 1),
(6, 'Áo thun nam form rộng', 'aophongnamrong.png', 205000, 0, 0, 'Đẹp', 1),
(7, 'Áo thun nam xanh', 'aophongnamxanh.png', 225000, 0, 0, 'Đẹp', 1),
(8, 'Áo thun nữ đen', 'aothunnuden.png', 225000, 1, 0, 'Đẹp', 2),
(9, 'Áo thun nữ hồng', 'aothunnuhong.png', 185000, 1, 1, 'Đẹp', 2),
(10, 'Áo thun nữ kẻ sọc', 'aothunnusoc.png', 325000, 1, 1, 'Đẹp', 2),
(11, 'Áo thun nữ trễ vai', 'aothunnubanhbeo.png', 335000, 1, 1, 'Đẹp', 2),
(12, 'Đồng hồ Gold', 'donghobac.png', 655000, 1, 1, 'Đẹp', 4),
(13, 'Đồng hồ nữ Hồng', 'donghohong.png', 455000, 1, 1, 'Đẹp', 4),
(14, 'Đồng hồ thông minh ', 'donghongthongminh.png', 645000, 1, 1, 'Đẹp', 4),
(15, 'Kính đa tròng ', 'kinhdatrong.png', 455000, 1, 1, 'Đẹp', 5),
(16, 'Kính cận mắt tròn ', 'kinhmattron.png', 325000, 1, 1, 'Đẹp', 5),
(17, 'Kính cận mắt tròn đen ', 'kinhmattronden.png', 345000, 1, 1, 'Đẹp', 5),
(18, 'Kính cận mắt vuông', 'kinhvuong.png', 365000, 1, 1, 'Đẹp', 5),
(19, 'Quần jogger nam', 'quanjogger.png', 455000, 1, 1, 'Đẹp', 1),
(20, 'Quần jogger nữ ', 'quannujogger.png', 505000, 0, 1, 'Đẹp', 2),
(21, 'Giày da Nam', 'giayda.png', 560000, 1, 1, 'Đẹp', 3),
(22, 'Giày nữ', 'giaynu.png', 450000, 0, 0, 'Đẹp', 3),
(23, 'Giày thể thao Nam', 'giaynamtheothao.png', 550000, 0, 1, 'Đẹp', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_full` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `user_mail` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `user_level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_full`, `user_mail`, `user_pass`, `user_level`) VALUES
(11, 'Admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(12, 'Nhân viên 1', 'nhanvien1@gmail.com', '202cb962ac59075b964b07152d234b70', 2),
(13, 'Nhân viên', 'nhanvien@gmail.com', '202cb962ac59075b964b07152d234b70', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 04, 2021 lúc 03:40 AM
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
-- Error reading data for table btl_cnpm.category: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `btl_cnpm`.`category`' at line 1

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cus_mail` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cus_pass` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_mail`, `cus_pass`) VALUES
(1, 'Vũ Tiến Hiệu', 'hieu@gmail.com', 202),
(3, 'Canh ', 'canh@gmail.com', 202);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `prd_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `prd_image` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `prd_price` int(11) UNSIGNED NOT NULL,
  `prd_status` int(1) NOT NULL,
  `prd_featured` int(1) NOT NULL,
  `prd_details` text COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_status`, `prd_featured`, `prd_details`) VALUES
(2, 1, 'Áo phông nam Trắng', 'aophongnamtrang.png', 135000, 0, 1, 'Bộ đồ cá tính với chất vải mêm mịn tạo cảm giác mát mẻ '),
(3, 1, 'Áo Sơ mi nam', 'aosominam.png', 175000, 1, 1, 'Đẹp'),
(4, 1, 'Áo thun nam đỏ', 'aophongnamdo.png', 185000, 1, 1, 'Đẹp'),
(5, 1, 'Áo thun nam trắng', 'aophongnamtrang.png', 195000, 0, 0, 'Đẹp'),
(6, 1, 'Áo thun nam form rộng', 'aothunnamrong.png', 205000, 0, 0, 'Đẹp'),
(7, 1, 'Áo thun nam xanh', 'aothunnamxanh.png', 225000, 0, 0, 'Đẹp'),
(8, 2, 'Áo thun nữ đen', 'aothunnuden.png', 225000, 0, 1, 'Đẹp'),
(9, 2, 'Áo thun nữ hồng', 'aothunnuhong.png', 185000, 1, 1, 'Đẹp'),
(10, 2, 'Áo thun nữ kẻ sọc', 'aothunnusoc.png', 325000, 1, 1, 'Đẹp'),
(11, 2, 'Áo thun nữ trễ vai', 'aothunubanhbeo.png', 335000, 1, 1, 'Đẹp'),
(12, 4, 'Đồng hồ Gold', 'donghobac.png', 655000, 1, 1, 'Đẹp'),
(13, 4, 'Đồng hồ nữ Hồng', 'donghohong.png', 455000, 1, 1, 'Đẹp'),
(14, 4, 'Đồng hồ thông minh ', 'donghothongminh.png', 645000, 1, 1, 'Đẹp'),
(15, 5, 'Kính đa tròng ', 'kinhdatrong.png', 455000, 1, 1, 'Đẹp'),
(16, 5, 'Kính cận mắt tròn ', 'kinhmattron.png', 325000, 1, 1, 'Đẹp'),
(17, 5, 'Kính cận mắt tròn đen ', 'kinhmattronden.png', 345000, 1, 1, 'Đẹp'),
(18, 5, 'Kính cận mắt vuông', 'kinhvuong.png', 365000, 1, 1, 'Đẹp'),
(19, 1, 'Quần jogger nam', 'quanjogger.png', 455000, 1, 1, 'Đẹp'),
(20, 2, 'Quần jogger nữ ', 'quannujogger.png', 505000, 1, 0, 'Đẹp'),
(21, 3, 'Giày da Nam', 'giayda.png', 560000, 1, 1, 'Đẹp'),
(22, 3, 'Giày nữ', 'giaynu.png', 450000, 0, 0, 'Đẹp'),
(23, 3, 'Giày thể thao Nam', 'giaynamthethao2.png', 540000, 1, 0, 'Đẹp');

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
(12, 'Nhân viên 12', 'nhanvien1@gmail.com', '123', 2),
(13, 'Nhân viên', 'nhanvien@gmail.com', '202cb962ac59075b964b07152d234b70', 2),
(14, 'hilu', 'hiuhiu@gmail.com', '123456', 3),
(17, 'vutinhiu1', 'hiuhiu2@gmail.com', '202cb962ac59075b964b07152d234b70', 3),
(18, 'vutinhiu', 'hiuhiu1@gmail.com', '123', 3);

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
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

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
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

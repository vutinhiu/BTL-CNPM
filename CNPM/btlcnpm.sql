-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2021 lúc 04:59 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btlcnpm`
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
(4, 'Đồng hồ'),
(3, 'Giày '),
(5, 'Kính mắt'),
(1, 'Thời trang Nam'),
(2, 'Thời trang Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cus_mail` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cus_pass` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cus_cart` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `cus_order` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_mail`, `cus_pass`, `cus_cart`, `cus_order`) VALUES
(1, 'Vũ Tiến Hiệu', 'hiuhiu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', ''),
(3, 'Canh ', 'canh@gmail.com', '202cb962ac59075b964b07152d234b70', '', ''),
(4, 'chuong', 'chuong@gmail.com', '202cb962ac59075b964b07152d234b70', '', ''),
(5, 'tung', 'tung@gmail.com', '202cb962ac59075b964b07152d234b70', '', ''),
(6, 'khach', 'khach@gmail.com', '202cb962ac59075b964b07152d234b70', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `user_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `prd_editingtime` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`user_id`, `prd_id`, `prd_name`, `prd_editingtime`) VALUES
(11, 2, 'Áo phông nam Trắng', '2021-06-08'),
(11, 3, 'Áo Sơ mi nam', '2021-06-07');

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
  `prd_details` text COLLATE utf8_unicode_520_ci NOT NULL,
  `cat_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`prd_id`, `cat_id`, `prd_name`, `prd_image`, `prd_price`, `prd_status`, `prd_featured`, `prd_details`, `cat_name`) VALUES
(2, 1, 'Áo phông nam Trắng', 'aophongnamtrang.png', 135000, 0, 1, 'Bộ đồ cá tính với chất vải mêm mịn tạo cảm giác mát mẻ ', 'Thời trang Nam'),
(3, 1, 'Áo Sơ mi nam', 'aosominam.png', 175000, 1, 1, 'Đẹp', 'Thời trang Nam'),
(4, 1, 'Áo thun nam đỏ', 'aophongnamdo.png', 185000, 1, 1, 'Đẹp', 'Thời trang Nam'),
(5, 1, 'Áo thun nam trắng', 'aophongnamtrang.png', 195000, 0, 0, 'Đẹp', 'Thời trang Nam'),
(6, 1, 'Áo thun nam form rộng', 'aothunnamrong.png', 205000, 0, 0, 'Đẹp', 'Thời trang Nam'),
(7, 1, 'Áo thun nam xanh', 'aothunnamxanh.png', 225000, 0, 0, 'Đẹp', 'Thời trang Nam'),
(8, 2, 'Áo thun nữ đen', 'aothunnuden.png', 225000, 0, 1, 'Đẹp', 'Thời trang Nữ'),
(9, 2, 'Áo thun nữ hồng', 'aothunnuhong.png', 185000, 1, 1, 'Đẹp', 'Thời trang Nữ'),
(10, 2, 'Áo thun nữ kẻ sọc', 'aothunnusoc.png', 325000, 1, 1, 'Đẹp', 'Thời trang Nữ'),
(11, 2, 'Áo thun nữ trễ vai', 'aothunubanhbeo.png', 335000, 1, 1, 'Đẹp', 'Thời trang Nữ'),
(12, 4, 'Đồng hồ Gold', 'donghobac.png', 655000, 1, 1, 'Đẹp', 'Đồng hồ'),
(13, 4, 'Đồng hồ nữ Hồng', 'donghohong.png', 455000, 1, 1, 'Đẹp', 'Đồng hồ'),
(14, 4, 'Đồng hồ thông minh ', 'donghothongminh.png', 645000, 1, 1, 'Đẹp', 'Đồng hồ'),
(15, 5, 'Kính đa tròng ', 'kinhdatrong.png', 455000, 1, 1, 'Đẹp', 'Kính mắt'),
(16, 5, 'Kính cận mắt tròn ', 'kinhmattron.png', 325000, 1, 1, 'Đẹp', 'Kính mắt'),
(17, 5, 'Kính cận mắt tròn đen ', 'kinhmattronden.png', 345000, 1, 1, 'Đẹp', 'Kính mắt'),
(18, 5, 'Kính cận mắt vuông', 'kinhvuong.png', 365000, 1, 1, 'Đẹp', 'Kính mắt'),
(19, 1, 'Quần jogger nam', 'quanjogger.png', 455000, 1, 1, 'Đẹp', 'Quần '),
(20, 2, 'Quần jogger nữ ', 'quannujogger.png', 505000, 1, 0, 'Đẹp', 'Quần'),
(21, 3, 'Giày da Nam', 'giayda.png', 560000, 1, 1, 'Đẹp', 'Giày'),
(22, 3, 'Giày nữ', 'giaynu.png', 450000, 0, 0, 'Đẹp', 'Giày '),
(23, 3, 'Giày thể thao Nam', 'giaynamthethao2.png', 540000, 1, 0, 'Đẹp', 'Giày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `select_products`
--

CREATE TABLE `select_products` (
  `cus_id` int(11) NOT NULL,
  `prd_id` int(11) NOT NULL,
  `prd_name` varchar(255) COLLATE utf8_unicode_520_ci NOT NULL,
  `prd_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;

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
(12, 'Nhân viên 1', 'nhanvien1@gmail.com', '123', 3),
(13, 'Nhân viên', 'nhanvien@gmail.com', '202cb962ac59075b964b07152d234b70', 2),
(22, 'hilu', '123@gmail.com', '202cb962ac59075b964b07152d234b70', 2);

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
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `prd_id` (`prd_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prd_id`),
  ADD KEY `cat_id` (`cat_id`);

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
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `prd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

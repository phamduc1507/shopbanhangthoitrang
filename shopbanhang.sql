-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2023 lúc 01:08 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id_feedback` int(11) NOT NULL,
  `tennguoidung` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dienthoai` varchar(15) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `chude` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `time_lh` datetime DEFAULT NULL,
  `status_lh` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `updata_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL,
  `size_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`, `size_id`) VALUES
(292, '469', 103, 1, '5'),
(293, '4227', 104, 1, '2'),
(294, '347', 97, 1, '4'),
(295, '1506', 66, 2, '1'),
(296, '1679', 104, 1, '1'),
(337, '7999', 69, 1, '3'),
(357, '336', 94, 3, '3'),
(358, '7828', 69, 1, '4'),
(359, '6030', 103, 1, '6'),
(360, '4188', 111, 1, '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`, `role_id`) VALUES
(99, 'phamduc', 'phamduc15072003@gmail.com', 'hanoi', 'e576db96b0060e900eb27f4cc21a6cbf', '0912332379', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(39, 'Nhẫn & dây chuyền', 1),
(40, 'Đồng hồ', 2),
(41, 'Quần thể thao', 3),
(42, 'Quần short', 4),
(43, 'Quần bò', 5),
(44, 'Áo khoác', 6),
(45, 'Áo hoodie & áo len', 7),
(46, 'Áo thun', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(19, 1, '754', 0),
(20, 1, '9283', 0),
(23, 1, '662', 0),
(26, 1, '2480', 0),
(29, 1, '3933', 0),
(30, 1, '6072', 1),
(31, 1, '1895', 1),
(32, 1, '3575', 1),
(33, 1, '7409', 1),
(34, 1, '7530', 1),
(35, 1, '8543', 1),
(36, 1, '978', 1),
(37, 1, '295', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `id_role`) VALUES
(1, 'Quản Lý', 2),
(2, 'Nhân viên', 3),
(5, 'Khách hàng', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `gianhap` int(20) NOT NULL,
  `giasp` int(50) NOT NULL,
  `giamgia` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `size` varchar(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `gianhap`, `giasp`, `giamgia`, `soluong`, `size`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(66, 'Áo khoác', '004', 200000, 400000, 370000, 2, 'XL ', '1640003283_khoác9.png', '', '<p style=\"background-color: rgb(245, 245, 245);\">Với chất liệu bên ngoài trơn trống thấm nước có thể đi ngoài trời mưa.</p><p style=\"background-color: rgb(245, 245, 245);\">Bên trong có lớp lông giữu nhiệt phù hợp cho các bạn đi xe.</p>', 0, 44),
(69, 'Áo giữ nhiệt', '004', 200000, 400000, 359000, 30, 'XL ', '1640003260_hooide3.png', '', '<p>Chất liệu vải mềm mặc dễ chịu.</p><p>Thoáng khí cử động dễ dàng.</p><p>Với màu xanh nhám càng làm thêm sự ấm áp.</p><p>Thích hợp mặc vào màu đông.</p>', 0, 45),
(73, 'Dây chuyền', '146', 50000, 150000, 120000, 5, 'X', '1639446096_nhan1.jpg', '', '<p>Dây chuyền nhẹ nhàng phù hợp với giới trẻ để trang trí khi đi chơi.</p>', 0, 39),
(75, 'Nhẫn', '0147', 50000, 200000, 165000, 6, 'M ', '1639446107_nhan2.jpg', '', '<p>Nhẫn làm bằng bạc chi tiết tỉ mỉ với những hoa văn, ngoài ra có gắn những viên đá làm lấp lánh cho nhẫn.</p><p>Làm đồ trăng sức nổi bật.</p>', 0, 39),
(87, 'Áo phông nam', '26as', 100000, 350000, 300000, 30, 'L', '1639446154_3.jgp.jpg', '', '<p>Áo màu trắng đơn giản nhưng vẫn rất lịch sự.</p><p>Rất dễ phối đồ đi chơi hay đi học cho các bạn sinh viên.</p>', 0, 46),
(88, 'Áo Thun 2021', 'AZX', 50000, 150000, 100000, 15, 'X', '1640003199_aothun2.png', '', '<p>Áo kết hợp xọc kẻ làm cho đỡ sự nhàm chán của màu trắng.</p><p>Phù hợp với đi chơi hay đi làm.</p>', 0, 46),
(89, 'Áo phông xám', 'acc', 50000, 150000, 100000, 10, 'X', '1639446221_2.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\">Áo màu trắng đơn giản nhưng vẫn rất lịch sự.</p><p style=\"background-color: rgb(245, 245, 245);\">Rất dễ phối đồ đi chơi hay đi học cho các bạn sinh viên.</p>', 0, 46),
(90, 'Áo hoodie', 'ACG', 200000, 350000, 299000, 6, 'XL ', '1640003161_khoác15.png', '', '<p>Áo có chất liệu mịn màng ấm áp.</p><p>Với những đường may chi tiết tỉ mỉ.</p><p>Kết hợp có mũ để giữ ấm.</p>', 0, 45),
(91, 'Áo hoodie', 'MLJ', 300000, 460000, 390000, 6, 'L', '1639446244_4.jpg', '', '<p style=\"background-color: rgb(245, 245, 245);\">Áo có chất liệu mịn màng ấm áp.</p><p style=\"background-color: rgb(245, 245, 245);\">Với những đường may chi tiết tỉ mỉ.</p><p style=\"background-color: rgb(245, 245, 245);\">Kết hợp có mũ để giữ ấm.</p>', 0, 45),
(92, 'Áo len', 'ACU', 200000, 400000, 399000, 9, 'XL ', '1640003059_hooide2.png', '', '<p style=\"background-color: rgb(245, 245, 245);\">Áo có chất liệu mịn màng ấm áp.</p><p style=\"background-color: rgb(245, 245, 245);\">Với những đường may chi tiết tỉ mỉ.</p><p style=\"background-color: rgb(245, 245, 245);\"><br></p>', 0, 45),
(93, 'Áo khoác', 'ACV', 300000, 499000, 450000, 6, 'M ', '1640003125_khoác13.png', '', '<p style=\"background-color: rgb(245, 245, 245);\">Với chất liệu bên ngoài trơn trống thấm nước có thể đi ngoài trời mưa.</p><p style=\"background-color: rgb(245, 245, 245);\">Bên trong có lớp lông giữu nhiệt phù hợp cho các bạn đi xe.</p>', 0, 44),
(94, 'Quần bò ', 'Alh', 200000, 350000, 299000, 7, 'XL ', '1640003101_bò1.png', '', '<p>Chiếc quần làm bằng vải mịn dễ chịu cho người sử dụng.</p><p>Với những chi tiết đơn giản nhưng vẫn làm lên sự lịch lẵm.</p><p>Chi tiết may rất gọn gàng tỉ mỉ.</p>', 0, 43),
(95, 'Quần bò ', 'QAC', 100000, 299000, 180000, 12, 'M ', '1640003040_bò4.png', '', '<p>Chiếc quần làm bằng vải mịn dễ chịu cho người sử dụng.</p><p>Với những chi tiết đơn giản nhưng vẫn làm lên sự lịch lẵm.</p><p>Chi tiết may rất gọn gàng tỉ mỉ.</p>', 0, 43),
(96, 'Quần thể thao', 'SPI', 100000, 200000, 199000, 20, 'XXL', '1639446299_quanngan.jgp.jpg', '', '<p>Quần mặc dễ chịu, rất dễ thoải mái cho thể thao.</p><p>Với chất liệu co giãn không lo đến chất lượng của sản phẩm.</p><p>Với những đường may chi tiết tỉ mỉ giúp cho sản phẩm đẹp hơn.</p>', 0, 41),
(97, 'Quần thể thao', 'PLJ', 100000, 290000, 180000, 30, 'L', '1639446323_1.jpg', '', '<p>Quần mặc dễ chịu, rất dễ thoải mái cho thể thao.</p><p>Với chất liệu co giãn không lo đến chất lượng của sản phẩm.</p><p>Với những đường may chi tiết tỉ mỉ giúp cho sản phẩm đẹp hơn.</p>', 0, 41),
(99, 'Quần short', 'Pjo', 500000, 800000, 790000, 10, 'XXL', '1640488564_6.png', '', '<p>Quần mặc thoải mái dễ chịu, dễ hoạt động.</p><p>Phối đồ dễ dàng với các loại áo phông.</p><p>Với những đưởng máy gọn gàng làm cho sản phẩm trở lên bắt mắt.</p>', 0, 42),
(100, 'áo khoác nam', '001', 200000, 400000, 350000, 30, 'L', '1639460938_4.jpg', '', '', 0, 44),
(101, 'Đồng hồ ACCI', '4', 1500000, 2800000, 2600000, 2, 'freesize', '1639586270_đồng4.png', '', '', 0, 40),
(102, 'Vòng nam cao cấp', '1500000', 150000, 400000, 300000, 30, '35 36 37 38', '1639754740_dây1.png', '', '', 0, 40),
(103, 'Đồng hồ seess cao cấp', 'MT', 1500000, 4000000, 3000000, 30, 'freesize', '1639830869_đồng11.png', '', '<p><img src=\"data:image/jpeg;base64,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\" style=\"width: 225px;\"><br></p>', 0, 40),
(104, 'Đồng hồ', '004', 800000, 1500000, 1200000, 30, 'freesize', '1640436014_đồng7.png', '', '', 0, 40),
(105, 'Áo khoác da ', '002', 300000, 800000, 729000, 15, 'M L XL XXL', '1640488210_khoác18.png', '', '', 0, 44),
(106, 'Quần nike', '002', 100000, 250000, 200000, 30, 'M L XL XXL', '1640488281_3.png', '', '', 0, 41),
(107, 'Quần thể thao Adidas', '001', 100000, 250000, 200000, 30, 'M L XL XXL', '1640488315_1.png', '', '', 0, 41),
(108, 'áo polo nam', '002', 100000, 250000, 200000, 15, 'M L XL XXL', '1640488421_aothun7.png', '', '', 0, 46),
(109, 'quần short Adidas', '002', 200000, 400000, 359000, 30, 'M L XL XXL', '1640488485_2.png', '', '', 0, 42),
(110, 'Quần thể thao nam', '004', 100000, 250000, 200000, 30, 'M L XL XXL', '1640488530_10.png', '', '', 0, 42),
(111, 'Đồng hồ LV', '005', 1500000, 4000000, 3500000, 15, 'freesize', '1640570777_đồng9.png', '', '', 0, 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `size_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_size`
--

INSERT INTO `tbl_size` (`id`, `name`, `size_id`) VALUES
(1, 'S', 1),
(2, 'M', 2),
(3, 'L', 3),
(4, 'XL', 4),
(5, 'XXL', 5),
(6, 'Freesize', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `id_slide` int(11) NOT NULL,
  `danhmuc` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_slide`
--

INSERT INTO `tbl_slide` (`id_slide`, `danhmuc`, `hinhanh`, `thutu`) VALUES
(1, 'slide 1', '1640435964_Supreme.jpg', 1),
(2, 'slide 2', '1639887409_slide4.jpg', 2),
(3, 'slide 3 ', '1639887383_slide1.jpg', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `gianhap` varchar(110) NOT NULL,
  `soluongban` int(11) NOT NULL,
  `loinhuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 16, 2023 lúc 01:35 AM
-- Phiên bản máy phục vụ: 10.2.43-MariaDB
-- Phiên bản PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sachnoia_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$02.uMGB26ln3fgNk8MyarOf8hnuaF/hWlukTDKk99Kb9TluOarctq', NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `audio`
--

CREATE TABLE `audio` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `giay` bigint(20) NOT NULL,
  `tab` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `audio`
--

INSERT INTO `audio` (`id`, `user_id`, `product_id`, `giay`, `tab`) VALUES
(3, 2, 81, 195, 0),
(4, 2, 75, 25855, 0),
(5, 2, 76, 1280, 0),
(6, 2, 79, 10, 0),
(7, 3, 81, 132, 0),
(8, 2, 82, 28, 0),
(9, 2, 83, 8, 0),
(10, 2, 84, 0, 0),
(11, 2, 86, 0, 0),
(12, 2, 104, 0, 0),
(13, 2, 108, 12, 0),
(14, 2, 161, 3, 3),
(15, 2, 160, 0, 0),
(16, 7, 100, 5, 0),
(17, 7, 161, 0, 0),
(18, 2, 89, 1, 0),
(19, 9, 101, 225, 0),
(20, 9, 161, 3, 53),
(21, 9, 94, 42, 0),
(22, 9, 103, 5, 0),
(23, 9, 160, 11, 0),
(24, 9, 82, 3, 0),
(25, 9, 163, 2, 0),
(26, 9, 152, 7, 0),
(27, 9, 162, 0, 144),
(28, 9, 167, 0, 249),
(29, 9, 166, 11, 0),
(30, 12, 163, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Sách nói An An - Nghe sách trọn đời không giới hạn', '', 'Sach nói cho mọi người', 'Sách nói An An', 'trungthanh3.jpg', '', '', 'Sach nói cho mọi người', '39 Hàn Mặc Từ, TP.Vinh, Nghệ An', 'sachnoianan@gmail.com', '0383 306077', '6', '34', '75', '33530', '<li>\r\n                                            <a href=\"/\">Trang chủ</a>\r\n                                        </li>\r\n                                        <li><a href=\"/gioi-thieu\">Giới thiệu</a></li>\r\n                                        <li><a href=\"/san-pham\">Sản phẩm</a></li>\r\n                                        <li><a href=\"hinh-thuc-thanh-toan\">Hình thức thanh toán</a></li>\r\n                                        <li><a href=\"hinh-thuc-giao-hang\">Hình thức vận chuyển</a></li>\r\n                                        <li><a href=\"/lien-he\">Liên hệ</a></li>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3686.0705743158323!2d103.95523841537026!3d22.501535141245107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cd13742e24685f%3A0xd5ecef411dd1223b!2zS0NOIGLhuq9jIGR1ecOqbiBo4bqjaQ!5e0!3m2!1svi!2s!4v1659078464654!5m2!1svi!2s', 'AudioBooks-Nguồn tri thức vô tận', '[\"{\\\"image\\\":\\\"t01-fix.jpg\\\"}\",\"{\\\"image\\\":\\\"t02-fix.jpg\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'cua-nhom.jpg', 'cua-nhom.jpg', 'cua-nhom.jpg', 'logo_TT.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) DEFAULT 0,
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Sách nói An An - Nghe sách trọn đời không giới hạn', '', 'Sach nói cho mọi người', 'Sách nói An An', '', '', 'Sach nói cho mọi người', '39 Hàn Mặc Từ, TP.Vinh, Nghệ An', 'sachnoianan@gmail.com', '0383 306077', '6', '34', '75', '33530', '<li>\r\n                                            <a href=\"/\">Trang chủ</a>\r\n                                        </li>\r\n                                        <li><a href=\"/gioi-thieu\">Giới thiệu</a></li>\r\n                                        <li><a href=\"/san-pham\">Sản phẩm</a></li>\r\n                                        <li><a href=\"hinh-thuc-thanh-toan\">Hình thức thanh toán</a></li>\r\n                                        <li><a href=\"hinh-thuc-giao-hang\">Hình thức vận chuyển</a></li>\r\n                                        <li><a href=\"/lien-he\">Liên hệ</a></li>', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3686.0705743158323!2d103.95523841537026!3d22.501535141245107!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x36cd13742e24685f%3A0xd5ecef411dd1223b!2zS0NOIGLhuq9jIGR1ecOqbiBo4bqjaQ!5e0!3m2!1svi!2s!4v1659078464654!5m2!1svi!2s', 'AudioBooks-Nguồn tri thức vô tận', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dang_ky_goi`
--

CREATE TABLE `dang_ky_goi` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `goi` int(11) NOT NULL DEFAULT 0,
  `ngay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dang_ky_goi`
--

INSERT INTO `dang_ky_goi` (`id`, `user_id`, `goi`, `ngay`, `state`) VALUES
(1, 2, 1, '2023-02-04 04:31:23', 1),
(2, 2, 2, '2023-02-04 04:32:42', 1),
(3, 2, 3, '2023-02-04 04:32:52', 1),
(4, 7, 3, '2023-02-02 02:25:35', 1),
(7, 9, 3, '2023-02-03 15:26:41', 1),
(8, 10, 2, '2023-02-03 15:40:35', 0),
(9, 2, 4, '2023-02-04 04:33:14', 1),
(10, 11, 1, '2023-02-07 01:49:13', 1),
(11, 12, 3, '2023-02-13 14:27:48', 1),
(12, 13, 2, '2023-02-13 14:30:57', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `dat_mua`
--

INSERT INTO `dat_mua` (`id`, `name_investors`, `professional_field`, `work_unit`, `phone`, `email`, `address`, `district`, `city`, `chanel`, `aspiration`) VALUES
(2, 'Rèm vải 01', '760', '1', 'tuấn', 'tuan@gmail.com', '0123', 'Hà Nội', '', '', ''),
(3, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng'),
(4, 'Việt Hưng', 'IT', 'GOLDBRIDGE ', '1672523165', 'viethung95cute@gmail.com', '', 'Thanh Xuân', 'Hà N?i', 'Facebook', 'Không có nguy?n v?ng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_goi`
--

CREATE TABLE `gia_goi` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` bigint(20) NOT NULL DEFAULT 0,
  `price_goc` bigint(20) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gia_goi`
--

INSERT INTO `gia_goi` (`id`, `name`, `price`, `price_goc`, `note`) VALUES
(1, 'Gói 1', 200, 400, NULL),
(2, 'Gói 2', 300, 600, NULL),
(3, 'Gói 3', 400, 800, NULL),
(4, 'Gói 4', 500, 1000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_ao`
--

CREATE TABLE `khach_ao` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_ao`
--

INSERT INTO `khach_ao` (`id`, `name`, `image`, `phone`) VALUES
(2, 'Huệ Nguyễn', '62503634_1246035085564247_5158184679441956864_o-20191214092207.jpg', '0986421xxx'),
(3, 'Ngọc Phong Thủy', '69900880_1085875761609537_7026740987892334592_n-20191214092218.jpg', '0987770xxx'),
(4, 'Hưng Phụ Kiện', '48387190_2484750361541168_7388044962660614144_o-20191214092206.jpg', '0912918xxx'),
(5, 'Thu Paris', '71645439_1676615889141451_8753702468090593280_n-20191214092219.jpg', '0978781xxx'),
(6, 'Hùng Xe Cỏ', '64301789_1533822410086777_8714435652277501952_n-20191214092707.jpg', '0913361xxx'),
(7, 'Anh Panda', '72084977_1223057091231721_4002593341559537664_o-20191214092219.jpg', '0775173xxx'),
(8, 'Ngọc Dung', '72458484_2393757767360779_3561394694388711424_n-20191214092219.jpg', '0328641xxx'),
(9, 'Hạnh Hương', '79303338_2334254710019684_3421899151661596672_o-20191214092219.jpg', '0986541xxx'),
(10, 'Bạc Thảo Minh', '89722167_1778917682244318_1918512245596225536_n-20200402043816.jpg', '0965784xxx'),
(11, 'Hứa Hạnh', '215689622_366150301764873_960307274788854698_n-20210929030747.jpg', '0985476xxx');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa_hoc`
--

CREATE TABLE `khoa_hoc` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `popup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa_hoc`
--

INSERT INTO `khoa_hoc` (`id`, `name`, `image`, `popup`, `note`) VALUES
(2, 'COMBO DIGITAL MARKETING', 'digital-marketing-20210930105455.jpg', '240672230_1543729205977366_3852967841755660089_n-copy-20210930095435.png', '25 khóa Facebook ads, 11 khóa Google ads, 5 khóa zalo ads, 9 khóa youtube ads, 11 khóa SEO, Các khóa Zalo, tiktok, shopee, lazada, amazon, ebay, dropshiping, sendo, content marketing,....'),
(3, 'COMBO KHÓA HỌC KINH DOANH ONLINE', 'kinh-doanh-online-20210930105438.jpg', '240522362_1543416006008686_6978500197647449639_n-copy-20210930095435.png', '21 khóa học kinh doanh online từ A-Z , Bán hàng thời trang, Kinh doanh mỹ phẩm, Kinh doanh online hiệu quả, Tăng doanh số bán hàng online, Nghệ thuật bán hàng, bán hàng online,....'),
(4, 'COMBO DIGITAL MARKETING', 'digital-marketing-20210930105455.jpg', '240672230_1543729205977366_3852967841755660089_n-copy-20210930095435.png', '25 khóa Facebook ads, 11 khóa Google ads, 5 khóa zalo ads, 9 khóa youtube ads, 11 khóa SEO, Các khóa Zalo, tiktok, shopee, lazada, amazon, ebay, dropshiping, sendo, content marketing,....'),
(5, 'COMBO DIGITAL MARKETING', 'digital-marketing-20210930105455.jpg', '240672230_1543729205977366_3852967841755660089_n-copy-20210930095435.png', '25 khóa Facebook ads, 11 khóa Google ads, 5 khóa zalo ads, 9 khóa youtube ads, 11 khóa SEO, Các khóa Zalo, tiktok, shopee, lazada, amazon, ebay, dropshiping, sendo, content marketing,....'),
(6, 'COMBO DIGITAL MARKETING', 'digital-marketing-20210930105455.jpg', '240672230_1543729205977366_3852967841755660089_n-copy-20210930095435.png', '25 khóa Facebook ads, 11 khóa Google ads, 5 khóa zalo ads, 9 khóa youtube ads, 11 khóa SEO, Các khóa Zalo, tiktok, shopee, lazada, amazon, ebay, dropshiping, sendo, content marketing,....'),
(7, 'COMBO DIGITAL MARKETING', 'digital-marketing-20210930105455.jpg', '240672230_1543729205977366_3852967841755660089_n-copy-20210930095435.png', '25 khóa Facebook ads, 11 khóa Google ads, 5 khóa zalo ads, 9 khóa youtube ads, 11 khóa SEO, Các khóa Zalo, tiktok, shopee, lazada, amazon, ebay, dropshiping, sendo, content marketing,....');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `name`, `email`, `phone`, `address`, `comment`, `time`) VALUES
(7, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', '', 'test', '2023-01-28 03:09:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(147, 'Tủ sách', 3, 8, 'tu-sach', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(151, 'Tin tức', 3, 6, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(153, 'Liên hệ', 5, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(155, 'Xu hướng', 2, 8, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL),
(156, 'Sách phát triển bản thân', 0, 3, '', 152, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(157, 'Sách kinh doanh', 0, 3, '', 153, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(158, 'Tiểu thuyết kinh điển', 0, 3, '', 154, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(167, 'Được nghe nhiều nhất', 0, 8, 'sach-nghe-nhieu', 0, 0, 0, 0, 0, 1, 155, 0, 0, NULL),
(168, 'Sách mới cập nhật', 0, 8, 'sach-moi-nhat', 0, 0, 0, 0, 0, 1, 155, 0, 0, NULL),
(169, 'Thấu hiểu chính mình', 0, 3, '', 163, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(170, 'Dạy con - Hôn nhân - Gia đình', 0, 3, '', 164, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(172, 'Tứ Diệu Đế- Bát Chánh Đạo', 0, 3, '', 166, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(173, 'Hiểu luật nhân quả', 0, 3, '', 167, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(174, 'Audio sách nói về thiền', 0, 3, '', 168, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(175, 'Kinh tế - Môi trường - Xã Hội', 0, 3, '', 169, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(176, 'Nhạc thiền', 0, 3, '', 170, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(197, 'Đi Tìm Chân Lý', 3, 3, '', 160, 0, 0, 0, 0, 1, 197, 0, 0, NULL),
(202, 'Hàm dưỡng tâm hồn', 4, 2, '', 0, 0, 0, 0, 0, 1, 147, 0, 0, NULL),
(203, 'Thấu hiểu chính mình', 1, 3, '', 163, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(204, 'Dạy con - Hôn nhân - Gia đình', 2, 3, '', 164, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(205, 'Đi Tìm Chân Lý', 3, 3, '', 165, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(206, 'Tứ Diệu Đế- Bát Chánh Đạo', 4, 3, '', 166, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(207, 'Hiểu luật nhân quả', 5, 3, '', 167, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(208, 'Audio-Sách nói về thiền', 6, 3, '', 168, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(209, 'Kinh tế - Môi trường - Xã hội', 7, 3, '', 169, 0, 0, 0, 0, 1, 202, 0, 0, NULL),
(210, 'Nhạc Thiền - Thiền ca', 8, 3, '', 170, 0, 0, 0, 0, 1, 202, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(271, 'vn', 'Tủ sách', 0, 'tu-sach', 147),
(272, 'en', 'Tủ sách', 0, '', 147),
(279, 'vn', 'Tin tức', 0, '', 151),
(280, 'en', 'Lịch khám', 0, 'lich-kham', 151),
(283, 'vn', 'Liên hệ', 0, '', 153),
(284, 'en', 'Liên hệ', 0, '', 153),
(287, 'vn', 'Xu hướng', 0, '', 155),
(288, 'en', 'Xu hướng', 0, '', 155),
(289, 'vn', 'Sách phát triển bản thân', 0, '', 156),
(290, 'en', 'Sách phát triển bản thân', 0, '', 156),
(291, 'vn', 'Sách kinh doanh', 0, '', 157),
(292, 'en', 'Sách kinh doanh', 0, '', 157),
(293, 'vn', 'Tiểu thuyết kinh điển', 0, '', 158),
(294, 'en', 'Tiểu thuyết kinh điển', 0, '', 158),
(311, 'vn', 'Được nghe nhiều nhất', 0, 'sach-nghe-nhieu', 167),
(312, 'en', 'Được nghe nhiều nhất', 0, 'sach-moi-nhat', 167),
(313, 'vn', 'Sách mới cập nhật', 0, 'sach-moi-nhat', 168),
(314, 'en', 'Sách mới cập nhật', 0, 'sach-moi-nhat', 168),
(315, 'vn', 'Thấu hiểu chính mình', 0, '', 169),
(316, 'en', 'Thấu hiểu chính mình', 0, '', 169),
(317, 'vn', 'Dạy con - Hôn nhân - Gia đình', 0, '', 170),
(318, 'en', 'Dạy con - Hôn nhân - Gia đình', 0, '', 170),
(321, 'vn', 'Tứ Diệu Đế- Bát Chánh Đạo', 0, '', 172),
(322, 'en', 'Tứ Diệu Đế- Bát Chánh Đạo', 0, '', 172),
(323, 'vn', 'Hiểu luật nhân quả', 0, '', 173),
(324, 'en', 'Hiểu luật nhân quả', 0, '', 173),
(325, 'vn', 'Audio sách nói về thiền', 0, '', 174),
(326, 'en', 'Audio sách nói về thiền', 0, '', 174),
(327, 'vn', 'Kinh tế - Môi trường - Xã Hội', 0, '', 175),
(328, 'en', 'Kinh tế - Môi trường - Xã Hội', 0, '', 175),
(329, 'vn', 'Nhạc thiền', 0, '', 176),
(330, 'en', 'Nhạc thiền', 0, '', 176),
(371, 'vn', 'Đi Tìm Chân Lý', 0, '', 197),
(372, 'en', 'Đi Tìm Chân Lý', 0, '', 197),
(381, 'vn', 'Hàm dưỡng tâm hồn', 0, '', 202),
(382, 'en', 'Hàm dưỡng tâm hồn', 0, '', 202),
(383, 'vn', 'Thấu hiểu chính mình', 0, '', 203),
(384, 'en', 'Thấu hiểu chính mình', 0, '', 203),
(385, 'vn', 'Dạy con - Hôn nhân - Gia đình', 0, '', 204),
(386, 'en', 'Dạy con - Hôn nhân - Gia đình', 0, '', 204),
(387, 'vn', 'Đi Tìm Chân Lý', 0, '', 205),
(388, 'en', 'Đi Tìm Chân Lý', 0, '', 205),
(389, 'vn', 'Tứ Diệu Đế- Bát Chánh Đạo', 0, '', 206),
(390, 'en', 'Tứ Diệu Đế- Bát Chánh Đạo', 0, '', 206),
(391, 'vn', 'Hiểu luật nhân quả', 0, '', 207),
(392, 'en', 'Hiểu luật nhân quả', 0, '', 207),
(393, 'vn', 'Audio-Sách nói về thiền', 0, '', 208),
(394, 'en', 'Audio-Sách nói về thiền', 0, '', 208),
(395, 'vn', 'Kinh tế - Môi trường - Xã hội', 0, '', 209),
(396, 'en', 'Kinh tế - Môi trường - Xã hội', 0, '', 209),
(397, 'vn', 'Nhạc Thiền - Thiền ca', 0, '', 210),
(398, 'en', 'Nhạc Thiền - Thiền ca', 0, '', 210);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(113, 'Tìm hiểu về các loại ke góc cửa nhôm và nguyên ký hoạt động của ke góc nhôm', 'Các loại ke góc cửa nhôm là một trong những vật liệu phụ trong quá trình sản xuất. Các loại ke góc cửa nhôm lại đóng vai trò vô cùng quan trọng vì ảnh hưởng trực tiếp đến công năng, khả năng chịu tải và tính thẩm mỹ của khung nối cửa. ', '<p dir=\"ltr\"><strong>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m&nbsp;l&agrave; một trong những vật liệu phụ trong qu&aacute; tr&igrave;nh sản xuất. C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m lại đ&oacute;ng vai tr&ograve; v&ocirc; c&ugrave;ng quan trọng v&igrave; ảnh hưởng trực tiếp đến c&ocirc;ng năng, khả năng chịu tải v&agrave; t&iacute;nh thẩm mỹ của khung nối cửa.&nbsp;</strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Cấu tạo của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></h2>\r\n\r\n<p dir=\"ltr\"><strong>Với những nghi&ecirc;n cứu v&agrave; ph&acirc;n t&iacute;ch hiện nay tr&ecirc;n thị trường c&oacute; c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m kh&aacute;c nhau được sử dụng với nhiều mục đ&iacute;ch kh&aacute;c nhau như m&aacute;y &eacute;p g&oacute;c cửa, m&aacute;y &eacute;p gỗ, sản xuất đồ gia dụng, chế tạo m&aacute;y&hellip; Tuy nhi&ecirc;n, tr&ecirc;n thị trường v&agrave; ng&agrave;nh c&ocirc;ng nghiệp Việt Nam c&oacute; sản xuất cửa, chủ yếu l&agrave; ba loại: ke ma thuật, ke nh&ocirc;m v&agrave; cuối c&ugrave;ng l&agrave; ke nhảy.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke ma thuật:&nbsp;</strong></h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Với nguồn gốc xuất xứ từ Hy Lạp, chất lượng cao cấp đảm bảo ke g&oacute;c ma thuật c&oacute; cấu tạo từ th&eacute;p v&agrave; nh&ocirc;m v&igrave; thế k&iacute;ch thường sản phẩm cũng c&oacute; sẽ thay đổi linh hoạt bởi sự thay đổi cấu tr&uacute;c profile kh&aacute;c nhau. Ke g&oacute;c ma thật c&oacute; 2 bộ phận c&oacute; thể t&aacute;ch rời v&agrave; chiều d&agrave;i ph&ugrave; hợp với cửa c&oacute; chiều ngang dưới 1m, song với đ&oacute; gi&aacute; th&agrave;nh của sản phẩm được đ&aacute;nh gi&aacute; l&agrave; cao.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke nhảy:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Nguồn gốc xuất xứ 80% tại Việt Nam chất lượng sản phẩm sẽ phụ thuộc v&agrave;o đơn vị sản xuất. Cấu tại của ke g&oacute;c nhảy l&agrave; hợp kim nh&ocirc;m chắc chắn k&iacute;ch thước sản phẩm cũng c&oacute; thể thay đổi do cấu tr&uacute;c profile kh&aacute;c nhau. Sản phẩm c&oacute; 2 phần t&aacute;ch rời v&agrave; ph&ugrave; hợp với tất cả loại cửa. Ke g&oacute;c nhảy c&oacute; gi&aacute; th&agrave;nh trung b&igrave;nh.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke nh&ocirc;m:</strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Xuất xứ 80% tại Việt Nam chất lượng của sản phẩm sẽ t&ugrave;y thuộc v&agrave;o đơn vị sản xuất v&agrave; cung cấp. Với cấu tạp l&agrave; hợp kim nh&ocirc;m n&ecirc;n thước sản phẩm cũng c&oacute; thể thay đổi do cấu tr&uacute;c profile kh&aacute;c nhau. Ke g&oacute;c nh&ocirc;m c&oacute; kh&ocirc;ng c&oacute; cấu tạo 2 phần t&aacute;ch rời v&agrave; độ chắc chắn ph&ugrave; hợp v&agrave;o tay nghề của thợ, gi&aacute; th&agrave;nh thấp.</strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; hoạt động của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></h2>\r\n\r\n<p dir=\"ltr\"><strong>Dưới đ&acirc;y l&agrave; nguy&ecirc;n l&yacute; hoạt động của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c ma thuật:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong><img alt=\"Các loại ke góc cửa nhôm\" height=\"362\" src=\"/image/images/ban-sao-cua-cac-loai-ke-goc-cua-nhom-4.jpg\" width=\"480\" /></strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Ke g&oacute;c ma thuật cho ph&eacute;p bạn kh&ocirc;ng cần sử dụng thiết bị cố định m&agrave; nhờ c&aacute;c nguy&ecirc;n tắc hoạt động th&ocirc;ng minh của n&oacute;, tạo ra sự an to&agrave;n v&agrave; ti&ecirc;u chuẩn. Khi m&agrave; bạn đưa ke ma thuật v&agrave;o b&ecirc;n trong thanh nh&ocirc;m đ&atilde; tạo h&igrave;nh, nối hai thanh nh&ocirc;m lại với nhau rồi vặn c&aacute;c con ốc v&agrave;o.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c nhảy:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Ke g&oacute;c nhảy l&agrave; sản phẩm đi k&egrave;m với k&iacute;nh cường lực dễ d&agrave;ng so s&aacute;nh với ke g&oacute;c ma thuật. Ke nhảy c&oacute; hai n&uacute;t chặn để tăng độ vững chắc cho hai cọc nh&ocirc;m.&nbsp;</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c nh&ocirc;m:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Loại ke nh&ocirc;m bo g&oacute;c n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; loại kh&oacute; v&agrave; kh&oacute; xử l&yacute; nhất trong 3 loại ke nh&ocirc;m thường được sử dụng hiện nay. Đặc điểm nổi bật: M&aacute;y &eacute;p g&oacute;c nh&ocirc;m định h&igrave;nh khung thường c&oacute; h&igrave;nh chữ L hoặc tương tự như chữ L.&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>M&aacute;y &eacute;p g&oacute;c</em>&nbsp;phải được sử dụng cho loại ke nh&ocirc;m n&agrave;y. Để c&oacute; thể &eacute;p c&aacute;c g&oacute;c một c&aacute;ch tối ưu, người vận h&agrave;nh phải điều chỉnh lại m&aacute;y để c&oacute; k&iacute;ch thước ph&ugrave; hợp với thanh nh&ocirc;m cần &eacute;p.</strong></p>\r\n\r\n<p><strong>Tr&ecirc;n đ&acirc;y l&agrave; những chia sẻ cải ch&uacute;ng t&ocirc;i về c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m c&oacute; tr&ecirc;n thị trường. Mọi th&ocirc;ng tin thắc mắc xin vui l&ograve;ng li&ecirc;n hệ địa chỉ:&nbsp;</strong></p>\r\n', 'ban-sao-cua-cac-loai-ke-goc-cua-nhom-4.jpg', 0, 0, '', '2022-07-25 17:07:03', '2022-07-25 17:07:31', 1, '', '', '', '', '', 'Tìm hiểu về các loại ke góc cửa nhôm và nguyên ký hoạt động của ke góc nhôm', '', 'tim-hieu-ve-cac-loai-ke-goc-cua-nhom-va-nguyen-ky-hoat-dong-cua-ke-goc-nhom', '', 1),
(114, 'Khuôn dập kim loại-Các phương pháp gia công khuôn và tổng hợp các loại khuôn', 'Mặc dù khuôn mẫu được sử dụng để sản xuất hàng loạt, nhưng có rất nhiều khuôn \"số lượng ít, hỗn hợp cao\" được thiết kế đặc biệt cho từng sản phẩm, và hầu hết việc sản xuất được thực hiện bởi các nhà sản xuất và chế tạo khuôn vừa và nhỏ trong nước.', '<p><strong>Giới thiệu về gia c&ocirc;ng khu&ocirc;n:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; khu&ocirc;n mẫu được sử dụng để sản xuất h&agrave;ng loạt, nhưng c&oacute; rất nhiều khu&ocirc;n &quot;số lượng &iacute;t, hỗn hợp cao&quot; được thiết kế đặc biệt cho từng sản phẩm, v&agrave; hầu hết việc sản xuất được thực hiện bởi c&aacute;c nh&agrave; sản xuất v&agrave; chế tạo khu&ocirc;n vừa v&agrave; nhỏ trong nước.</p>\r\n\r\n<p>V&igrave; độ ch&iacute;nh x&aacute;c gia c&ocirc;ng của khu&ocirc;n ảnh hưởng rất nhiều đến chất lượng của &quot;sản phẩm c&ocirc;ng nghiệp&quot;, n&ecirc;n y&ecirc;u cầu độ ch&iacute;nh x&aacute;c gia c&ocirc;ng cao hơn so với gia c&ocirc;ng c&aacute;c bộ phận chung.</p>\r\n\r\n<p>&ldquo;V&igrave; khu&ocirc;n mẫu l&agrave; nguy&ecirc;n mẫu của tất cả c&aacute;c sản phẩm, n&ecirc;n việc sản xuất khu&ocirc;n mẫu đ&ograve;i hỏi gia c&ocirc;ng c&aacute;c bộ phận c&oacute; độ ch&iacute;nh x&aacute;c cao v&agrave; kỹ năng v&agrave; kiến ​​thức kỹ thuật cao để lắp r&aacute;p ch&uacute;ng.&rdquo;</p>\r\n\r\n<p>C&ocirc;ng nghệ cao v&agrave; độ ch&iacute;nh x&aacute;c được y&ecirc;u cầu để xử l&yacute; khu&ocirc;n đặt h&agrave;ng micromet.</p>\r\n\r\n<p>Ngo&agrave;i ra, sau khi l&agrave;m nguội khu&ocirc;n (xử l&yacute; nhiệt để l&agrave;m cứng kim loại) v&agrave; xử l&yacute; / phủ bề mặt , rất kh&oacute; để thực hiện c&aacute;c sửa đổi hoặc điều chỉnh bổ sung, v&igrave; vậy điều quan trọng l&agrave; phải thiết kế c&oacute; xem x&eacute;t đến sự thay đổi mẫu m&atilde; của c&aacute;c sản phẩm c&ocirc;ng nghiệp.</p>\r\n\r\n<p>M&ocirc; phỏng khu&ocirc;n sử dụng CAD / CAM v&agrave; c&ocirc;ng nghệ ph&acirc;n t&iacute;ch bằng CAE l&agrave; kh&ocirc;ng thể thiếu v&agrave; được sử dụng nhiều trong thiết kế khu&ocirc;n .</p>\r\n\r\n<p><em>Khu&ocirc;n thử v&agrave; sửa chữa</em></p>\r\n\r\n<p><em>Khu&ocirc;n sau khi gia c&ocirc;ng được đặt trong m&aacute;y &eacute;p , v&agrave; việc kiểm tra gia c&ocirc;ng (d&ugrave;ng thử) được thực hiện dựa tr&ecirc;n ph&ocirc;i thực tế.Dựa tr&ecirc;n kết quả thử nghiệm, sự ăn khớp giữa khu&ocirc;n tr&ecirc;n v&agrave; khu&ocirc;n dưới được điều chỉnh v&agrave; hiệu chỉnh bằng c&aacute;ch đ&aacute;nh b&oacute;ng bởi người vận h&agrave;nh hoặc đ&aacute;nh b&oacute;ng bằng m&aacute;y</em>.</p>\r\n\r\n<p><strong>Xử l&yacute; khu&ocirc;n bằng c&aacute;ch cắt</strong></p>\r\n\r\n<p>Hầu hết c&aacute;c khu&ocirc;n được gia c&ocirc;ng bằng m&aacute;y c&ocirc;ng cụ NC như c&aacute;c trung t&acirc;m gia c&ocirc;ng . Qu&aacute; tr&igrave;nh m&agrave;i v&agrave; đ&aacute;nh b&oacute;ng được thực hiện bằng &quot; m&aacute;y 5 trục &quot; để gia c&ocirc;ng 3D phức tạp v&agrave; &quot; m&aacute;y m&agrave;i NC &quot; để ho&agrave;n thiện .</p>\r\n\r\n<p><strong>Gia c&ocirc;ng khu&ocirc;n bằng gia c&ocirc;ng ph&oacute;ng điện</strong></p>\r\n\r\n<p>Gia c&ocirc;ng khu&ocirc;n bằng phương ph&aacute;p gia c&ocirc;ng ph&oacute;ng điện</p>\r\n\r\n<p>C&aacute;c kỹ thuật gia c&ocirc;ng ph&oacute;ng điện (EDM) như &quot;m&aacute;y ph&oacute;ng điện dập ch&igrave;m&quot; v&agrave; &quot;cắt d&acirc;y&quot; được sử dụng để gia c&ocirc;ng khu&ocirc;n ch&iacute;nh x&aacute;c hơn v&agrave; gia c&ocirc;ng khu&ocirc;n dập tắt nhiệt.</p>\r\n\r\n<p><strong>C&aacute;c loại khu&ocirc;n</strong></p>\r\n\r\n<p>C&oacute; nhiều loại khu&ocirc;n kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o ứng dụng như l&agrave;m việc &eacute;p v&agrave; &eacute;p phun, v&agrave; c&aacute;c qu&aacute; tr&igrave;nh như &quot; uốn &quot; v&agrave; &quot; tạo đường &quot;.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập kim loại</strong></p>\r\n\r\n<p>&quot;Khu&ocirc;n dập&quot; l&agrave; loại khu&ocirc;n phổ biến nhất được sử dụng trong c&aacute;c m&aacute;y &eacute;p v&agrave; m&aacute;y r&egrave;n .</p>\r\n\r\n<p>Từ c&aacute;c bộ phận ch&iacute;nh x&aacute;c như &ocirc; t&ocirc; đến c&aacute;c thiết bị cần thiết h&agrave;ng ng&agrave;y như đồ gia dụng, những khu&ocirc;n dập n&agrave;y l&agrave; kh&ocirc;ng thể thiếu để &quot;sản xuất h&agrave;ng loạt c&aacute;c sản phẩm c&ocirc;ng nghiệp&quot; v&agrave; được đ&uacute;c th&agrave;nh th&agrave;nh phẩm th&ocirc;ng qua một số khu&ocirc;n dập.</p>\r\n\r\n<p>Sử dụng loại một chạm v&agrave; QDC (hệ thống thay khu&ocirc;n tự động) để thay khu&ocirc;n trong m&aacute;y &eacute;p .</p>\r\n\r\n<p>Bằng c&aacute;ch sử dụng QDC, c&oacute; thể r&uacute;t ngắn việc thiết lập khu&ocirc;n v&agrave; tự động vận h&agrave;nh trong thời gian d&agrave;i.</p>\r\n\r\n<p><strong>Khu&ocirc;n đa năng (khu&ocirc;n &eacute;p đột)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đa năng&quot; l&agrave; khu&ocirc;n &eacute;p được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; một lần (&eacute;p một lần).</p>\r\n\r\n<p>Người vận h&agrave;nh đặt vật liệu tấm ở &quot;loại đơn giản&quot; v&agrave; thực hiện một qu&aacute; tr&igrave;nh (đục, đột, uốn, v.v.) bằng một lần nhấn.</p>\r\n\r\n<p>C&aacute;c bộ phận &eacute;p sẽ được người thao t&aacute;c chuyển sản phẩm sang quy tr&igrave;nh tiếp theo.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; h&igrave;nh thức cơ bản của khu&ocirc;n dập, v&agrave; nhiều khu&ocirc;n dập đơn được y&ecirc;u cầu để tạo khu&ocirc;n cho c&aacute;c sản phẩm c&ocirc;ng nghiệp.</p>\r\n\r\n<p>T&ugrave;y theo mục đ&iacute;ch được chia nhỏ theo chức năng như &quot;loại dập tạo h&igrave;nh&quot;, &quot;loại đột lỗ&quot; v&agrave; &quot;loại uốn&quot;.</p>\r\n\r\n<p>Loại n&agrave;y mỗi chu tr&igrave;nh dập khu&ocirc;n chỉ l&agrave;m một c&ocirc;ng việc, v&agrave; mỗi c&ocirc;ng việc lại l&agrave; một khu&ocirc;n kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Khu&ocirc;n tổng hợp</strong>&nbsp;(khu&ocirc;n dập li&ecirc;n ho&agrave;n)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Loại tổng hợp&quot; l&agrave; khu&ocirc;n dập được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; một lần (m&aacute;y &eacute;p một lần), giống như loại m&aacute;y chuy&ecirc;n dụng .</p>\r\n\r\n<p>Kh&ocirc;ng giống như loại đa năng theo mục đ&iacute;ch, m&agrave; nhiều qu&aacute; tr&igrave;nh (k&eacute;o / k&eacute;o / đục lỗ / uốn, v.v.) c&oacute; thể được thực hiện c&ugrave;ng một l&uacute;c chỉ với một lần dập.</p>\r\n\r\n<p>Mặc d&ugrave; c&oacute; những hạn chế như cấu tr&uacute;c khu&ocirc;n trở n&ecirc;n phức tạp v&agrave; độ bền trở n&ecirc;n yếu hơn, nhưng c&oacute; thể giảm giờ c&ocirc;ng bằng c&aacute;ch kết hợp hai hoặc ba quy tr&igrave;nh th&agrave;nh một.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập lũy tiến</strong>&nbsp;(nhấn dần dần tới khi th&agrave;nh phẩm)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n dập lũy tiến&quot; l&agrave; khu&ocirc;n dập được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; lũy tiến .</p>\r\n\r\n<p>Nhiều khu&ocirc;n (nhiều c&ocirc;ng đoạn gia c&ocirc;ng) được kết hợp v&agrave;o một khu&ocirc;n v&agrave; vật liệu cuộn được nạp tự động ở c&aacute;c g&oacute;c bằng nhau v&agrave; được &eacute;p theo thứ tự.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm c&oacute; năng suất cao nhất trong số tất cả c&aacute;c khu&ocirc;n &eacute;p v&agrave; c&oacute; thể được đ&uacute;c th&agrave;nh sản phẩm ho&agrave;n chỉnh với một khu&ocirc;n.</p>\r\n\r\n<p>V&igrave; cơ chế như chức năng điều chỉnh bước tiến v&agrave; c&aacute;c bộ phận định vị / gi&aacute; đỡ (chốt hoa ti&ecirc;u) rất phức tạp, n&ecirc;n cần phải c&oacute; c&ocirc;ng nghệ v&agrave; b&iacute; quyết ti&ecirc;n tiến để sản xuất khu&ocirc;n.</p>\r\n\r\n<p><strong>Khu&ocirc;n chuyển (nhấn chuyển)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n chuyển&quot; l&agrave; c&aacute;c khu&ocirc;n &eacute;p được sử dụng trong qu&aacute; tr&igrave;nh chuyển giao .</p>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng sản phẩm c&oacute; mục đ&iacute;ch duy nhất, v&agrave; chức năng chuyển / định vị đ&atilde; được th&ecirc;m v&agrave;o loại mục đ&iacute;ch duy nhất để tối ưu h&oacute;a n&oacute; cho c&aacute;c thiết bị truyền tải tự động (bộ chuyển tải).</p>\r\n\r\n<p>Gia c&ocirc;ng được thực hiện cho mỗi qu&aacute; tr&igrave;nh trong khi di chuyển vật liệu tấm bằng thiết bị chuyển tự động.</p>\r\n\r\n<p>V&igrave; chiều cao của kh&ocirc;ng gian xử l&yacute; c&oacute; thể được đảm bảo, n&ecirc;n c&oacute; thể xử l&yacute; &quot; bản vẽ &quot;, điều n&agrave;y l&agrave; kh&oacute; khăn với loại h&igrave;nh lũy tiến.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập d&ograve;ng (khu&ocirc;n dập)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n dập d&ograve;ng&quot; l&agrave; khu&ocirc;n dập được sử dụng trong d&acirc;y chuyền dập của r&ocirc; bốt&nbsp;</p>\r\n\r\n<p>Chức năng chuyển / định vị đ&atilde; được th&ecirc;m v&agrave;o loại mục đ&iacute;ch duy nhất để tối ưu h&oacute;a n&oacute; cho r&ocirc; bốt c&ocirc;ng nghiệp.</p>\r\n\r\n<p>N&oacute; l&yacute; tưởng cho c&aacute;c d&acirc;y chuyền tự động h&oacute;a kh&ocirc;ng người l&aacute;i v&agrave; c&oacute; thể xử l&yacute; c&aacute;c m&aacute;y &eacute;p lớn kh&oacute; với khu&ocirc;n dập tiến v&agrave; khu&ocirc;n dập chuyển.</p>\r\n\r\n<p><strong>Khu&ocirc;n đột (c&uacute; đấm)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đột&quot; l&agrave; những khu&ocirc;n đặc biệt c&oacute; thể được thiết lập tr&ecirc;n những c&uacute; đấm đấm v&agrave;o th&aacute;p ph&aacute;o v&agrave; nhấn phanh .</p>\r\n\r\n<p>Bằng c&aacute;ch nhấn một c&uacute; đấm v&agrave;o kim loại, c&aacute;c qu&aacute; tr&igrave;nh như đục lỗ, uốn cong v&agrave; đường r&atilde;nh được thực hiện. (Ngay cả trong khu&ocirc;n &eacute;p th&ocirc;ng thường, khu&ocirc;n tr&ecirc;n c&oacute; thể được gọi l&agrave; một c&uacute; đấm.)</p>\r\n\r\n<p>N&oacute; thường được sử dụng như một bộ với khu&ocirc;n dưới (mặt nhận), v&agrave; độ hở với khu&ocirc;n ảnh hưởng rất nhiều đến chất lượng của c&aacute;c bộ phận.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Khu&ocirc;n đ&uacute;c</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đ&uacute;c khu&ocirc;n&quot; l&agrave; một khu&ocirc;n để đ&uacute;c được sử dụng trong đ&uacute;c khu&ocirc;n .</p>\r\n\r\n<p>Kim loại n&oacute;ng chảy như nh&ocirc;m v&agrave; kẽm được đưa v&agrave;o khu&ocirc;n với tốc độ cao v&agrave; &aacute;p suất cao để đ&uacute;c.</p>\r\n\r\n<p>Đ&uacute;c với khu&ocirc;n đ&uacute;c được gọi l&agrave; &quot;đ&uacute;c khu&ocirc;n&quot; hoặc &quot;đ&uacute;c khu&ocirc;n&quot; v&agrave; được sử dụng trong c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp kh&aacute;c nhau như phụ t&ugrave;ng &ocirc; t&ocirc;, thiết bị gia dụng v&agrave; vật liệu x&acirc;y dựng.</p>\r\n\r\n<p><strong>Khu&ocirc;n &eacute;p phun</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n &eacute;p phun&quot; l&agrave; khu&ocirc;n để đ&uacute;c được sử dụng trong khu&ocirc;n &eacute;p nhựa v&agrave; khu&ocirc;n phun bột kim loại (c&ocirc;ng nghệ luyện kim bột được gọi l&agrave; MIM ).</p>\r\n\r\n<p>Bột nhựa hoặc kim loại n&oacute;ng chảy được bơm v&agrave;o khu&ocirc;n v&agrave; đ&uacute;c.</p>\r\n\r\n<p><strong>&quot;Khu&ocirc;n &eacute;p&quot;</strong>&nbsp;được sử dụng để &eacute;p nhựa đ&ograve;i hỏi thiết kế khu&ocirc;n phức tạp v&igrave; cần phải đổ nhiều nguy&ecirc;n liệu đồng đều trong một lần đổ.</p>\r\n\r\n<p><em>Giới thiệu về m&aacute;y &eacute;p phun (&eacute;p phun nhựa)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Đ&acirc;y l&agrave; một m&aacute;y đ&uacute;c &quot;chỉ nhựa&quot; tạo khu&ocirc;n sản phẩm bằng c&aacute;ch bơm nhựa tổng hợp đ&atilde; được nung n&oacute;ng v&agrave; c&aacute;c vật liệu kh&aacute;c (dạng vi&ecirc;n) v&agrave;o khu&ocirc;n ở trạng th&aacute;i n&oacute;ng chảy, sau đ&oacute; l&agrave;m nguội v&agrave; cứng lại.</em></p>\r\n\r\n<p><em>C&oacute; nhiều loại m&aacute;y &eacute;p phun kh&aacute;c nhau, chẳng hạn như &quot;loại servo&quot; v&agrave; &quot;loại thủy lực&quot; sử dụng động cơ servo.</em></p>\r\n\r\n<p><em>C&aacute;c sản phẩm nhựa đ&uacute;c phun đa dạng từ c&aacute;c bộ phận &ocirc; t&ocirc; đến đồ gia dụng v&agrave; nhu yếu phẩm h&agrave;ng ng&agrave;y.</em></p>\r\n\r\n<p><strong>Khu&ocirc;n đơn giản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đơn giản&quot; l&agrave; khu&ocirc;n được sử dụng trong qu&aacute; tr&igrave;nh tạo mẫu sản phẩm v&agrave; thử nghiệm trước khi sản xuất h&agrave;ng loạt.V&igrave; n&oacute; được l&agrave;m bằng hợp kim nh&ocirc;m hoặc kẽm , n&oacute; c&oacute; đặc điểm l&agrave; chi ph&iacute; chế tạo thấp so với c&aacute;c loại khu&ocirc;n đắt tiền (khu&ocirc;n ch&iacute;nh) như th&eacute;p tốc độ cao.Do độ bền thấp v&agrave; số lần xử l&yacute; hạn chế (số lượng ảnh chụp), n&oacute; kh&ocirc;ng thể được sử dụng để sản xuất h&agrave;ng loạt như hiện nay.</p>\r\n\r\n<p><strong>Khu&ocirc;n đ&uacute;c composite</strong></p>\r\n\r\n<p>&quot;Khu&ocirc;n đ&uacute;c composite&quot; l&agrave; khu&ocirc;n được sử dụng để giảm giờ c&ocirc;ng tr&ecirc;n d&acirc;y chuyền sản xuất.Nhiều vật liệu v&agrave; bộ phận được đặt b&ecirc;n trong khu&ocirc;n v&agrave; nhiều qu&aacute; tr&igrave;nh xử l&yacute; v&agrave; lắp r&aacute;p kh&aacute;c nhau được thực hiện c&ugrave;ng một l&uacute;c chỉ với một lần nhấn.N&oacute; cũng c&oacute; thể nối c&aacute;c vật liệu kh&aacute;c nhau, c&aacute;c bộ phận uốn v&agrave; &eacute;p.</p>\r\n', 'gia-cong-phong-dien.jpg', 0, 0, '', '2022-07-25 17:07:32', '2022-07-25 17:07:40', 1, '', '', '', '', '', 'Khuôn dập kim loại-Các phương pháp gia công khuôn và tổng hợp các loại khuôn', '', 'khuon-dap-kim-loai-cac-phuong-phap-gia-cong-khuon-va-tong-hop-cac-loai-khuon', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(76, 'bài giới thiệu', '<p>ch&agrave;o mọi người</p>\r\n', '', 0, 0, '2023-02-03 22:02:32', NULL, 1, '', '', '', '', '', '', 'bài giới thiệu', '', 'bai-gioi-thieu', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(147, 76, 'vn', 'bài giới thiệu', '<p>ch&agrave;o mọi người</p>\r\n', '', '', '', '', '', '', 0, 'bai-gioi-thieu', '', 'bài giới thiệu', ''),
(148, 76, 'en', 'english version bài giới thiệu', 'english version <p>ch&agrave;o mọi người</p>\r\n', 'english version ', '', '', '', '', '', 0, 'en-bai-gioi-thieu', '', 'bài giới thiệu', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(225, 113, 'vn', 'Tìm hiểu về các loại ke góc cửa nhôm và nguyên ký hoạt động của ke góc nhôm', 'Các loại ke góc cửa nhôm là một trong những vật liệu phụ trong quá trình sản xuất. Các loại ke góc cửa nhôm lại đóng vai trò vô cùng quan trọng vì ảnh hưởng trực tiếp đến công năng, khả năng chịu tải và tính thẩm mỹ của khung nối cửa. ', '<p dir=\"ltr\"><strong>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m&nbsp;l&agrave; một trong những vật liệu phụ trong qu&aacute; tr&igrave;nh sản xuất. C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m lại đ&oacute;ng vai tr&ograve; v&ocirc; c&ugrave;ng quan trọng v&igrave; ảnh hưởng trực tiếp đến c&ocirc;ng năng, khả năng chịu tải v&agrave; t&iacute;nh thẩm mỹ của khung nối cửa.&nbsp;</strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Cấu tạo của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></h2>\r\n\r\n<p dir=\"ltr\"><strong>Với những nghi&ecirc;n cứu v&agrave; ph&acirc;n t&iacute;ch hiện nay tr&ecirc;n thị trường c&oacute; c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m kh&aacute;c nhau được sử dụng với nhiều mục đ&iacute;ch kh&aacute;c nhau như m&aacute;y &eacute;p g&oacute;c cửa, m&aacute;y &eacute;p gỗ, sản xuất đồ gia dụng, chế tạo m&aacute;y&hellip; Tuy nhi&ecirc;n, tr&ecirc;n thị trường v&agrave; ng&agrave;nh c&ocirc;ng nghiệp Việt Nam c&oacute; sản xuất cửa, chủ yếu l&agrave; ba loại: ke ma thuật, ke nh&ocirc;m v&agrave; cuối c&ugrave;ng l&agrave; ke nhảy.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke ma thuật:&nbsp;</strong></h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Với nguồn gốc xuất xứ từ Hy Lạp, chất lượng cao cấp đảm bảo ke g&oacute;c ma thuật c&oacute; cấu tạo từ th&eacute;p v&agrave; nh&ocirc;m v&igrave; thế k&iacute;ch thường sản phẩm cũng c&oacute; sẽ thay đổi linh hoạt bởi sự thay đổi cấu tr&uacute;c profile kh&aacute;c nhau. Ke g&oacute;c ma thật c&oacute; 2 bộ phận c&oacute; thể t&aacute;ch rời v&agrave; chiều d&agrave;i ph&ugrave; hợp với cửa c&oacute; chiều ngang dưới 1m, song với đ&oacute; gi&aacute; th&agrave;nh của sản phẩm được đ&aacute;nh gi&aacute; l&agrave; cao.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke nhảy:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Nguồn gốc xuất xứ 80% tại Việt Nam chất lượng sản phẩm sẽ phụ thuộc v&agrave;o đơn vị sản xuất. Cấu tại của ke g&oacute;c nhảy l&agrave; hợp kim nh&ocirc;m chắc chắn k&iacute;ch thước sản phẩm cũng c&oacute; thể thay đổi do cấu tr&uacute;c profile kh&aacute;c nhau. Sản phẩm c&oacute; 2 phần t&aacute;ch rời v&agrave; ph&ugrave; hợp với tất cả loại cửa. Ke g&oacute;c nhảy c&oacute; gi&aacute; th&agrave;nh trung b&igrave;nh.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke nh&ocirc;m:</strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Xuất xứ 80% tại Việt Nam chất lượng của sản phẩm sẽ t&ugrave;y thuộc v&agrave;o đơn vị sản xuất v&agrave; cung cấp. Với cấu tạp l&agrave; hợp kim nh&ocirc;m n&ecirc;n thước sản phẩm cũng c&oacute; thể thay đổi do cấu tr&uacute;c profile kh&aacute;c nhau. Ke g&oacute;c nh&ocirc;m c&oacute; kh&ocirc;ng c&oacute; cấu tạo 2 phần t&aacute;ch rời v&agrave; độ chắc chắn ph&ugrave; hợp v&agrave;o tay nghề của thợ, gi&aacute; th&agrave;nh thấp.</strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; hoạt động của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></h2>\r\n\r\n<p dir=\"ltr\"><strong>Dưới đ&acirc;y l&agrave; nguy&ecirc;n l&yacute; hoạt động của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c ma thuật:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong><img alt=\"Các loại ke góc cửa nhôm\" height=\"362\" src=\"/image/images/ban-sao-cua-cac-loai-ke-goc-cua-nhom-4.jpg\" width=\"480\" /></strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Ke g&oacute;c ma thuật cho ph&eacute;p bạn kh&ocirc;ng cần sử dụng thiết bị cố định m&agrave; nhờ c&aacute;c nguy&ecirc;n tắc hoạt động th&ocirc;ng minh của n&oacute;, tạo ra sự an to&agrave;n v&agrave; ti&ecirc;u chuẩn. Khi m&agrave; bạn đưa ke ma thuật v&agrave;o b&ecirc;n trong thanh nh&ocirc;m đ&atilde; tạo h&igrave;nh, nối hai thanh nh&ocirc;m lại với nhau rồi vặn c&aacute;c con ốc v&agrave;o.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c nhảy:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Ke g&oacute;c nhảy l&agrave; sản phẩm đi k&egrave;m với k&iacute;nh cường lực dễ d&agrave;ng so s&aacute;nh với ke g&oacute;c ma thuật. Ke nhảy c&oacute; hai n&uacute;t chặn để tăng độ vững chắc cho hai cọc nh&ocirc;m.&nbsp;</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c nh&ocirc;m:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Loại ke nh&ocirc;m bo g&oacute;c n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; loại kh&oacute; v&agrave; kh&oacute; xử l&yacute; nhất trong 3 loại ke nh&ocirc;m thường được sử dụng hiện nay. Đặc điểm nổi bật: M&aacute;y &eacute;p g&oacute;c nh&ocirc;m định h&igrave;nh khung thường c&oacute; h&igrave;nh chữ L hoặc tương tự như chữ L.&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>M&aacute;y &eacute;p g&oacute;c</em>&nbsp;phải được sử dụng cho loại ke nh&ocirc;m n&agrave;y. Để c&oacute; thể &eacute;p c&aacute;c g&oacute;c một c&aacute;ch tối ưu, người vận h&agrave;nh phải điều chỉnh lại m&aacute;y để c&oacute; k&iacute;ch thước ph&ugrave; hợp với thanh nh&ocirc;m cần &eacute;p.</strong></p>\r\n\r\n<p><strong>Tr&ecirc;n đ&acirc;y l&agrave; những chia sẻ cải ch&uacute;ng t&ocirc;i về c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m c&oacute; tr&ecirc;n thị trường. Mọi th&ocirc;ng tin thắc mắc xin vui l&ograve;ng li&ecirc;n hệ địa chỉ:&nbsp;</strong></p>\r\n', '', '', '', '', '', 0, 'tim-hieu-ve-cac-loai-ke-goc-cua-nhom-va-nguyen-ky-hoat-dong-cua-ke-goc-nhom', 'Tìm hiểu về các loại ke góc cửa nhôm và nguyên ký hoạt động của ke góc nhôm', '', ''),
(226, 113, 'en', 'english version Tìm hiểu về các loại ke góc cửa nhôm và nguyên ký hoạt động của ke góc nhôm', 'english version ', 'english version <p dir=\"ltr\"><strong>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m&nbsp;l&agrave; một trong những vật liệu phụ trong qu&aacute; tr&igrave;nh sản xuất. C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m lại đ&oacute;ng vai tr&ograve; v&ocirc; c&ugrave;ng quan trọng v&igrave; ảnh hưởng trực tiếp đến c&ocirc;ng năng, khả năng chịu tải v&agrave; t&iacute;nh thẩm mỹ của khung nối cửa.&nbsp;</strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Cấu tạo của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></h2>\r\n\r\n<p dir=\"ltr\"><strong>Với những nghi&ecirc;n cứu v&agrave; ph&acirc;n t&iacute;ch hiện nay tr&ecirc;n thị trường c&oacute; c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m kh&aacute;c nhau được sử dụng với nhiều mục đ&iacute;ch kh&aacute;c nhau như m&aacute;y &eacute;p g&oacute;c cửa, m&aacute;y &eacute;p gỗ, sản xuất đồ gia dụng, chế tạo m&aacute;y&hellip; Tuy nhi&ecirc;n, tr&ecirc;n thị trường v&agrave; ng&agrave;nh c&ocirc;ng nghiệp Việt Nam c&oacute; sản xuất cửa, chủ yếu l&agrave; ba loại: ke ma thuật, ke nh&ocirc;m v&agrave; cuối c&ugrave;ng l&agrave; ke nhảy.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke ma thuật:&nbsp;</strong></h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<p dir=\"ltr\"><strong>&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Với nguồn gốc xuất xứ từ Hy Lạp, chất lượng cao cấp đảm bảo ke g&oacute;c ma thuật c&oacute; cấu tạo từ th&eacute;p v&agrave; nh&ocirc;m v&igrave; thế k&iacute;ch thường sản phẩm cũng c&oacute; sẽ thay đổi linh hoạt bởi sự thay đổi cấu tr&uacute;c profile kh&aacute;c nhau. Ke g&oacute;c ma thật c&oacute; 2 bộ phận c&oacute; thể t&aacute;ch rời v&agrave; chiều d&agrave;i ph&ugrave; hợp với cửa c&oacute; chiều ngang dưới 1m, song với đ&oacute; gi&aacute; th&agrave;nh của sản phẩm được đ&aacute;nh gi&aacute; l&agrave; cao.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke nhảy:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Nguồn gốc xuất xứ 80% tại Việt Nam chất lượng sản phẩm sẽ phụ thuộc v&agrave;o đơn vị sản xuất. Cấu tại của ke g&oacute;c nhảy l&agrave; hợp kim nh&ocirc;m chắc chắn k&iacute;ch thước sản phẩm cũng c&oacute; thể thay đổi do cấu tr&uacute;c profile kh&aacute;c nhau. Sản phẩm c&oacute; 2 phần t&aacute;ch rời v&agrave; ph&ugrave; hợp với tất cả loại cửa. Ke g&oacute;c nhảy c&oacute; gi&aacute; th&agrave;nh trung b&igrave;nh.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Cấu tạo của ke nh&ocirc;m:</strong></h3>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Xuất xứ 80% tại Việt Nam chất lượng của sản phẩm sẽ t&ugrave;y thuộc v&agrave;o đơn vị sản xuất v&agrave; cung cấp. Với cấu tạp l&agrave; hợp kim nh&ocirc;m n&ecirc;n thước sản phẩm cũng c&oacute; thể thay đổi do cấu tr&uacute;c profile kh&aacute;c nhau. Ke g&oacute;c nh&ocirc;m c&oacute; kh&ocirc;ng c&oacute; cấu tạo 2 phần t&aacute;ch rời v&agrave; độ chắc chắn ph&ugrave; hợp v&agrave;o tay nghề của thợ, gi&aacute; th&agrave;nh thấp.</strong></p>\r\n\r\n<h2 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; hoạt động của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></h2>\r\n\r\n<p dir=\"ltr\"><strong>Dưới đ&acirc;y l&agrave; nguy&ecirc;n l&yacute; hoạt động của c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m tr&ecirc;n thị trường hiện nay:</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c ma thuật:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong><img alt=\"Các loại ke góc cửa nhôm\" src=\"https://lh4.googleusercontent.com/KzY_yNQ7RxibDSB4_PO89PPm6cG9uXs3zbXAvQkrfKyeo__3dgAmr302kvxuEDTLOilwigiYo_abAPUpwxXR2L8yAEyJ1yoUCXiyiz_Dtfc9d9wm6CaKj-FOs_vsdpypt3B76_Flq7z28tH42erlMA\" /></strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>C&aacute;c loại ke g&oacute;c cửa nh&ocirc;m</em></strong></p>\r\n\r\n<p dir=\"ltr\"><strong>Ke g&oacute;c ma thuật cho ph&eacute;p bạn kh&ocirc;ng cần sử dụng thiết bị cố định m&agrave; nhờ c&aacute;c nguy&ecirc;n tắc hoạt động th&ocirc;ng minh của n&oacute;, tạo ra sự an to&agrave;n v&agrave; ti&ecirc;u chuẩn. Khi m&agrave; bạn đưa ke ma thuật v&agrave;o b&ecirc;n trong thanh nh&ocirc;m đ&atilde; tạo h&igrave;nh, nối hai thanh nh&ocirc;m lại với nhau rồi vặn c&aacute;c con ốc v&agrave;o.</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c nhảy:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Ke g&oacute;c nhảy l&agrave; sản phẩm đi k&egrave;m với k&iacute;nh cường lực dễ d&agrave;ng so s&aacute;nh với ke g&oacute;c ma thuật. Ke nhảy c&oacute; hai n&uacute;t chặn để tăng độ vững chắc cho hai cọc nh&ocirc;m.&nbsp;</strong></p>\r\n\r\n<h3 dir=\"ltr\"><strong>Nguy&ecirc;n l&yacute; của ke g&oacute;c nh&ocirc;m:</strong></h3>\r\n\r\n<p dir=\"ltr\"><strong>Loại ke nh&ocirc;m bo g&oacute;c n&agrave;y được đ&aacute;nh gi&aacute; l&agrave; loại kh&oacute; v&agrave; kh&oacute; xử l&yacute; nhất trong 3 loại ke nh&ocirc;m thường được sử dụng hiện nay. Đặc điểm nổi bật: M&aacute;y &eacute;p g&oacute;c nh&ocirc;m định h&igrave;nh khung thường c&oacute; h&igrave;nh chữ L hoặc tương tự như chữ L.&nbsp;</strong></p>\r\n\r\n<p dir=\"ltr\"><strong><em>M&aacute;y &eacute;p g&oacute;c</em>&nbsp;phải được sử dụng cho loại ke nh&ocirc;m n&agrave;y. Để c&oacute; thể &eacute;p c&aacute;c g&oacute;c một c&aacute;ch tối ưu, người vận h&agrave;nh phải điều chỉnh lại m&aacute;y để c&oacute; k&iacute;ch thước ph&ugrave; hợp với thanh nh&ocirc;m cần &eacute;p.</strong></p>\r\n\r\n<p><strong>Tr&ecirc;n đ&acirc;y l&agrave; những chia sẻ cải ch&uacute;ng t&ocirc;i về c&aacute;c loại ke g&oacute;c cửa nh&ocirc;m c&oacute; tr&ecirc;n thị trường. Mọi th&ocirc;ng tin thắc mắc xin vui l&ograve;ng li&ecirc;n hệ địa chỉ:&nbsp;</strong></p>\r\n', '', '', '', '', '', 0, 'en-tim-hieu-ve-cac-loai-ke-goc-cua-nhom-va-nguyen-ky-hoat-dong-cua-ke-goc-nhom', 'Tìm hiểu về các loại ke góc cửa nhôm và nguyên ký hoạt động của ke góc nhôm', '', ''),
(227, 114, 'vn', 'Khuôn dập kim loại-Các phương pháp gia công khuôn và tổng hợp các loại khuôn', 'Mặc dù khuôn mẫu được sử dụng để sản xuất hàng loạt, nhưng có rất nhiều khuôn \"số lượng ít, hỗn hợp cao\" được thiết kế đặc biệt cho từng sản phẩm, và hầu hết việc sản xuất được thực hiện bởi các nhà sản xuất và chế tạo khuôn vừa và nhỏ trong nước.', '<p><strong>Giới thiệu về gia c&ocirc;ng khu&ocirc;n:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; khu&ocirc;n mẫu được sử dụng để sản xuất h&agrave;ng loạt, nhưng c&oacute; rất nhiều khu&ocirc;n &quot;số lượng &iacute;t, hỗn hợp cao&quot; được thiết kế đặc biệt cho từng sản phẩm, v&agrave; hầu hết việc sản xuất được thực hiện bởi c&aacute;c nh&agrave; sản xuất v&agrave; chế tạo khu&ocirc;n vừa v&agrave; nhỏ trong nước.</p>\r\n\r\n<p>V&igrave; độ ch&iacute;nh x&aacute;c gia c&ocirc;ng của khu&ocirc;n ảnh hưởng rất nhiều đến chất lượng của &quot;sản phẩm c&ocirc;ng nghiệp&quot;, n&ecirc;n y&ecirc;u cầu độ ch&iacute;nh x&aacute;c gia c&ocirc;ng cao hơn so với gia c&ocirc;ng c&aacute;c bộ phận chung.</p>\r\n\r\n<p>&ldquo;V&igrave; khu&ocirc;n mẫu l&agrave; nguy&ecirc;n mẫu của tất cả c&aacute;c sản phẩm, n&ecirc;n việc sản xuất khu&ocirc;n mẫu đ&ograve;i hỏi gia c&ocirc;ng c&aacute;c bộ phận c&oacute; độ ch&iacute;nh x&aacute;c cao v&agrave; kỹ năng v&agrave; kiến ​​thức kỹ thuật cao để lắp r&aacute;p ch&uacute;ng.&rdquo;</p>\r\n\r\n<p>C&ocirc;ng nghệ cao v&agrave; độ ch&iacute;nh x&aacute;c được y&ecirc;u cầu để xử l&yacute; khu&ocirc;n đặt h&agrave;ng micromet.</p>\r\n\r\n<p>Ngo&agrave;i ra, sau khi l&agrave;m nguội khu&ocirc;n (xử l&yacute; nhiệt để l&agrave;m cứng kim loại) v&agrave; xử l&yacute; / phủ bề mặt , rất kh&oacute; để thực hiện c&aacute;c sửa đổi hoặc điều chỉnh bổ sung, v&igrave; vậy điều quan trọng l&agrave; phải thiết kế c&oacute; xem x&eacute;t đến sự thay đổi mẫu m&atilde; của c&aacute;c sản phẩm c&ocirc;ng nghiệp.</p>\r\n\r\n<p>M&ocirc; phỏng khu&ocirc;n sử dụng CAD / CAM v&agrave; c&ocirc;ng nghệ ph&acirc;n t&iacute;ch bằng CAE l&agrave; kh&ocirc;ng thể thiếu v&agrave; được sử dụng nhiều trong thiết kế khu&ocirc;n .</p>\r\n\r\n<p><em>Khu&ocirc;n thử v&agrave; sửa chữa</em></p>\r\n\r\n<p><em>Khu&ocirc;n sau khi gia c&ocirc;ng được đặt trong m&aacute;y &eacute;p , v&agrave; việc kiểm tra gia c&ocirc;ng (d&ugrave;ng thử) được thực hiện dựa tr&ecirc;n ph&ocirc;i thực tế.Dựa tr&ecirc;n kết quả thử nghiệm, sự ăn khớp giữa khu&ocirc;n tr&ecirc;n v&agrave; khu&ocirc;n dưới được điều chỉnh v&agrave; hiệu chỉnh bằng c&aacute;ch đ&aacute;nh b&oacute;ng bởi người vận h&agrave;nh hoặc đ&aacute;nh b&oacute;ng bằng m&aacute;y</em>.</p>\r\n\r\n<p><strong>Xử l&yacute; khu&ocirc;n bằng c&aacute;ch cắt</strong></p>\r\n\r\n<p>Hầu hết c&aacute;c khu&ocirc;n được gia c&ocirc;ng bằng m&aacute;y c&ocirc;ng cụ NC như c&aacute;c trung t&acirc;m gia c&ocirc;ng . Qu&aacute; tr&igrave;nh m&agrave;i v&agrave; đ&aacute;nh b&oacute;ng được thực hiện bằng &quot; m&aacute;y 5 trục &quot; để gia c&ocirc;ng 3D phức tạp v&agrave; &quot; m&aacute;y m&agrave;i NC &quot; để ho&agrave;n thiện .</p>\r\n\r\n<p><strong>Gia c&ocirc;ng khu&ocirc;n bằng gia c&ocirc;ng ph&oacute;ng điện</strong></p>\r\n\r\n<p>Gia c&ocirc;ng khu&ocirc;n bằng phương ph&aacute;p gia c&ocirc;ng ph&oacute;ng điện</p>\r\n\r\n<p>C&aacute;c kỹ thuật gia c&ocirc;ng ph&oacute;ng điện (EDM) như &quot;m&aacute;y ph&oacute;ng điện dập ch&igrave;m&quot; v&agrave; &quot;cắt d&acirc;y&quot; được sử dụng để gia c&ocirc;ng khu&ocirc;n ch&iacute;nh x&aacute;c hơn v&agrave; gia c&ocirc;ng khu&ocirc;n dập tắt nhiệt.</p>\r\n\r\n<p><strong>C&aacute;c loại khu&ocirc;n</strong></p>\r\n\r\n<p>C&oacute; nhiều loại khu&ocirc;n kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o ứng dụng như l&agrave;m việc &eacute;p v&agrave; &eacute;p phun, v&agrave; c&aacute;c qu&aacute; tr&igrave;nh như &quot; uốn &quot; v&agrave; &quot; tạo đường &quot;.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập kim loại</strong></p>\r\n\r\n<p>&quot;Khu&ocirc;n dập&quot; l&agrave; loại khu&ocirc;n phổ biến nhất được sử dụng trong c&aacute;c m&aacute;y &eacute;p v&agrave; m&aacute;y r&egrave;n .</p>\r\n\r\n<p>Từ c&aacute;c bộ phận ch&iacute;nh x&aacute;c như &ocirc; t&ocirc; đến c&aacute;c thiết bị cần thiết h&agrave;ng ng&agrave;y như đồ gia dụng, những khu&ocirc;n dập n&agrave;y l&agrave; kh&ocirc;ng thể thiếu để &quot;sản xuất h&agrave;ng loạt c&aacute;c sản phẩm c&ocirc;ng nghiệp&quot; v&agrave; được đ&uacute;c th&agrave;nh th&agrave;nh phẩm th&ocirc;ng qua một số khu&ocirc;n dập.</p>\r\n\r\n<p>Sử dụng loại một chạm v&agrave; QDC (hệ thống thay khu&ocirc;n tự động) để thay khu&ocirc;n trong m&aacute;y &eacute;p .</p>\r\n\r\n<p>Bằng c&aacute;ch sử dụng QDC, c&oacute; thể r&uacute;t ngắn việc thiết lập khu&ocirc;n v&agrave; tự động vận h&agrave;nh trong thời gian d&agrave;i.</p>\r\n\r\n<p><strong>Khu&ocirc;n đa năng (khu&ocirc;n &eacute;p đột)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đa năng&quot; l&agrave; khu&ocirc;n &eacute;p được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; một lần (&eacute;p một lần).</p>\r\n\r\n<p>Người vận h&agrave;nh đặt vật liệu tấm ở &quot;loại đơn giản&quot; v&agrave; thực hiện một qu&aacute; tr&igrave;nh (đục, đột, uốn, v.v.) bằng một lần nhấn.</p>\r\n\r\n<p>C&aacute;c bộ phận &eacute;p sẽ được người thao t&aacute;c chuyển sản phẩm sang quy tr&igrave;nh tiếp theo.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; h&igrave;nh thức cơ bản của khu&ocirc;n dập, v&agrave; nhiều khu&ocirc;n dập đơn được y&ecirc;u cầu để tạo khu&ocirc;n cho c&aacute;c sản phẩm c&ocirc;ng nghiệp.</p>\r\n\r\n<p>T&ugrave;y theo mục đ&iacute;ch được chia nhỏ theo chức năng như &quot;loại dập tạo h&igrave;nh&quot;, &quot;loại đột lỗ&quot; v&agrave; &quot;loại uốn&quot;.</p>\r\n\r\n<p>Loại n&agrave;y mỗi chu tr&igrave;nh dập khu&ocirc;n chỉ l&agrave;m một c&ocirc;ng việc, v&agrave; mỗi c&ocirc;ng việc lại l&agrave; một khu&ocirc;n kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Khu&ocirc;n tổng hợp</strong>&nbsp;(khu&ocirc;n dập li&ecirc;n ho&agrave;n)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Loại tổng hợp&quot; l&agrave; khu&ocirc;n dập được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; một lần (m&aacute;y &eacute;p một lần), giống như loại m&aacute;y chuy&ecirc;n dụng .</p>\r\n\r\n<p>Kh&ocirc;ng giống như loại đa năng theo mục đ&iacute;ch, m&agrave; nhiều qu&aacute; tr&igrave;nh (k&eacute;o / k&eacute;o / đục lỗ / uốn, v.v.) c&oacute; thể được thực hiện c&ugrave;ng một l&uacute;c chỉ với một lần dập.</p>\r\n\r\n<p>Mặc d&ugrave; c&oacute; những hạn chế như cấu tr&uacute;c khu&ocirc;n trở n&ecirc;n phức tạp v&agrave; độ bền trở n&ecirc;n yếu hơn, nhưng c&oacute; thể giảm giờ c&ocirc;ng bằng c&aacute;ch kết hợp hai hoặc ba quy tr&igrave;nh th&agrave;nh một.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập lũy tiến</strong>&nbsp;(nhấn dần dần tới khi th&agrave;nh phẩm)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n dập lũy tiến&quot; l&agrave; khu&ocirc;n dập được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; lũy tiến .</p>\r\n\r\n<p>Nhiều khu&ocirc;n (nhiều c&ocirc;ng đoạn gia c&ocirc;ng) được kết hợp v&agrave;o một khu&ocirc;n v&agrave; vật liệu cuộn được nạp tự động ở c&aacute;c g&oacute;c bằng nhau v&agrave; được &eacute;p theo thứ tự.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm c&oacute; năng suất cao nhất trong số tất cả c&aacute;c khu&ocirc;n &eacute;p v&agrave; c&oacute; thể được đ&uacute;c th&agrave;nh sản phẩm ho&agrave;n chỉnh với một khu&ocirc;n.</p>\r\n\r\n<p>V&igrave; cơ chế như chức năng điều chỉnh bước tiến v&agrave; c&aacute;c bộ phận định vị / gi&aacute; đỡ (chốt hoa ti&ecirc;u) rất phức tạp, n&ecirc;n cần phải c&oacute; c&ocirc;ng nghệ v&agrave; b&iacute; quyết ti&ecirc;n tiến để sản xuất khu&ocirc;n.</p>\r\n\r\n<p><strong>Khu&ocirc;n chuyển (nhấn chuyển)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n chuyển&quot; l&agrave; c&aacute;c khu&ocirc;n &eacute;p được sử dụng trong qu&aacute; tr&igrave;nh chuyển giao .</p>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng sản phẩm c&oacute; mục đ&iacute;ch duy nhất, v&agrave; chức năng chuyển / định vị đ&atilde; được th&ecirc;m v&agrave;o loại mục đ&iacute;ch duy nhất để tối ưu h&oacute;a n&oacute; cho c&aacute;c thiết bị truyền tải tự động (bộ chuyển tải).</p>\r\n\r\n<p>Gia c&ocirc;ng được thực hiện cho mỗi qu&aacute; tr&igrave;nh trong khi di chuyển vật liệu tấm bằng thiết bị chuyển tự động.</p>\r\n\r\n<p>V&igrave; chiều cao của kh&ocirc;ng gian xử l&yacute; c&oacute; thể được đảm bảo, n&ecirc;n c&oacute; thể xử l&yacute; &quot; bản vẽ &quot;, điều n&agrave;y l&agrave; kh&oacute; khăn với loại h&igrave;nh lũy tiến.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập d&ograve;ng (khu&ocirc;n dập)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n dập d&ograve;ng&quot; l&agrave; khu&ocirc;n dập được sử dụng trong d&acirc;y chuyền dập của r&ocirc; bốt&nbsp;</p>\r\n\r\n<p>Chức năng chuyển / định vị đ&atilde; được th&ecirc;m v&agrave;o loại mục đ&iacute;ch duy nhất để tối ưu h&oacute;a n&oacute; cho r&ocirc; bốt c&ocirc;ng nghiệp.</p>\r\n\r\n<p>N&oacute; l&yacute; tưởng cho c&aacute;c d&acirc;y chuyền tự động h&oacute;a kh&ocirc;ng người l&aacute;i v&agrave; c&oacute; thể xử l&yacute; c&aacute;c m&aacute;y &eacute;p lớn kh&oacute; với khu&ocirc;n dập tiến v&agrave; khu&ocirc;n dập chuyển.</p>\r\n\r\n<p><strong>Khu&ocirc;n đột (c&uacute; đấm)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đột&quot; l&agrave; những khu&ocirc;n đặc biệt c&oacute; thể được thiết lập tr&ecirc;n những c&uacute; đấm đấm v&agrave;o th&aacute;p ph&aacute;o v&agrave; nhấn phanh .</p>\r\n\r\n<p>Bằng c&aacute;ch nhấn một c&uacute; đấm v&agrave;o kim loại, c&aacute;c qu&aacute; tr&igrave;nh như đục lỗ, uốn cong v&agrave; đường r&atilde;nh được thực hiện. (Ngay cả trong khu&ocirc;n &eacute;p th&ocirc;ng thường, khu&ocirc;n tr&ecirc;n c&oacute; thể được gọi l&agrave; một c&uacute; đấm.)</p>\r\n\r\n<p>N&oacute; thường được sử dụng như một bộ với khu&ocirc;n dưới (mặt nhận), v&agrave; độ hở với khu&ocirc;n ảnh hưởng rất nhiều đến chất lượng của c&aacute;c bộ phận.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Khu&ocirc;n đ&uacute;c</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đ&uacute;c khu&ocirc;n&quot; l&agrave; một khu&ocirc;n để đ&uacute;c được sử dụng trong đ&uacute;c khu&ocirc;n .</p>\r\n\r\n<p>Kim loại n&oacute;ng chảy như nh&ocirc;m v&agrave; kẽm được đưa v&agrave;o khu&ocirc;n với tốc độ cao v&agrave; &aacute;p suất cao để đ&uacute;c.</p>\r\n\r\n<p>Đ&uacute;c với khu&ocirc;n đ&uacute;c được gọi l&agrave; &quot;đ&uacute;c khu&ocirc;n&quot; hoặc &quot;đ&uacute;c khu&ocirc;n&quot; v&agrave; được sử dụng trong c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp kh&aacute;c nhau như phụ t&ugrave;ng &ocirc; t&ocirc;, thiết bị gia dụng v&agrave; vật liệu x&acirc;y dựng.</p>\r\n\r\n<p><strong>Khu&ocirc;n &eacute;p phun</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n &eacute;p phun&quot; l&agrave; khu&ocirc;n để đ&uacute;c được sử dụng trong khu&ocirc;n &eacute;p nhựa v&agrave; khu&ocirc;n phun bột kim loại (c&ocirc;ng nghệ luyện kim bột được gọi l&agrave; MIM ).</p>\r\n\r\n<p>Bột nhựa hoặc kim loại n&oacute;ng chảy được bơm v&agrave;o khu&ocirc;n v&agrave; đ&uacute;c.</p>\r\n\r\n<p><strong>&quot;Khu&ocirc;n &eacute;p&quot;</strong>&nbsp;được sử dụng để &eacute;p nhựa đ&ograve;i hỏi thiết kế khu&ocirc;n phức tạp v&igrave; cần phải đổ nhiều nguy&ecirc;n liệu đồng đều trong một lần đổ.</p>\r\n\r\n<p><em>Giới thiệu về m&aacute;y &eacute;p phun (&eacute;p phun nhựa)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Đ&acirc;y l&agrave; một m&aacute;y đ&uacute;c &quot;chỉ nhựa&quot; tạo khu&ocirc;n sản phẩm bằng c&aacute;ch bơm nhựa tổng hợp đ&atilde; được nung n&oacute;ng v&agrave; c&aacute;c vật liệu kh&aacute;c (dạng vi&ecirc;n) v&agrave;o khu&ocirc;n ở trạng th&aacute;i n&oacute;ng chảy, sau đ&oacute; l&agrave;m nguội v&agrave; cứng lại.</em></p>\r\n\r\n<p><em>C&oacute; nhiều loại m&aacute;y &eacute;p phun kh&aacute;c nhau, chẳng hạn như &quot;loại servo&quot; v&agrave; &quot;loại thủy lực&quot; sử dụng động cơ servo.</em></p>\r\n\r\n<p><em>C&aacute;c sản phẩm nhựa đ&uacute;c phun đa dạng từ c&aacute;c bộ phận &ocirc; t&ocirc; đến đồ gia dụng v&agrave; nhu yếu phẩm h&agrave;ng ng&agrave;y.</em></p>\r\n\r\n<p><strong>Khu&ocirc;n đơn giản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đơn giản&quot; l&agrave; khu&ocirc;n được sử dụng trong qu&aacute; tr&igrave;nh tạo mẫu sản phẩm v&agrave; thử nghiệm trước khi sản xuất h&agrave;ng loạt.V&igrave; n&oacute; được l&agrave;m bằng hợp kim nh&ocirc;m hoặc kẽm , n&oacute; c&oacute; đặc điểm l&agrave; chi ph&iacute; chế tạo thấp so với c&aacute;c loại khu&ocirc;n đắt tiền (khu&ocirc;n ch&iacute;nh) như th&eacute;p tốc độ cao.Do độ bền thấp v&agrave; số lần xử l&yacute; hạn chế (số lượng ảnh chụp), n&oacute; kh&ocirc;ng thể được sử dụng để sản xuất h&agrave;ng loạt như hiện nay.</p>\r\n\r\n<p><strong>Khu&ocirc;n đ&uacute;c composite</strong></p>\r\n\r\n<p>&quot;Khu&ocirc;n đ&uacute;c composite&quot; l&agrave; khu&ocirc;n được sử dụng để giảm giờ c&ocirc;ng tr&ecirc;n d&acirc;y chuyền sản xuất.Nhiều vật liệu v&agrave; bộ phận được đặt b&ecirc;n trong khu&ocirc;n v&agrave; nhiều qu&aacute; tr&igrave;nh xử l&yacute; v&agrave; lắp r&aacute;p kh&aacute;c nhau được thực hiện c&ugrave;ng một l&uacute;c chỉ với một lần nhấn.N&oacute; cũng c&oacute; thể nối c&aacute;c vật liệu kh&aacute;c nhau, c&aacute;c bộ phận uốn v&agrave; &eacute;p.</p>\r\n', '', '', '', '', '', 0, 'khuon-dap-kim-loai-cac-phuong-phap-gia-cong-khuon-va-tong-hop-cac-loai-khuon', 'Khuôn dập kim loại-Các phương pháp gia công khuôn và tổng hợp các loại khuôn', '', ''),
(228, 114, 'en', 'english version Khuôn dập kim loại-Các phương pháp gia công khuôn và tổng hợp các loại khuôn', 'english version ', 'english version <p><strong>Giới thiệu về gia c&ocirc;ng khu&ocirc;n:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; khu&ocirc;n mẫu được sử dụng để sản xuất h&agrave;ng loạt, nhưng c&oacute; rất nhiều khu&ocirc;n &quot;số lượng &iacute;t, hỗn hợp cao&quot; được thiết kế đặc biệt cho từng sản phẩm, v&agrave; hầu hết việc sản xuất được thực hiện bởi c&aacute;c nh&agrave; sản xuất v&agrave; chế tạo khu&ocirc;n vừa v&agrave; nhỏ trong nước.</p>\r\n\r\n<p>V&igrave; độ ch&iacute;nh x&aacute;c gia c&ocirc;ng của khu&ocirc;n ảnh hưởng rất nhiều đến chất lượng của &quot;sản phẩm c&ocirc;ng nghiệp&quot;, n&ecirc;n y&ecirc;u cầu độ ch&iacute;nh x&aacute;c gia c&ocirc;ng cao hơn so với gia c&ocirc;ng c&aacute;c bộ phận chung.</p>\r\n\r\n<p>&ldquo;V&igrave; khu&ocirc;n mẫu l&agrave; nguy&ecirc;n mẫu của tất cả c&aacute;c sản phẩm, n&ecirc;n việc sản xuất khu&ocirc;n mẫu đ&ograve;i hỏi gia c&ocirc;ng c&aacute;c bộ phận c&oacute; độ ch&iacute;nh x&aacute;c cao v&agrave; kỹ năng v&agrave; kiến ​​thức kỹ thuật cao để lắp r&aacute;p ch&uacute;ng.&rdquo;</p>\r\n\r\n<p>C&ocirc;ng nghệ cao v&agrave; độ ch&iacute;nh x&aacute;c được y&ecirc;u cầu để xử l&yacute; khu&ocirc;n đặt h&agrave;ng micromet.</p>\r\n\r\n<p>Ngo&agrave;i ra, sau khi l&agrave;m nguội khu&ocirc;n (xử l&yacute; nhiệt để l&agrave;m cứng kim loại) v&agrave; xử l&yacute; / phủ bề mặt , rất kh&oacute; để thực hiện c&aacute;c sửa đổi hoặc điều chỉnh bổ sung, v&igrave; vậy điều quan trọng l&agrave; phải thiết kế c&oacute; xem x&eacute;t đến sự thay đổi mẫu m&atilde; của c&aacute;c sản phẩm c&ocirc;ng nghiệp.</p>\r\n\r\n<p>M&ocirc; phỏng khu&ocirc;n sử dụng CAD / CAM v&agrave; c&ocirc;ng nghệ ph&acirc;n t&iacute;ch bằng CAE l&agrave; kh&ocirc;ng thể thiếu v&agrave; được sử dụng nhiều trong thiết kế khu&ocirc;n .</p>\r\n\r\n<p><em>Khu&ocirc;n thử v&agrave; sửa chữa</em></p>\r\n\r\n<p><em>Khu&ocirc;n sau khi gia c&ocirc;ng được đặt trong m&aacute;y &eacute;p , v&agrave; việc kiểm tra gia c&ocirc;ng (d&ugrave;ng thử) được thực hiện dựa tr&ecirc;n ph&ocirc;i thực tế.Dựa tr&ecirc;n kết quả thử nghiệm, sự ăn khớp giữa khu&ocirc;n tr&ecirc;n v&agrave; khu&ocirc;n dưới được điều chỉnh v&agrave; hiệu chỉnh bằng c&aacute;ch đ&aacute;nh b&oacute;ng bởi người vận h&agrave;nh hoặc đ&aacute;nh b&oacute;ng bằng m&aacute;y</em>.</p>\r\n\r\n<p><strong>Xử l&yacute; khu&ocirc;n bằng c&aacute;ch cắt</strong></p>\r\n\r\n<p>Hầu hết c&aacute;c khu&ocirc;n được gia c&ocirc;ng bằng m&aacute;y c&ocirc;ng cụ NC như c&aacute;c trung t&acirc;m gia c&ocirc;ng . Qu&aacute; tr&igrave;nh m&agrave;i v&agrave; đ&aacute;nh b&oacute;ng được thực hiện bằng &quot; m&aacute;y 5 trục &quot; để gia c&ocirc;ng 3D phức tạp v&agrave; &quot; m&aacute;y m&agrave;i NC &quot; để ho&agrave;n thiện .</p>\r\n\r\n<p><strong>Gia c&ocirc;ng khu&ocirc;n bằng gia c&ocirc;ng ph&oacute;ng điện</strong></p>\r\n\r\n<p>Gia c&ocirc;ng khu&ocirc;n bằng phương ph&aacute;p gia c&ocirc;ng ph&oacute;ng điện</p>\r\n\r\n<p>C&aacute;c kỹ thuật gia c&ocirc;ng ph&oacute;ng điện (EDM) như &quot;m&aacute;y ph&oacute;ng điện dập ch&igrave;m&quot; v&agrave; &quot;cắt d&acirc;y&quot; được sử dụng để gia c&ocirc;ng khu&ocirc;n ch&iacute;nh x&aacute;c hơn v&agrave; gia c&ocirc;ng khu&ocirc;n dập tắt nhiệt.</p>\r\n\r\n<p><strong>C&aacute;c loại khu&ocirc;n</strong></p>\r\n\r\n<p>C&oacute; nhiều loại khu&ocirc;n kh&aacute;c nhau t&ugrave;y thuộc v&agrave;o ứng dụng như l&agrave;m việc &eacute;p v&agrave; &eacute;p phun, v&agrave; c&aacute;c qu&aacute; tr&igrave;nh như &quot; uốn &quot; v&agrave; &quot; tạo đường &quot;.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập kim loại</strong></p>\r\n\r\n<p>&quot;Khu&ocirc;n dập&quot; l&agrave; loại khu&ocirc;n phổ biến nhất được sử dụng trong c&aacute;c m&aacute;y &eacute;p v&agrave; m&aacute;y r&egrave;n .</p>\r\n\r\n<p>Từ c&aacute;c bộ phận ch&iacute;nh x&aacute;c như &ocirc; t&ocirc; đến c&aacute;c thiết bị cần thiết h&agrave;ng ng&agrave;y như đồ gia dụng, những khu&ocirc;n dập n&agrave;y l&agrave; kh&ocirc;ng thể thiếu để &quot;sản xuất h&agrave;ng loạt c&aacute;c sản phẩm c&ocirc;ng nghiệp&quot; v&agrave; được đ&uacute;c th&agrave;nh th&agrave;nh phẩm th&ocirc;ng qua một số khu&ocirc;n dập.</p>\r\n\r\n<p>Sử dụng loại một chạm v&agrave; QDC (hệ thống thay khu&ocirc;n tự động) để thay khu&ocirc;n trong m&aacute;y &eacute;p .</p>\r\n\r\n<p>Bằng c&aacute;ch sử dụng QDC, c&oacute; thể r&uacute;t ngắn việc thiết lập khu&ocirc;n v&agrave; tự động vận h&agrave;nh trong thời gian d&agrave;i.</p>\r\n\r\n<p><strong>Khu&ocirc;n đa năng (khu&ocirc;n &eacute;p đột)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đa năng&quot; l&agrave; khu&ocirc;n &eacute;p được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; một lần (&eacute;p một lần).</p>\r\n\r\n<p>Người vận h&agrave;nh đặt vật liệu tấm ở &quot;loại đơn giản&quot; v&agrave; thực hiện một qu&aacute; tr&igrave;nh (đục, đột, uốn, v.v.) bằng một lần nhấn.</p>\r\n\r\n<p>C&aacute;c bộ phận &eacute;p sẽ được người thao t&aacute;c chuyển sản phẩm sang quy tr&igrave;nh tiếp theo.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; h&igrave;nh thức cơ bản của khu&ocirc;n dập, v&agrave; nhiều khu&ocirc;n dập đơn được y&ecirc;u cầu để tạo khu&ocirc;n cho c&aacute;c sản phẩm c&ocirc;ng nghiệp.</p>\r\n\r\n<p>T&ugrave;y theo mục đ&iacute;ch được chia nhỏ theo chức năng như &quot;loại dập tạo h&igrave;nh&quot;, &quot;loại đột lỗ&quot; v&agrave; &quot;loại uốn&quot;.</p>\r\n\r\n<p>Loại n&agrave;y mỗi chu tr&igrave;nh dập khu&ocirc;n chỉ l&agrave;m một c&ocirc;ng việc, v&agrave; mỗi c&ocirc;ng việc lại l&agrave; một khu&ocirc;n kh&aacute;c nhau.</p>\r\n\r\n<p><strong>Khu&ocirc;n tổng hợp</strong>&nbsp;(khu&ocirc;n dập li&ecirc;n ho&agrave;n)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Loại tổng hợp&quot; l&agrave; khu&ocirc;n dập được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; một lần (m&aacute;y &eacute;p một lần), giống như loại m&aacute;y chuy&ecirc;n dụng .</p>\r\n\r\n<p>Kh&ocirc;ng giống như loại đa năng theo mục đ&iacute;ch, m&agrave; nhiều qu&aacute; tr&igrave;nh (k&eacute;o / k&eacute;o / đục lỗ / uốn, v.v.) c&oacute; thể được thực hiện c&ugrave;ng một l&uacute;c chỉ với một lần dập.</p>\r\n\r\n<p>Mặc d&ugrave; c&oacute; những hạn chế như cấu tr&uacute;c khu&ocirc;n trở n&ecirc;n phức tạp v&agrave; độ bền trở n&ecirc;n yếu hơn, nhưng c&oacute; thể giảm giờ c&ocirc;ng bằng c&aacute;ch kết hợp hai hoặc ba quy tr&igrave;nh th&agrave;nh một.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập lũy tiến</strong>&nbsp;(nhấn dần dần tới khi th&agrave;nh phẩm)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n dập lũy tiến&quot; l&agrave; khu&ocirc;n dập được sử dụng trong qu&aacute; tr&igrave;nh xử l&yacute; lũy tiến .</p>\r\n\r\n<p>Nhiều khu&ocirc;n (nhiều c&ocirc;ng đoạn gia c&ocirc;ng) được kết hợp v&agrave;o một khu&ocirc;n v&agrave; vật liệu cuộn được nạp tự động ở c&aacute;c g&oacute;c bằng nhau v&agrave; được &eacute;p theo thứ tự.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; sản phẩm c&oacute; năng suất cao nhất trong số tất cả c&aacute;c khu&ocirc;n &eacute;p v&agrave; c&oacute; thể được đ&uacute;c th&agrave;nh sản phẩm ho&agrave;n chỉnh với một khu&ocirc;n.</p>\r\n\r\n<p>V&igrave; cơ chế như chức năng điều chỉnh bước tiến v&agrave; c&aacute;c bộ phận định vị / gi&aacute; đỡ (chốt hoa ti&ecirc;u) rất phức tạp, n&ecirc;n cần phải c&oacute; c&ocirc;ng nghệ v&agrave; b&iacute; quyết ti&ecirc;n tiến để sản xuất khu&ocirc;n.</p>\r\n\r\n<p><strong>Khu&ocirc;n chuyển (nhấn chuyển)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n chuyển&quot; l&agrave; c&aacute;c khu&ocirc;n &eacute;p được sử dụng trong qu&aacute; tr&igrave;nh chuyển giao .</p>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng sản phẩm c&oacute; mục đ&iacute;ch duy nhất, v&agrave; chức năng chuyển / định vị đ&atilde; được th&ecirc;m v&agrave;o loại mục đ&iacute;ch duy nhất để tối ưu h&oacute;a n&oacute; cho c&aacute;c thiết bị truyền tải tự động (bộ chuyển tải).</p>\r\n\r\n<p>Gia c&ocirc;ng được thực hiện cho mỗi qu&aacute; tr&igrave;nh trong khi di chuyển vật liệu tấm bằng thiết bị chuyển tự động.</p>\r\n\r\n<p>V&igrave; chiều cao của kh&ocirc;ng gian xử l&yacute; c&oacute; thể được đảm bảo, n&ecirc;n c&oacute; thể xử l&yacute; &quot; bản vẽ &quot;, điều n&agrave;y l&agrave; kh&oacute; khăn với loại h&igrave;nh lũy tiến.</p>\r\n\r\n<p><strong>Khu&ocirc;n dập d&ograve;ng (khu&ocirc;n dập)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n dập d&ograve;ng&quot; l&agrave; khu&ocirc;n dập được sử dụng trong d&acirc;y chuyền dập của r&ocirc; bốt&nbsp;</p>\r\n\r\n<p>Chức năng chuyển / định vị đ&atilde; được th&ecirc;m v&agrave;o loại mục đ&iacute;ch duy nhất để tối ưu h&oacute;a n&oacute; cho r&ocirc; bốt c&ocirc;ng nghiệp.</p>\r\n\r\n<p>N&oacute; l&yacute; tưởng cho c&aacute;c d&acirc;y chuyền tự động h&oacute;a kh&ocirc;ng người l&aacute;i v&agrave; c&oacute; thể xử l&yacute; c&aacute;c m&aacute;y &eacute;p lớn kh&oacute; với khu&ocirc;n dập tiến v&agrave; khu&ocirc;n dập chuyển.</p>\r\n\r\n<p><strong>Khu&ocirc;n đột (c&uacute; đấm)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đột&quot; l&agrave; những khu&ocirc;n đặc biệt c&oacute; thể được thiết lập tr&ecirc;n những c&uacute; đấm đấm v&agrave;o th&aacute;p ph&aacute;o v&agrave; nhấn phanh .</p>\r\n\r\n<p>Bằng c&aacute;ch nhấn một c&uacute; đấm v&agrave;o kim loại, c&aacute;c qu&aacute; tr&igrave;nh như đục lỗ, uốn cong v&agrave; đường r&atilde;nh được thực hiện. (Ngay cả trong khu&ocirc;n &eacute;p th&ocirc;ng thường, khu&ocirc;n tr&ecirc;n c&oacute; thể được gọi l&agrave; một c&uacute; đấm.)</p>\r\n\r\n<p>N&oacute; thường được sử dụng như một bộ với khu&ocirc;n dưới (mặt nhận), v&agrave; độ hở với khu&ocirc;n ảnh hưởng rất nhiều đến chất lượng của c&aacute;c bộ phận.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Khu&ocirc;n đ&uacute;c</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đ&uacute;c khu&ocirc;n&quot; l&agrave; một khu&ocirc;n để đ&uacute;c được sử dụng trong đ&uacute;c khu&ocirc;n .</p>\r\n\r\n<p>Kim loại n&oacute;ng chảy như nh&ocirc;m v&agrave; kẽm được đưa v&agrave;o khu&ocirc;n với tốc độ cao v&agrave; &aacute;p suất cao để đ&uacute;c.</p>\r\n\r\n<p>Đ&uacute;c với khu&ocirc;n đ&uacute;c được gọi l&agrave; &quot;đ&uacute;c khu&ocirc;n&quot; hoặc &quot;đ&uacute;c khu&ocirc;n&quot; v&agrave; được sử dụng trong c&aacute;c ng&agrave;nh c&ocirc;ng nghiệp kh&aacute;c nhau như phụ t&ugrave;ng &ocirc; t&ocirc;, thiết bị gia dụng v&agrave; vật liệu x&acirc;y dựng.</p>\r\n\r\n<p><strong>Khu&ocirc;n &eacute;p phun</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n &eacute;p phun&quot; l&agrave; khu&ocirc;n để đ&uacute;c được sử dụng trong khu&ocirc;n &eacute;p nhựa v&agrave; khu&ocirc;n phun bột kim loại (c&ocirc;ng nghệ luyện kim bột được gọi l&agrave; MIM ).</p>\r\n\r\n<p>Bột nhựa hoặc kim loại n&oacute;ng chảy được bơm v&agrave;o khu&ocirc;n v&agrave; đ&uacute;c.</p>\r\n\r\n<p><strong>&quot;Khu&ocirc;n &eacute;p&quot;</strong>&nbsp;được sử dụng để &eacute;p nhựa đ&ograve;i hỏi thiết kế khu&ocirc;n phức tạp v&igrave; cần phải đổ nhiều nguy&ecirc;n liệu đồng đều trong một lần đổ.</p>\r\n\r\n<p><em>Giới thiệu về m&aacute;y &eacute;p phun (&eacute;p phun nhựa)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Đ&acirc;y l&agrave; một m&aacute;y đ&uacute;c &quot;chỉ nhựa&quot; tạo khu&ocirc;n sản phẩm bằng c&aacute;ch bơm nhựa tổng hợp đ&atilde; được nung n&oacute;ng v&agrave; c&aacute;c vật liệu kh&aacute;c (dạng vi&ecirc;n) v&agrave;o khu&ocirc;n ở trạng th&aacute;i n&oacute;ng chảy, sau đ&oacute; l&agrave;m nguội v&agrave; cứng lại.</em></p>\r\n\r\n<p><em>C&oacute; nhiều loại m&aacute;y &eacute;p phun kh&aacute;c nhau, chẳng hạn như &quot;loại servo&quot; v&agrave; &quot;loại thủy lực&quot; sử dụng động cơ servo.</em></p>\r\n\r\n<p><em>C&aacute;c sản phẩm nhựa đ&uacute;c phun đa dạng từ c&aacute;c bộ phận &ocirc; t&ocirc; đến đồ gia dụng v&agrave; nhu yếu phẩm h&agrave;ng ng&agrave;y.</em></p>\r\n\r\n<p><strong>Khu&ocirc;n đơn giản</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&quot;Khu&ocirc;n đơn giản&quot; l&agrave; khu&ocirc;n được sử dụng trong qu&aacute; tr&igrave;nh tạo mẫu sản phẩm v&agrave; thử nghiệm trước khi sản xuất h&agrave;ng loạt.V&igrave; n&oacute; được l&agrave;m bằng hợp kim nh&ocirc;m hoặc kẽm , n&oacute; c&oacute; đặc điểm l&agrave; chi ph&iacute; chế tạo thấp so với c&aacute;c loại khu&ocirc;n đắt tiền (khu&ocirc;n ch&iacute;nh) như th&eacute;p tốc độ cao.Do độ bền thấp v&agrave; số lần xử l&yacute; hạn chế (số lượng ảnh chụp), n&oacute; kh&ocirc;ng thể được sử dụng để sản xuất h&agrave;ng loạt như hiện nay.</p>\r\n\r\n<p><strong>Khu&ocirc;n đ&uacute;c composite</strong></p>\r\n\r\n<p>&quot;Khu&ocirc;n đ&uacute;c composite&quot; l&agrave; khu&ocirc;n được sử dụng để giảm giờ c&ocirc;ng tr&ecirc;n d&acirc;y chuyền sản xuất.Nhiều vật liệu v&agrave; bộ phận được đặt b&ecirc;n trong khu&ocirc;n v&agrave; nhiều qu&aacute; tr&igrave;nh xử l&yacute; v&agrave; lắp r&aacute;p kh&aacute;c nhau được thực hiện c&ugrave;ng một l&uacute;c chỉ với một lần nhấn.N&oacute; cũng c&oacute; thể nối c&aacute;c vật liệu kh&aacute;c nhau, c&aacute;c bộ phận uốn v&agrave; &eacute;p.</p>\r\n', '', '', '', '', '', 0, 'en-khuon-dap-kim-loai-cac-phuong-phap-gia-cong-khuon-va-tong-hop-cac-loai-khuon', 'Khuôn dập kim loại-Các phương pháp gia công khuôn và tổng hợp các loại khuôn', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghe_thu`
--

CREATE TABLE `nghe_thu` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mp3` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nghe_thu`
--

INSERT INTO `nghe_thu` (`id`, `name`, `image`, `mp3`) VALUES
(1, '22 Quy luật bất biến trong Marketing', '7f9520661e243d34f20f1118544ad4d9-20211015144909.jpg', 'nguoi_giau_co_nhat_thanh_babylon.mp3'),
(2, 'Người giàu có nhất thành Babilon', '7f9520661e243d34f20f1118544ad4d9-20211015144909.jpg', 'nguoi_giau_co_nhat_thanh_babylon.mp3'),
(3, 'Hẹn bạn trên đỉnh thành công', '7f9520661e243d34f20f1118544ad4d9-20211015144909.jpg', 'nguoi_giau_co_nhat_thanh_babylon.mp3'),
(4, '100 Quy luật bất biến để thành công', '7f9520661e243d34f20f1118544ad4d9-20211015144909.jpg', 'nguoi_giau_co_nhat_thanh_babylon.mp3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(47, 'Giơi thiệu', '', '<p>C&ocirc;ng ty TNHH Xuất nhập khẩu Trung Th&agrave;nh: Chuy&ecirc;n Xuất - Nhập khẩu c&aacute;c loại M&aacute;y, Thiết bị d&ugrave;ng trong C&ocirc;ng nghiệp. B&aacute;n bu&ocirc;n, b&aacute;n lẻ c&aacute;c sản phẩm: Sợi Thuỷ tinh, Vải Thuỷ tinh, Sợi PVA, Sợi PP, Sợi gia cường, Mực in, Bột &Ocirc; x&iacute;t sắt, Băng tải dạ, Lưới Inox, Amiang (Trung Quốc): &nbsp;D&ugrave;ng cho sản xuất B&ecirc; t&ocirc;ng, Tấm lợp, Ng&oacute;i mầu. tấm Nhựa s&aacute;ng, quấn bồn Composite.<br />\r\n<br />\r\nMọi th&ocirc;ng tin xin vui l&ograve;ng li&ecirc;n hệ:<br />\r\nC&ocirc;ng Ty TNHH Kinh Doanh XNK Trung Th&agrave;nh<br />\r\n- Hotline: 0813 379 666<br />\r\n- Email: trungthanh07.666@gmail.com,<br />\r\n- Địa chỉ: Khu CN Bắc Duy&ecirc;n Hải, TP. L&agrave;o Cai, T. L&agrave;o Cai</p>\r\n', 'khong-ten.jpg', '2022-07-25 17:07:00', '2023-01-30 17:01:36', 1, '', '', '', '', '', '', 'Giơi thiệu', '', 'gioi-thieu', 1),
(48, 'Tải tài liệu', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '2023-01-27 16:01:54', NULL, 1, '', '', '', '', '', '', 'Tải tài liệu', '', 'tai-tai-lieu', 1),
(49, 'KINH DOANH LÀM GIÀU<br> PHÁT TRIỂN BẢN THÂN', '250', '<ul>\r\n	<li>Nghe s&aacute;ch n&oacute;i trọn đời kh&ocirc;ng giới hạn chỉ với 1000đ/đầu s&aacute;ch</li>\r\n	<li>Kh&ocirc;ng c&oacute; quảng c&aacute;o</li>\r\n	<li>T&igrave;m s&aacute;ch theo chủ đề nhanh ch&oacute;ng, dễ d&agrave;ng</li>\r\n	<li>Update đầu s&aacute;ch mới theo y&ecirc;u cầu</li>\r\n	<li>Nghe tr&ecirc;n mọi thiết bị: Điện thoại, m&aacute;y t&iacute;nh, Ipad, m&aacute;y t&iacute;nh bảng ...</li>\r\n	<li>Nghe online hay tải về m&aacute;y đều được</li>\r\n	<li>Thời gian ưu đ&atilde;i: 16.01.2023 - 30.01.2023</li>\r\n</ul>\r\n', '240394743_996337511150629_2105664549307368418_n-copy-20210828095941.png', '2023-02-04 14:02:00', '2023-02-14 09:02:20', 1, '', '', '', '', '', '', 'KINH DOANH LÀM GIÀU PHÁT TRIỂN BẢN THÂN', '', 'kinh-doanh-lam-giaubr-phat-trien-ban-than', 1),
(50, 'LỜI KHUYÊN CỦA NHÀ ĐẦU TƯ VĨ ĐẠI NHẤT THẾ GIỚI', 'WARREN BUFFETT', '', '', '2023-02-04 15:02:51', NULL, 1, '<iframe width=\"100%\" height=\"700\" src=\"https://www.youtube.com/embed/fKGjd3pzQ6I\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', '', 'LỜI KHUYÊN CỦA NHÀ ĐẦU TƯ VĨ ĐẠI NHẤT THẾ GIỚI', '', 'loi-khuyen-cua-nha-dau-tu-vi-dai-nhat-the-gioi', 1),
(51, 'NÂNG CAO KIẾN THỨC', 'Nghe sách nói bạn đều sẽ nhận được những trải nghiệm, tri thức để áp dụng vào công việc cuộc sống. Nghe sách hay cũng giống như trò truyện với các bộ óc tuyệt vời nhất của những thế kỷ đã trôi qua.', '', '', '2023-02-04 15:02:36', NULL, 1, '', '', '', '', '', '', 'NÂNG CAO KIẾN THỨC', '', 'nang-cao-kien-thuc', 1),
(52, 'TIẾT KIỆM CHI PHÍ', 'Không còn cảnh phải tốn tiền mua một đống sách về vứt xó rồi cả năm không đọc nữa. Nghe sách nói trọn đời không giới hạn chỉ với 2000đ/đầu sách', '', '', '2023-02-04 15:02:10', NULL, 1, '', '', '', '', '', '', 'TIẾT KIỆM CHI PHÍ', '', 'tiet-kiem-chi-phi', 1),
(53, 'KHÔNG GÂY BUỒN NGỦ', 'Thay vì việc ngồi đọc hàng trăm chữ li ti trên từng trang sách, bạn sẽ lĩnh hội chúng thông qua việc lắng nghe và cảm nhận.', '', '', '2023-02-04 15:02:29', NULL, 1, '', '', '', '', '', '', 'KHÔNG GÂY BUỒN NGỦ', '', 'khong-gay-buon-ngu', 1),
(54, 'GIẢI TRÍ GIẢM CĂNG THẲNG', 'Nghe sách nói, bạn có thể nhắm mắt, thư giãn để những con chữ tự động chảy vào tâm trí. Bạn có thể đào sâu suy nghĩ về những ý tưởng, kiến thức sách nói đang đề cập từ đó hình dung ra việc sẽ áp dụng vào thực tế như nào một cách dễ dàng mà không cần gắng sức.', '', '', '2023-02-04 15:02:45', NULL, 1, '', '', '', '', '', '', 'GIẢI TRÍ GIẢM CĂNG THẲNG', '', 'giai-tri-giam-cang-thang', 1),
(55, 'TẬN DỤNG THỜI GIAN RẢNH RỖI', 'Linh hoạt nghe mọi lúc mọi nơi như khi đang nấu ăn, đang chông con, khi đi xe bus, khi tập thể dục... Nghe và lĩnh hội sáchlà bạn đã hơn hẳn ít nhất 90% số người xung quanh và có nhiều hơn 80% cơ hội thành đạt vượt xa họ.', '', '', '2023-02-04 15:02:04', NULL, 1, '', '', '', '', '', '', 'TẬN DỤNG THỜI GIAN RẢNH RỖI', '', 'tan-dung-thoi-gian-ranh-roi', 1),
(56, 'NGƯỜI THÀNH ĐẠT KHUYÊN ĐỌC', 'Sách được viết bởi những người thành công nhất thế giới như Dale Carnegie.... được giới siêu giàu thế giới như Bill Gates, JackMa… khuyên phải đọc. Lắng nghe những người tài giỏi hàng ngày sẽ giúp mở mang tri thức của bạn...', '', '', '2023-02-04 15:02:20', NULL, 1, '', '', '', '', '', '', 'NGƯỜI THÀNH ĐẠT KHUYÊN ĐỌC', '', 'nguoi-thanh-dat-khuyen-doc', 1),
(57, 'ƯU ĐIỂM', 'Sử dụng được trên nhiều thiết bị: Điện thoại, máy tính, Ipad, máy tính bảng\r\nTự động ghi nhớ thời gian và vị trí chapter đang nghe dở trên mọi thiết bị.\r\nTốc độ tải sách cực nhanh, trình phát vẫn chạy ngay cả khi tắt màn hình\r\nChỉ cần mua 1 lần, bạn có thể nghe sách mãi mãi, không cần phải gia hạn hay đóng thêm chi phí.\r\nChỉ cần có wifi, 3g hoặc 4g bạn có thể học mọi lúc mọi nơi. Có thể download về máy.\r\nKhông còn cảnh phải tốn tiền mua một đống sách về vứt xó rồi cả năm không đọc nữa.', '', '6b26e7747b70fbdbbcf9b45a90a67f15-copy-20211001084722.png', '2023-02-04 17:02:49', '2023-02-04 17:02:39', 1, '', '', '', '', '', '', 'ƯU ĐIỂM', '', 'uu-diem', 1),
(58, 'HẢI YẾN - 24 TUỔI', 'Sau một ngày làm việc căng thẳng mình thích được đắm chìm trong thế giới của sách nói. Lúc nấu ăn, lúc đi xe về nhà, lúc nằm nghỉ ngơi mình đều nghe sách nói, thật sự giảm rất nhiều stress và có thêm độc lực phấn đấu. Cám ơn Audio Books.', '', '33747770_2143339799228002_790596375594139648_n-20191208100107.jpg', '2023-02-04 17:02:32', NULL, 1, '', '', '', '', '', '', 'HẢI YẾN - 24 TUỔI', '', 'hai-yen-24-tuoi', 1),
(59, 'TRẦN HỮU ĐỨC - 33 TUỔI', 'Tôi rất lười đọc sách, vì không thể dõi theo những dòng chữ li ti trên mỗi trang sách quá 5 phút. Tôi thấy đọc sách không hợp với mình. Giờ đây nhờ Audio Books tôi có thể tiếp thu được các kiến thức từ sách mà không cần phải gắng sức. Thật tuyệt vời.', '', 'shutterstock_1029293194-20191208095946.png', '2023-02-04 17:02:55', NULL, 1, '', '', '', '', '', '', 'TRẦN HỮU ĐỨC - 33 TUỔI', '', 'tran-huu-duc-33-tuoi', 1),
(60, 'VŨ TIẾN VIỆT - 30 TUỔI', 'Audio Books là website nghe sách rất chất lượng, giọng đọc truyền cảm, không sót một chữ nào trong sách. Mà chi phí lại rất tiết kiệm.', '', 'shutterstock_696477112-20191208095946.png', '2023-02-04 17:02:14', NULL, 1, '', '', '', '', '', '', 'VŨ TIẾN VIỆT - 30 TUỔI', '', 'vu-tien-viet-30-tuoi', 1),
(61, 'HƯỚNG DẪN ĐĂNG NHẬP', 'SÁCH NÓI ONLINE', '', '', '2023-02-04 17:02:59', NULL, 1, '<iframe width=\"100%\" height=\"700\" src=\"https://www.youtube.com/embed/X-3ukDP0qoI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', '', 'HƯỚNG DẪN ĐĂNG NHẬP', '', 'huong-dan-dang-nhap', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(59, 47, 'vn', 'Giơi thiệu', '', '<p>C&ocirc;ng ty TNHH Xuất nhập khẩu Trung Th&agrave;nh: Chuy&ecirc;n Xuất - Nhập khẩu c&aacute;c loại M&aacute;y, Thiết bị d&ugrave;ng trong C&ocirc;ng nghiệp. B&aacute;n bu&ocirc;n, b&aacute;n lẻ c&aacute;c sản phẩm: Sợi Thuỷ tinh, Vải Thuỷ tinh, Sợi PVA, Sợi PP, Sợi gia cường, Mực in, Bột &Ocirc; x&iacute;t sắt, Băng tải dạ, Lưới Inox, Amiang (Trung Quốc): &nbsp;D&ugrave;ng cho sản xuất B&ecirc; t&ocirc;ng, Tấm lợp, Ng&oacute;i mầu. tấm Nhựa s&aacute;ng, quấn bồn Composite.<br />\r\n<br />\r\nMọi th&ocirc;ng tin xin vui l&ograve;ng li&ecirc;n hệ:<br />\r\nC&ocirc;ng Ty TNHH Kinh Doanh XNK Trung Th&agrave;nh<br />\r\n- Hotline: 0813 379 666<br />\r\n- Email: trungthanh07.666@gmail.com,<br />\r\n- Địa chỉ: Khu CN Bắc Duy&ecirc;n Hải, TP. L&agrave;o Cai, T. L&agrave;o Cai</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giơi thiệu', '', ''),
(60, 47, 'en', 'english version Giơi thiệu', 'english version ', 'english version <p><strong>VỀ C&Ocirc;NG TY TNHH C&Ocirc;NG NGHIỆP V&Agrave; DỊCH VỤ HTH</strong></p>\r\n\r\n<p>Ng&agrave;nh cơ kh&iacute; chế tạo l&agrave; ng&agrave;nh c&ocirc;ng nghiệp tạo ra c&aacute;c loại m&aacute;y m&oacute;c, thiết bị hoặc vật dụng hữu &iacute;ch phục vụ c&ocirc;ng t&aacute;c&nbsp;thiết kế trong c&aacute;c lĩnh vực sản xuất như: m&aacute;y m&oacute;c, thiết bị sản xuất, &ocirc; t&ocirc;, m&aacute;y bay, hệ thống gia nhiệt, l&agrave;m lạnh,&nbsp; đồ d&ugrave;ng gia đinh&hellip; Đ&acirc;y l&agrave; một trong những lĩnh vực c&oacute; vai tr&ograve; quan trọng trong hoạt động sản xuất thực tế, gi&uacute;p tối ưu h&oacute;a qu&aacute; tr&igrave;nh sản xuất đảm bảo t&iacute;nh hiệu quả, t&iacute;nh kinh tế nhất c&oacute; thể.&nbsp;</p>\r\n\r\n<p><strong>Giới thiệu chung</strong></p>\r\n\r\n<p>C&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH l&agrave; địa điểm cung cấp đa dạng c&aacute;c loại linh kiện cơ kh&iacute; chế tạo.&nbsp;B&ecirc;n cạnh đ&oacute;, ch&uacute;ng t&ocirc;i c&ograve;n c&oacute; bộ phận, kỹ thuật sẵn s&agrave;ng hỗ trợ giải ph&aacute;p chuy&ecirc;n s&acirc;u cho kh&aacute;ch h&agrave;ng về ng&agrave;nh cơ kh&iacute; chế tạo.&nbsp;Th&ocirc;ng qua qu&aacute; tr&igrave;nh kinh doanh thực chiến ch&uacute;ng t&ocirc;i c&oacute; được khối lượng kiến thức, kinh nghiệm dồi d&agrave;o sẵn s&agrave;ng s&aacute;ng tạo để đột ph&aacute; tạo ra những gi&aacute; trị mới. Tất cả c&aacute;c sản phẩm của ch&uacute;ng t&ocirc;i trước khi mang tới kh&aacute;ch h&agrave;ng phải qua những quy tr&igrave;nh kiểm tra&nbsp;nghi&ecirc;m ngặt từ kh&acirc;u đầu ti&ecirc;n - lựa chọn nh&agrave; cung cấp đến khi ho&agrave;n thiện - kiểm tra chất lượng c&ocirc;ng năng. C&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH - một doanh nghiệp linh hoạt v&agrave; bền bỉ với sự nỗ lực để ph&aacute;t triển kh&ocirc;ng ngừng&nbsp;với khẩu hiệu &ldquo;Trung thực - Kết nối - Giao tiếp - Tạo Gi&aacute; Trị&rdquo;. Ch&uacute;ng t&ocirc;i lu&ocirc;n trong trạng th&aacute;i li&ecirc;n tục học hỏi, trau dồi, kiến thức ngo&agrave;i đ&aacute;p ứng ch&iacute;nh x&aacute;c c&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng c&ograve;n tạo ra những mối quan hệ mang lại gi&aacute; trị bền vững cho c&aacute;c đối t&aacute;c kinh doanh.</p>\r\n\r\n<p><strong>Tầm nh&igrave;n v&agrave; sứ mệnh&nbsp;</strong><br />\r\nSứ mệnh của c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH l&agrave; &ldquo;mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm về cơ kh&iacute; chế tạo v&agrave;&nbsp; hỗ trợ kh&aacute;ch h&agrave;ng r&uacute;t ngắn thời gian sản xuất, n&acirc;ng cao gi&aacute; trị sản phẩm.&rdquo; Tuy&ecirc;n bố n&agrave;y của ch&uacute;ng t&ocirc;i n&ecirc;u r&otilde; những g&igrave; kh&aacute;ch h&agrave;ng n&ecirc;n mong đợi từ những sản phẩm/ dịch vụ m&agrave; ch&uacute;ng t&ocirc;i cung cấp. Điều n&agrave;y nhằm nhấn mạnh c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH chỉ cung cấp cho kh&aacute;ch h&agrave;ng những ưu đ&atilde;i tốt nhất dựa tr&ecirc;n ba yếu tố: Sự đa dạng của sản phẩm, sự h&agrave;i l&ograve;ng của kh&aacute;ch h&agrave;ng,&nbsp; gi&aacute; cả cạnh tranh m&agrave; kh&ocirc;ng ảnh hưởng đến chất lượng của c&aacute;c sản phẩm.<br />\r\n<br />\r\nTầm nh&igrave;n của c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH l&agrave; &ldquo;Trở th&agrave;nh nh&agrave; cung cấp h&agrave;ng đầu về linh kiện khu&ocirc;n mẫu,&nbsp; kh&iacute; n&eacute;n thủy lực v&agrave; sản xuất uy t&iacute;n chất lượng cho c&aacute;c doanh nghiệp sản xuất ng&agrave;nh cơ kh&iacute; chế tạo.&rdquo; Đối với c&ocirc;ng ty&nbsp;TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH, ch&uacute;ng t&ocirc;i đặt kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m. Ch&uacute;ng t&ocirc;i kh&aacute;t khao đạt được sự h&agrave;i l&ograve;ng của c&aacute;c đối t&aacute;c kh&aacute;ch h&agrave;ng ở khắp mọi nơi tại đất nước Việt Nam khi lựa chọn sản phẩm v&agrave; sử dụng dịch vụ tại c&ocirc;ng ty của ch&uacute;ng t&ocirc;i.&nbsp;<br />\r\n<br />\r\n<strong>Gi&aacute; trị cốt l&otilde;i&nbsp;</strong><br />\r\nGi&aacute; trị cốt l&otilde;i của c&ocirc;ng ty TNHH c&ocirc;ng nghiệp v&agrave; dịch vụ HTH bao gồm:<br />\r\n<em>Tận t&acirc;m</em>: &ldquo;Heart to Heart&rdquo; ch&uacute;ng t&ocirc;i lu&ocirc;n xem kh&aacute;ch h&agrave;ng l&agrave; anh em, gia đ&igrave;nh, v&agrave; lu&ocirc;n lấy tr&aacute;ch nhiệm ph&aacute;t triển gi&aacute; trị&nbsp; l&agrave;m tr&aacute;ch nhiệm của c&ocirc;ng ty m&igrave;nh. HTH lu&ocirc;n cố gắng l&agrave;m hết khả năng mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm tốt nhất,&nbsp; v&igrave; mục ti&ecirc;u ph&aacute;t triển chung của ng&agrave;nh sản xuất Việt Nam.&nbsp;<br />\r\n<em>S&aacute;ng tạo v&agrave; học tập:</em>&nbsp;Lu&ocirc;n nỗ lực v&agrave; học hỏi cập nhật những kiến thức mới để đưa ra c&aacute;c giải ph&aacute;p tối ưu cho kh&aacute;ch h&agrave;ng&nbsp;<br />\r\n<em>Tinh thần phục vụ:&nbsp;</em>Lu&ocirc;n trong trạng th&aacute;i sẵn s&agrave;ng hỗ trợ kh&aacute;ch h&agrave;ng, đem đến sự lựa chọn ph&ugrave; hợp với ti&ecirc;u ch&iacute; của doanh nghiệp.&nbsp;<br />\r\n<em>Đạo đức doanh nghiệp:&nbsp;</em>HTH t&ocirc;n trọng v&agrave; đề cao c&aacute;c gi&aacute; trị chuẩn mực x&atilde; hội, lu&ocirc;n c&oacute; tr&aacute;ch nhiệm với cộng đồng.&nbsp;<br />\r\n<em>Biết ơn</em>: Xem kh&aacute;ch h&agrave;ng l&agrave; trung t&acirc;m, lu&ocirc;n tr&acirc;n qu&yacute; v&agrave; biết ơn kh&aacute;ch h&agrave;ng. Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng l&agrave; ai trong thị trường kinh doanh&nbsp;&nbsp;đầy khốc liệt n&agrave;y nếu kh&ocirc;ng c&oacute; được sự ủng hộ của qu&yacute; kh&aacute;ch h&agrave;ng</p>\r\n', '', '', '', '', '', 0, 'en-gioi-thieu', 'Giơi thiệu', '', ''),
(61, 48, 'vn', 'Tải tài liệu', '', '<p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'tai-tai-lieu', 'Tải tài liệu', '', ''),
(62, 48, 'en', 'english version Tải tài liệu', 'english version ', 'english version <p>Nội dung đang cập nhật</p>\r\n', '', '', '', '', '', 0, 'en-tai-tai-lieu', 'Tải tài liệu', '', ''),
(63, 49, 'vn', 'KINH DOANH LÀM GIÀU<br> PHÁT TRIỂN BẢN THÂN', '250', '<ul>\r\n	<li>Nghe s&aacute;ch n&oacute;i trọn đời kh&ocirc;ng giới hạn chỉ với 1000đ/đầu s&aacute;ch</li>\r\n	<li>Kh&ocirc;ng c&oacute; quảng c&aacute;o</li>\r\n	<li>T&igrave;m s&aacute;ch theo chủ đề nhanh ch&oacute;ng, dễ d&agrave;ng</li>\r\n	<li>Update đầu s&aacute;ch mới theo y&ecirc;u cầu</li>\r\n	<li>Nghe tr&ecirc;n mọi thiết bị: Điện thoại, m&aacute;y t&iacute;nh, Ipad, m&aacute;y t&iacute;nh bảng ...</li>\r\n	<li>Nghe online hay tải về m&aacute;y đều được</li>\r\n	<li>Thời gian ưu đ&atilde;i: 16.01.2023 - 30.01.2023</li>\r\n</ul>\r\n', '', '', '', '', '', 0, 'kinh-doanh-lam-giaubr-phat-trien-ban-than', 'KINH DOANH LÀM GIÀU PHÁT TRIỂN BẢN THÂN', '', ''),
(64, 49, 'en', 'english version KINH DOANH LÀM GIÀU<br> PHÁT TRIỂN BẢN THÂN', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-kinh-doanh-lam-giaubr-phat-trien-ban-than', 'KINH DOANH LÀM GIÀU<br> PHÁT TRIỂN BẢN THÂN', '', ''),
(65, 50, 'vn', 'LỜI KHUYÊN CỦA NHÀ ĐẦU TƯ VĨ ĐẠI NHẤT THẾ GIỚI', 'WARREN BUFFETT', '', '<iframe width=\"100%\" height=\"700\" src=\"https://www.youtube.com/embed/fKGjd3pzQ6I\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', 0, 'loi-khuyen-cua-nha-dau-tu-vi-dai-nhat-the-gioi', 'LỜI KHUYÊN CỦA NHÀ ĐẦU TƯ VĨ ĐẠI NHẤT THẾ GIỚI', '', ''),
(66, 50, 'en', 'english version LỜI KHUYÊN CỦA NHÀ ĐẦU TƯ VĨ ĐẠI NHẤT THẾ GIỚI', 'english version WARREN BUFFETT', 'english version ', '<iframe width=\"100%\" height=\"700\" src=\"https://www.youtube.com/embed/fKGjd3pzQ6I\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', 0, 'en-loi-khuyen-cua-nha-dau-tu-vi-dai-nhat-the-gioi', 'LỜI KHUYÊN CỦA NHÀ ĐẦU TƯ VĨ ĐẠI NHẤT THẾ GIỚI', '', ''),
(67, 51, 'vn', 'NÂNG CAO KIẾN THỨC', 'Nghe sách nói bạn đều sẽ nhận được những trải nghiệm, tri thức để áp dụng vào công việc cuộc sống. Nghe sách hay cũng giống như trò truyện với các bộ óc tuyệt vời nhất của những thế kỷ đã trôi qua.', '', '', '', '', '', '', 0, 'nang-cao-kien-thuc', 'NÂNG CAO KIẾN THỨC', '', ''),
(68, 51, 'en', 'english version NÂNG CAO KIẾN THỨC', 'english version Nghe sách nói bạn đều sẽ nhận được những trải nghiệm, tri thức để áp dụng vào công việc cuộc sống. Nghe sách hay cũng giống như trò truyện với các bộ óc tuyệt vời nhất của những thế kỷ đã trôi qua.', 'english version ', '', '', '', '', '', 0, 'en-nang-cao-kien-thuc', 'NÂNG CAO KIẾN THỨC', '', ''),
(69, 52, 'vn', 'TIẾT KIỆM CHI PHÍ', 'Không còn cảnh phải tốn tiền mua một đống sách về vứt xó rồi cả năm không đọc nữa. Nghe sách nói trọn đời không giới hạn chỉ với 2000đ/đầu sách', '', '', '', '', '', '', 0, 'tiet-kiem-chi-phi', 'TIẾT KIỆM CHI PHÍ', '', ''),
(70, 52, 'en', 'english version TIẾT KIỆM CHI PHÍ', 'english version Không còn cảnh phải tốn tiền mua một đống sách về vứt xó rồi cả năm không đọc nữa. Nghe sách nói trọn đời không giới hạn chỉ với 2000đ/đầu sách', 'english version ', '', '', '', '', '', 0, 'en-tiet-kiem-chi-phi', 'TIẾT KIỆM CHI PHÍ', '', ''),
(71, 53, 'vn', 'KHÔNG GÂY BUỒN NGỦ', 'Thay vì việc ngồi đọc hàng trăm chữ li ti trên từng trang sách, bạn sẽ lĩnh hội chúng thông qua việc lắng nghe và cảm nhận.', '', '', '', '', '', '', 0, 'khong-gay-buon-ngu', 'KHÔNG GÂY BUỒN NGỦ', '', ''),
(72, 53, 'en', 'english version KHÔNG GÂY BUỒN NGỦ', 'english version Thay vì việc ngồi đọc hàng trăm chữ li ti trên từng trang sách, bạn sẽ lĩnh hội chúng thông qua việc lắng nghe và cảm nhận.', 'english version ', '', '', '', '', '', 0, 'en-khong-gay-buon-ngu', 'KHÔNG GÂY BUỒN NGỦ', '', ''),
(73, 54, 'vn', 'GIẢI TRÍ GIẢM CĂNG THẲNG', 'Nghe sách nói, bạn có thể nhắm mắt, thư giãn để những con chữ tự động chảy vào tâm trí. Bạn có thể đào sâu suy nghĩ về những ý tưởng, kiến thức sách nói đang đề cập từ đó hình dung ra việc sẽ áp dụng vào thực tế như nào một cách dễ dàng mà không cần gắng sức.', '', '', '', '', '', '', 0, 'giai-tri-giam-cang-thang', 'GIẢI TRÍ GIẢM CĂNG THẲNG', '', ''),
(74, 54, 'en', 'english version GIẢI TRÍ GIẢM CĂNG THẲNG', 'english version Nghe sách nói, bạn có thể nhắm mắt, thư giãn để những con chữ tự động chảy vào tâm trí. Bạn có thể đào sâu suy nghĩ về những ý tưởng, kiến thức sách nói đang đề cập từ đó hình dung ra việc sẽ áp dụng vào thực tế như nào một cách dễ dàng mà không cần gắng sức.', 'english version ', '', '', '', '', '', 0, 'en-giai-tri-giam-cang-thang', 'GIẢI TRÍ GIẢM CĂNG THẲNG', '', ''),
(75, 55, 'vn', 'TẬN DỤNG THỜI GIAN RẢNH RỖI', 'Linh hoạt nghe mọi lúc mọi nơi như khi đang nấu ăn, đang chông con, khi đi xe bus, khi tập thể dục... Nghe và lĩnh hội sáchlà bạn đã hơn hẳn ít nhất 90% số người xung quanh và có nhiều hơn 80% cơ hội thành đạt vượt xa họ.', '', '', '', '', '', '', 0, 'tan-dung-thoi-gian-ranh-roi', 'TẬN DỤNG THỜI GIAN RẢNH RỖI', '', ''),
(76, 55, 'en', 'english version TẬN DỤNG THỜI GIAN RẢNH RỖI', 'english version Linh hoạt nghe mọi lúc mọi nơi như khi đang nấu ăn, đang chông con, khi đi xe bus, khi tập thể dục... Nghe và lĩnh hội sáchlà bạn đã hơn hẳn ít nhất 90% số người xung quanh và có nhiều hơn 80% cơ hội thành đạt vượt xa họ.', 'english version ', '', '', '', '', '', 0, 'en-tan-dung-thoi-gian-ranh-roi', 'TẬN DỤNG THỜI GIAN RẢNH RỖI', '', ''),
(77, 56, 'vn', 'NGƯỜI THÀNH ĐẠT KHUYÊN ĐỌC', 'Sách được viết bởi những người thành công nhất thế giới như Dale Carnegie.... được giới siêu giàu thế giới như Bill Gates, JackMa… khuyên phải đọc. Lắng nghe những người tài giỏi hàng ngày sẽ giúp mở mang tri thức của bạn...', '', '', '', '', '', '', 0, 'nguoi-thanh-dat-khuyen-doc', 'NGƯỜI THÀNH ĐẠT KHUYÊN ĐỌC', '', ''),
(78, 56, 'en', 'english version NGƯỜI THÀNH ĐẠT KHUYÊN ĐỌC', 'english version Sách được viết bởi những người thành công nhất thế giới như Dale Carnegie.... được giới siêu giàu thế giới như Bill Gates, JackMa… khuyên phải đọc. Lắng nghe những người tài giỏi hàng ngày sẽ giúp mở mang tri thức của bạn...', 'english version ', '', '', '', '', '', 0, 'en-nguoi-thanh-dat-khuyen-doc', 'NGƯỜI THÀNH ĐẠT KHUYÊN ĐỌC', '', ''),
(79, 57, 'vn', 'ƯU ĐIỂM', 'Sử dụng được trên nhiều thiết bị: Điện thoại, máy tính, Ipad, máy tính bảng\r\nTự động ghi nhớ thời gian và vị trí chapter đang nghe dở trên mọi thiết bị.\r\nTốc độ tải sách cực nhanh, trình phát vẫn chạy ngay cả khi tắt màn hình\r\nChỉ cần mua 1 lần, bạn có thể nghe sách mãi mãi, không cần phải gia hạn hay đóng thêm chi phí.\r\nChỉ cần có wifi, 3g hoặc 4g bạn có thể học mọi lúc mọi nơi. Có thể download về máy.\r\nKhông còn cảnh phải tốn tiền mua một đống sách về vứt xó rồi cả năm không đọc nữa.', '', '', '', '', '', '', 0, 'uu-diem', 'ƯU ĐIỂM', '', ''),
(80, 57, 'en', 'english version ƯU ĐIỂM', 'english version Sử dụng được trên nhiều thiết bị: Điện thoại, máy tính, Ipad, máy tính bảng\r\nTự động ghi nhớ thời gian và vị trí chapter đang nghe dở trên mọi thiết bị.\r\nTốc độ tải sách cực nhanh, trình phát vẫn chạy ngay cả khi tắt màn hình\r\nChỉ cần mua 1 lần, bạn có thể nghe sách mãi mãi, không cần phải gia hạn hay đóng thêm chi phí.\r\nChỉ cần có wifi, 3g hoặc 4g bạn có thể học mọi lúc mọi nơi. Có thể download về máy.\r\nKhông còn cảnh phải tốn tiền mua một đống sách về vứt xó rồi cả năm không đọc nữa.', 'english version ', '', '', '', '', '', 0, 'en-uu-diem', 'ƯU ĐIỂM', '', ''),
(81, 58, 'vn', 'HẢI YẾN - 24 TUỔI', 'Sau một ngày làm việc căng thẳng mình thích được đắm chìm trong thế giới của sách nói. Lúc nấu ăn, lúc đi xe về nhà, lúc nằm nghỉ ngơi mình đều nghe sách nói, thật sự giảm rất nhiều stress và có thêm độc lực phấn đấu. Cám ơn Audio Books.', '', '', '', '', '', '', 0, 'hai-yen-24-tuoi', 'HẢI YẾN - 24 TUỔI', '', ''),
(82, 58, 'en', 'english version HẢI YẾN - 24 TUỔI', 'english version Sau một ngày làm việc căng thẳng mình thích được đắm chìm trong thế giới của sách nói. Lúc nấu ăn, lúc đi xe về nhà, lúc nằm nghỉ ngơi mình đều nghe sách nói, thật sự giảm rất nhiều stress và có thêm độc lực phấn đấu. Cám ơn Audio Books.', 'english version ', '', '', '', '', '', 0, 'en-hai-yen-24-tuoi', 'HẢI YẾN - 24 TUỔI', '', ''),
(83, 59, 'vn', 'TRẦN HỮU ĐỨC - 33 TUỔI', 'Tôi rất lười đọc sách, vì không thể dõi theo những dòng chữ li ti trên mỗi trang sách quá 5 phút. Tôi thấy đọc sách không hợp với mình. Giờ đây nhờ Audio Books tôi có thể tiếp thu được các kiến thức từ sách mà không cần phải gắng sức. Thật tuyệt vời.', '', '', '', '', '', '', 0, 'tran-huu-duc-33-tuoi', 'TRẦN HỮU ĐỨC - 33 TUỔI', '', ''),
(84, 59, 'en', 'english version TRẦN HỮU ĐỨC - 33 TUỔI', 'english version Tôi rất lười đọc sách, vì không thể dõi theo những dòng chữ li ti trên mỗi trang sách quá 5 phút. Tôi thấy đọc sách không hợp với mình. Giờ đây nhờ Audio Books tôi có thể tiếp thu được các kiến thức từ sách mà không cần phải gắng sức. Thật tuyệt vời.', 'english version ', '', '', '', '', '', 0, 'en-tran-huu-duc-33-tuoi', 'TRẦN HỮU ĐỨC - 33 TUỔI', '', ''),
(85, 60, 'vn', 'VŨ TIẾN VIỆT - 30 TUỔI', 'Audio Books là website nghe sách rất chất lượng, giọng đọc truyền cảm, không sót một chữ nào trong sách. Mà chi phí lại rất tiết kiệm.', '', '', '', '', '', '', 0, 'vu-tien-viet-30-tuoi', 'VŨ TIẾN VIỆT - 30 TUỔI', '', ''),
(86, 60, 'en', 'english version VŨ TIẾN VIỆT - 30 TUỔI', 'english version Audio Books là website nghe sách rất chất lượng, giọng đọc truyền cảm, không sót một chữ nào trong sách. Mà chi phí lại rất tiết kiệm.', 'english version ', '', '', '', '', '', 0, 'en-vu-tien-viet-30-tuoi', 'VŨ TIẾN VIỆT - 30 TUỔI', '', ''),
(87, 61, 'vn', 'HƯỚNG DẪN ĐĂNG NHẬP', 'SÁCH NÓI ONLINE', '', '<iframe width=\"100%\" height=\"700\" src=\"https://www.youtube.com/embed/X-3ukDP0qoI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', 0, 'huong-dan-dang-nhap', 'HƯỚNG DẪN ĐĂNG NHẬP', '', ''),
(88, 61, 'en', 'english version HƯỚNG DẪN ĐĂNG NHẬP', 'english version SÁCH NÓI ONLINE', 'english version ', '<iframe width=\"100%\" height=\"700\" src=\"https://www.youtube.com/embed/X-3ukDP0qoI\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', '', '', 0, 'en-huong-dan-dang-nhap', 'HƯỚNG DẪN ĐĂNG NHẬP', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_favorite` int(11) NOT NULL DEFAULT 0,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` int(11) DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dang_nghe` int(11) NOT NULL DEFAULT 0,
  `mp3` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_des`, `product_des2`, `product_des3`, `product_content`, `product_content2`, `product_content3`, `product_price`, `product_price_sale`, `product_discount`, `product_img`, `product_sub_img`, `product_created_date`, `product_update_date`, `productcat_id`, `product_hot`, `product_favorite`, `product_new`, `product_sale`, `product_code`, `product_original`, `product_size`, `product_package`, `product_delivery`, `product_delivery_time`, `product_payment`, `product_payment_type`, `product_sub_info1`, `product_sub_info2`, `product_sub_info3`, `product_sub_info4`, `product_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `product_material`, `product_shape`, `product_expiration`, `product_producer`, `product_review`, `productcat_ar`, `dang_nghe`, `mp3`) VALUES
(81, 'Nghi giàu và làm giàu', '<p>https://docs.google.com/uc?id=1EzZCkTXEjjxoxw7VVIfPPtXp_maE4zrf</p>\r\n\r\n<p>https://ia802306.us.archive.org/30/items/22-quy-luat-bat-bien-trong-marketing/22_quy_luat_bat_bien_trong_marketing.mp3</p>\r\n', '', '', '<p>Đắc nh&acirc;n t&acirc;m của Dale Carnegie l&agrave; quyển s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất &nbsp;v&agrave; c&oacute; tầm ảnh hưởng nhất của mọi thời đại&hellip;Dale Breckenridge Carnegie (24/11/1888 - 1/11/1955) l&agrave; một nh&agrave; văn v&agrave; nh&agrave; thuyết tr&igrave;nh Mỹ v&agrave; l&agrave; người chịu tr&aacute;ch nhiệm c&aacute;c lớp ph&aacute;t triển con người, kỹ năng, nghệ thuật b&aacute;n h&agrave;ng, huấn luyện đo&agrave;n thể, n&oacute;i trước c&ocirc;ng ch&uacute;ng v&agrave; c&aacute;c kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh ngh&egrave;o đ&oacute;i tại một trang trại ở Missouri, Dale Carnegie l&agrave; t&aacute;c giả cuốn s&aacute;ch Đắc nh&acirc;n t&acirc;m- được xuất bản lần đầu năm 1936 v&agrave; l&agrave; một trong những quyển s&aacute;ch nổi tiếng nhất thế giới thuộc thể loại self-help, li&ecirc;n tục đứng đầu danh mục b&aacute;n chạy nhất của mọi thời đại do b&aacute;o The New York Times b&igrave;nh chọn suốt 10 năm liền. T&aacute;c phẩm đ&atilde; được chuyển ngữ sang hầu hết c&aacute;c thứ tiếng tr&ecirc;n thế giới v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia, đặc biệt bản tiếng Anh đ&atilde; b&aacute;n được hơn 15 triệu bản tr&ecirc;n thế giới.</p>\r\n', '', '', 0, 0, 0, 'sach-1.jpg', '[]', '2022-07-27 15:07:47', '2023-02-07 10:02:55', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'Nghi giàu và làm giàu', '', 'nghi-giau-va-lam-giau', '', 1, 'Trung Quốc', '', 'Trung Quốc', NULL, 78, '153,153', 2, 'https://ia802306.us.archive.org/30/items/22-quy-luat-bat-bien-trong-marketing/22_quy_luat_bat_bien_trong_marketing.mp3'),
(82, 'Nhà giả kim', '', '', '', '', '', '', 0, 0, 0, 'nhà giả kim.jpg', '[]', '2023-01-30 10:01:50', '2023-02-07 09:02:48', 0, 0, 0, 0, 0, 'Paulo Coelho', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Nhà giả kim', '', 'nha-gia-kim', '', 1, '', 'Khoảng 3 tiếng', '', NULL, 12, '152,152', 2, 'https://docs.google.com/uc?id=1T3kcSFzD9ZFW_1ljkTjQaCWraPIwtjjy'),
(83, '7 thói quen để thành đạt', '', '', '', '', '', '', 0, 0, 0, '7 thói quen để thành đạt.jpg', '[]', '2023-01-30 10:01:05', '2023-01-30 10:01:43', 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '7 thói quen để thành đạt', '', '7-thoi-quen-de-thanh-dat', '', 1, '', 'Khoảng 12 tiếng', '', NULL, 1, '152,152', 1, '02. 7 Thói Quen Để Thành Đạt.mp3'),
(84, 'Mặt dày tâm đen', '', '', '', '', '', '', 0, 0, 0, 'mặt dày tâm đen.jpg', '[]', '2023-01-30 10:01:09', '2023-01-30 10:01:12', 0, 0, 0, 0, 0, 'Chin-Ning Chu', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Mặt dày tâm đen', '', 'mat-day-tam-den', '', 1, '', 'Khoản 11 tiếng', '', NULL, NULL, '152,152', 1, '03. Mặt Dày Tâm Đen - Chin-Ning Chu.mp3'),
(85, 'Điều kỳ diệu của thái độ sống', '', '', '', '', '', '', 0, 0, 0, 'điều kỳ diệu của thái độ sống.jpg', '[]', '2023-01-30 10:01:23', '2023-02-07 09:02:45', 0, 0, 0, 0, 0, 'Mac Anderson', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Điều kỳ diệu của thái độ sống', '', 'dieu-ky-dieu-cua-thai-do-song', '', 1, '', 'Khoảng 1 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=11jnEh6uLe8bpv9xnVXo6wIbrR9bKj-qd'),
(86, 'Phút nhìn lại mình', '', '', '', '', '', '', 0, 0, 0, 'phút nhìn lại mình.jpg', '[]', '2023-01-30 11:01:56', '2023-02-07 09:02:11', 0, 0, 0, 0, 0, 'Spencer Johnson', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Phút nhìn lại mình', '', 'phut-nhin-lai-minh', '', 1, '', 'Khoảng 2 tiếng', '', NULL, NULL, '152,152', 1, 'https://docs.google.com/uc?id=1zt-Zrn-SRO8kL4DUhHhZAVIIKGN4EJRY'),
(87, 'Quên hôm qua sống cho ngày mai', '', '', '', '', '', '', 0, 0, 0, 'quên hôm qua sống cho ngày mai.jpg', '[]', '2023-01-30 11:01:21', '2023-02-07 09:02:30', 0, 0, 0, 0, 0, 'Spencer Johnson', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Quên hôm qua sống cho ngày mai', '', 'quen-hom-qua-song-cho-ngay-mai', '', 1, '', 'Khoảng 2 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1q27Q7MfKBokJDIJmRtXTlxiNvTltLwZp'),
(88, 'Rèn nghị lực để lập thân', '', '', '', '', '', '', 0, 0, 0, 'rèn nghị lực để lập thân.jpg', '[]', '2023-01-30 11:01:36', '2023-02-07 09:02:09', 0, 0, 0, 0, 0, 'Nguyễn Hiến Lê', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Rèn nghị lực để lập thân', '', 'ren-nghi-luc-de-lap-than', '', 1, '', 'Khoảng 2 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1ou0YcbTRij_f62OFIDOHcgf0c8-dj9ME'),
(89, 'Đắc nhân tâm', '', '', '', '', '', '', 0, 0, 0, 'đắc nhân tâm.jpg', '[]', '2023-01-30 11:01:31', '2023-01-30 11:01:48', 0, 0, 0, 0, 0, 'Dale Carnegie', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đắc nhân tâm', '', 'dac-nhan-tam', '', 1, '', 'Khoảng 7 tiếng', '', NULL, 1, '152,152', 1, '08. Đắc nhân tâm - Dale Carnegie.mp3'),
(90, 'Những bí quyết giao tiếp tốt', '', '', '', '', '', '', 0, 0, 0, 'những bí quyết giao tiếp tốt.jpg', '[]', '2023-01-30 11:01:36', '2023-02-07 09:02:23', 0, 0, 0, 0, 0, 'Larry King', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Những bí quyết giao tiếp tốt', '', 'nhung-bi-quyet-giao-tiep-tot', '', 1, '', 'Khoảng 1 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1u2sZf_4FXLerCqxgsmXlCxvC4PabwDPc'),
(91, '100 lời khuyên quý báu để giữ gìn sức khỏe', '', '', '', '', '', '', 0, 0, 0, '100 lời khuyên quý báu để giữ gìn sức khỏe.jpg', '[]', '2023-01-30 11:01:07', '2023-02-07 09:02:58', 0, 0, 0, 0, 0, 'Lời Phật dạy', '', '', '', '', '', '', '', '', '', '', '', '', 1, '100 lời khuyên quý báu để giữ gìn sức khỏe', '', '100-loi-khuyen-quy-bau-de-giu-gin-suc-khoe', '', 1, '', 'Khoảng 1 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1jbuqSYRAACn4hFxM795LqEOG4Ecs42yU'),
(92, 'Đi tìm hạnh phúc cuộc sống', '', '', '', '', '', '', 0, 0, 0, 'đi tìm hạnh phúc cuộc sống.jpg', '[]', '2023-01-30 14:01:30', '2023-02-07 09:02:23', 0, 0, 0, 0, 0, 'Rick Foster & Grey Hicks', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đi tìm hạnh phúc cuộc sống', '', 'di-tim-hanh-phuc-cuoc-song', '', 1, '', 'Khoảng 3 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1Nq81e7v8XOOt4AZ-2LEH_HHjJ9F1-Q_z'),
(93, 'Đi tìm lẽ sống', '', '', '', '', '', '', 0, 0, 0, 'đi tìm lẽ sống.jpg', '[]', '2023-01-30 14:01:52', '2023-02-07 09:02:27', 0, 0, 0, 0, 0, 'Viktor Emil Frankl', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đi tìm lẽ sống', '', 'di-tim-le-song', '', 1, '', 'Khoảng 5 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=18lqOkKcDV3FQsHZ3dgdXzVBdQEK2OtRV'),
(94, 'Quẳng gánh lo đi & Vui sống', '', '', '', '', '', '', 0, 0, 0, 'quảng gánh lo đi mà vui sống.jpg', '[]', '2023-01-30 14:01:06', '2023-01-30 14:01:30', 0, 0, 0, 0, 0, 'Dale Carnegie', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Quẳng gánh lo đi & Vui sống', '', 'quang-ganh-lo-di-vui-song', '', 1, '', 'Khoảng 7 tiếng', '', NULL, 1, '152,152', 1, '13. Quẳng Gánh Lo Đi và Vui Sống - Dale Carnegie.mp3'),
(95, 'Sống sáng suốt', '', '', '', '', '', '', 0, 0, 0, 'sống sáng suốt( những điều đơn giản làm biến đổi cuộc sống của bạn).jpg', '[]', '2023-01-30 14:01:20', '2023-02-07 09:02:28', 0, 0, 0, 0, 0, 'Dean Cunningham', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sống sáng suốt', '', 'song-sang-suot', '', 1, '', 'Khoảng 3 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1E7FUZEgWUSDKiL94oTdZCpiP5EO6u4ek'),
(96, 'Sức mạnh tiềm thức', '', '', '', '', '', '', 0, 0, 0, 'sức mạnh tiềm thức.jpg', '[]', '2023-01-30 14:01:48', '2023-01-30 14:01:15', 0, 0, 0, 0, 0, 'Joseph Murphy', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sức mạnh tiềm thức', '', 'suc-manh-tiem-thuc', '', 1, '', 'Khoảng 8 tiếng', '', NULL, NULL, '152,152', 0, '15. Sức Mạnh Tiềm Thức - Joseph Murphy.mp3'),
(97, 'Thói quen thứ 8', '', '', '', '', '', '', 0, 0, 0, 'thói quen thứ 8.jpg', '[]', '2023-01-30 14:01:02', '2023-01-30 14:01:26', 0, 0, 0, 0, 0, 'Stephen R. Covey', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thói quen thứ 8', '', 'thoi-quen-thu-8', '', 1, '', 'Khoảng 5 tiếng', '', NULL, NULL, '152,152', 0, '16. Thói Quen Thứ 8 - Stephen R. Covey.mp3'),
(98, 'Sức mạnh của lòng kiên nhẫn', '', '', '', '', '', '', 0, 0, 0, 'sức mạnh lòng kiên nhẫn.jpg', '[]', '2023-01-30 14:01:34', '2023-01-30 14:01:02', 0, 0, 0, 0, 0, 'M. J. Ryan', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sức mạnh của lòng kiên nhẫn', '', 'suc-manh-cua-long-kien-nhan', '', 1, '', 'Khoảng 5 tiếng', '', NULL, NULL, '152,152', 0, '17. Sức Mạnh Của Lòng Kiên Nhẫn - M. J. Ryan.mp3'),
(99, 'Cho đi là còn mãi', '', '', '', '', '', '', 0, 0, 0, 'cho đi là còn mãi.jpg', '[]', '2023-01-30 14:01:59', '2023-02-07 10:02:35', 0, 0, 0, 0, 0, 'Azim Jamal, Harvey McKinnon', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cho đi là còn mãi', '', 'cho-di-la-con-mai', '', 1, '', 'Khoảng 4 tiếng', '', NULL, NULL, '152,152', 0, 'https://docs.google.com/uc?id=1ONdav7nqluhhM-6yxCGKegxfLZ8CRCCU'),
(100, 'Khám phá sức mạnh bản thân', '', '', '', '', '', '', 0, 0, 0, 'khám phá sức mạnh bản thân.jpg', '[]', '2023-01-30 14:01:03', '2023-02-07 10:02:56', 0, 0, 0, 0, 0, 'Gillian Stokes', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Khám phá sức mạnh bản thân', '', 'kham-pha-suc-manh-ban-than', '', 1, '', 'Khoảng 2 tiếng', '', NULL, 3, '152,152', 1, 'https://docs.google.com/uc?id=1i0XL1h99Qsma-NcZ61Sbt7STAx82uqa8 '),
(101, 'Khổng tử tinh hoa', '', '', '', '', '', '', 0, 0, 0, 'khổng tử tinh hoa.jpg', '[]', '2023-01-30 14:01:53', '2023-02-07 10:02:59', 0, 0, 0, 0, 0, 'Yu Đan', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Khổng tử tinh hoa', '', 'khong-tu-tinh-hoa', '', 1, '', 'Khoảng 3 tiếng', '', NULL, 19, '152,152', 1, 'https://docs.google.com/uc?id=11a0AkDPZQv3Y8weC5_zHX1yR4xsfAcG0'),
(102, 'Tiểu thuyết Bố Già', '', '', '', '', '', '', 0, 0, 0, 'Bố già.jpg', '[]', '2023-01-30 14:01:20', '2023-01-30 14:01:53', 0, 0, 0, 0, 0, 'Mario Puzo', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Bố Già', '', 'tieu-thuyet-bo-gia', '', 1, '', 'Khoảng 2 tiếng', '', NULL, 4, '154,154', 0, 'Bố Già - Audio 1.mp3'),
(103, 'Bá tước Monte Cristo', '', '', '', '', '', '', 0, 0, 0, 'Bá tước Monte Crixto.jpg', '[]', '2023-01-30 14:01:45', '2023-01-30 14:01:26', 0, 0, 0, 0, 0, 'Alexandre Dumas', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Bá tước Monte Cristo', '', 'ba-tuoc-monte-cristo', '', 1, '', 'khoảng 17 tiếng', '', NULL, 1, '154,154', 1, '2. Bá Tước Monte Crixto- Alexandre Dumas.mp3'),
(104, 'Ông già và biển cả', '', '', '', '', '', '', 0, 0, 0, 'Ông già và biển cả.jpg', '[]', '2023-01-30 14:01:39', '2023-02-07 10:02:28', 0, 0, 0, 0, 0, 'Ernest Hemingway', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Ông già và biển cả', '', 'ong-gia-va-bien-ca', '', 1, '', 'Khoảng 3 tiếng', '', NULL, NULL, '154,154', 1, 'https://docs.google.com/uc?id=1aZqnkZZ7UZFWfmc2Ve9ofetTpOFavnu7'),
(105, 'Tiếng gọi nơi hoang dã', '', '', '', '', '', '', 0, 0, 0, 'Tiếng gọi nơi hoang dã.jpg', '[]', '2023-01-30 14:01:47', '2023-02-07 10:02:28', 0, 0, 0, 0, 0, 'Jack London', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiếng gọi nơi hoang dã', '', 'tieng-goi-noi-hoang-da', '', 1, '', 'Khoảng 3 tiếng', '', NULL, NULL, '154,154', 0, 'https://docs.google.com/uc?id=1gfU6ibxh-RdjUYCLuAwstxcruKgdv8nn'),
(106, 'Tiểu thuyết Nanh Trắng', '', '', '', '', '', '', 0, 0, 0, 'Nanh trắng.jpg', '[]', '2023-01-30 15:01:35', '2023-02-07 10:02:49', 0, 0, 0, 0, 0, 'Jack London', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Nanh Trắng', '', 'tieu-thuyet-nanh-trang', '', 1, '', 'Khoảng 8 tiếng', '', NULL, NULL, '154,154', 0, '5. Tiểu Thuyết NANH TRẮNG - Jack London.mp3'),
(107, 'Tiểu thuyết sống mòn', '', '', '', '', '', '', 0, 0, 0, 'Sống mòn.jpg', '[]', '2023-01-30 15:01:07', '2023-01-30 15:01:48', 0, 0, 0, 0, 0, 'Nam Cao', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết sống mòn', '', 'tieu-thuyet-song-mon', '', 1, '', 'Khoảng 7 tiếng', '', NULL, NULL, '154,154', 0, '6. Tiểu Thuyết Sống Mòn - Nam Cao.mp3'),
(108, 'Những người khốn khổ', '', '', '', '', '', '', 0, 0, 0, 'Những người khốn khổ.jpg', '[]', '2023-01-30 15:01:22', '2023-01-30 15:01:54', 0, 0, 0, 0, 0, 'Victor Hugo', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Những người khốn khổ', '', 'nhung-nguoi-khon-kho', '', 1, '', 'Khoảng 5 tiếng', '', NULL, NULL, '154,154', 1, '7. Những Người Khốn Khổ - Victor Hugo.mp3'),
(109, 'Tôn tử binh pháp & 36 kế', '', '', '', '', '', '', 0, 0, 0, 'Tôn từ binh pháp và 36 kế.jpg', '[]', '2023-01-30 15:01:43', '2023-02-07 10:02:16', 0, 0, 0, 0, 0, 'Trịnh Ngọc Hoa', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tôn tử binh pháp & 36 kế', '', 'ton-tu-binh-phap-36-ke', '', 1, '', 'Khoảng 2 tiếng', '', NULL, NULL, '154,154', 0, 'https://docs.google.com/uc?id=1snSY0I4WEJgvUFpHF8pgNa2QpBcRqsD6'),
(110, 'Thời khắc định mệnh', '', '', '', '', '', '', 0, 0, 0, 'Thời khắc định mệnh.jpg', '[]', '2023-01-30 15:01:00', '2023-01-30 15:01:28', 0, 0, 0, 0, 0, 'Agatha Christie', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thời khắc định mệnh', '', 'thoi-khac-dinh-menh', '', 1, '', 'Khoảng 6 tiếng', '', NULL, NULL, '154,154', 0, '9. Thời Khắc Định Mệnh - Agatha Christie.mp3'),
(111, 'Tiểu thuyết Chết Đi Cho Rồi', '', '', '', '', '', '', 0, 0, 0, 'Chết đi cho rồi.jpg', '[]', '2023-01-30 15:01:26', '2023-01-30 15:01:57', 0, 0, 0, 0, 0, 'Matthew Quick', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Chết Đi Cho Rồi', '', 'tieu-thuyet-chet-di-cho-roi', '', 1, '', 'Khoảng 7 tiếng', '', NULL, NULL, '154,154', 0, '10. Tiểu thuyết Chết Đi Cho Rồi - Matthew Quick.mp3'),
(112, 'Tiểu thuyết Mười Năm', '', '', '', '', '', '', 0, 0, 0, 'Mười năm.jpg', '[]', '2023-01-30 15:01:29', '2023-01-30 15:01:10', 0, 0, 0, 0, 0, 'Tô Hoài', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Mười Năm', '', 'tieu-thuyet-muoi-nam', '', 1, '', '', '', NULL, NULL, '154,154', 0, '11. Tiểu thuyết Mười Năm - Tô Hoài.mp3'),
(113, 'Tiểu thuyết Giông Tố', '', '', '', '', '', '', 0, 0, 0, 'Giông tố.jpg', '[]', '2023-01-30 15:01:09', NULL, 0, 0, 0, 0, 0, 'Vũ Trọng Phụng', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Giông Tố', '', 'tieu-thuyet-giong-to', '', 1, '', '', '', NULL, NULL, '154,154', 0, '12. Tiểu thuyết Giông Tố - Vũ Trọng Phụng.mp3'),
(114, 'Tiểu thuyết Triệu Phú Khu Ổ Chuột', '', '', '', '', '', '', 0, 0, 0, 'Triệu phú khu ổ chuột.jpg', '[]', '2023-01-30 15:01:35', NULL, 0, 0, 0, 0, 0, 'Vikas Swarup', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Triệu Phú Khu Ổ Chuột', '', 'tieu-thuyet-trieu-phu-khu-o-chuot', '', 1, '', '', '', NULL, NULL, '154,154', 0, '13. Tiểu thuyết Triệu Phú Khu Ổ Chuột - Vikas Swarup.mp3'),
(115, 'Ngày cuối cùng của một tử tù', '', '', '', '', '', '', 0, 0, 0, 'Ngày cuối cùng của một tử tù.jpg', '[]', '2023-01-30 15:01:42', '2023-02-07 10:02:07', 0, 0, 0, 0, 0, 'Victor Hugo', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Ngày cuối cùng của một tử tù', '', 'ngay-cuoi-cung-cua-mot-tu-tu', '', 1, '', '', '', NULL, NULL, '154,154', 0, 'https://docs.google.com/uc?id=1efnSosKdgaJ19NLFpdZR5OjAwgsNsdRP'),
(116, 'Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham LinColn', '', '', '', '', '', '', 0, 0, 0, 'Cuộc đời và sự nghiệp tổng thống Mỹ Lincoln.jpg', '[]', '2023-01-30 15:01:05', NULL, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham LinColn', '', 'cuoc-doi-va-su-nghiep-tong-thong-my-abraham-lincoln', '', 1, '', '', '', NULL, NULL, '154,154', 0, '15. Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham Lincoln.mp3'),
(117, 'Đảo châu báu', '', '', '', '', '', '', 0, 0, 0, 'Đảo châu báu ( đảo giấu vàng).jpg', '[]', '2023-01-30 15:01:59', NULL, 0, 0, 0, 0, 0, 'Robert Louis Stevenson', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đảo châu báu', '', 'dao-chau-bau', '', 1, '', '', '', NULL, NULL, '154,154', 0, '16. Đảo châu báu - Robert Louis Stevenson.mp3'),
(118, 'Hai vạn dặm dưới biển', '', '', '', '', '', '', 0, 0, 0, 'Hai vạn dặm dưới biển.jpg', '[]', '2023-01-30 15:01:07', NULL, 0, 0, 0, 0, 0, 'Jules Verne', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Hai vạn dặm dưới biển', '', 'hai-van-dam-duoi-bien', '', 1, '', '', '', NULL, NULL, '154,154', 0, '17. Tiểu thuyết Hai Vạn Dặm Dưới Biển - Jules Verne.mp3'),
(119, 'Sự im lặng của bầy cừu', '', '', '', '', '', '', 0, 0, 0, 'Sự im lặng của bầy cừu.jpg', '[]', '2023-01-30 15:01:05', NULL, 0, 0, 0, 0, 0, 'Thomas Harris', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sự im lặng của bầy cừu', '', 'su-im-lang-cua-bay-cuu', '', 1, '', '', '', NULL, NULL, '154,154', 0, '19. Sự Im Lặng Của Bầy Cừu - Thomas Harris.mp3'),
(120, 'Tiểu thuyết Số Đỏ', '', '', '', '', '', '', 0, 0, 0, 'Số đỏ.jpg', '[]', '2023-01-30 15:01:49', NULL, 0, 0, 0, 0, 0, 'Vũ Trọng Phụng', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tiểu thuyết Số Đỏ', '', 'tieu-thuyet-so-do', '', 1, '', '', '', NULL, NULL, '154,154', 0, '20. Tiểu thuyết Số Đỏ - Vũ Trọng Phụng.mp3'),
(121, 'Sách lược đầu tư của Warren Buffett', '', '', '', '', '', '', 0, 0, 0, 'Sách lược đầu tư của Warren.jpg', '[]', '2023-01-30 15:01:57', NULL, 0, 0, 0, 0, 0, 'Lí Thành Tư', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sách lược đầu tư của Warren Buffett', '', 'sach-luoc-dau-tu-cua-warren-buffett', '', 1, '', '', '', NULL, NULL, '153,153', 0, '1. Sách lược Đầu Tư Của Warren Buffett - Lí Thành Tư.mp3'),
(122, '80 chiêu thức kinh doanh thành công', '', '', '', '', '', '', 0, 0, 0, '80 chiêu thức KD thành công.jpg', '[]', '2023-01-30 15:01:10', '2023-02-07 11:02:42', 0, 0, 0, 0, 0, 'Vương Chí Cương', '', '', '', '', '', '', '', '', '', '', '', '', 1, '80 chiêu thức kinh doanh thành công', '', '80-chieu-thuc-kinh-doanh-thanh-cong', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1TTGp2486RTpv-EPKWodZxgvR2oLaIgWb'),
(123, 'Bí mật tư duy triệu phú', '', '', '', '', '', '', 0, 0, 0, 'Bí mật tư duy triệu phú.jpg', '[]', '2023-01-30 15:01:06', '2023-02-07 11:02:07', 0, 0, 0, 0, 0, 'T. Harv Eker', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Bí mật tư duy triệu phú', '', 'bi-mat-tu-duy-trieu-phu', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1t__yABmyKH9e4bezYf-CHoig-KHDmK7I'),
(124, 'Cổ phiếu thường lợi nhuận phi thường', '', '', '', '', '', '', 0, 0, 0, 'Cố phiếu thường-lợi nhuận phi thường.jpg', '[]', '2023-01-30 15:01:27', NULL, 0, 0, 0, 0, 0, 'Philip A. Fisher', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cổ phiếu thường lợi nhuận phi thường', '', 'co-phieu-thuong-loi-nhuan-phi-thuong', '', 1, '', '', '', NULL, NULL, '153,153', 0, '4. Cổ Phiếu Thường Lợi Nhuận Phi Thường - Philip A. Fisher.mp3'),
(125, 'Bí quyêt gây dựng cơ nghiệp bạc tỷ', '', '', '', '', '', '', 0, 0, 0, 'Bí quyết gây dựng cơ nghiệp bạc tỷ.jpg', '[]', '2023-01-30 15:01:24', NULL, 0, 0, 0, 0, 0, 'Adam Khoo', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Bí quyêt gây dựng cơ nghiệp bạc tỷ', '', 'bi-quyet-gay-dung-co-nghiep-bac-ty', '', 1, '', '', '', NULL, NULL, '153,153', 0, '5. Bí Quyết Gây Dựng Cơ Nghiệp Bạc Tỷ - Adam Khoo.mp3'),
(126, '100 quy luật bất biến để thành công trong kinh doanh', '', '', '', '', '', '', 0, 0, 0, '100 Quy Luật Bất Biến Để Thành Công Trong Kinh Doanh.jpg', '[]', '2023-01-30 15:01:35', NULL, 0, 0, 0, 0, 0, 'Brian Tracy', '', '', '', '', '', '', '', '', '', '', '', '', 1, '100 quy luật bất biến để thành công trong kinh doanh', '', '100-quy-luat-bat-bien-de-thanh-cong-trong-kinh-doanh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '6. 100 Quy Luật Bất Biến Để Thành Công Trong Kinh Doanh - Brian Tracy.mp3'),
(127, 'Làm giàu một cách khoa học', '', '', '', '', '', '', 0, 0, 0, 'Làm giàu một cách khoa học.jpg', '[]', '2023-01-30 15:01:43', '2023-02-07 11:02:37', 0, 0, 0, 0, 0, 'Wallace D. Wattles', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Làm giàu một cách khoa học', '', 'lam-giau-mot-cach-khoa-hoc', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1-86trrcizB539uvHLVG-myexbtgAGCye'),
(128, 'Làm chủ tư duy thay đổi vận mệnh', '', '', '', '', '', '', 0, 0, 0, 'Làm chủ tư duy, thay đổi vận mệnh.jpg', '[]', '2023-01-30 15:01:51', NULL, 0, 0, 0, 0, 0, 'Adam Khoo', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Làm chủ tư duy thay đổi vận mệnh', '', 'lam-chu-tu-duy-thay-doi-van-menh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '8. Làm Chủ Tư Duy Thay Đổi Vận Mệnh - Adam Khoo.mp3'),
(129, 'Bí mật của vua Solomon', '', '', '', '', '', '', 0, 0, 0, 'Bí mật của vua Solomon.jpg', '[]', '2023-01-30 15:01:06', '2023-02-07 11:02:52', 0, 0, 0, 0, 0, 'Bruce Fleet', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Bí mật của vua Solomon', '', 'bi-mat-cua-vua-solomon', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1vHtVH7Y6nBmddPTmGNyi1_3X4_GQEMDZ'),
(130, 'Phong cách lãnh đạo của các tập đoàn Nhật Bản', '', '', '', '', '', '', 0, 0, 0, 'Phong Cách Lãnh Đạo của Các Tập Đoàn Nhật Bản.jpg', '[]', '2023-01-30 15:01:28', NULL, 0, 0, 0, 0, 0, 'Tủ Sách Kinh Doanh Thế Kỷ 21', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Phong cách lãnh đạo của các tập đoàn Nhật Bản', '', 'phong-cach-lanh-dao-cua-cac-tap-doan-nhat-ban', '', 1, '', '', '', NULL, NULL, '153,153', 0, '10. Phong Cách Lãnh Đạo của Các Tập Đoàn Nhật Bản - Tủ Sách Kinh Doanh Thế Kỷ 21.mp3'),
(131, 'Dạy con làm giàu tập 1 - Để không có tiền vẫn tạo ra tiền', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 1 - Để Không Có Tiền Vẫn Tạo Ra Tiền.jpg', '[]', '2023-01-30 15:01:05', '2023-02-07 11:02:43', 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 1 - Để không có tiền vẫn tạo ra tiền', '', 'day-con-lam-giau-tap-1-de-khong-co-tien-van-tao-ra-tien', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1efX-HQEJBTvsRr7lvCnOmbm5hidgJ31S'),
(132, 'Dạy con làm giàu tập 2 - Sử dụng đồng vốn', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 2 - Sử Dụng Đồng Vốn.jpg', '[]', '2023-01-30 15:01:15', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 2 - Sử dụng đồng vốn', '', 'day-con-lam-giau-tap-2-su-dung-dong-von', '', 1, '', '', '', NULL, NULL, '153,153', 0, '12. Dạy con làm giàu tập 2 - Sử Dụng Đồng Vốn - Robert T. Kiyosaki.mp3'),
(133, 'Dạy con làm giàu tập 3 - Hướng dẫn đầu tư', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 3 - Hướng Dẫn Đầu Tư.jpg', '[]', '2023-01-30 16:01:14', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 3 - Hướng dẫn đầu tư', '', 'day-con-lam-giau-tap-3-huong-dan-dau-tu', '', 1, '', '', '', NULL, NULL, '153,153', 0, '13. Dạy con làm giàu tập 3 - Hướng Dẫn Đầu Tư - Robert T. Kiyosaki.mp3'),
(134, 'Dạy con làm giàu tập 4 - Con giàu con thông minh', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 4 - Con Giàu Con Thông Minh.jpg', '[]', '2023-01-30 16:01:52', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 4 - Con giàu con thông minh', '', 'day-con-lam-giau-tap-4-con-giau-con-thong-minh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '14. Dạy con làm giàu tập 4 - Con Giàu Con Thông Minh - Robert T. Kiyosaki.mp3'),
(135, 'Dạy con làm giàu tập 5 - Để có sức mạnh về tài chính', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 5 - Để Có Sức Mạnh Về Tài Chính.jpg', '[]', '2023-01-30 16:01:56', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 5 - Để có sức mạnh về tài chính', '', 'day-con-lam-giau-tap-5-de-co-suc-manh-ve-tai-chinh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '15. Dạy con làm giàu tập 5 - Để Có Sức Mạnh Về Tài Chính‎ - Robert T. Kiyosaki.mp3'),
(136, 'Dạy con làm giàu tập 6 - Những câu chuyện thành công', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 6 - Những câu chuyện thành công.jpg', '[]', '2023-01-30 16:01:08', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 6 - Những câu chuyện thành công', '', 'day-con-lam-giau-tap-6-nhung-cau-chuyen-thanh-cong', '', 1, '', '', '', NULL, NULL, '153,153', 0, '16. Dạy con làm giàu tập 6 - Những câu chuyện thành công - Robert T. Kiyosaki.mp3'),
(137, 'Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi.jpg', '[]', '2023-01-30 16:01:13', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi', '', 'day-con-lam-giau-tap-7-ai-da-lay-tien-cua-toi', '', 1, '', '', '', NULL, NULL, '153,153', 0, '17. Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi - Robert T. Kiyosaki.mp3'),
(138, 'Dạy con làm giàu tập 8 - Để có những đồng tiền tích cực', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 8 - Để Có Những Đồng Tiền Tích Cực.jpg', '[]', '2023-01-30 16:01:10', '2023-02-07 11:02:01', 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 8 - Để có những đồng tiền tích cực', '', 'day-con-lam-giau-tap-8-de-co-nhung-dong-tien-tich-cuc', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1Z8F6L2Mh5Qe4l9oFULEWKuA_DQwtdZmZ'),
(139, 'Dạy con làm giàu tập 9 - Những bí mật về tiền bạc mà bạn không học ở trường', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 9 - Những Bí Mật Về Tiền Bạc.jpg', '[]', '2023-01-30 16:01:47', '2023-02-07 11:02:26', 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 9 - Những bí mật về tiền bạc mà bạn không học ở trường', '', 'day-con-lam-giau-tap-9-nhung-bi-mat-ve-tien-bac-ma-ban-khong-hoc-o-truong', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1RZF5uNQ6TfGVbh7AJl07bvJCBrZYKAE5'),
(140, 'Dạy con làm giàu tập 10 - Trước khi bạn thôi việc', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 10 - Trước Khi Bạn Thôi Việc.jpg', '[]', '2023-01-30 16:01:42', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 10 - Trước khi bạn thôi việc', '', 'day-con-lam-giau-tap-10-truoc-khi-ban-thoi-viec', '', 1, '', '', '', NULL, NULL, '153,153', 0, '20. Dạy con làm giàu tập 10 - Trước Khi Bạn Thôi Việc - Robert T. Kiyosaki.mp3'),
(141, 'Dạy con làm giàu tập 11 - Trường dạy kinh doanh', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 11 - Trường dạy kinh doanh.jpg', '[]', '2023-01-30 16:01:59', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 11 - Trường dạy kinh doanh', '', 'day-con-lam-giau-tap-11-truong-day-kinh-doanh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '21. Dạy con làm giàu tập 11 - Trường dạy kinh doanh - Robert T. Kiyosaki.mp3'),
(142, 'Dạy con làm giàu tập 12 - Lời tiên tri của người cha giàu', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 12 - Lời Tiên Tri Của Người Cha Giàu.jpg', '[]', '2023-01-30 16:01:18', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 12 - Lời tiên tri của người cha giàu', '', 'day-con-lam-giau-tap-12-loi-tien-tri-cua-nguoi-cha-giau', '', 1, '', '', '', NULL, NULL, '153,153', 0, '22. Dạy con làm giàu tập 12 - Lời Tiên Tri Của Người Cha Giàu - Robert T. Kiyosaki.mp3'),
(143, 'Dạy con làm giàu tập 13 - Nâng cao chỉ số IQ tài chính', '', '', '', '', '', '', 0, 0, 0, 'Dạy con làm giàu tập 13 -  Nâng Cao Chỉ Số IQ Tài Chính.jpg', '[]', '2023-01-30 16:01:36', NULL, 0, 0, 0, 0, 0, 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dạy con làm giàu tập 13 - Nâng cao chỉ số IQ tài chính', '', 'day-con-lam-giau-tap-13-nang-cao-chi-so-iq-tai-chinh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '23. Dạy con làm giàu tập 13 -  Nâng Cao Chỉ Số IQ Tài Chính - Robert T. Kiyosaki.mp3'),
(144, 'Con người 80/20 chín yêu tố cốt lõi của thành công 80/20 trong công việc', '', '', '', '', '', '', 0, 0, 0, 'Con người 80.20 - 9 yếu tố cốt lỗi của thành công.jpg', '[]', '2023-01-30 16:01:32', NULL, 0, 0, 0, 0, 0, 'Richard Koch', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Con người 80/20 chín yêu tố cốt lõi của thành công 80/20 trong công việc', '', 'con-nguoi-8020-chin-yeu-to-cot-loi-cua-thanh-cong-8020-trong-cong-viec', '', 1, '', '', '', NULL, NULL, '153,153', 0, '24. Con Người 80-20 - Chín Yếu Tố Cốt Lõi Của Thành Công 80-20 Trong Công Việc - Richard Koch.mp3'),
(145, 'Đừng bao giờ đi ăn một mình', '', '', '', '', '', '', 0, 0, 0, 'Đừng bao giờ đi ăn một mình.jpg', '[]', '2023-01-30 16:01:44', NULL, 0, 0, 0, 0, 0, 'Keith Ferrazzi', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đừng bao giờ đi ăn một mình', '', 'dung-bao-gio-di-an-mot-minh', '', 1, '', '', '', NULL, NULL, '153,153', 0, '25. Đừng bao giờ đi ăn một mình - Keith Ferrazzi.mp3'),
(146, 'Mỗi ngày tiết kiệm một giờ', '', '', '', '', '', '', 0, 0, 0, 'Mỗi ngày tiết kiệm một giờ.jpg', '[]', '2023-01-30 16:01:31', '2023-02-07 11:02:50', 0, 0, 0, 0, 0, 'Michael Heppell', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Mỗi ngày tiết kiệm một giờ', '', 'moi-ngay-tiet-kiem-mot-gio', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=14gqVkY1F6vu3BrBNcPQHwVXi_wfOMYOD'),
(147, 'Người giàu có nhất thành Babylon', '', '', '', '', '', '', 0, 0, 0, 'Người giàu có nhất thành Babylon.jpg', '[]', '2023-01-30 16:01:50', '2023-02-07 11:02:10', 0, 0, 0, 0, 0, 'George S. Clason', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Người giàu có nhất thành Babylon', '', 'nguoi-giau-co-nhat-thanh-babylon', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1TjPA5Y8ZqsmXfYRC3kBAHO_uFX7HKZoi'),
(148, '101 trí tuệ người Do Thái', '', '', '', '', '', '', 0, 0, 0, '101 trí tuệ người Do Thái.jpg', '[]', '2023-01-30 16:01:45', NULL, 0, 0, 0, 0, 0, 'Eran Katz', '', '', '', '', '', '', '', '', '', '', '', '', 1, '101 trí tuệ người Do Thái', '', '101-tri-tue-nguoi-do-thai', '', 1, '', '', '', NULL, NULL, '153,153', 0, '28. 101 Trí Tuệ Người Do Thái - Eran Katz.mp3'),
(149, 'Thế giới phẳng', '', '', '', '', '', '', 0, 0, 0, 'Thế giới phẳng.jpg', '[]', '2023-01-30 16:01:29', '2023-02-07 11:02:31', 0, 0, 0, 0, 0, 'Thomas Friedman', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thế giới phẳng', '', 'the-gioi-phang', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1mHgHnKXhRLKI2K32RSabBEWnRqxPb5xE'),
(150, 'Tuần làm việc 4 giờ', '', '', '', '', '', '', 0, 0, 0, 'Tuần làm việc 4 giờ.jpg', '[]', '2023-01-30 16:01:25', NULL, 0, 0, 0, 0, 0, 'Timothy Ferriss', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tuần làm việc 4 giờ', '', 'tuan-lam-viec-4-gio', '', 1, '', '', '', NULL, NULL, '153,153', 0, '30. Tuần Làm Việc 4 giờ - Timothy Ferriss.mp3'),
(151, 'Tứ thư lãnh đạo', '', '', '', '', '', '', 0, 0, 0, 'Tứ thư lãnh đạo-luật xử thế.jpg', '[]', '2023-01-30 16:01:30', '2023-02-07 11:02:10', 0, 0, 0, 0, 0, 'Hòa Nhân', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tứ thư lãnh đạo', '', 'tu-thu-lanh-dao', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1fdrirLmZWUsMQL62Pcd4F2D4xvXXRuF2'),
(152, '999 Bí quyết vàng trong kinh doanh', '', '', '', '', '', '', 0, 0, 0, '999 bí quyết vàng trong KD.jpg', '[]', '2023-01-30 16:01:33', '2023-02-07 11:02:28', 0, 0, 0, 0, 0, 'Tủ Sách Kinh Doanh Thế Kỷ 21', '', '', '', '', '', '', '', '', '', '', '', '', 1, '999 Bí quyết vàng trong kinh doanh', '', '999-bi-quyet-vang-trong-kinh-doanh', '', 1, '', '', '', NULL, 1, '153,153', 1, '32. 999 Bí Quyết Vàng Trong Kinh Doanh - Tủ Sách Kinh Doanh Thế Kỷ 21.mp3'),
(153, 'Dám làm giàu', '', '', '', '', '', '', 0, 0, 0, 'Dám làm giàu.jpg', '[]', '2023-01-30 16:01:12', '2023-02-07 11:02:17', 0, 0, 0, 0, 0, 'Phạm Tuấn Sơn', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dám làm giàu', '', 'dam-lam-giau', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1a_FAY9_fwnGdkt1XsXHNaJgyGNXpverN'),
(154, 'Thành công không còn là bí mật', '', '', '', '', '', '', 0, 0, 0, 'Thành công không còn là bí mật.jpg', '[]', '2023-01-30 16:01:06', NULL, 0, 0, 0, 0, 0, 'Noah St. John', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thành công không còn là bí mật', '', 'thanh-cong-khong-con-la-bi-mat', '', 1, '', '', '', NULL, NULL, '153,153', 0, '34. Thành Công Không Còn Là Bí Mật - Noah St. John.mp3'),
(155, '100 Ý tưởng tiếp thị tuyệt hay', '', '', '', '', '', '', 0, 0, 0, '100 ý tưởng tiếp thị tuyệt hay.jpg', '[]', '2023-01-30 16:01:51', '2023-02-07 11:02:16', 0, 0, 0, 0, 0, 'Jim Blythe', '', '', '', '', '', '', '', '', '', '', '', '', 1, '100 Ý tưởng tiếp thị tuyệt hay', '', '100-y-tuong-tiep-thi-tuyet-hay', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1FvzIXIHNMgW3iv6u5IbB4xcJ-Akrpv35'),
(156, 'Kinh doanh bằng tâm lý', '', '', '', '', '', '', 0, 0, 0, 'Kinh doanh bằng tâm lý.jpg', '[]', '2023-01-30 16:01:35', NULL, 0, 0, 0, 0, 0, 'Brian Tracy', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Kinh doanh bằng tâm lý', '', 'kinh-doanh-bang-tam-ly', '', 1, '', '', '', NULL, 2, '153,153', 0, '36. Kinh Doanh Bằng Tâm Lý - Brian Tracy.mp3'),
(157, 'Những mẩu chuyện hài hước trong kinh doanh của người Do Thái', '', '', '', '', '', '', 0, 0, 0, 'Những mẩu chuyện hài hước trong KD của người do thái.jpg', '[]', '2023-01-30 16:01:53', '2023-02-07 11:02:42', 0, 0, 0, 0, 0, 'Hoa Sơn', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Những mẩu chuyện hài hước trong kinh doanh của người Do Thái', '', 'nhung-mau-chuyen-hai-huoc-trong-kinh-doanh-cua-nguoi-do-thai', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1gScjIxQpJXghEVp9fRwhFVGKsUjWN_t3'),
(158, 'Sách đen về tinh thần doanh nhân', '', '', '', '', '', '', 0, 0, 0, 'Sách đen về tinh thần doanh nhân.jpg', '[]', '2023-01-30 16:01:39', '2023-02-07 11:02:40', 0, 0, 0, 0, 0, 'Fernando Trías De Bes', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sách đen về tinh thần doanh nhân', '', 'sach-den-ve-tinh-than-doanh-nhan', '', 1, '', '', '', NULL, NULL, '153,153', 0, 'https://docs.google.com/uc?id=1S12Za-A7C1a403-ZbcTXKx97132pO3Ai'),
(159, 'Trí tuệ kinh doanh và lý thuyết trò chơi', '', '', '', '', '', '', 0, 0, 0, 'Trí tuệ kinh doanh và lí thuyết trò chơi.jpg', '[]', '2023-01-30 16:01:56', '2023-02-07 11:02:52', 0, 0, 0, 0, 0, 'Hình Quần Lân & Túc Xuân Lễ', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Trí tuệ kinh doanh và lý thuyết trò chơi', '', 'tri-tue-kinh-doanh-va-ly-thuyet-tro-choi', '', 1, '', '', '', NULL, 5, '153,153', 0, 'https://docs.google.com/uc?id=1KyE8gP9gdNJC0N7f-gobmeykK5ArVf6I'),
(160, 'Thương gia Do Thái bậc thầy kinh doanh', '', '', '', '', '', '', 0, 0, 0, 'Thương gia Do Thái- bậc thầy kinh doanh.jpg', '[]', '2023-01-30 16:01:57', '2023-02-07 16:02:06', 0, 0, 0, 0, 0, 'Trương Đống Triết', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thương gia Do Thái bậc thầy kinh doanh', '', 'thuong-gia-do-thai-bac-thay-kinh-doanh', '', 1, '', '', '', NULL, 10, '153,153', 2, '40. Thương Gia Do Thái Bậc Thầy Kinh Doanh - Trương Đống Triết.mp3'),
(161, 'Hiều về trái tim', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-01-30 17:01:12', '2023-02-09 17:02:06', 0, 0, 0, 0, 0, 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Hiều về trái tim', '', 'hieu-ve-trai-tim', '', 1, '', '', '', NULL, 903, '163,163', 21, 'https://docs.google.com/uc?id=1_OdTsOwG-O21nhtdxnJUjkPKrOQHW0Cn'),
(162, 'Làm như chơi', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-06 16:02:39', '2023-02-08 09:02:28', 0, 0, 0, 0, 0, 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Làm như chơi', '', 'lam-nhu-choi', '', NULL, '', '10 tiếng', '', NULL, 5, '160,163,163', 0, 'https://docs.google.com/uc?id=1lf-lRrHoVC07GvkSoKjU9ueCmAolOHns'),
(163, 'Tôi thấy hoa vàng trên cỏ xanh', '', '', '', '', '', '', 0, 0, 0, 'Tôi thấy hoa vàng trên cỏ xanh.jpg', '[]', '2023-02-07 10:02:00', NULL, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tôi thấy hoa vàng trên cỏ xanh', '', 'toi-thay-hoa-vang-tren-co-xanh', '', NULL, '', '', '', NULL, 2, '154,154', 2, 'https://docs.google.com/uc?id=1Y1luWN8yEhHUKYP9dH9VxLTFs6tzdNmW'),
(164, 'Giận', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-07 21:02:57', '2023-02-08 09:02:07', 0, 0, 0, 0, 0, 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Giận', '', 'gian', '', NULL, '', '', '', NULL, 2, '160,163,163', 0, 'https://docs.google.com/uc?id=1DB-Ow06FFVup4iXgdUICuTZXH5qYxUI4'),
(165, 'Phát triển bản thân', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-07 22:02:33', '2023-02-08 09:02:47', 0, 0, 0, 0, 0, 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Phát triển bản thân', '', 'phat-trien-ban-than', '', NULL, '', '', '', NULL, 1, '160,163,163', 0, 'https://docs.google.com/uc?id=1FEZd-PR7zkSH0aHXDRq3BYBxZ59rp8By'),
(166, 'Làm chủ bản thân', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-08 09:02:39', '2023-02-08 10:02:45', 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Làm chủ bản thân', '', 'lam-chu-ban-than', '', NULL, '', '', '', NULL, 5, '160,163,163', 0, 'https://docs.google.com/uc?id=1T05jlXNT3dC0NIKjaMxPzvzk37FfEXyc'),
(167, 'Pháp Thoại- Thiền hiểu biết', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-08 10:02:57', '2023-02-09 17:02:18', 0, 0, 0, 0, 0, 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Pháp Thoại- Thiền hiểu biết', '', 'phap-thoai-thien-hieu-biet', '', NULL, '', '', '', NULL, 2, '160,163,163', 0, 'https://docs.google.com/uc?id=15r9Ve8r883mUFaxrLzDMHDp-SVr8nOO7'),
(168, 'Gia đình', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-09 21:02:41', '2023-02-09 21:02:13', 0, 0, 0, 0, 0, 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Gia đình', '', 'gia-dinh', '', NULL, '', '', '', NULL, 0, '160,164,164', 0, 'https://docs.google.com/uc?id=1z-76RqNlPnXY1KLbvNanl39sJNClWyi0'),
(169, 'Gia đình hạnh phúc', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-09 21:02:06', '2023-02-09 22:02:31', 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Gia đình hạnh phúc', '', 'gia-dinh-hanh-phuc', '', NULL, '', '', '', NULL, 0, '160,164,164', 0, 'https://docs.google.com/uc?id=1Mrut2OHhk0hxEr7Z2nQpYTQxk1UBSQdQ'),
(170, 'Thiền ca', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-10 09:02:24', NULL, 0, 0, 0, 0, 0, 'Nhiều tác giả', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thiền ca', '', 'thien-ca', '', NULL, '', '', '', NULL, NULL, '160,170,170', 0, ''),
(171, 'Kinh tế-môi trường-xã hội', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-10 10:02:14', NULL, 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Kinh tế-môi trường-xã hội', '', 'kinh-te-moi-truong-xa-hoi', '', NULL, '', '', '', NULL, NULL, '160,169,169', 0, ''),
(172, 'Phép lạ của sự tỉnh thức', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 15:02:52', NULL, 0, 0, 0, 0, 0, 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Phép lạ của sự tỉnh thức', '', 'phep-la-cua-su-tinh-thuc', '', NULL, '', '', '', NULL, NULL, '160,168,168', 0, ''),
(173, 'Sống trong thực tại', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 15:02:10', NULL, 0, 0, 0, 0, 0, 'Thích Viên Minh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sống trong thực tại', '', 'song-trong-thuc-tai', '', NULL, '', '', '', NULL, NULL, '160,168,168', 0, ''),
(174, 'Vô Ngã Vô Ưu', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 16:02:43', NULL, 0, 0, 0, 0, 0, 'AyyaKhema', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Vô Ngã Vô Ưu', '', 'vo-nga-vo-uu', '', NULL, '', '', '', NULL, NULL, '160,168,168', 0, ''),
(175, 'Những vị Thiền sư đương thời', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 16:02:55', NULL, 0, 0, 0, 0, 0, 'JackKorfeld', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Những vị Thiền sư đương thời', '', 'nhung-vi-thien-su-duong-thoi', '', NULL, '', '', '', NULL, NULL, '160,168,168', 0, ''),
(176, 'Dipa Ma - Cuộc đời và di huấn', '', '', '', '', '', '', 0, 0, 0, NULL, '[]', '2023-02-11 17:02:24', '2023-02-11 18:02:22', 0, 0, 0, 0, 0, 'AmySchmidt', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Dipa Ma - Cuộc đời và di huấn', '', 'dipa-ma-cuoc-doi-va-di-huan', '', NULL, '', '', '', NULL, 0, '160,168,168', 0, ''),
(177, 'Ngay trong kiếp sống này', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 18:02:16', NULL, 0, 0, 0, 0, 0, 'SayadawUPandita', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Ngay trong kiếp sống này', '', 'ngay-trong-kiep-song-nay', '', NULL, '', '', '', NULL, NULL, '160,168,168', 0, ''),
(178, 'Hiểu luật nhân quả', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 22:02:42', NULL, 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Hiểu luật nhân quả', '', 'hieu-luat-nhan-qua', '', NULL, '', '', '', NULL, NULL, '160,167,167', 0, ''),
(179, 'Thích Thông Lạc', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 22:02:17', NULL, 0, 0, 0, 0, 0, 'Thích Thông Lạc', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Thông Lạc', '', 'thich-thong-lac', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(180, 'Thích Chân Quang', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-11 22:02:14', NULL, 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Chân Quang', '', 'thich-chan-quang', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(181, 'Thích Nhật Từ', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 09:02:44', NULL, 0, 0, 0, 0, 0, 'Thích Nhật Từ', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Nhật Từ', '', 'thich-nhat-tu', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(183, 'Thích Viên Minh', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 10:02:27', NULL, 0, 0, 0, 0, 0, 'Thích Viên Minh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Viên Minh', '', 'thich-vien-minh', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(184, 'Thích Thiện Xuân', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 10:02:51', NULL, 0, 0, 0, 0, 0, 'Thích Thiện Xuân', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Thiện Xuân', '', 'thich-thien-xuan', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(185, 'Thích Trí Siêu', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 10:02:16', NULL, 0, 0, 0, 0, 0, 'Thích Trí Siêu', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Trí Siêu', '', 'thich-tri-sieu', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(186, 'Thích Nhất Hạnh', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 10:02:49', NULL, 0, 0, 0, 0, 0, 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Thích Nhất Hạnh', '', 'thich-nhat-hanh', '', NULL, '', '', '', NULL, NULL, '160,166,166', 0, ''),
(187, 'Đường xưa mây trắng', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 15:02:09', NULL, 0, 0, 0, 0, 0, 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đường xưa mây trắng', '', 'duong-xua-may-trang', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(188, 'Đức Phật và Phật Pháp', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 17:02:46', NULL, 0, 0, 0, 0, 0, 'NaradaThera', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đức Phật và Phật Pháp', '', 'duc-phat-va-phat-phap', '', NULL, '', '', '', NULL, 1, '160,165,165', 0, ''),
(189, 'Suối nguồn tâm linh', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 21:02:46', NULL, 0, 0, 0, 0, 0, 'AjahnChah', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Suối nguồn tâm linh', '', 'suoi-nguon-tam-linh', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(190, 'Chủ động cái chết', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 22:02:54', NULL, 0, 0, 0, 0, 0, 'Đức Đạt Lai Lạt Ma', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Chủ động cái chết', '', 'chu-dong-cai-chet', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(191, 'Cốt lõi của cõi bồ đề', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-13 22:02:35', NULL, 0, 0, 0, 0, 0, 'Buddhadasa Bikkhu', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Cốt lõi của cõi bồ đề', '', 'cot-loi-cua-coi-bo-de', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(192, 'Đạo lý', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-14 10:02:09', NULL, 0, 0, 0, 0, 0, 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đạo lý', '', 'dao-ly', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(193, 'Sự khác biệt', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-14 11:02:42', NULL, 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Sự khác biệt', '', 'su-khac-biet', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(194, 'Đạo', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-14 21:02:31', NULL, 0, 0, 0, 0, 0, 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Đạo', '', 'dao', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(195, 'Hạnh phúc đích thực', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-14 22:02:41', NULL, 0, 0, 0, 0, 0, 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Hạnh phúc đích thực', '', 'hanh-phuc-dich-thuc', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(196, 'Tâm và đạo ', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-14 22:02:36', NULL, 0, 0, 0, 0, 0, 'AhahnSumedho', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Tâm và đạo ', '', 'tam-va-dao', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(197, 'Bát chánh đạo - Con đường hạnh phúc', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-15 08:02:13', NULL, 0, 0, 0, 0, 0, 'Gunaratana', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Bát chánh đạo - Con đường hạnh phúc', '', 'bat-chanh-dao-con-duong-hanh-phuc', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, ''),
(198, 'Phật giáo nhìn toàn diện ', '', '', '', '', '', '', 0, 0, 0, '', '[]', '2023-02-15 09:02:07', NULL, 0, 0, 0, 0, 0, 'Manhāthera', '', '', '', '', '', '', '', '', '', '', '', '', 1, 'Phật giáo nhìn toàn diện ', '', 'phat-giao-nhin-toan-dien', '', NULL, '', '', '', NULL, NULL, '160,165,165', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat`
--

INSERT INTO `productcat` (`productcat_id`, `productcat_name`, `productcat_des`, `productcat_content`, `productcat_parent`, `productcat_sort_order`, `productcat_img`, `productcat_created_date`, `productcat_update_date`, `productcat_sub_info1`, `productcat_sub_info2`, `productcat_sub_info3`, `productcat_sub_info4`, `productcat_sub_info5`, `state`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(152, 'Sách phát triển bản thân', '', '', 0, 0, NULL, '2023-01-30 09:01:34', NULL, '', '', '', '', '', 1, 'Sách phát triển bản thân', '', 'sach-phat-trien-ban-than', '', 1),
(153, 'Sách kinh doanh', '', '', 0, 0, NULL, '2023-01-30 09:01:49', NULL, '', '', '', '', '', 1, 'Sách kinh doanh', '', 'sach-kinh-doanh', '', 1),
(154, 'Tiểu thuyết kinh điển', '', '', 0, 0, NULL, '2023-01-30 09:01:17', NULL, '', '', '', '', '', 1, 'Tiểu thuyết kinh điển', '', 'tieu-thuyet-kinh-dien', '', 1),
(160, 'Sách hàm dưỡng tâm hồn', '', '', 0, 0, NULL, '2023-01-30 09:01:39', NULL, '', '', '', '', '', 1, 'Sách hàm dưỡng tâm hồn', '', 'sach-ham-duong-tam-hon', '', 1),
(163, 'Thấu hiểu chính mình', '', '', 160, 0, '', '2023-01-31 09:01:50', NULL, '', '', '', '', '', 1, 'Thấu hiểu chính mình', '', 'thau-hieu-chinh-minh', '', 1),
(164, 'Dạy con - Hôn nhân - Gia đình', '', '', 160, 0, NULL, '2023-01-31 09:01:28', NULL, '', '', '', '', '', 1, 'Dạy con - Hôn nhân - Gia đình', '', 'day-con-hon-nhan-gia-dinh', '', 1),
(165, 'Đi tìm chân lý', '', '', 160, 0, '', '2023-01-31 09:01:05', NULL, '', '', '', '', '', 1, 'Đi tìm chân lý', '', 'di-tim-chan-ly', '', 1),
(166, 'Tứ Diệu đế - Bát Chánh đạo - Tu 7 vị thầy', '', '', 160, 0, NULL, '2023-02-11 22:02:09', NULL, '', '', '', '', '', 1, 'Tứ Diệu đế - Bát Chánh đạo - Tu 7 vị thầy', '', 'tu-dieu-de-bat-chanh-dao-tu-7-vi-thay', '', 1),
(167, 'Hiểu luật nhân quả', '', '', 160, 0, '', '2023-01-31 09:01:42', NULL, '', '', '', '', '', 1, 'Hiểu luật nhân quả', '', 'hieu-luat-nhan-qua', '', 1),
(168, 'Audio sách nói về thiền', '', '', 160, 0, '', '2023-01-31 09:01:04', NULL, '', '', '', '', '', 1, 'Audio sách nói về thiền', '', 'audio-sach-noi-ve-thien', '', 1),
(169, 'Kinh tế - Môi trường - Xã hội', '', '', 160, 0, NULL, '2023-01-31 09:01:51', NULL, '', '', '', '', '', 1, 'Kinh tế - Môi trường - Xã hội', '', 'kinh-te-moi-truong-xa-hoi', '', 1),
(170, 'Nhạc thiền', '', '', 160, 0, '', '2023-01-31 09:01:42', NULL, '', '', '', '', '', 1, 'Nhạc thiền', '', 'nhac-thien', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productcat_languages`
--

INSERT INTO `productcat_languages` (`id`, `productcat_id`, `lang_productcat_name`, `languages_code`, `lang_productcat_des`, `lang_productcat_content`, `lang_productcat_sub_info1`, `lang_productcat_sub_info2`, `lang_productcat_sub_info3`, `lang_productcat_sub_info4`, `lang_productcat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(289, 152, 'Sách phát triển bản thân', 'vn', '', '', '', '', '', '', '', 0, 'sach-phat-trien-ban-than', '', 'Sách phát triển bản thân', ''),
(290, 152, 'english version Bộ dẫn hướng MYKP', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-dan-huong-mykp', '', 'Bộ dẫn hướng MYKP', ''),
(291, 153, 'Sách kinh doanh', 'vn', '', '', '', '', '', '', '', 0, 'sach-kinh-doanh', '', 'Sách kinh doanh', ''),
(292, 153, 'english version Bộ dẫn hướng TRP', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-dan-huong-trp', '', 'Bộ dẫn hướng TRP', ''),
(293, 154, 'Tiểu thuyết kinh điển', 'vn', '', '', '', '', '', '', '', 0, 'tieu-thuyet-kinh-dien', '', 'Tiểu thuyết kinh điển', ''),
(294, 154, 'english version Bộ dẫn hướng SRP', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-bo-dan-huong-srp', '', 'Bộ dẫn hướng SRP', ''),
(305, 160, 'Sách hàm dưỡng tâm hồn', 'vn', '', '', '', '', '', '', '', 0, 'sach-ham-duong-tam-hon', '', 'Sách hàm dưỡng tâm hồn', ''),
(306, 160, 'english version Sợi thủy tinh', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-soi-thuy-tinh', '', 'Sợi thủy tinh', ''),
(311, 163, 'Thấu hiểu chính mình', 'vn', '', '', '', '', '', '', '', 0, 'thau-hieu-chinh-minh', '', 'Thấu hiểu chính mình', ''),
(312, 163, 'english version Thấu hiểu chính mình', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-thau-hieu-chinh-minh', '', 'Thấu hiểu chính mình', ''),
(313, 164, 'Dạy con - Hôn nhân - Gia đình', 'vn', '', '', '', '', '', '', '', 0, 'day-con-hon-nhan-gia-dinh', '', 'Dạy con - Hôn nhân - Gia đình', ''),
(314, 164, 'english version ', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-', '', '', ''),
(315, 165, 'Đi tìm chân lý', 'vn', '', '', '', '', '', '', '', 0, 'di-tim-chan-ly', '', 'Đi tìm chân lý', ''),
(316, 165, 'english version Đi tìm chân lý', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-di-tim-chan-ly', '', 'Đi tìm chân lý', ''),
(317, 166, 'Tứ Diệu đế - Bát Chánh đạo - Tu 7 vị thầy', 'vn', '', '', '', '', '', '', '', 0, 'tu-dieu-de-bat-chanh-dao-tu-7-vi-thay', '', 'Tứ Diệu đế - Bát Chánh đạo - Tu 7 vị thầy', ''),
(318, 166, 'english version 4 điều dễ 8 chánh đạo - tu 7 vi thay', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-4-dieu-de-8-chanh-dao-tu-7-vi-thay', '', '4 điều dễ 8 chánh đạo - tu 7 vi thay', ''),
(319, 167, 'Hiểu luật nhân quả', 'vn', '', '', '', '', '', '', '', 0, 'hieu-luat-nhan-qua', '', 'Hiểu luật nhân quả', ''),
(320, 167, 'english version Hiểu luật nhân quả', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-hieu-luat-nhan-qua', '', 'Hiểu luật nhân quả', ''),
(321, 168, 'Audio sách nói về thiền', 'vn', '', '', '', '', '', '', '', 0, 'audio-sach-noi-ve-thien', '', 'Audio sách nói về thiền', ''),
(322, 168, 'english version Audio sách nói về thiền', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-audio-sach-noi-ve-thien', '', 'Audio sách nói về thiền', ''),
(323, 169, 'Kinh tế - Môi trường - Xã hội', 'vn', '', '', '', '', '', '', '', 0, 'kinh-te-moi-truong-xa-hoi', '', 'Kinh tế - Môi trường - Xã hội', ''),
(324, 169, 'english version Kinh tế - Môi trường - Xã hội', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-kinh-te-moi-truong-xa-hoi', '', 'Kinh tế - Môi trường - Xã hội', ''),
(325, 170, 'Nhạc thiền', 'vn', '', '', '', '', '', '', '', 0, 'nhac-thien', '', 'Nhạc thiền', ''),
(326, 170, 'english version Nhạc thiền', 'en', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-nhac-thien', '', 'Nhạc thiền', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_languages`
--

INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(187, 81, 'vn', 'Nghi giàu và làm giàu', '<p>https://docs.google.com/uc?id=1EzZCkTXEjjxoxw7VVIfPPtXp_maE4zrf</p>\r\n\r\n<p>https://ia802306.us.archive.org/30/items/22-quy-luat-bat-bien-trong-marketing/22_quy_luat_bat_bien_trong_marketing.mp3</p>\r\n', '', '', '<p>Đắc nh&acirc;n t&acirc;m của Dale Carnegie l&agrave; quyển s&aacute;ch nổi tiếng nhất, b&aacute;n chạy nhất &nbsp;v&agrave; c&oacute; tầm ảnh hưởng nhất của mọi thời đại&hellip;Dale Breckenridge Carnegie (24/11/1888 - 1/11/1955) l&agrave; một nh&agrave; văn v&agrave; nh&agrave; thuyết tr&igrave;nh Mỹ v&agrave; l&agrave; người chịu tr&aacute;ch nhiệm c&aacute;c lớp ph&aacute;t triển con người, kỹ năng, nghệ thuật b&aacute;n h&agrave;ng, huấn luyện đo&agrave;n thể, n&oacute;i trước c&ocirc;ng ch&uacute;ng v&agrave; c&aacute;c kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh ngh&egrave;o đ&oacute;i tại một trang trại ở Missouri, Dale Carnegie l&agrave; t&aacute;c giả cuốn s&aacute;ch Đắc nh&acirc;n t&acirc;m- được xuất bản lần đầu năm 1936 v&agrave; l&agrave; một trong những quyển s&aacute;ch nổi tiếng nhất thế giới thuộc thể loại self-help, li&ecirc;n tục đứng đầu danh mục b&aacute;n chạy nhất của mọi thời đại do b&aacute;o The New York Times b&igrave;nh chọn suốt 10 năm liền. T&aacute;c phẩm đ&atilde; được chuyển ngữ sang hầu hết c&aacute;c thứ tiếng tr&ecirc;n thế giới v&agrave; c&oacute; mặt ở h&agrave;ng trăm quốc gia, đặc biệt bản tiếng Anh đ&atilde; b&aacute;n được hơn 15 triệu bản tr&ecirc;n thế giới.</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nghi-giau-va-lam-giau', 'Nghi giàu và làm giàu', '', ''),
(188, 81, 'en', 'english version Mực in tám lợp thùng', 'english version ', '', '', 'english version <p>Trung Th&agrave;nh chuy&ecirc;n sản xuất v&agrave; cung cấp c&aacute;c sản phẩm: Mực in tấm lợp, sợi PVA, PP, sợi gia cường d&ugrave;ng cho B&ecirc; t&ocirc;ng, Ng&oacute;i mầu. Sợi thủy tinh d&ugrave;ng trong Tấm lợp, sợi thủy tinh kh&aacute;ng kiềm d&ugrave;ng trong B&ecirc; t&ocirc;ng. Sợi thủy tinh d&ugrave;ng trong Ph&agrave;o chỉ, Vải thuỷ tinh d&ugrave;ng trong tấm Nhựa s&aacute;ng. Vải thuỷ tinh d&ugrave;ng quấn bồn Composite. Bột &ocirc; x&iacute;t sắt mầu đỏ mầu xanh. Băng tải dạ d&ugrave;ng trong Tấm lợp. Lưới inox d&ugrave;ng trong Tấm lợp, Ng&oacute;i mầu. Amiang Trung Quốc. C&ocirc;ng ty chuy&ecirc;n Xuất nhập khẩu c&aacute;c loại m&aacute;y, thiết bị d&ugrave;ng trong C&ocirc;ng nghiệp<br />\r\n<br />\r\nMọi th&ocirc;ng tin xin vui l&ograve;ng li&ecirc;n hệ:<br />\r\nC&ocirc;ng Ty TNHH Kinh Doanh XNK Trung Th&agrave;nh<br />\r\n- Hotline: 0813 379 666<br />\r\n- Email: trungthanh07.666@gmail.com,<br />\r\n- Địa chỉ: Khu CN Bắc Duy&ecirc;n Hải, TP. L&agrave;o Cai, T. L&agrave;o Cai</p>\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-muc-in-tam-lop-thung', 'Mực in tám lợp thùng', '', ''),
(189, 82, 'vn', 'Nhà giả kim', '', '', '', '', '', '', 'Paulo Coelho', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nha-gia-kim', 'Nhà giả kim', '', ''),
(190, 82, 'en', 'english version Nhà giả kim', 'english version ', '', '', 'english version ', '', '', 'Paulo Coelho', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nha-gia-kim', 'Nhà giả kim', '', ''),
(191, 83, 'vn', '7 thói quen để thành đạt', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, '7-thoi-quen-de-thanh-dat', '7 thói quen để thành đạt', '', ''),
(192, 83, 'en', 'english version 7 thói quen để thành đạt', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-7-thoi-quen-de-thanh-dat', '7 thói quen để thành đạt', '', ''),
(193, 84, 'vn', 'Mặt dày tâm đen', '', '', '', '', '', '', 'Chin-Ning Chu', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'mat-day-tam-den', 'Mặt dày tâm đen', '', ''),
(194, 84, 'en', 'english version Mặt dày tâm đen', 'english version ', '', '', 'english version ', '', '', 'Chin-Ning Chu', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-mat-day-tam-den', 'Mặt dày tâm đen', '', ''),
(195, 85, 'vn', 'Điều kỳ diệu của thái độ sống', '', '', '', '', '', '', 'Mac Anderson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dieu-ky-dieu-cua-thai-do-song', 'Điều kỳ diệu của thái độ sống', '', ''),
(196, 85, 'en', 'english version Điều kỳ diện của thái độ sống', 'english version ', '', '', 'english version ', '', '', 'Mac Anderson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dieu-ky-dien-cua-thai-do-song', 'Điều kỳ diện của thái độ sống', '', ''),
(197, 86, 'vn', 'Phút nhìn lại mình', '', '', '', '', '', '', 'Spencer Johnson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phut-nhin-lai-minh', 'Phút nhìn lại mình', '', ''),
(198, 86, 'en', 'english version Phút nhìn lại mình', 'english version ', '', '', 'english version ', '', '', 'Spencer Johnson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-phut-nhin-lai-minh', 'Phút nhìn lại mình', '', ''),
(199, 87, 'vn', 'Quên hôm qua sống cho ngày mai', '', '', '', '', '', '', 'Spencer Johnson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'quen-hom-qua-song-cho-ngay-mai', 'Quên hôm qua sống cho ngày mai', '', ''),
(200, 87, 'en', 'english version Quên hôm qua sống cho ngày mai', 'english version ', '', '', 'english version ', '', '', 'Spencer Johnson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-quen-hom-qua-song-cho-ngay-mai', 'Quên hôm qua sống cho ngày mai', '', ''),
(201, 88, 'vn', 'Rèn nghị lực để lập thân', '', '', '', '', '', '', 'Nguyễn Hiến Lê', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ren-nghi-luc-de-lap-than', 'Rèn nghị lực để lập thân', '', ''),
(202, 88, 'en', 'english version Rèn nghị lực để lập thân', 'english version ', '', '', 'english version ', '', '', 'Nguyễn Hiến Lê', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ren-nghi-luc-de-lap-than', 'Rèn nghị lực để lập thân', '', ''),
(203, 89, 'vn', 'Đắc nhân tâm', '', '', '', '', '', '', 'Dale Carnegie', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dac-nhan-tam', 'Đắc nhân tâm', '', ''),
(204, 89, 'en', 'english version Đắc nhân tâm', 'english version ', '', '', 'english version ', '', '', 'Dale Carnegie', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dac-nhan-tam', 'Đắc nhân tâm', '', ''),
(205, 90, 'vn', 'Những bí quyết giao tiếp tốt', '', '', '', '', '', '', 'Larry King', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nhung-bi-quyet-giao-tiep-tot', 'Những bí quyết giao tiếp tốt', '', ''),
(206, 90, 'en', 'english version Những bí quyết giao tiếp tốt', 'english version ', '', '', 'english version ', '', '', 'Larry King', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nhung-bi-quyet-giao-tiep-tot', 'Những bí quyết giao tiếp tốt', '', ''),
(207, 91, 'vn', '100 lời khuyên quý báu để giữ gìn sức khỏe', '', '', '', '', '', '', 'Lời Phật dạy', '', '', '', '', '', '', '', '', '', '', '', '', 0, '100-loi-khuyen-quy-bau-de-giu-gin-suc-khoe', '100 lời khuyên quý báu để giữ gìn sức khỏe', '', ''),
(208, 91, 'en', 'english version 100 lời khuyên quý báu để giữ gìn sức khỏe', 'english version ', '', '', 'english version ', '', '', 'Lời Phật dạy', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-100-loi-khuyen-quy-bau-de-giu-gin-suc-khoe', '100 lời khuyên quý báu để giữ gìn sức khỏe', '', ''),
(209, 92, 'vn', 'Đi tìm hạnh phúc cuộc sống', '', '', '', '', '', '', 'Rick Foster & Grey Hicks', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'di-tim-hanh-phuc-cuoc-song', 'Đi tìm hạnh phúc cuộc sống', '', ''),
(210, 92, 'en', 'english version Đi tìm hạnh phúc cuộc sống', 'english version ', '', '', 'english version ', '', '', 'Rick Foster & Grey Hicks', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-di-tim-hanh-phuc-cuoc-song', 'Đi tìm hạnh phúc cuộc sống', '', ''),
(211, 93, 'vn', 'Đi tìm lẽ sống', '', '', '', '', '', '', 'Viktor Emil Frankl', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'di-tim-le-song', 'Đi tìm lẽ sống', '', ''),
(212, 93, 'en', 'english version Đi tím lẽ sống', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-di-tim-le-song', 'Đi tím lẽ sống', '', ''),
(213, 94, 'vn', 'Quẳng gánh lo đi & Vui sống', '', '', '', '', '', '', 'Dale Carnegie', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'quang-ganh-lo-di-vui-song', 'Quẳng gánh lo đi & Vui sống', '', ''),
(214, 94, 'en', 'english version Quẳng gánh lo đi & Vui sống', 'english version ', '', '', 'english version ', '', '', 'Dale Carnegie', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-quang-ganh-lo-di-vui-song', 'Quẳng gánh lo đi & Vui sống', '', ''),
(215, 95, 'vn', 'Sống sáng suốt', '', '', '', '', '', '', 'Dean Cunningham', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'song-sang-suot', 'Sống sáng suốt', '', ''),
(216, 95, 'en', 'english version Sống sáng suốt', 'english version ', '', '', 'english version ', '', '', 'Dean Cunningham', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-song-sang-suot', 'Sống sáng suốt', '', ''),
(217, 96, 'vn', 'Sức mạnh tiềm thức', '', '', '', '', '', '', 'Joseph Murphy', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'suc-manh-tiem-thuc', 'Sức mạnh tiềm thức', '', ''),
(218, 96, 'en', 'english version Sức mạnh tiềm thức', 'english version ', '', '', 'english version ', '', '', 'Joseph Murphy', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-suc-manh-tiem-thuc', 'Sức mạnh tiềm thức', '', ''),
(219, 97, 'vn', 'Thói quen thứ 8', '', '', '', '', '', '', 'Stephen R. Covey', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thoi-quen-thu-8', 'Thói quen thứ 8', '', ''),
(220, 97, 'en', 'english version Thói quen thứ 8', 'english version ', '', '', 'english version ', '', '', 'Stephen R. Covey', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thoi-quen-thu-8', 'Thói quen thứ 8', '', ''),
(221, 98, 'vn', 'Sức mạnh của lòng kiên nhẫn', '', '', '', '', '', '', 'M. J. Ryan', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'suc-manh-cua-long-kien-nhan', 'Sức mạnh của lòng kiên nhẫn', '', ''),
(222, 98, 'en', 'english version Sức mạnh của lòng kiên nhẫn', 'english version ', '', '', 'english version ', '', '', 'M. J. Ryan', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-suc-manh-cua-long-kien-nhan', 'Sức mạnh của lòng kiên nhẫn', '', ''),
(223, 99, 'vn', 'Cho đi là còn mãi', '', '', '', '', '', '', 'Azim Jamal, Harvey McKinnon', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cho-di-la-con-mai', 'Cho đi là còn mãi', '', ''),
(224, 99, 'en', 'english version Cho đi là còn mãi', 'english version ', '', '', 'english version ', '', '', 'Azim Jamal, Harvey McKinnon', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cho-di-la-con-mai', 'Cho đi là còn mãi', '', ''),
(225, 100, 'vn', 'Khám phá sức mạnh bản thân', '', '', '', '', '', '', 'Gillian Stokes', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'kham-pha-suc-manh-ban-than', 'Khám phá sức mạnh bản thân', '', ''),
(226, 100, 'en', 'english version Khám phá sức mạnh bản thân', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-kham-pha-suc-manh-ban-than', 'Khám phá sức mạnh bản thân', '', ''),
(227, 101, 'vn', 'Khổng tử tinh hoa', '', '', '', '', '', '', 'Yu Đan', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'khong-tu-tinh-hoa', 'Khổng tử tinh hoa', '', ''),
(228, 101, 'en', 'english version Khổng tử tinh hoa', 'english version ', '', '', 'english version ', '', '', 'Yu Đan', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-khong-tu-tinh-hoa', 'Khổng tử tinh hoa', '', ''),
(229, 102, 'vn', 'Tiểu thuyết Bố Già', '', '', '', '', '', '', 'Mario Puzo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-bo-gia', 'Tiểu thuyết Bố Già', '', ''),
(230, 102, 'en', 'english version Tiểu thuyết Bố Già', 'english version ', '', '', 'english version ', '', '', 'Mario Puzo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-bo-gia', 'Tiểu thuyết Bố Già', '', ''),
(231, 103, 'vn', 'Bá tước Monte Cristo', '', '', '', '', '', '', 'Alexandre Dumas', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ba-tuoc-monte-cristo', 'Bá tước Monte Cristo', '', ''),
(232, 103, 'en', 'english version Bá tước Monte Cristo', 'english version ', '', '', 'english version ', '', '', 'Alexandre Dumas', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ba-tuoc-monte-cristo', 'Bá tước Monte Cristo', '', ''),
(233, 104, 'vn', 'Ông già và biển cả', '', '', '', '', '', '', 'Ernest Hemingway', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ong-gia-va-bien-ca', 'Ông già và biển cả', '', ''),
(234, 104, 'en', 'english version Ông già và biển cả', 'english version ', '', '', 'english version ', '', '', 'Ernest Hemingway', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ong-gia-va-bien-ca', 'Ông già và biển cả', '', ''),
(235, 105, 'vn', 'Tiếng gọi nơi hoang dã', '', '', '', '', '', '', 'Jack London', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieng-goi-noi-hoang-da', 'Tiếng gọi nơi hoang dã', '', ''),
(236, 105, 'en', 'english version Tiếng gọi nơi hoang dã', 'english version ', '', '', 'english version ', '', '', 'Jack London', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieng-goi-noi-hoang-da', 'Tiếng gọi nơi hoang dã', '', ''),
(237, 106, 'vn', 'Tiểu thuyết Nanh Trắng', '', '', '', '', '', '', 'Jack London', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-nanh-trang', 'Tiểu thuyết Nanh Trắng', '', ''),
(238, 106, 'en', 'english version Tiểu thuyết Nang Trắng', 'english version ', '', '', 'english version ', '', '', 'Jack London', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-nang-trang', 'Tiểu thuyết Nang Trắng', '', ''),
(239, 107, 'vn', 'Tiểu thuyết sống mòn', '', '', '', '', '', '', 'Nam Cao', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-song-mon', 'Tiểu thuyết sống mòn', '', ''),
(240, 107, 'en', 'english version Tiểu thuyết sống mòn', 'english version ', '', '', 'english version ', '', '', 'Nam Cao', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-song-mon', 'Tiểu thuyết sống mòn', '', ''),
(241, 108, 'vn', 'Những người khốn khổ', '', '', '', '', '', '', 'Victor Hugo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nhung-nguoi-khon-kho', 'Những người khốn khổ', '', ''),
(242, 108, 'en', 'english version Những người khốn khổ', 'english version ', '', '', 'english version ', '', '', 'Victor Hugo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nhung-nguoi-khon-kho', 'Những người khốn khổ', '', ''),
(243, 109, 'vn', 'Tôn tử binh pháp & 36 kế', '', '', '', '', '', '', 'Trịnh Ngọc Hoa', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ton-tu-binh-phap-36-ke', 'Tôn tử binh pháp & 36 kế', '', ''),
(244, 109, 'en', 'english version Tôn tử binh pháp & 36 kế', 'english version ', '', '', 'english version ', '', '', 'Trịnh Ngọc Hoa', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ton-tu-binh-phap-36-ke', 'Tôn tử binh pháp & 36 kế', '', ''),
(245, 110, 'vn', 'Thời khắc định mệnh', '', '', '', '', '', '', 'Agatha Christie', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thoi-khac-dinh-menh', 'Thời khắc định mệnh', '', ''),
(246, 110, 'en', 'english version Thời khắc định mệnh', 'english version ', '', '', 'english version ', '', '', 'Agatha Christie', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thoi-khac-dinh-menh', 'Thời khắc định mệnh', '', ''),
(247, 111, 'vn', 'Tiểu thuyết Chết Đi Cho Rồi', '', '', '', '', '', '', 'Matthew Quick', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-chet-di-cho-roi', 'Tiểu thuyết Chết Đi Cho Rồi', '', ''),
(248, 111, 'en', 'english version Tiểu thuyết Chết Đi Cho Rồi', 'english version ', '', '', 'english version ', '', '', 'Matthew Quick', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-chet-di-cho-roi', 'Tiểu thuyết Chết Đi Cho Rồi', '', ''),
(249, 112, 'vn', 'Tiểu thuyết Mười Năm', '', '', '', '', '', '', 'Tô Hoài', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-muoi-nam', 'Tiểu thuyết Mười Năm', '', ''),
(250, 112, 'en', 'english version Tiểu thuyết Mười Năm', 'english version ', '', '', 'english version ', '', '', 'Matthew Quick', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-muoi-nam', 'Tiểu thuyết Mười Năm', '', ''),
(251, 113, 'vn', 'Tiểu thuyết Giông Tố', '', '', '', '', '', '', 'Vũ Trọng Phụng', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-giong-to', 'Tiểu thuyết Giông Tố', '', ''),
(252, 113, 'en', 'english version Tiểu thuyết Giông Tố', 'english version ', '', '', 'english version ', '', '', 'Vũ Trọng Phụng', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-giong-to', 'Tiểu thuyết Giông Tố', '', ''),
(253, 114, 'vn', 'Tiểu thuyết Triệu Phú Khu Ổ Chuột', '', '', '', '', '', '', 'Vikas Swarup', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-trieu-phu-khu-o-chuot', 'Tiểu thuyết Triệu Phú Khu Ổ Chuột', '', ''),
(254, 114, 'en', 'english version Tiểu thuyết Triệu Phú Khu Ổ Chuột', 'english version ', '', '', 'english version ', '', '', 'Vikas Swarup', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-trieu-phu-khu-o-chuot', 'Tiểu thuyết Triệu Phú Khu Ổ Chuột', '', ''),
(255, 115, 'vn', 'Ngày cuối cùng của một tử tù', '', '', '', '', '', '', 'Victor Hugo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ngay-cuoi-cung-cua-mot-tu-tu', 'Ngày cuối cùng của một tử tù', '', ''),
(256, 115, 'en', 'english version Ngày cuối cùng của một tử tù', 'english version ', '', '', 'english version ', '', '', 'Victor Hugo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ngay-cuoi-cung-cua-mot-tu-tu', 'Ngày cuối cùng của một tử tù', '', ''),
(257, 116, 'vn', 'Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham LinColn', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cuoc-doi-va-su-nghiep-tong-thong-my-abraham-lincoln', 'Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham LinColn', '', ''),
(258, 116, 'en', 'english version Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham LinColn', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cuoc-doi-va-su-nghiep-tong-thong-my-abraham-lincoln', 'Cuộc đời và sự nghiệp Tổng thống Mỹ Abraham LinColn', '', ''),
(259, 117, 'vn', 'Đảo châu báu', '', '', '', '', '', '', 'Robert Louis Stevenson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dao-chau-bau', 'Đảo châu báu', '', ''),
(260, 117, 'en', 'english version Đảo châu báu', 'english version ', '', '', 'english version ', '', '', 'Robert Louis Stevenson', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dao-chau-bau', 'Đảo châu báu', '', ''),
(261, 118, 'vn', 'Hai vạn dặm dưới biển', '', '', '', '', '', '', 'Jules Verne', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hai-van-dam-duoi-bien', 'Hai vạn dặm dưới biển', '', ''),
(262, 118, 'en', 'english version Hai vạn dặm dưới biển', 'english version ', '', '', 'english version ', '', '', 'Jules Verne', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hai-van-dam-duoi-bien', 'Hai vạn dặm dưới biển', '', ''),
(263, 119, 'vn', 'Sự im lặng của bầy cừu', '', '', '', '', '', '', 'Thomas Harris', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'su-im-lang-cua-bay-cuu', 'Sự im lặng của bầy cừu', '', ''),
(264, 119, 'en', 'english version Sự im lặng của bầy cừu', 'english version ', '', '', 'english version ', '', '', 'Thomas Harris', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-su-im-lang-cua-bay-cuu', 'Sự im lặng của bầy cừu', '', ''),
(265, 120, 'vn', 'Tiểu thuyết Số Đỏ', '', '', '', '', '', '', 'Vũ Trọng Phụng', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tieu-thuyet-so-do', 'Tiểu thuyết Số Đỏ', '', ''),
(266, 120, 'en', 'english version Tiểu thuyết Số Đỏ', 'english version ', '', '', 'english version ', '', '', 'Vũ Trọng Phụng', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tieu-thuyet-so-do', 'Tiểu thuyết Số Đỏ', '', ''),
(267, 121, 'vn', 'Sách lược đầu tư của Warren Buffett', '', '', '', '', '', '', 'Lí Thành Tư', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'sach-luoc-dau-tu-cua-warren-buffett', 'Sách lược đầu tư của Warren Buffett', '', ''),
(268, 121, 'en', 'english version Sách lược đầu tư của Warren Buffett', 'english version ', '', '', 'english version ', '', '', 'Lí Thành Tư', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-sach-luoc-dau-tu-cua-warren-buffett', 'Sách lược đầu tư của Warren Buffett', '', ''),
(269, 122, 'vn', '80 chiêu thức kinh doanh thành công', '', '', '', '', '', '', 'Vương Chí Cương', '', '', '', '', '', '', '', '', '', '', '', '', 0, '80-chieu-thuc-kinh-doanh-thanh-cong', '80 chiêu thức kinh doanh thành công', '', ''),
(270, 122, 'en', 'english version 80 chiêu thức kinh doanh thành công', 'english version ', '', '', 'english version ', '', '', 'Vương Chí Cương', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-80-chieu-thuc-kinh-doanh-thanh-cong', '80 chiêu thức kinh doanh thành công', '', ''),
(271, 123, 'vn', 'Bí mật tư duy triệu phú', '', '', '', '', '', '', 'T. Harv Eker', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bi-mat-tu-duy-trieu-phu', 'Bí mật tư duy triệu phú', '', ''),
(272, 123, 'en', 'english version Bí mật tư duy triệu phú', 'english version ', '', '', 'english version ', '', '', 'T. Harv Eker', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bi-mat-tu-duy-trieu-phu', 'Bí mật tư duy triệu phú', '', ''),
(273, 124, 'vn', 'Cổ phiếu thường lợi nhuận phi thường', '', '', '', '', '', '', 'Philip A. Fisher', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'co-phieu-thuong-loi-nhuan-phi-thuong', 'Cổ phiếu thường lợi nhuận phi thường', '', ''),
(274, 124, 'en', 'english version Cổ phiếu thường lợi nhuận phi thường', 'english version ', '', '', 'english version ', '', '', 'Philip A. Fisher', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-co-phieu-thuong-loi-nhuan-phi-thuong', 'Cổ phiếu thường lợi nhuận phi thường', '', ''),
(275, 125, 'vn', 'Bí quyêt gây dựng cơ nghiệp bạc tỷ', '', '', '', '', '', '', 'Adam Khoo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bi-quyet-gay-dung-co-nghiep-bac-ty', 'Bí quyêt gây dựng cơ nghiệp bạc tỷ', '', ''),
(276, 125, 'en', 'english version Bí quyêt gây dựng cơ nghiệp bạc tỷ', 'english version ', '', '', 'english version ', '', '', 'Adam Khoo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bi-quyet-gay-dung-co-nghiep-bac-ty', 'Bí quyêt gây dựng cơ nghiệp bạc tỷ', '', ''),
(277, 126, 'vn', '100 quy luật bất biến để thành công trong kinh doanh', '', '', '', '', '', '', 'Brian Tracy', '', '', '', '', '', '', '', '', '', '', '', '', 0, '100-quy-luat-bat-bien-de-thanh-cong-trong-kinh-doanh', '100 quy luật bất biến để thành công trong kinh doanh', '', ''),
(278, 126, 'en', 'english version 100 quy luật bất biến để thành công trong kinh doanh', 'english version ', '', '', 'english version ', '', '', 'Brian Tracy', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-100-quy-luat-bat-bien-de-thanh-cong-trong-kinh-doanh', '100 quy luật bất biến để thành công trong kinh doanh', '', ''),
(279, 127, 'vn', 'Làm giàu một cách khoa học', '', '', '', '', '', '', 'Wallace D. Wattles', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'lam-giau-mot-cach-khoa-hoc', 'Làm giàu một cách khoa học', '', ''),
(280, 127, 'en', 'english version Làm giàu một cách khoa học', 'english version ', '', '', 'english version ', '', '', 'Wallace D. Wattles', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-lam-giau-mot-cach-khoa-hoc', 'Làm giàu một cách khoa học', '', ''),
(281, 128, 'vn', 'Làm chủ tư duy thay đổi vận mệnh', '', '', '', '', '', '', 'Adam Khoo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'lam-chu-tu-duy-thay-doi-van-menh', 'Làm chủ tư duy thay đổi vận mệnh', '', ''),
(282, 128, 'en', 'english version Làm chủ tư duy thay đổi vận mệnh', 'english version ', '', '', 'english version ', '', '', 'Adam Khoo', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-lam-chu-tu-duy-thay-doi-van-menh', 'Làm chủ tư duy thay đổi vận mệnh', '', ''),
(283, 129, 'vn', 'Bí mật của vua Solomon', '', '', '', '', '', '', 'Bruce Fleet', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bi-mat-cua-vua-solomon', 'Bí mật của vua Solomon', '', ''),
(284, 129, 'en', 'english version Bí mật của vua Solomon', 'english version ', '', '', 'english version ', '', '', 'Bruce Fleet', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bi-mat-cua-vua-solomon', 'Bí mật của vua Solomon', '', ''),
(285, 130, 'vn', 'Phong cách lãnh đạo của các tập đoàn Nhật Bản', '', '', '', '', '', '', 'Tủ Sách Kinh Doanh Thế Kỷ 21', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phong-cach-lanh-dao-cua-cac-tap-doan-nhat-ban', 'Phong cách lãnh đạo của các tập đoàn Nhật Bản', '', ''),
(286, 130, 'en', 'english version Phong cách lãnh đạo của các tập đoàn Nhật Bản', 'english version ', '', '', 'english version ', '', '', 'Tủ Sách Kinh Doanh Thế Kỷ 21', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-phong-cach-lanh-dao-cua-cac-tap-doan-nhat-ban', 'Phong cách lãnh đạo của các tập đoàn Nhật Bản', '', ''),
(287, 131, 'vn', 'Dạy con làm giàu tập 1 - Để không có tiền vẫn tạo ra tiền', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-1-de-khong-co-tien-van-tao-ra-tien', 'Dạy con làm giàu tập 1 - Để không có tiền vẫn tạo ra tiền', '', ''),
(288, 131, 'en', 'english version Dạy con làm giàu tập 1 - Để không có tiền vẫn tạo ra tiền', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-1-de-khong-co-tien-van-tao-ra-tien', 'Dạy con làm giàu tập 1 - Để không có tiền vẫn tạo ra tiền', '', ''),
(289, 132, 'vn', 'Dạy con làm giàu tập 2 - Sử dụng đồng vốn', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-2-su-dung-dong-von', 'Dạy con làm giàu tập 2 - Sử dụng đồng vốn', '', ''),
(290, 132, 'en', 'english version Dạy con làm giàu tập 2 - Sử dụng đồng vốn', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-2-su-dung-dong-von', 'Dạy con làm giàu tập 2 - Sử dụng đồng vốn', '', ''),
(291, 133, 'vn', 'Dạy con làm giàu tập 3 - Hướng dẫn đầu tư', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-3-huong-dan-dau-tu', 'Dạy con làm giàu tập 3 - Hướng dẫn đầu tư', '', ''),
(292, 133, 'en', 'english version Dạy con làm giàu tập 3 - Hướng dẫn đầu tư', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-3-huong-dan-dau-tu', 'Dạy con làm giàu tập 3 - Hướng dẫn đầu tư', '', ''),
(293, 134, 'vn', 'Dạy con làm giàu tập 4 - Con giàu con thông minh', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-4-con-giau-con-thong-minh', 'Dạy con làm giàu tập 4 - Con giàu con thông minh', '', ''),
(294, 134, 'en', 'english version Dạy con làm giàu tập 4 - Con giàu con thông minh', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-4-con-giau-con-thong-minh', 'Dạy con làm giàu tập 4 - Con giàu con thông minh', '', ''),
(295, 135, 'vn', 'Dạy con làm giàu tập 5 - Để có sức mạnh về tài chính', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-5-de-co-suc-manh-ve-tai-chinh', 'Dạy con làm giàu tập 5 - Để có sức mạnh về tài chính', '', ''),
(296, 135, 'en', 'english version Dạy con làm giàu tập 5 - Để có sức mạnh về tài chính', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-5-de-co-suc-manh-ve-tai-chinh', 'Dạy con làm giàu tập 5 - Để có sức mạnh về tài chính', '', ''),
(297, 136, 'vn', 'Dạy con làm giàu tập 6 - Những câu chuyện thành công', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-6-nhung-cau-chuyen-thanh-cong', 'Dạy con làm giàu tập 6 - Những câu chuyện thành công', '', ''),
(298, 136, 'en', 'english version Dạy con làm giàu tập 6 - Những câu chuyện thành công', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-6-nhung-cau-chuyen-thanh-cong', 'Dạy con làm giàu tập 6 - Những câu chuyện thành công', '', ''),
(299, 137, 'vn', 'Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-7-ai-da-lay-tien-cua-toi', 'Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi', '', ''),
(300, 137, 'en', 'english version Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-7-ai-da-lay-tien-cua-toi', 'Dạy con làm giàu tập 7 - Ai đã lấy tiền của tôi', '', ''),
(301, 138, 'vn', 'Dạy con làm giàu tập 8 - Để có những đồng tiền tích cực', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-8-de-co-nhung-dong-tien-tich-cuc', 'Dạy con làm giàu tập 8 - Để có những đồng tiền tích cực', '', ''),
(302, 138, 'en', 'english version Dạy con làm giàu tập 8 - Để có những đồng tiền tích cực', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-8-de-co-nhung-dong-tien-tich-cuc', 'Dạy con làm giàu tập 8 - Để có những đồng tiền tích cực', '', ''),
(303, 139, 'vn', 'Dạy con làm giàu tập 9 - Những bí mật về tiền bạc mà bạn không học ở trường', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-9-nhung-bi-mat-ve-tien-bac-ma-ban-khong-hoc-o-truong', 'Dạy con làm giàu tập 9 - Những bí mật về tiền bạc mà bạn không học ở trường', '', ''),
(304, 139, 'en', 'english version Dạy con làm giàu tập 9 - Những bí mật về tiền bạc mà bạn không học ở trường', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-9-nhung-bi-mat-ve-tien-bac-ma-ban-khong-hoc-o-truong', 'Dạy con làm giàu tập 9 - Những bí mật về tiền bạc mà bạn không học ở trường', '', ''),
(305, 140, 'vn', 'Dạy con làm giàu tập 10 - Trước khi bạn thôi việc', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-10-truoc-khi-ban-thoi-viec', 'Dạy con làm giàu tập 10 - Trước khi bạn thôi việc', '', ''),
(306, 140, 'en', 'english version Dạy con làm giàu tập 10 - Trước khi bạn thôi việc', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-10-truoc-khi-ban-thoi-viec', 'Dạy con làm giàu tập 10 - Trước khi bạn thôi việc', '', ''),
(307, 141, 'vn', 'Dạy con làm giàu tập 11 - Trường dạy kinh doanh', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-11-truong-day-kinh-doanh', 'Dạy con làm giàu tập 11 - Trường dạy kinh doanh', '', ''),
(308, 141, 'en', 'english version Dạy con làm giàu tập 11 - Trường dạy kinh doanh', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-11-truong-day-kinh-doanh', 'Dạy con làm giàu tập 11 - Trường dạy kinh doanh', '', ''),
(309, 142, 'vn', 'Dạy con làm giàu tập 12 - Lời tiên tri của người cha giàu', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-12-loi-tien-tri-cua-nguoi-cha-giau', 'Dạy con làm giàu tập 12 - Lời tiên tri của người cha giàu', '', ''),
(310, 142, 'en', 'english version Dạy con làm giàu tập 12 - Lời tiên tri của người cha giàu', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-12-loi-tien-tri-cua-nguoi-cha-giau', 'Dạy con làm giàu tập 12 - Lời tiên tri của người cha giàu', '', ''),
(311, 143, 'vn', 'Dạy con làm giàu tập 13 - Nâng cao chỉ số IQ tài chính', '', '', '', '', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'day-con-lam-giau-tap-13-nang-cao-chi-so-iq-tai-chinh', 'Dạy con làm giàu tập 13 - Nâng cao chỉ số IQ tài chính', '', ''),
(312, 143, 'en', 'english version Dạy con làm giàu tập 13 - Nâng cao chỉ số IQ tài chính', 'english version ', '', '', 'english version ', '', '', 'Robert T. Kiyosaki', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-day-con-lam-giau-tap-13-nang-cao-chi-so-iq-tai-chinh', 'Dạy con làm giàu tập 13 - Nâng cao chỉ số IQ tài chính', '', ''),
(313, 144, 'vn', 'Con người 80/20 chín yêu tố cốt lõi của thành công 80/20 trong công việc', '', '', '', '', '', '', 'Richard Koch', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'con-nguoi-8020-chin-yeu-to-cot-loi-cua-thanh-cong-8020-trong-cong-viec', 'Con người 80/20 chín yêu tố cốt lõi của thành công 80/20 trong công việc', '', ''),
(314, 144, 'en', 'english version Con người 80/20 chín yêu tố cốt lõi của thành công 80/20 trong công việc', 'english version ', '', '', 'english version ', '', '', 'Richard Koch', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-con-nguoi-8020-chin-yeu-to-cot-loi-cua-thanh-cong-8020-trong-cong-viec', 'Con người 80/20 chín yêu tố cốt lõi của thành công 80/20 trong công việc', '', ''),
(315, 145, 'vn', 'Đừng bao giờ đi ăn một mình', '', '', '', '', '', '', 'Keith Ferrazzi', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dung-bao-gio-di-an-mot-minh', 'Đừng bao giờ đi ăn một mình', '', ''),
(316, 145, 'en', 'english version Đừng bao giờ đi ăn một mình', 'english version ', '', '', 'english version ', '', '', 'Keith Ferrazzi', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dung-bao-gio-di-an-mot-minh', 'Đừng bao giờ đi ăn một mình', '', ''),
(317, 146, 'vn', 'Mỗi ngày tiết kiệm một giờ', '', '', '', '', '', '', 'Michael Heppell', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'moi-ngay-tiet-kiem-mot-gio', 'Mỗi ngày tiết kiệm một giờ', '', ''),
(318, 146, 'en', 'english version Mỗi ngày tiết kiệm một giờ', 'english version ', '', '', 'english version ', '', '', 'Michael Heppell', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-moi-ngay-tiet-kiem-mot-gio', 'Mỗi ngày tiết kiệm một giờ', '', ''),
(319, 147, 'vn', 'Người giàu có nhất thành Babylon', '', '', '', '', '', '', 'George S. Clason', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nguoi-giau-co-nhat-thanh-babylon', 'Người giàu có nhất thành Babylon', '', ''),
(320, 147, 'en', 'english version Người giàu có nhất thành Babylon', 'english version ', '', '', 'english version ', '', '', 'George S. Clason', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nguoi-giau-co-nhat-thanh-babylon', 'Người giàu có nhất thành Babylon', '', ''),
(321, 148, 'vn', '101 trí tuệ người Do Thái', '', '', '', '', '', '', 'Eran Katz', '', '', '', '', '', '', '', '', '', '', '', '', 0, '101-tri-tue-nguoi-do-thai', '101 trí tuệ người Do Thái', '', ''),
(322, 148, 'en', 'english version 101 trí tuệ người Do Thái', 'english version ', '', '', 'english version ', '', '', 'Eran Katz', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-101-tri-tue-nguoi-do-thai', '101 trí tuệ người Do Thái', '', ''),
(323, 149, 'vn', 'Thế giới phẳng', '', '', '', '', '', '', 'Thomas Friedman', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'the-gioi-phang', 'Thế giới phẳng', '', ''),
(324, 149, 'en', 'english version Thế giới phẳng', 'english version ', '', '', 'english version ', '', '', 'Thomas Friedman', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-the-gioi-phang', 'Thế giới phẳng', '', ''),
(325, 150, 'vn', 'Tuần làm việc 4 giờ', '', '', '', '', '', '', 'Timothy Ferriss', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tuan-lam-viec-4-gio', 'Tuần làm việc 4 giờ', '', ''),
(326, 150, 'en', 'english version Tuần làm việc 4 giờ', 'english version ', '', '', 'english version ', '', '', 'Timothy Ferriss', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tuan-lam-viec-4-gio', 'Tuần làm việc 4 giờ', '', ''),
(327, 151, 'vn', 'Tứ thư lãnh đạo', '', '', '', '', '', '', 'Hòa Nhân', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tu-thu-lanh-dao', 'Tứ thư lãnh đạo', '', ''),
(328, 151, 'en', 'english version Tứ thư lãnh đạo', 'english version ', '', '', 'english version ', '', '', 'Hòa Nhân', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tu-thu-lanh-dao', 'Tứ thư lãnh đạo', '', ''),
(329, 152, 'vn', '999 Bí quyết vàng trong kinh doanh', '', '', '', '', '', '', 'Tủ Sách Kinh Doanh Thế Kỷ 21', '', '', '', '', '', '', '', '', '', '', '', '', 0, '999-bi-quyet-vang-trong-kinh-doanh', '999 Bí quyết vàng trong kinh doanh', '', ''),
(330, 152, 'en', 'english version 999 Bí quyết vàng trong kinh doanh', 'english version ', '', '', 'english version ', '', '', 'Tủ Sách Kinh Doanh Thế Kỷ 21', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-999-bi-quyet-vang-trong-kinh-doanh', '999 Bí quyết vàng trong kinh doanh', '', ''),
(331, 153, 'vn', 'Dám làm giàu', '', '', '', '', '', '', 'Phạm Tuấn Sơn', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dam-lam-giau', 'Dám làm giàu', '', ''),
(332, 153, 'en', 'english version Dám làm giàu', 'english version ', '', '', 'english version ', '', '', 'Phạm Tuấn Sơn', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dam-lam-giau', 'Dám làm giàu', '', ''),
(333, 154, 'vn', 'Thành công không còn là bí mật', '', '', '', '', '', '', 'Noah St. John', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thanh-cong-khong-con-la-bi-mat', 'Thành công không còn là bí mật', '', ''),
(334, 154, 'en', 'english version Thành công không còn là bí mật', 'english version ', '', '', 'english version ', '', '', 'Noah St. John', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thanh-cong-khong-con-la-bi-mat', 'Thành công không còn là bí mật', '', ''),
(335, 155, 'vn', '100 Ý tưởng tiếp thị tuyệt hay', '', '', '', '', '', '', 'Jim Blythe', '', '', '', '', '', '', '', '', '', '', '', '', 0, '100-y-tuong-tiep-thi-tuyet-hay', '100 Ý tưởng tiếp thị tuyệt hay', '', ''),
(336, 155, 'en', 'english version 100 Ý tưởng tiếp thị tuyệt hay', 'english version ', '', '', 'english version ', '', '', 'Jim Blythe', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-100-y-tuong-tiep-thi-tuyet-hay', '100 Ý tưởng tiếp thị tuyệt hay', '', ''),
(337, 156, 'vn', 'Kinh doanh bằng tâm lý', '', '', '', '', '', '', 'Brian Tracy', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'kinh-doanh-bang-tam-ly', 'Kinh doanh bằng tâm lý', '', ''),
(338, 156, 'en', 'english version Kinh doanh bằng tâm lý', 'english version ', '', '', 'english version ', '', '', 'Brian Tracy', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-kinh-doanh-bang-tam-ly', 'Kinh doanh bằng tâm lý', '', ''),
(339, 157, 'vn', 'Những mẩu chuyện hài hước trong kinh doanh của người Do Thái', '', '', '', '', '', '', 'Hoa Sơn', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nhung-mau-chuyen-hai-huoc-trong-kinh-doanh-cua-nguoi-do-thai', 'Những mẩu chuyện hài hước trong kinh doanh của người Do Thái', '', ''),
(340, 157, 'en', 'english version Những mẩu chuyện hài hước trong kinh doanh của người Do Thái', 'english version ', '', '', 'english version ', '', '', 'Hoa Sơn', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nhung-mau-chuyen-hai-huoc-trong-kinh-doanh-cua-nguoi-do-thai', 'Những mẩu chuyện hài hước trong kinh doanh của người Do Thái', '', ''),
(341, 158, 'vn', 'Sách đen về tinh thần doanh nhân', '', '', '', '', '', '', 'Fernando Trías De Bes', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'sach-den-ve-tinh-than-doanh-nhan', 'Sách đen về tinh thần doanh nhân', '', ''),
(342, 158, 'en', 'english version Sách đen về tinh thần doanh nhân', 'english version ', '', '', 'english version ', '', '', 'Fernando Trías De Bes', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-sach-den-ve-tinh-than-doanh-nhan', 'Sách đen về tinh thần doanh nhân', '', ''),
(343, 159, 'vn', 'Trí tuệ kinh doanh và lý thuyết trò chơi', '', '', '', '', '', '', 'Hình Quần Lân & Túc Xuân Lễ', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tri-tue-kinh-doanh-va-ly-thuyet-tro-choi', 'Trí tuệ kinh doanh và lý thuyết trò chơi', '', ''),
(344, 159, 'en', 'english version Trí tuệ kinh doanh và lý thuyết trò chơi', 'english version ', '', '', 'english version ', '', '', 'Hình Quần Lân & Túc Xuân Lễ', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tri-tue-kinh-doanh-va-ly-thuyet-tro-choi', 'Trí tuệ kinh doanh và lý thuyết trò chơi', '', ''),
(345, 160, 'vn', 'Thương gia Do Thái bậc thầy kinh doanh', '', '', '', '', '', '', 'Trương Đống Triết', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thuong-gia-do-thai-bac-thay-kinh-doanh', 'Thương gia Do Thái bậc thầy kinh doanh', '', ''),
(346, 160, 'en', 'english version Thương gia Do Thái bậc thầy kinh doanh', 'english version ', '', '', 'english version ', '', '', 'Trương Đống Triết', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thuong-gia-do-thai-bac-thay-kinh-doanh', 'Thương gia Do Thái bậc thầy kinh doanh', '', ''),
(347, 161, 'vn', 'Hiều về trái tim', '', '', '', '', '', '', 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hieu-ve-trai-tim', 'Hiều về trái tim', '', ''),
(348, 161, 'en', 'english version Hiều về trái tim', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hieu-ve-trai-tim', 'Hiều về trái tim', '', ''),
(349, 162, 'vn', 'Làm như chơi', '', '', '', '', '', '', 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'lam-nhu-choi', 'Làm như chơi', '', ''),
(350, 162, 'en', 'english version Làm như chơi', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-lam-nhu-choi', 'Làm như chơi', '', ''),
(351, 163, 'vn', 'Tôi thấy hoa vàng trên cỏ xanh', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'toi-thay-hoa-vang-tren-co-xanh', 'Tôi thấy hoa vàng trên cỏ xanh', '', ''),
(352, 163, 'en', 'english version Tôi thấy hoa vàng trên cỏ xanh', 'english version ', '', '', 'english version ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-toi-thay-hoa-vang-tren-co-xanh', 'Tôi thấy hoa vàng trên cỏ xanh', '', ''),
(353, 164, 'vn', 'Giận', '', '', '', '', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'gian', 'Giận', '', ''),
(354, 164, 'en', 'english version Giận', 'english version ', '', '', 'english version ', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-gian', 'Giận', '', ''),
(355, 165, 'vn', 'Phát triển bản thân', '', '', '', '', '', '', 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phat-trien-ban-than', 'Phát triển bản thân', '', ''),
(356, 165, 'en', 'english version Phát triển bản thân', 'english version ', '', '', 'english version ', '', '', 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-phat-trien-ban-than', 'Phát triển bản thân', '', ''),
(357, 166, 'vn', 'Làm chủ bản thân', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'lam-chu-ban-than', 'Làm chủ bản thân', '', ''),
(358, 166, 'en', 'english version Làm chủ bản thân', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-lam-chu-ban-than', 'Làm chủ bản thân', '', ''),
(359, 167, 'vn', 'Pháp Thoại- Thiền hiểu biết', '', '', '', '', '', '', 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phap-thoai-thien-hieu-biet', 'Pháp Thoại- Thiền hiểu biết', '', ''),
(360, 167, 'en', 'english version Pháp Thoại- Thiền hiểu biết', 'english version ', '', '', 'english version ', '', '', 'Thích Minh Niệm', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-phap-thoai-thien-hieu-biet', 'Pháp Thoại- Thiền hiểu biết', '', ''),
(361, 168, 'vn', 'Gia đình', '', '', '', '', '', '', 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'gia-dinh', 'Gia đình', '', ''),
(362, 168, 'en', 'english version Gia đình', 'english version ', '', '', 'english version ', '', '', 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-gia-dinh', 'Gia đình', '', ''),
(363, 169, 'vn', 'Gia đình hạnh phúc', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'gia-dinh-hanh-phuc', 'Gia đình hạnh phúc', '', ''),
(364, 169, 'en', 'english version Gia đình hạnh phúc', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-gia-dinh-hanh-phuc', 'Gia đình hạnh phúc', '', ''),
(365, 170, 'vn', 'Thiền ca', '', '', '', '', '', '', 'Nhiều tác giả', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thien-ca', 'Thiền ca', '', ''),
(366, 170, 'en', 'english version Thiền ca', 'english version ', '', '', 'english version ', '', '', 'Nhiều tác giả', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thien-ca', 'Thiền ca', '', ''),
(367, 171, 'vn', 'Kinh tế-môi trường-xã hội', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'kinh-te-moi-truong-xa-hoi', 'Kinh tế-môi trường-xã hội', '', ''),
(368, 171, 'en', 'english version Kinh tế-môi trường-xã hội', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-kinh-te-moi-truong-xa-hoi', 'Kinh tế-môi trường-xã hội', '', ''),
(369, 172, 'vn', 'Phép lạ của sự tỉnh thức', '', '', '', '', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phep-la-cua-su-tinh-thuc', 'Phép lạ của sự tỉnh thức', '', ''),
(370, 172, 'en', 'english version Phép lạ của sự tỉnh thức', 'english version ', '', '', 'english version ', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-phep-la-cua-su-tinh-thuc', 'Phép lạ của sự tỉnh thức', '', ''),
(371, 173, 'vn', 'Sống trong thực tại', '', '', '', '', '', '', 'Thích Viên Minh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'song-trong-thuc-tai', 'Sống trong thực tại', '', ''),
(372, 173, 'en', 'english version Sống trong thực tại', 'english version ', '', '', 'english version ', '', '', 'Thích Viên Minh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-song-trong-thuc-tai', 'Sống trong thực tại', '', ''),
(373, 174, 'vn', 'Vô Ngã Vô Ưu', '', '', '', '', '', '', 'AyyaKhema', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'vo-nga-vo-uu', 'Vô Ngã Vô Ưu', '', ''),
(374, 174, 'en', 'english version Vô Ngã Vô Ưu', 'english version ', '', '', 'english version ', '', '', 'AyyaKhema', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-vo-nga-vo-uu', 'Vô Ngã Vô Ưu', '', ''),
(375, 175, 'vn', 'Những vị Thiền sư đương thời', '', '', '', '', '', '', 'JackKorfeld', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'nhung-vi-thien-su-duong-thoi', 'Những vị Thiền sư đương thời', '', ''),
(376, 175, 'en', 'english version Những vị Thiền sư đương thời', 'english version ', '', '', 'english version ', '', '', 'JackKorfeld', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-nhung-vi-thien-su-duong-thoi', 'Những vị Thiền sư đương thời', '', ''),
(377, 176, 'vn', 'Dipa Ma - Cuộc đời và di huấn', '', '', '', '', '', '', 'AmySchmidt', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dipa-ma-cuoc-doi-va-di-huan', 'Dipa Ma - Cuộc đời và di huấn', '', ''),
(378, 176, 'en', 'english version Dipa Ma cuộc đời và di huấn', 'english version ', '', '', 'english version ', '', '', 'AmySchmidt', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dipa-ma-cuoc-doi-va-di-huan', 'Dipa Ma cuộc đời và di huấn', '', ''),
(379, 177, 'vn', 'Ngay trong kiếp sống này', '', '', '', '', '', '', 'SayadawUPandita', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'ngay-trong-kiep-song-nay', 'Ngay trong kiếp sống này', '', ''),
(380, 177, 'en', 'english version Ngay trong kiếp sống này', 'english version ', '', '', 'english version ', '', '', 'SayadawUPandita', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-ngay-trong-kiep-song-nay', 'Ngay trong kiếp sống này', '', ''),
(381, 178, 'vn', 'Hiểu luật nhân quả', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hieu-luat-nhan-qua', 'Hiểu luật nhân quả', '', ''),
(382, 178, 'en', 'english version Hiểu luật nhân quả', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hieu-luat-nhan-qua', 'Hiểu luật nhân quả', '', ''),
(383, 179, 'vn', 'Thích Thông Lạc', '', '', '', '', '', '', 'Thích Thông Lạc', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-thong-lac', 'Thích Thông Lạc', '', '');
INSERT INTO `product_languages` (`id`, `product_id`, `languages_code`, `lang_product_name`, `lang_product_des`, `lang_product_des2`, `lang_product_des3`, `lang_product_content`, `lang_product_content2`, `lang_product_content3`, `lang_product_code`, `lang_product_original`, `lang_product_size`, `lang_product_package`, `lang_product_delivery`, `lang_product_delivery_time`, `lang_product_payment`, `lang_product_payment_type`, `lang_product_sub_info1`, `lang_product_sub_info2`, `lang_product_sub_info3`, `lang_product_sub_info4`, `lang_product_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(384, 179, 'en', 'english version Thích Thông Lạc', 'english version ', '', '', 'english version ', '', '', 'Thích Thông Lạc', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-thong-lac', 'Thích Thông Lạc', '', ''),
(385, 180, 'vn', 'Thích Chân Quang', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-chan-quang', 'Thích Chân Quang', '', ''),
(386, 180, 'en', 'english version Thích Chân Quang', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-chan-quang', 'Thích Chân Quang', '', ''),
(387, 181, 'vn', 'Thích Nhật Từ', '', '', '', '', '', '', 'Thích Nhật Từ', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-nhat-tu', 'Thích Nhật Từ', '', ''),
(388, 181, 'en', 'english version Thích Nhật Từ', 'english version ', '', '', 'english version ', '', '', 'Thích Nhật Từ', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-nhat-tu', 'Thích Nhật Từ', '', ''),
(391, 183, 'vn', 'Thích Viên Minh', '', '', '', '', '', '', 'Thích Viên Minh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-vien-minh', 'Thích Viên Minh', '', ''),
(392, 183, 'en', 'english version Thích Viên Minh', 'english version ', '', '', 'english version ', '', '', 'Thích Viên Minh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-vien-minh', 'Thích Viên Minh', '', ''),
(393, 184, 'vn', 'Thích Thiện Xuân', '', '', '', '', '', '', 'Thích Thiện Xuân', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-thien-xuan', 'Thích Thiện Xuân', '', ''),
(394, 184, 'en', 'english version Thích Thiện Xuân', 'english version ', '', '', 'english version ', '', '', 'Thích Thiện Xuân', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-thien-xuan', 'Thích Thiện Xuân', '', ''),
(395, 185, 'vn', 'Thích Trí Siêu', '', '', '', '', '', '', 'Thích Trí Siêu', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-tri-sieu', 'Thích Trí Siêu', '', ''),
(396, 185, 'en', 'english version Thích Trí Siêu', 'english version ', '', '', 'english version ', '', '', 'Thích Trí Siêu', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-tri-sieu', 'Thích Trí Siêu', '', ''),
(397, 186, 'vn', 'Thích Nhất Hạnh', '', '', '', '', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'thich-nhat-hanh', 'Thích Nhất Hạnh', '', ''),
(398, 186, 'en', 'english version Thích Nhất Hạnh', 'english version ', '', '', 'english version ', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-thich-nhat-hanh', 'Thích Nhất Hạnh', '', ''),
(399, 187, 'vn', 'Đường xưa mây trắng', '', '', '', '', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'duong-xua-may-trang', 'Đường xưa mây trắng', '', ''),
(400, 187, 'en', 'english version Đường xưa mây trắng', 'english version ', '', '', 'english version ', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-duong-xua-may-trang', 'Đường xưa mây trắng', '', ''),
(401, 188, 'vn', 'Đức Phật và Phật Pháp', '', '', '', '', '', '', 'NaradaThera', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'duc-phat-va-phat-phap', 'Đức Phật và Phật Pháp', '', ''),
(402, 188, 'en', 'english version Đức Phật và Phật Pháp', 'english version ', '', '', 'english version ', '', '', 'NaradaThera', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-duc-phat-va-phat-phap', 'Đức Phật và Phật Pháp', '', ''),
(403, 189, 'vn', 'Suối nguồn tâm linh', '', '', '', '', '', '', 'AjahnChah', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'suoi-nguon-tam-linh', 'Suối nguồn tâm linh', '', ''),
(404, 189, 'en', 'english version Suối nguồn tâm linh', 'english version ', '', '', 'english version ', '', '', 'AjahnChah', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-suoi-nguon-tam-linh', 'Suối nguồn tâm linh', '', ''),
(405, 190, 'vn', 'Chủ động cái chết', '', '', '', '', '', '', 'Đức Đạt Lai Lạt Ma', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'chu-dong-cai-chet', 'Chủ động cái chết', '', ''),
(406, 190, 'en', 'english version Chủ động cái chết', 'english version ', '', '', 'english version ', '', '', 'Đức Đạt Lai Lạt Ma', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-chu-dong-cai-chet', 'Chủ động cái chết', '', ''),
(407, 191, 'vn', 'Cốt lõi của cõi bồ đề', '', '', '', '', '', '', 'Buddhadasa Bikkhu', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'cot-loi-cua-coi-bo-de', 'Cốt lõi của cõi bồ đề', '', ''),
(408, 191, 'en', 'english version Cốt lõi của cõi bồ đề', 'english version ', '', '', 'english version ', '', '', 'Buddhadasa Bikkhu', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-cot-loi-cua-coi-bo-de', 'Cốt lõi của cõi bồ đề', '', ''),
(409, 192, 'vn', 'Đạo lý', '', '', '', '', '', '', 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dao-ly', 'Đạo lý', '', ''),
(410, 192, 'en', 'english version Đạo lý', 'english version ', '', '', 'english version ', '', '', 'Thích Phước Tiến', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dao-ly', 'Đạo lý', '', ''),
(411, 193, 'vn', 'Sự khác biệt', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'su-khac-biet', 'Sự khác biệt', '', ''),
(412, 193, 'en', 'english version Sự khác biệt', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-su-khac-biet', 'Sự khác biệt', '', ''),
(413, 194, 'vn', 'Đạo', '', '', '', '', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'dao', 'Đạo', '', ''),
(414, 194, 'en', 'english version Đạo', 'english version ', '', '', 'english version ', '', '', 'Thích Chân Quang', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-dao', 'Đạo', '', ''),
(415, 195, 'vn', 'Hạnh phúc đích thực', '', '', '', '', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'hanh-phuc-dich-thuc', 'Hạnh phúc đích thực', '', ''),
(416, 195, 'en', 'english version Hạnh phúc đích thực', 'english version ', '', '', 'english version ', '', '', 'Thích Nhất Hạnh', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-hanh-phuc-dich-thuc', 'Hạnh phúc đích thực', '', ''),
(417, 196, 'vn', 'Tâm và đạo ', '', '', '', '', '', '', 'AhahnSumedho', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'tam-va-dao', 'Tâm và đạo ', '', ''),
(418, 196, 'en', 'english version Tâm và đạo ', 'english version ', '', '', 'english version ', '', '', 'AhahnSumedho', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-tam-va-dao', 'Tâm và đạo ', '', ''),
(419, 197, 'vn', 'Bát chánh đạo - Con đường hạnh phúc', '', '', '', '', '', '', 'Gunaratana', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'bat-chanh-dao-con-duong-hanh-phuc', 'Bát chánh đạo - Con đường hạnh phúc', '', ''),
(420, 197, 'en', 'english version Bát chánh đạo - Con đường hạnh phúc', 'english version ', '', '', 'english version ', '', '', 'Gunaratana', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-bat-chanh-dao-con-duong-hanh-phuc', 'Bát chánh đạo - Con đường hạnh phúc', '', ''),
(421, 198, 'vn', 'Phật giáo nhìn toàn diện ', '', '', '', '', '', '', 'Manhāthera', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'phat-giao-nhin-toan-dien', 'Phật giáo nhìn toàn diện ', '', ''),
(422, 198, 'en', 'english version Phật giáo nhìn toàn diện ', 'english version ', '', '', 'english version ', '', '', 'Manhāthera', '', '', '', '', '', '', '', '', '', '', '', '', 0, 'en-phat-giao-nhin-toan-dien', 'Phật giáo nhìn toàn diện ', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service`
--

INSERT INTO `service` (`service_id`, `service_name`, `service_des`, `service_content`, `service_img`, `service_views`, `servicecat_id`, `service_author`, `service_create_date`, `service_update_date`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(64, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', 'thong-tin-tuyen-dung1.jpg', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', 1),
(65, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', '-uploaded-pic-cat_chuongtrinh_cr_320x320.png', '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', 1),
(66, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2017-12-28', 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', 1),
(67, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, '0', 3, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', 1),
(68, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', '-uploaded_Teacher-female_cr_320x320.png', '0', 5, '', '2017-12-21', '2018-03-27', 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', 1),
(69, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', 'giao-vien-day-van.jpg', '0', 3, '', '2018-04-26', '2018-04-26', 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', 1),
(70, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', '', '0', 3, '', '2018-04-26', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat`
--

INSERT INTO `servicecat` (`servicecat_id`, `servicecat_name`, `servicecat_des`, `servicecat_content`, `servicecat_parent`, `servicecat_sort_order`, `servicecat_created_date`, `servicecat_update_date`, `state`, `servicecat_img`, `servicecat_sub_infor1`, `servicecat_sub_infor2`, `servicecat_sub_infor3`, `servicecat_sub_infor4`, `servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(3, 'Dịch Vụ', '', '', 0, 0, '2017-12-21', NULL, 1, 's1.jpg', NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', 1),
(4, 'Smart Reading Skills', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', 1),
(5, 'Tuyển dụng', '', '', 0, 0, '2018-03-27', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `servicecat_languages`
--

INSERT INTO `servicecat_languages` (`id`, `lang_servicecat_name`, `lang_servicecat_des`, `lang_servicecat_content`, `state`, `lang_servicecat_sub_infor1`, `lang_servicecat_sub_infor2`, `lang_servicecat_sub_infor3`, `lang_servicecat_sub_infor4`, `lang_servicecat_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `languages_code`, `servicecat_id`) VALUES
(5, 'Dịch Vụ', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Dịch Vụ', '', 'dich-vu', '', NULL, 'vn', 3),
(6, 'Dịch vụ', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Dịch vụ', '', 'dich-vu', '', NULL, 'en', 3),
(7, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'vn', 4),
(8, 'Smart Reading Skills', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Smart Reading Skills', '', 'smart-reading-skills', '', NULL, 'en', 4),
(9, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'vn', 5),
(10, 'Tuyển dụng', '', '', 1, NULL, NULL, NULL, NULL, NULL, 'Tuyển dụng', '', 'tuyen-dung', '', NULL, 'en', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `service_languages`
--

INSERT INTO `service_languages` (`id`, `languages_code`, `lang_service_name`, `lang_service_des`, `lang_service_content`, `lang_service_author`, `state`, `service_sub_infor1`, `service_sub_infor2`, `service_sub_infor3`, `service_sub_infor4`, `service_sub_infor5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `service_id`) VALUES
(83, 'vn', 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', '<p><strong>Vị tr&iacute; tuyển dụng:&nbsp;</strong>Chuy&ecirc;n vi&ecirc;n ph&aacute;t triển học liệu (full time)</p>\r\n\r\n<p><strong>Số lượng:&nbsp;</strong>02</p>\r\n\r\n<p><strong>Thời gian l&agrave;m việc:&nbsp;&nbsp;</strong>Giờ h&agrave;nh ch&iacute;nh từ thứ 2 đến thứ 7</p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc:&nbsp;</strong>Trung t&acirc;m Ames - 152 Ph&oacute; Đức Ch&iacute;nh, Ba Đ&igrave;nh, H&agrave; Nội</p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc</strong></p>\r\n\r\n<p>- Nghi&ecirc;n cứu v&agrave; thiết kế c&aacute;c chương tr&igrave;nh giảng dạy Tiếng Anh cho trẻ em, tiếng Anh luyện thi chứng chỉ quốc tế IELTS/TOEFL/TOEIC</p>\r\n\r\n<p>- Thiết kế, soạn thảo v&agrave; kiểm tra nội dung gi&aacute;o &aacute;n, c&ocirc;ng cụ giảng dạy dựa tr&ecirc;n nội dung s&aacute;ch gi&aacute;o tr&igrave;nh sẵn c&oacute; (lộ tr&igrave;nh học, Slides b&agrave;i giảng, s&aacute;ch, lesson plan &hellip;)</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học, ưu ti&ecirc;n c&aacute;c chuy&ecirc;n ng&agrave;nh Tiếng Anh (Sư phạm Ngoại ngữ, Đại học H&agrave; Nội, Ngoại Thương, Ngoại Giao), c&oacute; chứng chỉ IELTS từ 7.0, TOEIC từ 800 trở l&ecirc;n hoặc c&aacute;c bằng cấp tương tự (C1 CEFR) l&agrave; một lợi thế.</p>\r\n\r\n<p>- Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo, thẩm định, bi&ecirc;n soạn/x&acirc;y dựng c&aacute;c bộ gi&aacute;o tr&igrave;nh, học liệu trong giảng dạy tiếng Anh.</p>\r\n\r\n<p>- C&oacute; khả năng tổng hợp, ph&acirc;n t&iacute;ch th&ocirc;ng tin tốt, s&aacute;ng tạo v&agrave; nhiều &yacute; tưởng.</p>\r\n\r\n<p>- C&oacute; khả năng tự quản l&yacute; c&ocirc;ng việc v&agrave; l&agrave;m việc nh&oacute;m tốt.</p>\r\n\r\n<p>- C&oacute; khả năng sử dụng tin học văn ph&ograve;ng v&agrave; khai th&aacute;c th&ocirc;ng tin, t&agrave;i liệu từ Internet.</p>\r\n\r\n<p><strong>III. Quyền lợi</strong></p>\r\n\r\n<p>- Lương, thưởng cạnh tranh tr&ecirc;n thị trường.</p>\r\n\r\n<p>- Đ&oacute;ng BHXH, BHYT theo quy định của ph&aacute;p luật. Chế độ nghỉ lễ Tết, được tham gia c&aacute;c hoạt động team buidling v&agrave; sự kiện lớn trong năm.</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trường năng động, trẻ trung, đầy nhiệt huyết.</p>\r\n\r\n<p>- Cơ hội thăng tiến, ph&aacute;t triển cao.</p>\r\n\r\n<p>- Được đ&agrave;o tạo v&agrave; hướng dẫn nghiệp vụ để đ&aacute;p ứng y&ecirc;u cầu của c&ocirc;ng việc.</p>\r\n\r\n<p><strong>Ứng vi&ecirc;n quan t&acirc;m, vui l&ograve;ng gửi CV v&agrave;o địa chỉ mail:&nbsp;</strong><a href=\"mailto:anhttm@ames.edu.vn\"><strong>hr@ames.edu.vn</strong></a><strong>&nbsp;HOẶC nộp trực tiếp tại 96 L&ograve; Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội.</strong></p>\r\n\r\n<p><strong>Li&ecirc;n hệ: 0934599894 (Ms. Mai Anh)</strong></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TRUNG TÂM ANH NGỮ AMES TUYỂN DỤNG CHUYÊN VIÊN PHÁT TRIỂN HỌC LIỆU', 'Với dịch vụ quyết toán thuế - giải thể doanh nghiệp giá rẻ, nhanh chóng Nguyên Anh, chúng tôi sẽ giúp bạn giải quyết mọi vấn đề một cách chuyên nghiệp và hiệu quả nhất.', 'trung-tam-anh-ngu-ames-tuyen-dung-chuyen-vien-phat-trien-hoc-lieu', 'Quyết toán thuế', NULL, 64),
(84, 'en', 'Quyết toán thuế', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Quyết toán thuế', '', 'quyet-toan-thue', '', NULL, 64),
(85, 'vn', 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', '<p><strong>Vị tr&iacute; tuyển dụng: Gi&aacute;o vi&ecirc;n Tiếng Anh (full time)</strong></p>\r\n\r\n<p><strong>Số lượng:</strong>&nbsp;<strong>02</strong></p>\r\n\r\n<p><strong>Địa điểm l&agrave;m việc: 36 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</strong></p>\r\n\r\n<p><strong>I. M&ocirc; tả c&ocirc;ng việc, tr&aacute;ch nhiệm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n\r\n<p>- Giảng b&agrave;i, giao b&agrave;i, chấm b&agrave;i v&agrave; chữa b&agrave;i cho học vi&ecirc;n theo m&ocirc; h&igrave;nh học linh động</p>\r\n\r\n<p>- Theo d&otilde;i, chăm s&oacute;c học vi&ecirc;n, tư vấn cho học vi&ecirc;n phương ph&aacute;p học tập hiệu quả.</p>\r\n\r\n<p>- Phối hợp với gi&aacute;o vi&ecirc;n nước ngo&agrave;i trong qu&aacute; tr&igrave;nh giảng b&agrave;i cho học vi&ecirc;n.</p>\r\n\r\n<p>- Theo d&otilde;i hồ sơ của học vi&ecirc;n, nhập th&ocirc;ng tin học vi&ecirc;n v&agrave; t&igrave;nh h&igrave;nh học tập v&agrave;o phần mềm quản l&yacute;.</p>\r\n\r\n<p>- Theo d&otilde;i, bảo quản cơ sở vật chất trong văn ph&ograve;ng bao gồm t&agrave;i liệu học, b&agrave;i l&agrave;m của học vi&ecirc;n, văn ph&ograve;ng phẩm, v&agrave; c&aacute;c thiết bị điện tử kh&aacute;c.</p>\r\n\r\n<p>- Chuẩn bị t&agrave;i liệu học, hồ sơ học vi&ecirc;n v&agrave; thực hiện c&aacute;c c&ocirc;ng việc h&agrave;nh ch&iacute;nh kh&aacute;c của ph&ograve;ng.</p>\r\n\r\n<p><strong>II. Y&ecirc;u cầu:</strong></p>\r\n\r\n<p>- Tốt nghiệp Đại học chuy&ecirc;n ng&agrave;nh tiếng Anh/sư phạm tiếng Anh</p>\r\n\r\n<p>- Ưu ti&ecirc;n c&oacute; kinh nghiệm giảng dạy 01 năm hoặc đ&atilde; c&oacute; chứng chỉ IELTS/TOEFL iBT/TOEIC</p>\r\n\r\n<p>- Sử dụng th&agrave;nh thạo c&aacute;c phần mềm vi t&iacute;nh: Word, Excel&hellip;</p>\r\n\r\n<p>- C&oacute; khả năng giao tiếp, thuyết phục v&agrave; đ&agrave;m ph&aacute;n tốt.</p>\r\n\r\n<p>- H&ograve;a đồng, nhanh nhẹn, nhiệt t&igrave;nh v&agrave; trung thực.</p>\r\n\r\n<p>- L&agrave;m việc theo ca v&agrave; chịu &aacute;p lực tốt</p>\r\n\r\n<p><strong>III. Quyền lợi:</strong></p>\r\n\r\n<p>- Mức lương hấp dẫn (Lương cứng + lương kinh doanh)</p>\r\n\r\n<p>- Chế độ lương th&aacute;ng thứ 13, thưởng theo c&aacute;c ng&agrave;y lễ tết trong năm</p>\r\n\r\n<p>- Được hưởng c&aacute;c chế độ theo quy định của Luật lao động</p>\r\n\r\n<p>- Được tham gia c&aacute;c kh&oacute;a học tiếng anh tại Trung t&acirc;m miễn ph&iacute;</p>\r\n\r\n<p>- Được l&agrave;m việc trong m&ocirc;i trưởng năng động, chuy&ecirc;n nghiệp; c&oacute; cơ hội ph&aacute;t triển bản th&acirc;n v&agrave; thăng tiến l&ecirc;n vị tr&iacute; cấp QUẢN L&Yacute; (C&ocirc;ng ty đang mở rộng th&ecirc;m nhiều chi nh&aacute;nh ở H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh phố trong cả nước)</p>\r\n\r\n<p><strong>IV. C&aacute;ch thức ứng tuyển:</strong></p>\r\n\r\n<p>Ứng vi&ecirc;n quan t&acirc;m vui l&ograve;ng gửi CV n&ecirc;u r&otilde; th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; kinh nghiệm l&agrave;m việc về địa chỉ:&nbsp;<a href=\"mailto:anhttm@ames.edu.vn\">uyenptm@ames.edu.vn</a>&nbsp;v&agrave;&nbsp;<a href=\"mailto:linhtk@ames.edu.vn\">linhtk@ames.edu.vn</a></p>\r\n\r\n<p>Hoặc nộp trực tiếp tại &nbsp;<a href=\"https://goo.gl/maps/jDbfj2rWEu82\" rel=\"nofollow\" target=\"_blank\">38 Y&ecirc;n B&aacute;i, Hải Ch&acirc;u, Đ&agrave; Nẵng</a></p>\r\n\r\n<p>ĐT li&ecirc;n hệ: &nbsp;<a href=\"tel:02363779999\">0236 377 9999</a></p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Thông tin tuyển dụng Ames Đà Nẵng tháng 9/2017', 'Hãy lựa chọn ngay dịch vụ Hoàn thiện sổ sách cho doanh nghiệp tại Nguyên Anh để được hỗ trợ và giải quyết mọi vấn đề mà bạn đang băn khoăn ngay hôm nay.', 'thong-tin-tuyen-dung-ames-da-nang-thang-92017', 'Hoàn thiện sổ sách', NULL, 65),
(86, 'en', 'Hoàn thiện sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Hoàn thiện sổ sách', '', 'hoan-thien-so-sach', '', NULL, 65),
(87, 'vn', 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', '<p style=\"text-align:justify\"><strong>Sau một thời gian hoạt động, Doanh nghiệp của bạn cần phải r&agrave; so&aacute;t sổ s&aacute;ch để c&oacute; thể chuẩn bị cho đợt quyết to&aacute;n thuế sắp tới? Bạn kh&ocirc;ng y&ecirc;n t&acirc;m về dữ liệu sổ s&aacute;ch do c&aacute;c kế to&aacute;n vi&ecirc;n tại c&ocirc;ng ty đang thực hiện? Sổ s&aacute;ch, chứng từ bị x&aacute;o trộn do chuyển địa điểm, chuyển giao c&ocirc;ng việc&hellip;?</strong><br />\r\n<strong>Dịch vụ&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch&nbsp;&ndash; X&aacute;c định rủi ro tiềm ẩn, sẽ gi&uacute;p bạn giải quyết mọi vấn đề đang gặp phải một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả nhất.</strong><br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch l&agrave; g&igrave;? C&oacute; cần thiết phải sử dụng dịch vụ n&agrave;y hay kh&ocirc;ng</strong></span></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;l&agrave; một trong những loại h&igrave;nh được nhiều doanh nghiệp vừa v&agrave; nhỏ t&igrave;m đến. Đa phần c&ocirc;ng việc kinh doanh bận rộn hay việc thiếu kiến thức chuy&ecirc;n m&ocirc;n trong lĩnh vực n&agrave;y c&oacute; thể khiến cho c&aacute;c doanh nghiệp phải trả gi&aacute; v&igrave; những sai phạm kh&ocirc;ng đ&aacute;ng c&oacute; xuất ph&aacute;t từ vấn đề sổ s&aacute;ch. Ch&iacute;nh v&igrave; thế nếu bạn đang gặp phải những vấn đề như:<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng an t&acirc;m với sổ s&aacute;ch, số liệu kế to&aacute;n đang thực hiện.<br />\r\n&nbsp; &nbsp; ➔ Kh&ocirc;ng x&aacute;c định được c&aacute;c rủi ro tiềm ẩn trong sổ s&aacute;ch v&agrave; c&aacute;ch khắc phục.<br />\r\n&nbsp; &nbsp; ➔ Chứng từ bị lưu trữ lộn xộn, thi&ecirc;́u khoa học, số liệu kế to&aacute;n bất ổn.<br />\r\n&nbsp; &nbsp; ➔ Thời hạn quyết to&aacute;n gần kề v&agrave; muốn r&agrave; so&aacute;t lại sổ s&aacute;ch để ph&aacute;t hiện c&aacute;c rủi ro, sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ➔ Bộ phận kế to&aacute;n doanh nghiệp kh&ocirc;ng đủ tự tin hay kh&ocirc;ng nắm bắt r&otilde; c&aacute;c luật định mới.<br />\r\nĐ&acirc;y l&agrave; l&uacute;c m&agrave; bạn cần đến&nbsp;<strong>dịch vụ r&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;gi&uacute;p giải quyết mọi vấn đề gặp phải một c&aacute;ch khoa học với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\n<span style=\"font-size:16px\"><strong>Dịch vụ R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn Nguy&ecirc;n Anh</strong></span></p>\r\n\r\n<p style=\"text-align:justify\">L&agrave; một trong những đơn vị uy t&iacute;n, dịch vụ&nbsp;<strong>R&agrave; so&aacute;t sổ s&aacute;ch &ndash; X&aacute;c định rủi ro tiềm ẩn</strong>&nbsp;Nguy&ecirc;n Anh hỗ trợ cho các doanh nghiệp một c&aacute;ch hiệu quả v&agrave; chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn:<br />\r\n&nbsp; &nbsp; ★ Kiểm tra tổng qu&aacute;t v&agrave; chi tiết c&aacute;c dữ liệu, t&igrave;nh trạng số liệu, chứng từ của doanh nghiệp.<br />\r\n&nbsp; &nbsp; ★ Từ đ&oacute; x&aacute;c định ngay những rủi ro, đưa ra hướng khắc phục c&aacute;c sai phạm kh&ocirc;ng đ&aacute;ng c&oacute;.<br />\r\n&nbsp; &nbsp; ★ Định lượng mức phạt quyết to&aacute;n từ sai phạm về sổ s&aacute;ch.<br />\r\n&nbsp; &nbsp; ★ Tổng kết v&agrave; tư vấn cho doanh nghiệp nhanh ch&oacute;ng v&agrave; hiệu quả.<br />\r\n<br />\r\nNgay l&uacute;c n&agrave;y nếu doanh nghiệp của bạn đang cần đến dịch vụ<strong>&nbsp;R&agrave; so&aacute;t sổ s&aacute;ch</strong>&nbsp;- X&aacute;c định rủi ro tiềm ẩn h&atilde;y li&ecirc;n hệ ngay qua số Hotline của ch&uacute;ng t&ocirc;i để được hỗ trợ v&agrave; b&aacute;o gi&aacute; ch&iacute;nh x&aacute;c nhất. Chi ph&iacute; chỉ từ 700.000 đồng/lần cho dịch vụ trọn g&oacute;i v&agrave; hiệu quả. Nguy&ecirc;n Anh &ndash; đối t&aacute;c của bạn, th&agrave;nh c&ocirc;ng của bạn!!!</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><strong>HOTLINE:&nbsp;<span style=\"color:#e74c3c\">0986.1368.77 - 0988.1368.79</span></strong></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#e74c3c\">C&Ocirc;NG TY TNHH QUẢN TRỊ RỦI RO THUẾ NGUY&Ecirc;N ANH</span></p>\r\n\r\n<p style=\"text-align:center\"><strong>Địa chỉ:</strong>&nbsp;Lầu 9, số 68 Nguyễn Huệ, P. Bến Ngh&eacute;, Q.1, TPHCM</p>\r\n\r\n<p style=\"text-align:center\"><strong>Email:</strong>&nbsp;support@nguyenanhtax.vn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', 'Dịch vụ Rà soát sổ sách – Xác định rủi ro tiềm ẩn, sẽ giúp bạn giải quyết mọi vấn đề đang gặp phải một cách nhanh chóng và hiệu quả nhất.', 'ra-soat-so-sach', 'Rà soát sổ sách', NULL, 66),
(88, 'en', 'Rà soát sổ sách', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Rà soát sổ sách', '', 'ra-soat-so-sach', '', NULL, 66),
(89, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', '<p>Do nhu cầu ph&aacute;t triển, Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; full time:</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>- Trưởng ph&ograve;ng tư vấn tuyển sinh</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Marketing</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n h&agrave;nh ch&iacute;nh kĩ thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin&nbsp;ứng tuyển trực tiếp theo link:&nbsp;<a href=\"https://goo.gl/forms/kXuzlI3ZW5THua0A3\">https://goo.gl/forms/kXuzlI3ZW5THua0A3</a></p>\r\n\r\n<p>2. Gửi CV c&aacute; nh&acirc;n về mail: hr@ames.edu.vn (Lưu&nbsp;&yacute;:&nbsp;Ứng vi&ecirc;n ghi r&otilde; vị tr&iacute; v&agrave;&nbsp;địa&nbsp;điểm&nbsp;ứng tuyển)</p>\r\n\r\n<p>3. Nộp trực tiếp tại Ph&ograve;ng Nh&acirc;n sự - Ames 96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>&nbsp;</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 2/2018', 'Dịch vụ kê khai thuế online – Dịch vụ dành riêng cho các Doanh nghiệp nhỏ, siêu nhỏ, start-up; giúp giảm thiểu thời gian, tiết kiệm chi phí tối đa và thay đổi phương thức làm việc hướng đến sự chuyên nghiệp.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-22018', 'Kê khai thuế online', NULL, 67),
(90, 'en', 'Kê khai thuế online', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kê khai thuế online', '', 'ke-khai-thue-online', '', NULL, 67),
(91, 'vn', 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Anh ngữ Ames tuyển dụng nhiều vị trí Full time tại chi nhánh Hà Nội và các tỉnh trong cả nước', '<p>Anh ngữ Ames tuyển dụng nhiều vị tr&iacute; Full time tại chi nh&aacute;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh trong cả nước:</p>\r\n\r\n<p>- Gi&aacute;o vi&ecirc;n Tiếng Anh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n&nbsp;ph&ograve;ng&nbsp;đ&agrave;o tạo</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n tư vấn tuyển sinh</p>\r\n\r\n<p>- Nh&acirc;n vi&ecirc;n Nh&acirc;n sự</p>\r\n\r\n<p>Đặc biệt Ames&nbsp;mở rộng tuyển dụng c&aacute;c vị tr&iacute; quản l&yacute;.&nbsp;Đ&acirc;y l&agrave; cơ hội tốt d&agrave;nh cho c&aacute;c bạn&nbsp;ứng vi&ecirc;n mong muốn thử sức m&igrave;nh ở vị tr&iacute; mới:</p>\r\n\r\n<p>- Gi&aacute;m&nbsp;đốc trung t&acirc;m c&aacute;c tỉnh trong cả nước</p>\r\n\r\n<p>- Trưởng ph&ograve;ng học thuật</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>C&aacute;ch thức&nbsp;ứng tuyển</p>\r\n\r\n<p>1.&nbsp;Điền th&ocirc;ng tin trực tiếp qua&nbsp;đường link:&nbsp;<a href=\"https://goo.gl/forms/FQZKnFCmz51yDzoA2\">https://goo.gl/forms/FQZKnFCmz51yDzoA2</a></p>\r\n\r\n<p>2. Gửi mail về&nbsp;địa chỉ: hr@ames.edu.vn</p>\r\n\r\n<p>3. Gửi hồ sơ trực tiếp về&nbsp;địa chỉ:</p>\r\n\r\n<p>Ph&ograve;ng Nh&acirc;n sự&nbsp;</p>\r\n\r\n<p>Trung t&acirc;m Anh ngữ Ames</p>\r\n\r\n<p>96 L&ograve;&nbsp;Đ&uacute;c, Hai B&agrave; Trưng, H&agrave; Nội</p>\r\n\r\n<p>C&aacute;c bạn&nbsp;ứng vi&ecirc;n vui l&ograve;ng ghi r&otilde; th&ocirc;ng tin&nbsp;ứng tuyển: Vị tr&iacute;&nbsp;ứng tuyển-Địa&nbsp;điểm&nbsp;ứng tuyển-Họ v&agrave; t&ecirc;n</p>\r\n\r\n<p>Ames ch&agrave;o&nbsp;đ&oacute;n tất cả c&aacute;c bạn&nbsp;ứng vi&ecirc;n c&oacute; niềm&nbsp;đam m&ecirc; v&agrave; sẵn s&agrave;ng chấp nhận thử th&aacute;ch!!!</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'BẢN TIN TUYỂN DỤNG ANH NGỮ AMES THÁNG 3/2018', 'Với dịch vụ kế toán thuế trọn gói – Theo dõi kế hoạch thuế Nguyên Anh, điều bạn cần chỉ là kinh doanh, tất cả vấn đề thuế hãy để chúng tôi hỗ trợ bạn.', 'ban-tin-tuyen-dung-anh-ngu-ames-thang-32018', 'Kế toán thuế trọn gói', NULL, 68),
(92, 'en', 'Kế toán thuế trọn gói', '', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'Kế toán thuế trọn gói', '', 'ke-toan-thue-tron-goi', '', NULL, 68),
(93, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE ', NULL, 69),
(94, 'en', 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', '<p>tuyển gi&aacute;oo vi&ecirc;n dạy văn</p>\r\n', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'tuyển giáoo viên dạy văn', 'tuyển giáoo viên dạy văn', 'tuyen-giaoo-vien-day-van', 'tuyển giáoo viên dạy văn', NULL, 69),
(95, 'vn', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70),
(96, 'en', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - TH&Aacute;NG 5/2018</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\">{ ĐỊA B&Agrave;N : H&agrave; Nội, Hải Ph&ograve;ng, Hạ Long-Quảng Ninh, TP HCM}</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Helvetica&quot;,&quot;sans-serif&quot;\"><span style=\"color:#1d2129\"><span style=\"background-color:white\"><img alt=\"\" height=\"16\" src=\"file:///C:\\Users\\ADMINI~1\\AppData\\Local\\Temp\\msohtmlclip1\\01\\clip_image001.png\" width=\"16\" /></span></span></span></span><span style=\"font-size:1.0pt\"><span style=\"background-color:white\"><span style=\"color:#1d2129\">', NULL, 1, NULL, NULL, NULL, NULL, NULL, 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE - THÁNG 5/2018', 'tuyen-dung-tu-van-tuyen-sinh-sale-thang-52018-1', 'TUYỂN DỤNG TƯ VẤN TUYỂN SINH - SALE', NULL, 70);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `so_huu`
--

CREATE TABLE `so_huu` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT 0,
  `popup` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `so_huu`
--

INSERT INTO `so_huu` (`id`, `name`, `image`, `num`, `popup`) VALUES
(2, 'Phát triển bản thân', 'anh-chup-man-hinh-2021-08-29-luc-105920-ch-20210829160022.png', 20, 'phat-trien-ban-than.jpg'),
(3, 'Sách tiểu thuyết', 'anh-chup-man-hinh-2021-08-29-luc-105920-ch-20210829160022.png', 20, 'phat-trien-ban-than.jpg'),
(4, 'Sách kinh doanh', 'anh-chup-man-hinh-2021-08-29-luc-105920-ch-20210829160022.png', 40, 'phat-trien-ban-than.jpg'),
(5, 'Sách hàm dưỡng tâm hồn', 'tâm hồn 4.jpg', 120, 'tâm hồn 1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_audio`
--

CREATE TABLE `sub_audio` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `mp3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_luong` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_audio`
--

INSERT INTO `sub_audio` (`id`, `product_id`, `mp3`, `thoi_luong`, `name`) VALUES
(2, 81, '01. Nhà Giả Kim - Paulo Coelho.mp3', '20 phút', NULL),
(3, 161, 'https://docs.google.com/uc?id=1_OdTsOwG-O21nhtdxnJUjkPKrOQHW0Cn', '2 phút', 'Lời giới thiệu'),
(4, 161, 'https://docs.google.com/uc?id=1FegO4Hq7KcQHBcwN5Cany7MTSfi3D1FJ', '20 phút', 'Khổ đau'),
(5, 161, 'https://docs.google.com/uc?id=17hO7969Z6oKCrQ0cGofMKSKeU_khJ1hu', '19 phút', 'Hạnh phúc'),
(6, 161, 'https://docs.google.com/uc?id=1zdbiKb7kpWFrTKFw98O_3RYGWUJSQ10E', '16 phút', 'Tình yêu'),
(7, 161, 'https://docs.google.com/uc?id=14SPpICynC3s8HvgI8ziPSLzFplWZQA0u', '19 phút', 'Tùy duyên'),
(8, 161, 'https://docs.google.com/uc?id=1d_zFN5N8dhWN-pcTCitgFnXGfhXxO5xi ', '15 phút', 'Tình thương'),
(9, 161, 'https://docs.google.com/uc?id=1GHMkybJSV4GrJUgJ7QgXdCWcSjk2s7oX', '19 phút', 'Tức giận'),
(10, 161, 'https://docs.google.com/uc?id=1I6_oB2S-FhJPiHmDBGhYuMqJAgOyUg-g', '17 phút', 'Chịu đựng'),
(11, 161, 'https://docs.google.com/uc?id=16uTJA9EoqSG5QxMp8bHBsqgH7tXXLmzX', '18 phút', 'Ghen tuông'),
(12, 161, 'https://docs.google.com/uc?id=1ROHr6QkPzHlMMrxg0qrXNIGdFlf4Y40I', '19 phút', 'Tha thứ'),
(13, 161, 'https://docs.google.com/uc?id=13KbADYzbFDmFWRfrfy7GpYuUEpeSLQJI', '17 phút', 'Sòng phẳng'),
(14, 161, 'https://docs.google.com/uc?id=1alvS-GY_jkKtFiA7JNQF9zpldn9RPdY7', '18 phút', 'Nâng đỡ'),
(15, 161, 'https://docs.google.com/uc?id=1ThqsQpeyUJBmbcuXo0gPAyAxzRFMEuJx', '17 phút', 'Cô đơn'),
(16, 161, 'https://docs.google.com/uc?id=1AXzHtVMcfOPYc710gIsZF7G8rxR71yi4', '23 phút', 'Hiến tặng'),
(17, 161, 'https://docs.google.com/uc?id=1nw1GIBdadxmPmJzG9HiWyPHwVEb5meuI', '17 phút', 'Trao thân'),
(18, 161, 'https://docs.google.com/uc?id=1uAaJQikWoZFl1P2dvseUM-v-8Wlwy1NN', '17 phút', 'Tạ ơn'),
(19, 161, 'https://docs.google.com/uc?id=17OPcJVv3AFelNkjFi3eAkN08QcBBeIwa', '18 phút', 'Nhàm chán'),
(20, 161, 'https://docs.google.com/uc?id=1OvwuaQnaPF7-URlKSlNiWYUmostHbB3t', '17 phút', 'Kính trọng '),
(21, 161, 'https://docs.google.com/uc?id=1ChP1-KBDTfh-xy5GM5oESOqSeVvjxUUu', '21 phút', 'Nghi ngờ'),
(22, 161, 'https://docs.google.com/uc?id=1utTMtCA33wZjA_0tn2FT4TrJTneFaPD5', '18 phút', 'Lắng nghe'),
(23, 161, 'https://docs.google.com/uc?id=1PAF4xNl9PssIzZQakUz-gqCiWZn2ja3r', '19 phút', 'Phán xét'),
(24, 161, 'https://docs.google.com/uc?id=1wPnW6vyDxjqgtyMl9kALmmsgTtSZyfWO', '22 phút', 'Ái ngữ'),
(25, 161, 'https://docs.google.com/uc?id=1O_7PuflkAMAo_18LsyzA-CqKvDwmus6j', '16 phút', 'Thành kiến'),
(26, 161, 'https://docs.google.com/uc?id=1Yx-5hwuo0-x0oTFWrW3oO2qkdxXZGL43', '21 phút', 'Làm mới'),
(27, 161, 'https://docs.google.com/uc?id=17gAobvNihs6IO_oRF4aEKgYUp_4MCCde', '21 phút', 'Che đậy'),
(28, 161, 'https://docs.google.com/uc?id=1p8WhtdcQiKYkc1w2zVmUYIaWtjMCD0le', '18 phút', 'Thành thật'),
(29, 161, 'https://docs.google.com/uc?id=1CuFpb31z_srp_YCLbGCD7BF-aTmZbeoj', '18 phút', 'Nguyên tắc'),
(30, 161, 'https://docs.google.com/uc?id=1APOOk-xxFp-YyTDKuhXqn_k_moyT_nYC', '21 phút', 'Tuyệt vọng'),
(31, 161, 'https://docs.google.com/uc?id=1E9WKxnHS3paiE9AH8yLIUhAD0YXhY86E', '19 phút', 'Niềm tin'),
(32, 161, 'https://docs.google.com/uc?id=1K4ERLvP3yZAYkL2hucfF4D4_7cYMthEG', '18 phút', 'Ý chí'),
(33, 161, 'https://docs.google.com/uc?id=1D1yU6bSwCY5Fn3h3kLZxA0lAfj3SbDRs', '21 phút', 'Do dự'),
(34, 161, 'https://docs.google.com/uc?id=1J09s48TqwWYgdZ2xNghWkr-v6Z22P40W', '17 phút', 'Thất bại'),
(35, 161, 'https://docs.google.com/uc?id=1zYrwA7_OCy07nKa8CJ2MfoDqE1IVcBy7', '14 phút', 'Thành công'),
(36, 161, 'https://docs.google.com/uc?id=1SeH5-3xzBFKnF_mEr08xGzjxkRNU5hOo', '20 phút', 'Tham vọng'),
(37, 161, 'https://docs.google.com/uc?id=1Ci76kJNoQPIRRWYpBifG9d6gCx8n6fS1', '23 phút', 'Biết đủ'),
(38, 161, 'https://docs.google.com/uc?id=1la5jo37S4mMaHUis0qSNvvJnWU1_I94F', '16 phút', 'Dựa dẫm'),
(39, 161, 'https://docs.google.com/uc?id=1cK1Q9zR8lh2xCExs9ze5TF-wHt1dpH0P', '19 phút', 'Nương tựa'),
(40, 161, 'https://docs.google.com/uc?id=1MetwUoogR0BliysdWxQO2O6z2nJ1xtI5', '21 phút', 'Yếu đuối'),
(41, 161, 'https://docs.google.com/uc?id=17Hfs31gLiJM-suMVsDczaJCaI8PH7szB', '24 phút', 'Sám hối'),
(42, 161, 'https://docs.google.com/uc?id=1QHa2GqB0r8xI2Xv1OjAcTtpQiGvz3_sJ', '20 phút', 'Lười biếng'),
(43, 161, 'https://docs.google.com/uc?id=1r-dLKd104aOqR2O3Q0bEbHa6rr7ClSi7', '20 phút', 'Buông xả'),
(44, 161, 'https://docs.google.com/uc?id=1d8yzShfGoWSRVUIif7h6AFkmsV1eS94b', '22 phút', 'Tưởng tượng'),
(45, 161, 'https://docs.google.com/uc?id=1wvzkpndiXhHZ_0iZTnuwPrwMwufcROJb', '28 phút', 'Định tâm'),
(46, 161, 'https://docs.google.com/uc?id=1kcyBK9sf5yNPD-2xcGISNwLTfn8o5v4Y', '22 phút', 'Cảm xúc'),
(47, 161, 'https://docs.google.com/uc?id=17Nr1K8yDd_53FcO4tJhZLaasvjZ00gGw', '22 phút', 'Bình yên'),
(48, 161, 'https://docs.google.com/uc?id=1Jiwaz4eXkvUygk8RwwEpCjs_Ekab4feZ', '22 phút', 'Lo lắng'),
(49, 161, 'https://docs.google.com/uc?id=1i0LBOBfyfB52uEMIVdgLFvZasWBT_0Lj', '21 phút', 'Thảnh thơi'),
(50, 161, 'https://docs.google.com/uc?id=1km20H-a9oerRQBky6HFy21xMYfcSTFpz', '26 phút', 'Độc tài'),
(51, 161, 'https://docs.google.com/uc?id=1BrgdcXLojVYW0M_WXVDbI7NTzeM_psxS', '24 phút', 'Khiêm cung'),
(52, 161, 'https://docs.google.com/uc?id=1qyT_qW3pUGKApjDg8Lx4Tt15L0uFMxMs', '18 phút', 'Ích kỷ'),
(53, 161, 'https://docs.google.com/uc?id=1aBObml4sufgEaEpK4Qp-0BtapbLZ5ff_', '29 phút', 'Trách nhiệm'),
(54, 161, 'https://docs.google.com/uc?id=1gB-TRyQiJGYoSBexYO2w5f4arwA4-i9A ', '6 phút', 'Lời cảm ơn - Về với trái tim'),
(55, 102, 'https://docs.google.com/uc?id=1xcCPyAF4-ZncY6obrjGVkqOXlcL07vLU', '104 phút', 'Bố Già - Audio 1'),
(56, 102, 'https://docs.google.com/uc?id=1N1enucxDi8aV6-g1WqnmTwO1EmQw1j4Q', '108  phút', 'Bố Già - Audio 2'),
(57, 102, 'https://docs.google.com/uc?id=1R9uAWUgm-8o-BMMW8qv3-N-8QgxtA3wF ', '108 phút', 'Bố Già - Audio 3'),
(58, 102, 'https://docs.google.com/uc?id=1A9x_M0DfC-DKp4U45eryraZ9RIwzXUjs', '109 phút', 'Bố Già - Audio 4'),
(59, 102, 'https://docs.google.com/uc?id=1X_SRvJsz3aGo-5XFeEK1kwvVowzbL6DT', '108 phút', 'Bố Già - Audio 5'),
(60, 102, 'https://docs.google.com/uc?id=1SKKUk0eTRKjdeuhAB7dx8LwyLSYtdnnZ', '106 phút', 'Bố Già - Audio 6'),
(61, 102, 'https://docs.google.com/uc?id=183QiWsRMrKs7rcQJnLBzvqMOCGQQ2b9l', '109 phút', 'Bố Già - Audio 7'),
(62, 102, 'https://docs.google.com/uc?id=165s_g64uqJ-d2OLP9wrLLPo3Pf7VNc5s ', '108 phút', 'Bố Già - Audio 8'),
(63, 102, 'https://docs.google.com/uc?id=1UsMLwy24K_DMA86Tb1pfUY1VZ5_LCS1c', '108 phút', 'Bố Già - Audio 9'),
(64, 102, 'https://docs.google.com/uc?id=1tBlrhEGJzrl-Hi0PB7lmCjwCv6rUdRy9', '160 phút', 'Bố Già - Audio 10'),
(65, 162, 'https://docs.google.com/uc?id=1lf-lRrHoVC07GvkSoKjU9ueCmAolOHns', '3 phút', 'Làm để làm gì'),
(66, 162, 'https://docs.google.com/uc?id=1XgvDV0wqT8zycy5wzaurDg1E5T-nF25V', '3 phút', 'Vừa làm vừa sống'),
(67, 162, 'https://docs.google.com/uc?id=1CNe_LRfT2abAbdwOrXE_s3kpaieBLQuP', '3 phút', 'Ta có sức mạnh không'),
(68, 162, 'https://docs.google.com/uc?id=1igDuBC2S_xrjCFU90MtQCzrRbPMgW23T ', '4 phút', 'Lấy lại cân bằng trước đã'),
(69, 162, 'https://docs.google.com/uc?id=1NZvGQB3Aa-ob6RdMgXlt5-QLc83PrMzK', '3 phút', 'Giọt sương trước nhà'),
(70, 162, 'https://docs.google.com/uc?id=1NZvGQB3Aa-ob6RdMgXlt5-QLc83PrMzK', '3 phút', 'Rõ mặt đôi ta'),
(71, 162, 'https://docs.google.com/uc?id=1sGr8FZYvT2qOT7kzPOQmKgYTVq7FgpAC', '3 phút', 'Kết nối để được nuôi dưỡng'),
(72, 162, 'https://docs.google.com/uc?id=1xyOG25m9RJT84q--mMS7RYfAgwGFYhq2', '4 phút', 'Hạnh phúc là con đường'),
(73, 162, 'https://docs.google.com/uc?id=1JQKt4_DtMOiDz-aJNHhbx66UPKiYYhzU', '3 phút', 'Ta đang có hạnh phúc Ta biết không'),
(74, 162, 'https://docs.google.com/uc?id=124QNvUImWEyKIF7UlWk5jqvmPmcnhiFE', '3 phút', 'Ta đang làm gì đây'),
(75, 162, 'https://docs.google.com/uc?id=1wSRUxmK3CoQrIAvRZfM-tcPAyAUy34We', '4 phút', 'Chỉ cảm nhận mà không suy tưởng'),
(76, 162, 'https://docs.google.com/uc?id=11-PL0Dm8jyymq3Jked6asw0_KO9Kspzi', '4 phút', 'Im lặng để cảm nhận'),
(77, 162, 'https://docs.google.com/uc?id=1veJsxVQDS6E7cmjvTmSRA_cDZEh8eQ5S', '6 phút', 'Ngồi thật yên'),
(78, 162, 'https://docs.google.com/uc?id=1QS-y7ZM_KbL1TO4nGV1axLQpcQ1V0qCy', '5 phút', 'Nương tụa vào hơi thở'),
(79, 162, 'https://docs.google.com/uc?id=1EBK9InuuM4F22h_Vc8zslTWHBg10SGRd ', '4 phút', 'Kinh tế và phi kinh tế'),
(80, 162, 'https://docs.google.com/uc?id=1xou29ahxhNKOlu03LBJJgwtu9Oa98TmE', '5 phút', 'Cái gì cũng là màu nhiệm'),
(81, 162, 'https://docs.google.com/uc?id=1S5ErTLmBQFL-eBXqtl_95pyf_d3PlZYb', '3 phút', 'Sao phải vội vàng'),
(82, 162, 'https://docs.google.com/uc?id=1Cst3cVdiZgtflq7lUEDQvqLN5WHe7nQ4', '4 phút', 'Một trong một'),
(83, 162, 'https://docs.google.com/uc?id=1x53RPQ3x99Hp4LBdnyaX4sWmRfnjJMNr', '4 phút', 'Bớt những việc không cần thiết'),
(84, 162, 'https://docs.google.com/uc?id=1swlDrsJwnJ8pCxD5QvTpCmTPffJUwiVz', '4 phút', 'Thử tập định tâm'),
(85, 162, 'https://docs.google.com/uc?id=1g71tdCHyUTbr4DnyZcwO3Y8tQkdiK3gC', '5 phút', 'Bước chân an định'),
(86, 162, 'https://docs.google.com/uc?id=1Xw88e8gwZCZrmStp51vQChDhol_RmbG8', '3 phút', 'Mở rộng vùng định tâm'),
(87, 162, 'https://docs.google.com/uc?id=1chFjN_VmsGiBt6WIWbTl_vf5EO5uT-kc', '3 phút', 'Một cảm nhận một nụ cười'),
(88, 162, 'https://docs.google.com/uc?id=1oYlljYCZjWbkTavsmIrevtVyTCW91RWH', '6 phút', 'Tỉnh táo với chiếc điện thoại'),
(89, 162, 'https://docs.google.com/uc?id=1NfF8Bi4Cpyb4RQ1xIYzScKaUUo6RnMNc', '4 phút', 'Ai cầu ai'),
(90, 162, 'https://docs.google.com/uc?id=15-wLNFiFx54C_bd6NRO7667TCF2E9d9F', '4 phút', 'Đừng xem thường ngoại cảnh'),
(91, 162, 'https://docs.google.com/uc?id=1o-oFavIh2ERpQXbRDNNaQCzpw9M8I-M2 ', '6 phút', 'Truy cập chính bạn đi'),
(92, 162, 'https://docs.google.com/uc?id=1gT7OcQacJdXzMCMAISR_ztlUKqMifAqT', '10 phút', 'Thư giãn sâu'),
(93, 162, 'https://docs.google.com/uc?id=1MggYboITcQMGS3tajqnXQ-N5YFlZTj63', '4 phút', 'Ngồi chơi với cái đầu'),
(94, 162, 'https://docs.google.com/uc?id=1TaihJjB10eiZD4JQhW8fad9Bt2gVd5KP', '3 phút', 'Để làm được việc lớn'),
(95, 162, 'https://docs.google.com/uc?id=14qrwVp1fl3klnKyGbkhdvbZKbPD8_MN6', '6 phút', 'Lối vào bằng kỷ luật'),
(96, 162, 'https://docs.google.com/uc?id=1wMPWd4Y6LxUxQElpAnWTAtOCVng-UO6l', '5 phút', 'Đã trưởng thành chưa'),
(97, 162, 'https://docs.google.com/uc?id=1PQdVrzfJ4L_aFQzFINBgKcEPKUhxTUI_ ', '5 phút', 'Cần một phen sương buốt giá'),
(98, 162, 'https://docs.google.com/uc?id=1J7RR6q3cKuZBezmoLXIExIcpiEgCKyHX', '5 phút', 'Ta có gì đặc biệt'),
(99, 162, 'https://docs.google.com/uc?id=1KNLe-8TBvNqemoDJ_HxIY3JqSbykTo3c', '5 phút', 'Đau đớn chưa hẳn là khổ đau'),
(100, 162, 'https://docs.google.com/uc?id=12naEVY_bJ6yZRMrh3oyPERNsWW1Ufmgv', '6 phút', 'Giảm thiểu khổ đau'),
(101, 162, 'https://docs.google.com/uc?id=1eoT7VeYZyunHJO8zN_vOMpdafQ-K-B-E', '6 phút', 'Đừng để quá khứ hành hạ'),
(102, 162, 'https://docs.google.com/uc?id=1i0KgPFsg6HDnV4LshtdQqJKu1qZdFln2', '4 phút', 'Sung sướng chưa chắc là hạnh phúc'),
(103, 162, 'https://docs.google.com/uc?id=1AIIJUOQlXp54WmAqGNlTASWyinvKdUV9', '5 phút', 'Hạnh phúc không cần mưu cầu'),
(104, 162, 'https://docs.google.com/uc?id=1TMCNhE5fs7cSGJfoayZZXpuS9tBlVJZI', '4 phút', 'Bớt hưởng thụ'),
(105, 162, 'https://docs.google.com/uc?id=1Pw6e8nenMLHimCFNrrf5U0alfBPrA-O0', '4 phút', 'Lánh nặng tìm nhẹ để được gì'),
(106, 162, 'https://docs.google.com/uc?id=1rzE6xQLPZ-EH51DAJRIs0JkuBB4eynKD', '3 phút', 'Làm cho ai'),
(107, 162, 'https://docs.google.com/uc?id=1fv6l5r3V6bK-1Ovuu5XwU_l48lRA3jHf', '5 phút', 'Xét lại lòng tốt'),
(108, 162, 'https://docs.google.com/uc?id=1vw0quQ6ICCT0Y2XAS3mpG5-tcxjKhXAM', '5 phút', 'Ngồi chơi với vọng tưởng'),
(109, 162, 'https://docs.google.com/uc?id=1jJrd6zB8TilFTTs-CP-Jg8XFhqTMA37m', '5 phút', 'Thấy sao để vậy'),
(110, 162, 'https://docs.google.com/uc?id=1RtQtsJ20YZhTMTXH9oZ0wBfLwp9z0jnl', '5 phút', 'Trò lừa đảo tâm trí'),
(111, 162, 'https://docs.google.com/uc?id=1qgR_xkpkbBWQJ8n6XxeNFiiSYWU8WbGY', '7 phút', 'Thay đổi một thói quen'),
(112, 162, 'https://docs.google.com/uc?id=1DiN7bXDpA9wrZoFPdZBktMBa35PrMQhF', '6 phút', 'Cẩn thận với tâm tướng'),
(113, 162, 'https://docs.google.com/uc?id=1pYmBfE616dSFxmKg7brCFgv_ukUjDqDR', '6 phút', 'Em của ngày hôm nay'),
(114, 162, 'https://docs.google.com/uc?id=12w-RDltbgHohRhYoLBExwbI1DFD8UPxN', '4 phút', 'Chặn đứng mũi tên thứ hai'),
(115, 162, 'https://docs.google.com/uc?id=16UnV-6UX13-Qxm9HelcE-dPGifex2eHf', '4 phút', 'Truyền thông trong tỉnh thức'),
(116, 162, 'https://docs.google.com/uc?id=1VdphBvPL_N3gXDTPeDojEonXxJEygvhn', '7 phút', 'Tư duy đúng đắn'),
(117, 162, 'https://docs.google.com/uc?id=1ZV8rwMyRxQVemIRMb8cvQF2ebnNGFA1y', '5 phút', 'Không tư duy mới thấy'),
(118, 162, 'https://docs.google.com/uc?id=1w797T_JB9UDE5LXt2rQrBMgo9MWyJj8B', '5 phút', 'Tạm biệt nỗi lo'),
(119, 162, 'https://docs.google.com/uc?id=12z_YgI6CL0SlqtNF_hrVFAiBcE1kMGBX', '7 phút', 'Mất chỗ nào tìm chỗ đó'),
(120, 162, 'https://docs.google.com/uc?id=1SMjMMDan0A5E-stkJWyC7ZKxQj3NtxqL', '6 phút', 'Giữ tâm không giữ cảnh'),
(121, 162, 'https://docs.google.com/uc?id=1y2iWCFyjYCG402GuNRMJLTwnQHJyL9-8', '5 phút', 'Tâm bình cảnh cũng bình'),
(122, 162, 'https://docs.google.com/uc?id=1QVKtTp-9RvQo357mSxh6yhrBgJ41qpxx', '5 phút', 'Đừng ném xuống mặt hồ'),
(123, 162, 'https://docs.google.com/uc?id=1KMuTk-xMXotPiKzqe1WThvp-OBjSNYDh', '7 phút', 'Đợi khát mới đào giếng'),
(124, 162, 'https://docs.google.com/uc?id=1_ppnX2KAGB8Qa-HBmibJuvhTc8CoPRNu', '5 phút', 'Bắt đầu từ tu thân'),
(125, 162, 'https://docs.google.com/uc?id=1TAKgVsYb1__MzPO6ie-5YZZfYYJ_unpl', '7 phút', 'Sao phải sợ con gà'),
(126, 162, 'https://docs.google.com/uc?id=1OyshLBHmkWIyvv5YyLUN_rGcubSgB-Sm', '9 phút', 'Cục giận đang chờ chực'),
(127, 162, 'https://docs.google.com/uc?id=1EFOXr5woCh5FeKrIy8yfMxWaTwqlkCBQ', ' 9 phút', 'Uy lực đích thực'),
(128, 162, 'https://docs.google.com/uc?id=1xB99GO0leDMbm1QtKy-rNWnxok1pzNYG', '7 phút', 'Độc tài cần hay không'),
(129, 162, 'https://docs.google.com/uc?id=199mYCOLxLpZMyxZnSG5N0umrQKW2elyu', '9 phút', 'Tố chất lãnh đạo'),
(130, 162, 'https://docs.google.com/uc?id=1ALZn_iCs96RHoVVssO31vIa74jR3BleP', '5 phút', 'Phần ai nấy hưởng'),
(131, 162, 'https://docs.google.com/uc?id=161A2MQ53J1OaC18fyNkkLO9lWb8eTmK0', '8 phút', 'Người tính không bằng trời tính'),
(132, 162, 'https://docs.google.com/uc?id=1sQEMGayK1tK2sGahyBpNH_l8uq95Ysg3', '11 phút', 'Chánh mạng con đường bền vững'),
(133, 162, 'https://docs.google.com/uc?id=1CVguHxELT81zv36aWlQI426NvHZlAmhW', '11 phút', 'Tham mà không tham'),
(134, 162, 'https://docs.google.com/uc?id=1FWXTCkzkpHGyPU7TATfwfo6XKfVvv8Wa ', '7 phút', 'Mặc kệ những tiếng động'),
(135, 162, 'https://docs.google.com/uc?id=1kEoJfrfTMR2nstbMUjZS5OmU7Pnnt-3p ', '7 phút', 'Làm một quyết định'),
(136, 162, 'https://docs.google.com/uc?id=1skncPTJvrIjF6dZqEYtCqIilOy3fGKr0', '8 phút', 'Cũng bình thường thôi'),
(137, 162, 'https://docs.google.com/uc?id=1ul4N6e-X_EyyazgDSKs1g2f21ApvFO_x', '10 phút', 'Ai cũng là đóa hoa'),
(138, 162, 'https://docs.google.com/uc?id=1CmHKnBKhHKeQE_NF2tLKK7JemVX9FMmR', '5 phút', 'Sức mạnh của bầy sói'),
(139, 162, 'https://docs.google.com/uc?id=1B4uvPz0MPZlMaJq53iNRuAgiQRntRRu0', '6 phút', 'Sao không thể ngồi chung'),
(140, 162, 'https://docs.google.com/uc?id=1qTVDoKg7JU5c-9xau_RuGreIQqbSV1GM', '7 phút', 'Đã đến lúc siết chặt tay chưa'),
(141, 162, 'https://docs.google.com/uc?id=1XF4krosqsmUMuQ2sM6NXI0sKu7_n88tv', '5 phút', 'Hãy cứ là đóa hoa'),
(142, 162, 'https://docs.google.com/uc?id=1UIQ_fY6QCvAZNMQXvdJgLwNG0hAH6npW', '8 phút', 'Bứt phá một lần'),
(143, 162, 'https://docs.google.com/uc?id=1GVBHgptrA0bB7uxWtk77bR_ffF2WYW_4', '6 phút', 'Cần một chuyến đi'),
(144, 162, 'https://docs.google.com/uc?id=1Off-I8UqY-0u9-BUhvLnO0FBGAd_M0tw', '4 phút', 'Hạnh phúc được sẻ chia'),
(145, 164, 'https://docs.google.com/uc?id=1DB-Ow06FFVup4iXgdUICuTZXH5qYxUI4', '19 phút', 'Thực tập hạnh phúc'),
(146, 164, 'https://docs.google.com/uc?id=1fTInCHyL8HEkd3bmzRkuOcmP8BTUQBw4', '19 phút', 'Tiêu thụ sân hận'),
(147, 164, 'https://docs.google.com/uc?id=18HXsT7a6Jxid90Az1iPS0psFINzVp41l', '23 phút', 'Dập tắt lửa giận, cứu căn nhà đang cháy'),
(148, 164, 'https://docs.google.com/uc?id=1XtzjJhcVQSjJ0lIeGTaVJ9GTp2RoGzE_ ', '34 phút', 'Tiếng nói của yêu thương'),
(149, 164, 'https://docs.google.com/uc?id=1t7i2QMb6F-1AdbP5kH0WkOudto13D_Qw', '27 phút', 'Chuyển hóa những vùng năng lượng'),
(150, 164, 'https://docs.google.com/uc?id=1PmMzXw05Yi9rPGsgOMjmWTPBJC7Klo_Y', '37 phút', 'Truyền thông với tâm từ bi'),
(151, 164, 'https://docs.google.com/uc?id=1y7GtwBiWN-bBOGf0nbtmW5ifpS6MI0XV', '23 phút', 'Tâm kinh của bạn'),
(152, 164, 'https://docs.google.com/uc?id=1lPRlprsOJ0_JHW28sU2V-V1DPZH6E-QJ', '34 phút', 'Không có kẻ thù'),
(153, 164, 'https://docs.google.com/uc?id=1r5wV3uhrvKChG2KeXVHHMnLT9dGbpwB3', '26 phút', 'David và Algerlina'),
(154, 164, 'https://docs.google.com/uc?id=1fn40OzBiAK-S4o9wQfM-HcfWOApkWD9p', '26 phút', 'Ôm ấp cơn giận bằng chánh niệm'),
(155, 164, 'https://docs.google.com/uc?id=1pOtLb_I6dUBfr38CAhMyFODH1bTVel9Z', '17 phút', 'Hơi thở chánh niệm'),
(156, 164, 'https://docs.google.com/uc?id=1jWncvcQF-6pL_2BL-EzdmJsEh8hsEMzw ', '29 phút', 'Phục hồi tịnh độ'),
(157, 164, 'https://docs.google.com/uc?id=1eng66CN9_uLYmtRe4kep14OgTfm6WfmW', '8 phút', 'Bạn là đối tượng của cơn giận trong bạn'),
(158, 164, 'https://docs.google.com/uc?id=1F4rStM_W39eJsbTOsP39VNCanX1EDiIh', '10 phút', 'Chữa trị em bé bị thương tích trong ta'),
(159, 164, 'https://docs.google.com/uc?id=1I-g6-zjTdaQ-GknZ2QamcsyYZwNxWhg3', '13 phút', 'Giải bày tất cả tâm tư dù có khó khăn'),
(160, 164, 'https://docs.google.com/uc?id=1zrf6oGwTVuOsDTcOx_ZTewSAtma7SOwO', '37 phút', 'Năm thực tập chánh niệm'),
(161, 164, 'https://docs.google.com/uc?id=1gvbOtxQHb5HEN2l5FHhx6ymv1k3Kt-Kl', '5 phút', 'Con về nương tựa Phật'),
(162, 164, 'https://docs.google.com/uc?id=1TsIu9EQEG95RX_ynCHy3WS2MxHb7fO9h', '6 phút', 'Chân nguyên'),
(163, 164, 'https://docs.google.com/uc?id=13xY-0yR3JI6zT6SfbHfCpPnsLFfSRDbH', '7 phút', 'Kinh pháp cú'),
(164, 164, 'https://docs.google.com/uc?id=1ik3GFY6ehHTvrfTD6qwxNiiQyscLDyMC', '5 phút', 'Thảnh thơi'),
(165, 165, 'https://docs.google.com/uc?id=1FEZd-PR7zkSH0aHXDRq3BYBxZ59rp8By', '76 phút', 'Ai chưa từng lỗi lầm'),
(166, 165, 'https://docs.google.com/uc?id=19RZsLj0Cnr_WoKRGwor_u7gpe2IaZzlY', '80 phút', 'Ai làm chủ vận mệnh'),
(167, 165, 'https://docs.google.com/uc?id=14jvoHkJD2mXvKyhxSlHW_-5dHcWuPGE5', '83 phút', 'Ảo tưởng'),
(168, 165, 'https://docs.google.com/uc?id=1jdSJ6a4-GE3Dab75Zlii8_l1P5HjinKV', '89 phút', 'Bí ẩn từ nghịch cảnh'),
(169, 165, 'https://docs.google.com/uc?id=1zb6tEjpnB1_07NrgEDusUwtwnlKIO4VM ', '96 phút', 'Biến ước mơ thành sự thật'),
(170, 165, 'https://docs.google.com/uc?id=1WKiNGlvltzbz2QLv3uWt0hLiLRH0DhCG', '93 phút', 'Biết được mình là tu'),
(171, 165, 'https://docs.google.com/uc?id=1O3tUY_pdzk1K5fLhXfSDRLkTM145btNB', '111 phút', 'Bí quyết sống hạnh phúc'),
(172, 165, 'https://docs.google.com/uc?id=1lAAKnQJq__tH15Wa9QaLSDRoyL4e1ZDJ', '154 phút', 'Bí quyết thành công'),
(173, 165, 'https://docs.google.com/uc?id=1OH7Y4DM4_6b8EW6Z9JX8nzekA-f9-QIz', '101 phút', 'Buông tất cả để được tất cả'),
(174, 165, 'https://docs.google.com/uc?id=1tiT9qNXWy5ckmHCmmBGc6raeV9v8maWk', '107 phút', 'Chăm sóc cơn giận '),
(175, 165, 'https://docs.google.com/uc?id=1DYzGqUSPv-ivAY8eIeWpPeK3u7E2t-_q', '76 phút', 'Chữ tâm kia mới bằng ba chữ tài'),
(176, 165, 'https://docs.google.com/uc?id=1pBFd0nI4O2-R85xNTaXoOGRhYH2GxP8S', '102 phút', 'Chuyển hóa muộn phiền'),
(177, 165, 'https://docs.google.com/uc?id=12OooyJmekTD0ptSTLsgoioDeg-npnA-B', '134 phút', 'Chuyển hóa thói quen'),
(178, 165, 'https://docs.google.com/uc?id=1yHdi8OsIWsLwcaK0-rPBQk20mFPc2lGD ', '87 phút', 'Cô đơn'),
(179, 165, 'https://docs.google.com/uc?id=1sKyYnfNzn-udRnvS1HWoBxrZFRkF9FLr ', '107 phút', 'Cơ hội là gì'),
(180, 165, 'https://docs.google.com/uc?id=18GBgMWa1AdzwGX9eeeJh2-skT9nTqLX-', '82 phút', 'Cuộc sống vốn công bằng'),
(181, 165, 'https://docs.google.com/uc?id=17zYRXCHsL2rYzs0-TEzYo9WGojVy6eRz', '85 phút', 'Đi tìm hạnh phúc'),
(182, 165, 'https://docs.google.com/uc?id=1r2wMUcY013rYj2fNPv1FxarJVM2Jv5my ', '69 phút', 'Đời còn gì đâu em'),
(183, 165, 'https://docs.google.com/uc?id=1VR8A6y5Sfv5Xwm4l3_rJSK5-6XdspfGh', '89 phút', 'Đối diện chính mình'),
(184, 165, 'https://docs.google.com/uc?id=1F2Q_5si-lgUm4-J-hlA9PCrNeCpJufte', '90 phút', 'Đối trị tâm bệnh'),
(185, 165, 'https://docs.google.com/uc?id=1lGoTST5RvOAeh35X5k4wi26SxAPiobu1', '82 phút', 'Đừng gieo rắc hận thù'),
(186, 165, 'https://docs.google.com/uc?id=1CoDFtdOBbbueiW6pgXdtnOJWML3_A6QT', '98 phút', 'Giá trị một đời người'),
(187, 165, 'https://docs.google.com/uc?id=1egzAesKBJKHhIZWOBlZE3g-5DiLhHPIv ', '100 phút', 'Giá trị lòng chân thật'),
(188, 165, 'https://docs.google.com/uc?id=1cI8gSB3H-dV_J4qOcqa7lFMWfBHF-Dp3 ', '72 phút', 'Hạnh phúc trong tầm tay'),
(189, 165, 'https://docs.google.com/uc?id=1CRhum4ExCOnOvJPLaY3yfsw6rL2G9jr9 ', '92 phút', 'Hãy tự mình thắp đuốc lên mà đi'),
(190, 165, 'https://docs.google.com/uc?id=1Ivib58L0pH_O_b6u1_1COtpF1e_U3Muj ', '66 phút', 'Hoa sen trong bùn'),
(191, 165, 'https://docs.google.com/uc?id=1VEJlahob8Xi2XG_dvqbb1mTk1fhshV4H', '77 phút', 'Làm chủ bản thân'),
(192, 165, 'https://docs.google.com/uc?id=1rGwuWYUdUN52W7tEyPzSSZ4x20oHH1cv', '91 phút', 'Làm chủ cơn giận'),
(193, 165, 'https://docs.google.com/uc?id=1eIlAMqTQ0LBx4lHTCPpqnlJFMx8GaBeW', '94 phút', 'Làm chủ trước khen chê'),
(194, 165, 'https://docs.google.com/uc?id=1NJ64Oz8alTX0vQCPCt1V0409eEsw67Ui', '46 phút', 'Làm lại cuộc đời'),
(195, 165, 'https://docs.google.com/uc?id=13CQc7dlELaXjsHGEmULUbMZbv3lWgecP', '89 phút', 'Làm mới tự thân'),
(196, 165, 'https://docs.google.com/uc?id=1gYiJLY-O135NdtWIurBB3j6ENle7odtc ', '86 phút', 'Lối rẽ cuộc đời'),
(197, 165, 'https://docs.google.com/uc?id=1w4hT11A7QnuFidqun8dv6H9tpD_siQlX ', '94 phút', 'Nhìn lại chính mình'),
(198, 165, 'https://docs.google.com/uc?id=1xkL8vuZUaGpxhhamEY_XN4caevu30YS9 ', '107 phút', 'Nhu cầu và hưởng thụ'),
(199, 165, 'https://docs.google.com/uc?id=1RMWZdkStyOdMfaRCF0Jfb8GXfZqGhmgU', '84 phút', 'Sống tiết kiệm'),
(200, 165, 'https://docs.google.com/uc?id=14_pGqJ_sK57-Z-pPf6uGMRrN60E6x_3f', '101 phút', 'Sống vội'),
(201, 165, 'https://docs.google.com/uc?id=1Equ-Sh5WxHeWU7loKX6fu2ubrf8wIsQa', '116 phút', 'Tại sao chúng ta sợ chết'),
(202, 165, 'https://docs.google.com/uc?id=1Ps8tNcsf8sIhHSRCkUR2bh8w69kGuC4v', '133 phút', 'Tập buông xả'),
(203, 165, 'https://docs.google.com/uc?id=1BQ0LpVyVuJBCTDprAJBZWJlh9OHxOyjC ', '93 phút', 'Tham ái là nguyên nhân đau khổ'),
(204, 165, 'https://docs.google.com/uc?id=1njcL3U1LgrxT1mZ9k2V9u78VhQr0byeN ', '119 phút', 'Tùy duyên bất biến'),
(205, 165, 'https://docs.google.com/uc?id=1lHbKuHgkX3k9abCn3gEA8dATX_jtXcKd', '104 phút', 'Vượt lên nỗi đau'),
(206, 165, 'https://docs.google.com/uc?id=1dviUeZJqCwWhRRJE2ERP71euNRwFn_Nz', '91 phút', 'Vượt qua chính mình'),
(207, 165, 'https://docs.google.com/uc?id=18YFbDmLF2_IBQp3t-P_pfS__5graSiAY', '76 phút', 'Vượt qua số phận'),
(208, 165, 'https://docs.google.com/uc?id=1Cjukj17ybkKIO2L28N6wFlD-0V_EHhIq ', '85 phút', 'Xét kỹ hậu quả trước khi làm'),
(209, 166, 'https://docs.google.com/uc?id=1T05jlXNT3dC0NIKjaMxPzvzk37FfEXyc', '78 phút', 'Lấy thiện thắng bất thiện'),
(210, 166, 'https://docs.google.com/uc?id=1rtyCqGwTUfF7ZJqnEzvP1rOdVhTQsElD', '74 phút', 'Điều gì thiện điều gì ác'),
(211, 166, 'https://docs.google.com/uc?id=1Fbx4jDlmgKdulJLdBnf3SLakyYRlBjcB', '43 phút', 'Bản năng và lý trí 1'),
(212, 166, 'https://docs.google.com/uc?id=11BQZXcA7iu9HA-s8L7yTzkpAPGBEdPjH', '35 phút', 'Bản năng và lý trí 2'),
(213, 166, 'https://docs.google.com/uc?id=1xf6Ke9V5Ub4vRaoj47EHEYGYtnhU-K3L ', '76 phút', 'Biết lỗi chính mình'),
(214, 166, 'https://docs.google.com/uc?id=14mbRma9c_r0RdsqeujJEm-bBYUGb_lLk ', '93 phút', 'Biết ơn'),
(215, 166, 'https://docs.google.com/uc?id=1d2mw0u8eHLFL-0Iz5dfcaukW1AP2LpWs', '89 phút', 'Biết tất cả yêu thương'),
(216, 166, 'https://docs.google.com/uc?id=1X8I77yB9AIGt0gdOmaoKe1UDTNcIQJSk', '78 phút', 'Cách sống tùy duyên'),
(217, 166, 'https://docs.google.com/uc?id=14YK922xcuvR4C7r3UOaVdZSqlIXh5d8N', '55 phút', 'Cảm thông'),
(218, 166, 'https://docs.google.com/uc?id=19aMj3pntnthNR_fCpn3H67VfxaCg3WkC', '92 phút', 'Chia rẽ'),
(219, 166, 'https://docs.google.com/uc?id=1ozfZBABe-aHf7dRe3a6_fV6DgClwKWlR', '85 phút', 'Chiến thắng chính mình'),
(220, 166, 'https://docs.google.com/uc?id=1nrnlfWwbzziCs9JoLUsjl9ZZ_uy64KWr', '93 phút', 'Cô đơn'),
(221, 166, 'https://docs.google.com/uc?id=1atOB7Hpig1r-m1lj8B0WES74iGnrKgXy ', '89 phút', 'Đạo làm người sống có ý nghĩa'),
(222, 166, 'https://docs.google.com/uc?id=1MjHOjnzmn8eNTMJ_7bp_uFJrH4giOGCU', '84 phút', 'Đố kỵ'),
(223, 166, 'https://docs.google.com/uc?id=13YZZkFRb3zxami46cI3BxQhwl6s0lqwm', '94 phút', 'Dùng lực'),
(224, 166, 'https://docs.google.com/uc?id=1GR8m3b_XmKFSggotLISzgBFhKZuO7-9h ', '88 phút', 'Giá trị của tâm'),
(225, 166, 'https://docs.google.com/uc?id=1P0zBVUnSup6vTRaBx2a-BIuOTGrpcAt0 ', '54 phút', 'Năng lượng'),
(226, 166, 'https://docs.google.com/uc?id=1aPNoPqjatnVnyZaIGO8F8q0ebE2jAnoF', '90 phút', 'Ngu mà biết mình ngu'),
(227, 166, 'https://docs.google.com/uc?id=1OE0YVVZZSS-ngycC3GuNLf03-iG9na78 ', '30 phút', 'Những chọn lựa quyết liệt'),
(228, 166, 'https://docs.google.com/uc?id=1_2X1RAua-ML3HIi7vaduCcKs6G49EoL6 ', '46 phút', 'Si mê'),
(229, 166, 'https://docs.google.com/uc?id=1XsumKD0HqgQ04CEZuntsb0VQsqq_hWb3', '82 phút', 'Si mê là gì'),
(230, 166, 'https://docs.google.com/uc?id=1elfcPEk5WfCwpDxKoKIe7PEw5DcjUrYr', '85 phút', 'Sống đơn giản'),
(231, 166, 'https://docs.google.com/uc?id=1sOn7af_7oFNIqJ1G9r0lcPqXjtXsqBZI', '92 phút', 'Tâm lý đua đòi'),
(232, 166, 'https://docs.google.com/uc?id=11qpnrV7-y6IAdD4Z6wkwS_hIj4fhQFIP', '93 phút', 'Tham lam'),
(233, 166, 'https://docs.google.com/uc?id=1-aL0-ClKR8tcJcQEOEJT0VB0YlwqH1Sq ', '95 phút', 'Thành kiến'),
(234, 166, 'https://docs.google.com/uc?id=15HAaDCkTnJ8zmiv8K2QZ2n7LAC_KqKaK ', '89 phút', 'Thử thách'),
(235, 166, 'https://docs.google.com/uc?id=1yPdHeoReFQey4OjGMrdg5WwiBdsKN9rV', '71 phút', 'Tình cảm'),
(236, 166, 'https://docs.google.com/uc?id=16zLV3TrBe1EHTEqZvrpXjcdKl-M37kFQ ', '86 phút', 'Tính tình'),
(237, 166, 'https://docs.google.com/uc?id=1ddgHOw9ch-M38oWFtl77MMDohPEb4e3r ', '26 phút', 'Tránh ác làm lành'),
(238, 166, 'https://docs.google.com/uc?id=1_yAPEgBSarDWc4M7O3MX6L5NMAHZwelS ', '47 phút', 'Trí tuệ và đức hạnh 1'),
(239, 166, 'https://docs.google.com/uc?id=1cbMARby4wecsobKN01WNO-ywgsntJdXi ', '45 phút', 'Trí tuệ và đức hạnh 2'),
(240, 166, 'https://docs.google.com/uc?id=1WtsQvsistBnT4CAtJHn9rMOydCVk7TLc ', '69 phút', 'Triết lý về trung dũng'),
(241, 166, 'https://docs.google.com/uc?id=1H66a0iwYgoBXgL3HQkx7H4ITssG9iNbV', '92 phút', 'Triết lý về xác thân'),
(242, 166, 'https://docs.google.com/uc?id=1BaRjYWBk99yZwRmmcSoNGmXmEWGCnM7Z ', '90 phút', 'Triết lý đồng tiền'),
(243, 166, 'https://docs.google.com/uc?id=1Ga_BFBCPdmKIKvC13JgsiUtguRZx167T', '84 phút', 'Triết lý về sự chết'),
(244, 166, 'https://docs.google.com/uc?id=1YK3-nVtKk_pOsVcRdUnk_hXMXrf9SJHd', '91 phút', 'Triết lý về thời gian'),
(245, 166, 'https://docs.google.com/uc?id=1ZgrNZ2qv3Wx66unhdbQNRI08aVqUQ9fM', '53 phút', 'Trưởng thành'),
(246, 166, 'https://docs.google.com/uc?id=1aZDIrigHbtd5kAuIILh_fHE_aAmU3w1j ', '44 phút', 'Vượt lên khổ vui 1'),
(247, 166, 'https://docs.google.com/uc?id=1CBd27Eznr8USKYnjyt5RHh9N4-BFBexj', '38 phút', 'Vượt lên khổ vui 2'),
(248, 166, 'https://docs.google.com/uc?id=1k7bkMgtG2Ir2zhmKiK68SszdO6fHcAw8', '91 phút', 'Yên tâm'),
(249, 167, 'https://docs.google.com/uc?id=15r9Ve8r883mUFaxrLzDMHDp-SVr8nOO7', '66 phút', 'Hãy để Chánh Niệm dẫn đường'),
(250, 167, 'https://docs.google.com/uc?id=17kWkRj4ydOl7cxLOSbs1hLgMXUTgX8B_', '70 phút', 'Hơi thở - điểm tựa an toàn'),
(251, 167, 'https://docs.google.com/uc?id=15vumLVnpTJZbjFkLW8V4j_L7UJHUlBLH', '65 phút', 'Hộ trì sáu căn'),
(252, 167, 'https://docs.google.com/uc?id=1J76nvk4IQrikl-Y2m-YGKUmXYoJy1l-v', '51 phút', 'Khôi phục khả năng nghe thuần khiết'),
(253, 167, 'https://docs.google.com/uc?id=1KzCJ9IP71KKF3POmd9j9iSAHtCvNi-eb', '65 phút', 'Không ai thương mình bằng chính mình'),
(254, 167, 'https://docs.google.com/uc?id=1MXS5IqMjn9OTOZkQAmYV9UHVtndwXmR0', '52 phút', 'Không bùn thì cũng không sen'),
(255, 167, 'https://docs.google.com/uc?id=1n6n2qhS103rYJ6vxVA75sXwXN-Djmnth', '60 phút', 'Không ngừng quan sát tâm chống cự'),
(256, 167, 'https://docs.google.com/uc?id=1pCxx0Qo7NYdJRYxAGqRV6u5B4kiAf4Yh', '74 phút', 'Không sanh cũng không diệt'),
(257, 167, 'https://docs.google.com/uc?id=1FH8wo4QRJzVXX25x6oyn92HuIVL0kQtm', '63 phút', 'Khơi dậy năng lực tinh tiến'),
(258, 167, 'https://docs.google.com/uc?id=1FE_ctqnRl_1gzCN2AHkttuECZy2ctQNl ', '77 phút', 'Khơi dậy sức mạnh bên trong'),
(259, 167, 'https://docs.google.com/uc?id=1O_4F58nEKqI3we4Y90DN-qYIgcFrlGt9 ', '63 phút', 'Khổ đau hay bất toại nguyện'),
(260, 167, 'https://docs.google.com/uc?id=1pxHD7_4ZUSpfQNQD7Pi0U7XdLzH35MgL ', '60 phút', 'Đến bao giờ mới sống'),
(261, 167, 'https://docs.google.com/uc?id=10FQCjA3MsL0rXxYL2CuoNroP4ZdAC3MB', '64 phút', 'Đến đây như đã đến đây'),
(262, 167, 'https://docs.google.com/uc?id=1-tkvE1Ig3Ee7dJW5LZsq2xm_lv2sEpEf', '74 phút', 'Để gió cuốn đi'),
(263, 167, 'https://docs.google.com/uc?id=1VGROjV1DnJaIlYge4X4UxYOXP2XJzhn2', '79 phút', 'Đối trị cơn giận bằng sức mạnh bên trong'),
(264, 167, 'https://docs.google.com/uc?id=1qiWFNtD8XRRIboV1nz1No-cL2G11RlKG', '52 phút', 'Đứng qua một bên đồng cảm giác'),
(265, 167, 'https://docs.google.com/uc?id=1Dsemw9W60F9IxRbd8IIEBn1tvQ4RyKoi', '63 phút', 'Đừng làm khổ nhau'),
(266, 167, 'https://docs.google.com/uc?id=1kcvC7ia0P9hJAK8PqnaOtUuJ86e7wWsg', '52 phút', 'Đừng đánh giá thấp hoàn cảnh'),
(267, 167, 'https://docs.google.com/uc?id=1w-ByaQvpRacYFsGLeMwLUTWfAgmqDb1D', '65 phút', 'Đừng đánh giá thấp phiền não'),
(268, 167, 'https://docs.google.com/uc?id=1A2KIMxmzsc3FAk3ilYyNpetOYIJh2Vtl ', '47 phút', 'Đừng đồng nhất với cảm giác nhất thời'),
(269, 167, 'https://docs.google.com/uc?id=1TUWOvi2rmIZfOzbdbB1NwMgrqUca5rra ', '57 phút', 'Làm chủ cơn giận'),
(270, 167, 'https://docs.google.com/uc?id=1xdRvUladesOebrnAA8-OtyE8xy8xSUT- ', '57 phút', 'Làm chủ và ôm ấp cơn giận'),
(271, 167, 'https://docs.google.com/uc?id=1iAbYFair6HU-wrHea6Ol-R5KN_Xigloq', '79 phút', 'Làm mới lại tình thương'),
(272, 167, 'https://docs.google.com/uc?id=17PX0608DjZg2115wkGtRaurKmMulOhVB', '60 phút', 'Làm sao để chấp nhận nhau'),
(273, 167, 'https://docs.google.com/uc?id=12ctfwgMSgoGNCFyOpS-zZSWwcy0xCrQQ ', '59 phút', 'Làm sao để chấp nhận tha thứ cho nhau'),
(274, 167, 'https://docs.google.com/uc?id=1r5RKLp5eIIZQA2QFevwjxKwbG10uACBH ', '78 phút', 'Làm sao để được bình yên'),
(275, 167, 'https://docs.google.com/uc?id=1FCFYO7lziYSqd2I23oKTKeuJtBF9lXav', '51 phút', 'Lắng nghe mới thấu hiểu'),
(276, 167, 'https://docs.google.com/uc?id=1R23y22y2gUHDKIT_qPVF7EtwCPjPcAQU ', '42 phút', 'Mỉm cười với cơn giận'),
(277, 167, 'https://docs.google.com/uc?id=1RO3nSZBqCXlFzLy-zEa1y6zFQEyRLjUc ', '67 phút', 'Mộng tưởng niết bàn'),
(278, 167, 'https://docs.google.com/uc?id=12FgkaKzWEwdmxxLGhoRdm8i9ZKpHxiOA ', '75 phút', 'Nghệ thuật nắm bắt hạnh phúc'),
(279, 167, 'https://docs.google.com/uc?id=1uDoOUWK3QGMwdVhKumHu0nVDY-mIDgBk ', '66 phút', 'Nghệ thuật thanh lọc tâm lý'),
(280, 167, 'https://docs.google.com/uc?id=1DZrBzXI0vQLyPAjz0g-_8wxw5_jEix3u', '76 phút', 'Nguyên tắc hay không nguyên tắc'),
(281, 167, 'https://docs.google.com/uc?id=1_9Gb7z9nNfDfKNzzcrLVg4qYWmCA2ntc ', '77 phút', 'Ngồi đâu cũng ngồi thiền'),
(282, 167, 'https://docs.google.com/uc?id=1pqobJ1zweWpmCzfzt4TCJh76JG7_iymB', '70 phút', 'Nhìn lại gốc rễ đau khổ'),
(283, 167, 'https://docs.google.com/uc?id=1uMf5EaU6wv5Xo25yw3bs87dvtJ2_mfOT', '66 phút', 'Nhìn lại tâm tướng của mình'),
(284, 167, 'https://docs.google.com/uc?id=1cvCMOHdpWyn-Qtvd5C90Ezs7SYUQlrbP', '53 phút', 'Nhìn nhau bằng ánh mắt bình yên'),
(285, 167, 'https://docs.google.com/uc?id=1l5IeSX1rz6VC5ScRTtWdb4d32l-YGyYr ', '49 phút', 'Nhìn như chính đối tượng đang hiện ra'),
(286, 167, 'https://docs.google.com/uc?id=17aG30IwuCXLntgWN_UQNcVRV_8S0tMoM', '67 phút', 'Nhìn đôi mắt bằng chánh kiến'),
(287, 167, 'https://docs.google.com/uc?id=1xQwBcMOS7vBbACyem2fZhG9Yq9JV_6SX', '65 phút', 'Nhìn đời bằng mắt trong'),
(288, 167, 'https://docs.google.com/uc?id=1qzwiNKEaW_t1OlpAr9LnqNkqIcFrFafw', '46 phút', 'Nhẫn nhục để đi tới'),
(289, 167, 'https://docs.google.com/uc?id=1lAfulxgr6prinW7xZ24wfNb0EO83UrKH ', '66 phút', 'Nhận biết và hiểu biết thực tại'),
(290, 167, 'https://docs.google.com/uc?id=1W31lmo_GlmCh4cM2t-m0fmrTNVcsZIQz ', '65 phút', 'Nhận diện cảm xúc'),
(291, 167, 'https://docs.google.com/uc?id=152nJt9-98sZIhPFsxfXfTO3LC7qI-_Gf', '62 phút', 'Nhận diện những con sóng ngầm trong tâm'),
(292, 167, 'https://docs.google.com/uc?id=1w2rgdxQUo-AYUPRhrTM7M4Q5ZTpu7E7-', '63 phút', 'Năm nguyên tắc sống bình an và hạnh phúc'),
(293, 167, 'https://docs.google.com/uc?id=1y6gvqnpnmfI5ZWZYouI0JxhPoIRsioAc', '52 phút', 'Năm sức mạnh của sự chuyển hóa'),
(294, 167, 'https://docs.google.com/uc?id=11wS8hkt3s1UiNHD28brqOai7ljWL26lK ', '61 phút', 'Nương tựa mà không nương tựa'),
(295, 167, 'https://docs.google.com/uc?id=1v14yA6P-j2UjHj7WVXL4Xe3vfqYlbnUo', '75 phút', 'Nắm bắt hạnh phúc'),
(296, 167, 'https://docs.google.com/uc?id=1nQqRcwzIaG36k_PJ6SL-KZVammy3oyHs ', '76 phút', 'Phương tiện là cứu cánh'),
(297, 167, 'https://docs.google.com/uc?id=1RB6RvFDCaA4UbTveJ_JsaOi7Bh2FhU4m ', '45 phút', 'Sám hói xong rồi lòng nhẹ nhõm'),
(298, 167, 'https://docs.google.com/uc?id=1rtwLuceq-NDLzX_d3agaxrnZFYo8-6W7', '76 phút', 'Sức mạnh của định và niệm'),
(299, 167, 'https://docs.google.com/uc?id=1HkP57UDjpzAeHMveGHsD79cZGSL-Ux20', '57 phút', 'Sức mạnh của niềm tin'),
(300, 167, 'https://docs.google.com/uc?id=1kNgnZT128cwJ177yuCjont-xwSrvg0b8', '42 phút', 'Ta đang làm gì chốn này'),
(301, 167, 'https://docs.google.com/uc?id=1dJm4Vfuz2BXJdQER2rArhGpXXKEUKrgG', '52 phút', 'Tha thứ- chất liệu ân tình'),
(302, 167, 'https://docs.google.com/uc?id=1ZxI9ZBoSGFRb7aWnTCPHk12xmJKAlqyN', '68 phút', 'Tham và vô tham'),
(303, 167, 'https://docs.google.com/uc?id=1KzPBw5kk7aLPcMYT3s7nvtD_dnOSdXw9 ', '71 phút', 'Thanh tịnh hóa tâm hành và tâm thức'),
(304, 167, 'https://docs.google.com/uc?id=10acVppIfY6HA_rlcnHt6jE52TjtjnZjg ', '56 phút', 'Thoát những vai diễn của chính mình'),
(305, 167, 'https://docs.google.com/uc?id=1KymRxeaUnI9cguyUZJBSxEZk8kaLlDUR ', '31 phút', 'Thành công và hạnh phúc'),
(306, 167, 'https://docs.google.com/uc?id=1aTeRjcRCv4Ehb83U5yEl97GRh6gMQjKV ', '65 phút', 'Thương yêu hay ràng buộc'),
(307, 167, 'https://docs.google.com/uc?id=1zDxJARsDSKZXFyKJZ0WYe-6EIeYDH6an ', '55 phút', 'Thương yêu để đem lại hạnh phúc cho nhau'),
(308, 167, 'https://docs.google.com/uc?id=1tLCwZUnrf31zkO4sJtz-i_u-aNE4C4M-', '56 phút', 'Thản nhiên trước những biến động'),
(309, 167, 'https://docs.google.com/uc?id=1GWHsBHNbHINGz1dP0ERSDojpCeDbZAPh ', '58 phút', 'Thảnh thơi bây giờ hoặc không bao giờ'),
(310, 167, 'https://docs.google.com/uc?id=1Irqh50_qHAL-ThKGiNyyto2hBJe1hyyE ', '63 phút', 'Thầy minh hiền muôn nơi'),
(311, 167, 'https://docs.google.com/uc?id=1CirfPeyyqOhJjyLtVeNoVlxV8Rbyhn7U ', '59 phút', 'Thực tại mầu nhiệm'),
(312, 167, 'https://docs.google.com/uc?id=1oJ5rKp0MrByL5JPRGnFNZ6D3QUcCnhAt ', '67 phút', 'Trì giới -con đường thành tinh hoa'),
(313, 167, 'https://docs.google.com/uc?id=164mrqMKByF_0UY2gq8W6mLHs-bpLKFek ', '53 phút', 'Tâm bình cảnh cũng bình'),
(314, 167, 'https://docs.google.com/uc?id=1DA5r3qZ1TP_tEEkkSW3Jlquzzc5z1HmH ', '70 phút', 'Tâm bình nhìn đâu cũng bình'),
(315, 167, 'https://docs.google.com/uc?id=1Qr_ofDLsboJS1wbmg-1mHFkGoS0etPDf ', '46 phút', 'Tâm ta thế nào sẽ thấy thực tại thế ấy'),
(316, 167, 'https://docs.google.com/uc?id=1zgX4XU4Fi7bBLgNijZL1QiWG5e6Nh_PH ', '54 phút', 'Tương lai làm bằng chất liệu hiện tại'),
(317, 167, 'https://docs.google.com/uc?id=1bN1E0SCxkR_kEBcxFAlBtqYqHZhnLu3R', '62 phút', 'Tương đối cũng là tuyệt đối'),
(318, 167, 'https://docs.google.com/uc?id=1t5GGoE-OkwraSd9dDYNQ4yhQDUx4T3v- ', '57 phút', 'Tạ ơn đời màu nhiệm'),
(319, 167, 'https://docs.google.com/uc?id=1ttH3HsMamaVotn5-3zh8suStjHokkJRs ', '72 phút', 'Ai là kẻ hành thiền'),
(320, 167, 'https://docs.google.com/uc?id=15oyiBe0D6X1gG7Og7kbu2nH-Wv_1dpQm ', '80 phút', 'Ai là kẻ nhẫn nhục'),
(321, 167, 'https://docs.google.com/uc?id=1ieukJmTlJ-MwljB56eaSaDtVihq0SjZn', '72 phút', 'Bao nhiêu lầm lỡ cũng do tâm'),
(322, 167, 'https://docs.google.com/uc?id=13OtdYqGCr1rrB_KIrNPtRkfDDYjeb0YE ', '55 phút', 'Bình yên'),
(323, 167, 'https://docs.google.com/uc?id=1FsveiQ28iNnZWTMUHF_exGqnkvVZLklB', '57 phút', 'Biến khổ đau thành hạnh phúc chân thật'),
(324, 167, 'https://docs.google.com/uc?id=15kwJ_Oj6lRCdPgfwcj4UgUBPX74ZbRo5 ', '65 phút', 'Buông xả cảm xúc tốt'),
(325, 167, 'https://docs.google.com/uc?id=1m1b9CIt64phSzx6Let3azCSqgWb3tWQm ', '56 phút', 'Bản thể cũng chính là hiện tượng'),
(326, 167, 'https://docs.google.com/uc?id=1M3UePLwskpp0c6PdQRBsxOBgykOd_SX_', '63 phút', 'Bất động trước thành bại trong đời'),
(327, 167, 'https://docs.google.com/uc?id=1Vzg1diFH0jAcQFygGIHl5z_GD7SUfXpY ', '65 phút', 'Bố thí vô điều kiện'),
(328, 167, 'https://docs.google.com/uc?id=1oNeligsn_kd2djMWT5Q71ToyuWp6Mjju', '58 phút', 'Bớt tự ái sẽ bớt giận hơn'),
(329, 167, 'https://docs.google.com/uc?id=1OfWF0h0NMAfZN7X6Wa9bQTDmgnsXoD7n', '72 phút', 'Chấp nhận cảm xúc xấu'),
(330, 167, 'https://docs.google.com/uc?id=1aALSgNt1y3fRtzruu6jW9HO4HxEHUHJ7 ', '55 phút', 'Chuyển hóa cảm xúc'),
(331, 167, 'https://docs.google.com/uc?id=1TKKsDw1U9HbzCikBt2SKjxyYpNlO9ShV ', '63 phút', 'Chín bước chuyển hóa'),
(332, 167, 'https://docs.google.com/uc?id=1F5ZNO-J5kMbQbHoA9DhbRrbYf9KN0d9A ', '52 phút', 'Chỉ cảm nhận mà không cần suy nghĩ'),
(333, 167, 'https://docs.google.com/uc?id=1SPaPRFTbzTFiN1JopZN3ud2MavXnyDe0 ', '65 phút', 'Con thuyền bố thí'),
(334, 167, 'https://docs.google.com/uc?id=1Psfl0Eqr9qsWGXll6ZUrM8P-YB746q2p ', '63 phút', 'Con thuyền bố thí vượt trùng khơi'),
(335, 167, 'https://docs.google.com/uc?id=1WPvPZBchiYmYswadjvxCQHqLoAcC669o', '61 phút', 'Con thuyền trì giới đến bờ siêu việt'),
(336, 167, 'https://docs.google.com/uc?id=1U8O4SpYb5pLwahgdIPa8ObJ6JAv45ccA ', '63 phút', 'Các bớt hưởng thụ càng thêm bình yên'),
(337, 167, 'https://docs.google.com/uc?id=1f0IsVfxBOkPQDIOhLZwX8lH3O6eXSqwx ', '51 phút', 'Càng chấp nhận càng bình yên'),
(338, 167, 'https://docs.google.com/uc?id=1-ivOv-Ik9KOOsZUkZ8aPAHROCqeqpy4z', '46 phút', 'Càng suy tưởng càng xa rời thực tại'),
(339, 167, 'https://docs.google.com/uc?id=1Z_9Yn3BirhzWzkSDI_44UoqZK8HrhrlA ', '53 phút', 'Cái gì cũng là màu nhiệm'),
(340, 167, 'https://docs.google.com/uc?id=1mtaA2dNvVqrfqhYEy0net5c5aO-rtCWe ', '47 phút', 'Có lắng lòng nghe mới thấu hiểu'),
(341, 167, 'https://docs.google.com/uc?id=1zPgamFDHI7dIn98aAVD28nXDAMW0Bstz ', '65 phút', 'Cảnh giác với những cám dỗ bên trong'),
(342, 167, 'https://docs.google.com/uc?id=1skrXx3Vy45jl9TAfeaFtNemNc5GnVzc2 ', '68 phút', 'Cần nhau một tấm lòng'),
(343, 167, 'https://docs.google.com/uc?id=1vsrbmY3SFMAexGvX3L4YIsg43-_n1O28 ', '55 phút', 'Dấu ấn Pháp môn'),
(344, 167, 'https://docs.google.com/uc?id=1nkyGUD38c4mgIl4NgF6LT5XvCM3TslNZ ', '68 phút', 'Định niệm trong đời sống'),
(345, 167, 'https://docs.google.com/uc?id=1cmYmpabPCWBnhmeYETCtXHttuZdZ9_MD ', '70 phút', 'Giữ bàn tay cho khéo'),
(346, 167, 'https://docs.google.com/uc?id=1SQQZLIzeOgzOgX6LbtXqZqSc8WM9F3oE ', '64 phút', 'Hãy gọi đúng tên tôi'),
(347, 167, 'https://docs.google.com/uc?id=1JjiVoUHXtvzF2_uuvSuhNdW6DjHFn_Gl ', '63 phút', 'Hai sự thật mầu nhiệm'),
(348, 167, 'https://docs.google.com/uc?id=1XlAB_ZMhbu0Cz8ZiGvNYQgbYSQEEodLe  ', '74 phút', 'Ai cũng giật mình trước sự thật về tờ giấy'),
(349, 167, 'https://docs.google.com/uc?id=1nVd7gHKMZIcS9B0Ztp8Q6nJklK-b4dW-  ', '50 phút', 'Ảnh hưởng của tâm tưởng đến thiền tập'),
(350, 167, 'https://docs.google.com/uc?id=1K2EGL--NsEmwJ9LoH8MrHjIAbHYLQEkm  ', '70 phút', 'Bạn có gì đặc biệt không'),
(351, 167, 'https://docs.google.com/uc?id=1gbgRpJ2VktHQsWAwCjbMoWrFwRwHTZPh ', '57 phút', 'Bản thể cũng chính là hiện tượng'),
(352, 167, 'https://docs.google.com/uc?id=1ZL4uL_TbppibuA_fmfvtpdPGounpB0r3 ', '50 phút', 'Biến mọi phương tiện thành những tác phẩm'),
(353, 167, 'https://docs.google.com/uc?id=1Ijp1_4yV7wYX8Os7Iv_p-KSKazz2J5ZS ', '65 phút', 'Biết sống hòa điệu với đất trời'),
(354, 167, 'https://docs.google.com/uc?id=1LPVvEbnKHmzSrnm3yqpnsijcuJopWGmV ', '60 phút', 'Bình yên phải đến từ bên trong'),
(355, 167, 'https://docs.google.com/uc?id=1HCmB34M2Yq7wkQXHDuy5r4HNjqYiakNB ', '55 phút', 'Bớt can thiệp vào những gì ta đang tiếp xúc'),
(356, 167, 'https://docs.google.com/uc?id=1KojcUXkYAZTdWMCVS-hxxBtc4d85kzwi ', '65 phút', 'Bớt mong cầu thì sẽ thêm bình yên'),
(357, 167, 'https://docs.google.com/uc?id=13W4J-txpAjI5SPaKc0peKZ4aqFmRV0tR ', '53 phút', 'Bớt phản ứng vào những điều trái ngang'),
(358, 167, 'https://docs.google.com/uc?id=1eefr54TpAAuAjmYLMoKr-sUKd9kh5M6N ', '72 phút', 'Bớt tự ái sẽ bớt khổ đau'),
(359, 167, 'https://docs.google.com/uc?id=15raOU5hEN2W8CGZN9PORzZL7nCKVyJMo ', '56 phút', 'Bước đi vững chãi trên con đường hạnh phúc'),
(360, 167, 'https://docs.google.com/uc?id=1Q7DXUetc_Eg8uwVBbT4aygSSy7AFWKiu ', '61 phút', 'Buông xả trong liên hệ thương yêu'),
(361, 167, 'https://docs.google.com/uc?id=1wxz9H4vMDQJXzESSmoP-t_U97hhJqhWQ ', '55 phút', 'Cần lắm một bàn tay nâng đỡ'),
(362, 167, 'https://docs.google.com/uc?id=1GyLOPf5jUiY6DTU0dgCKMq4mW9sKUQ0v ', '55 phút', 'Càng chấp nhận càng bớt khổ đau'),
(363, 167, 'https://docs.google.com/uc?id=1TfFQ5F6RuYXR6WtV4B8vUnM2MdpII_-y ', '42 phút', 'Chân sám hối'),
(364, 167, 'https://docs.google.com/uc?id=1Q6_wjxI5iFKtQDdbCYskbG4tbJNmMj8y ', '75 phút', 'Chất liệu nuôi dưỡng tâm tư'),
(365, 167, 'https://docs.google.com/uc?id=18sxbWVT-wQeE0ZkL8KEke7Yle7jw2CP4 ', '101 phút', 'Chỉ lặng nhìn mà không cần phản ứng'),
(366, 167, 'https://docs.google.com/uc?id=18pXxfeCZaKZccqFLbDMx67-TQsf4dYSn ', '75 phút', 'Chưa biết thương mình sao biết thương người'),
(367, 167, 'https://docs.google.com/uc?id=14c-9KEOYead5acEEbVOdylyCs5FSn_Bz ', '117 phút', 'Chuyển hóa cơn giận bằng quyền lực mềm'),
(368, 167, 'https://docs.google.com/uc?id=1jPW7mAiHqOenyxtwQ8GvTnscfExkEWd1 ', '65 phút', 'Chuyển hóa cơn giận bằng sức mạnh bên trong'),
(369, 167, 'https://docs.google.com/uc?id=13km000xaWPKA4N6OCW1dIKvs1aEU7j1b ', '105 phút', 'Có gì đâu mà giận'),
(370, 167, 'https://docs.google.com/uc?id=1KIT-5WqV_l2vmROwd7Wm_WuOhs1GwGoB ', '55 phút', 'Có gì đâu mà lo'),
(371, 167, 'https://docs.google.com/uc?id=1uKu63QGSAxAaLNbcc860YcfuLkrQ2-mj ', '115 phút', 'Đã đến lúc ngồi lại với nhau chưa'),
(372, 167, 'https://docs.google.com/uc?id=1mOpIWUJ2806nOKFfUiINPwm4T8vux9M5', '64 phút', 'Đã thương nhau xin đừng làm khổ nhau'),
(373, 167, 'https://docs.google.com/uc?id=147gPIXXbjyJaf-KJFaIoNlfghwvDnxOU ', '106 phút', 'Đâu là sự giải thoát đích thực'),
(374, 167, 'https://docs.google.com/uc?id=16lLzTboVMLVUkgb2Z5ps4LBvQdAKMDhW ', '64 phút', 'Đến đây như đã đến đây'),
(375, 167, 'https://docs.google.com/uc?id=1RIh7Z3nZRVWdvRuvXvulWcuqtrI40-ly ', '86 phút', 'Điểm tựa an toàn nhất'),
(376, 167, 'https://docs.google.com/uc?id=1tdiryhOe-9ZR73CRK5ZiM72g3WC_vOdm ', '55 phút', 'Đời cho ta thế'),
(377, 167, 'https://docs.google.com/uc?id=1vNUVTkXNffNNt_YdHKZTe42uLFXkC8Zn ', '59 phút', 'Đóng vai trò trong liên hệ thương yêu'),
(378, 167, 'https://docs.google.com/uc?id=1EKz8NzNoZRe3bY7Pz0OVpTODZuoSob-P ', '45 phút', 'Đức tính buông xả'),
(379, 167, 'https://docs.google.com/uc?id=1HKdQOCasdtRnhHx8cCDVzyJLuWs8Y-O3 ', '59 phút', 'Đừng bị lừa bởi sự nhàm chán'),
(380, 167, 'https://docs.google.com/uc?id=1CLZluEJDQKYGoih8a3jObdeeB5MqGQy3 ', '64 phút', 'Đừng để thương yêu trở thành sự ràng buộc'),
(381, 167, 'https://docs.google.com/uc?id=1PHWaa0yemZpeP4ACxQsfis_81QNoJ6Od ', '65 phút', 'Đứng lại để lấy năng lượng đi tiếp'),
(382, 167, 'https://docs.google.com/uc?id=1qQBVmbhXbpINpzKb4HJ_T3TQgoW2o-iC ', '57 phút', 'Dưới 30 tuổi cần chuẩn bị gì cho tương lai'),
(383, 167, 'https://docs.google.com/uc?id=1qGbI9wxhg51P9PC8q3Yq3jXOyyanhCtJ ', '122 phút', 'Giữ tâm quân bình và sáng tỏ'),
(384, 167, 'https://docs.google.com/uc?id=1WPkXKHOJ8zHSgu-LgrFYBI4mmVznxyW3 ', '65 phút', 'Giữ tâm trong trẻo khi nhìn lên thực tại'),
(385, 167, 'https://docs.google.com/uc?id=10IytV2iHgtvpzwzv8NKIxZkBu2DlQWPj ', '63 phút', 'Giữa cõi đời lạnh lẽo, cần nhau một tấm lòng'),
(386, 167, 'https://docs.google.com/uc?id=1ZrgiGqauVOBEM1t_FhGJWrXalxhKo0hm ', '87 phút', 'Hạnh phúc không cần phải chờ đợi'),
(387, 167, 'https://docs.google.com/uc?id=1lLS0QgApfG755_3wz5NJAq0GvY8dcL4U ', '108 phút', 'Hạnh phúc lớn nhất là được sẻ chia'),
(388, 167, 'https://docs.google.com/uc?id=18KXFgQ6J1Q1bN4Qo-g6FpcTavBoN9rQQ ', '60 phút', 'Hạnh phúc phải đến từ bên trong'),
(389, 167, 'https://docs.google.com/uc?id=1qboh7mF8lggZpDEWu1w7xq_yLb1AZWgF ', '37 phút', 'Hạnh phúc trong tay mà loay hoay kiếm tìm'),
(390, 167, 'https://docs.google.com/uc?id=1eoCVgLr1hUpHUWQ1AIS-aVE_DyNuv_19 ', '37 phút', 'Hành trình vượt thoát nỗi lo'),
(391, 167, 'https://docs.google.com/uc?id=1qBhoEvnGr0gKN7HGmIjFWCg8WLgqkJMw ', '60 phút', 'Hành trình vượt thoát phiền não'),
(392, 167, 'https://docs.google.com/uc?id=1r_U4VP3AOQW5VKpBD2nrRyX9pOT6zrZj ', '61 phút', 'Hãy đưa Thiền vào thực đơn mỗi ngày'),
(393, 167, 'https://docs.google.com/uc?id=1ovVPYC0vui2DLY0qOq54qab8cHxVgg7W ', '110 phút', 'Hãy đứng bên ngoài phiền não'),
(394, 167, 'https://docs.google.com/uc?id=19lXR3kbA6QYPcG5fOeZrKhbJBcMml1Ci ', '57 phút', 'Hãy một lòng chấp nhận để giảm bớt khổ đau'),
(395, 167, 'https://docs.google.com/uc?id=157DOi82e0fV7EDOil5dvYyYfMT-lzQ5c ', '59 phút', 'Hãy nhìn mà không cần phán xét'),
(396, 167, 'https://docs.google.com/uc?id=1RVmZR84VaucrATYjgAi_GkVIUarm6B7U ', '66 phút', 'Hãy quay về kết nối với thực tại'),
(397, 167, 'https://docs.google.com/uc?id=1cSnNpBhIA8MauG2VA7etW2jkG8MpAAFG ', '109 phút', 'Hãy quay về  với tài sản bên trong của mình'),
(398, 167, 'https://docs.google.com/uc?id=1TjXz9_VJNfrL9llg6v9RG5ceI1dukSHt ', '54 phút', 'Hãy sống trọn vẹn trong từng giây phút hiện tại'),
(399, 167, 'https://docs.google.com/uc?id=1G0XvFprOzXpOv4u-eE0Vfkkq8_ZJ485M ', '62 phút', 'Hiểu rõ cơn giận'),
(400, 167, 'https://docs.google.com/uc?id=1exUeBuofEjBtBC9kwhXRroVe2rxUrj4l ', '66 phút', 'Khổ đau đến từ bên trong chứ không phải bên ngoài'),
(401, 167, 'https://docs.google.com/uc?id=1qDjjdu1mhAVxAJDqGdY5GkFEoGbt7y14', '73 phút', 'Khổ đau là do tham sân si'),
(402, 167, 'https://docs.google.com/uc?id=18SYhRTUgh_1-d4PMcRC_RtP06uYB62Jc ', '56 phút', 'Khổ vui do mình'),
(403, 167, 'https://docs.google.com/uc?id=1WE6i_-Lwui04peyHIfhtCfDxGKQaKaXF ', '35 phút', 'Làm cách nào để phát triển nội lực'),
(404, 167, 'https://docs.google.com/uc?id=1jGaH_XPprmrrtlLxi8ZauJ-sGC5D1UHb ', '72 phút', 'Làm chủ cảm xúc, làm chủ đời mình'),
(405, 167, 'https://docs.google.com/uc?id=1KK2ty0CU16NZCkafrmabAy4S6hGWtITP ', '65 phút', 'Làm để sống chứ không phải sống để làm'),
(406, 167, 'https://docs.google.com/uc?id=1UZtNTyaB9aAyN1oiaRQm89ZMwPUncLJX ', '60 phút', 'Làm sao để chấp nhận nhau'),
(407, 167, 'https://docs.google.com/uc?id=1ZClE5noPQFfgj6ZBWoXkOat_hmj0uEUu ', '55 phút', 'Làm sao để không lo lắng'),
(408, 167, 'https://docs.google.com/uc?id=1rdblrq1CRdI_J7oJVxHzxGnFHpFD_3ao ', '60 phút', 'Làm sao để nuôi dưỡng tâm bình an'),
(409, 167, 'https://docs.google.com/uc?id=1r3LUA2MFn6eG0rWi-QsRgOARl90Xi-Du ', '120 phút', 'Làm sao để tha thứ cho mình và cho người'),
(410, 167, 'https://docs.google.com/uc?id=1mbSy-eTkzjDfP68322j_ybhI-xcUptHS ', '103 phút', 'Làm sao giúp đỡ được người đang khổ đau'),
(411, 167, 'https://docs.google.com/uc?id=1_R-O9nKKZo9cFAVK0qYaW_jBa3rxgKzt ', '61 phút', 'Làm sao để tha thứ được cho nhau'),
(412, 167, 'https://docs.google.com/uc?id=1ciH-x9NYT9KkUq1GSe75S8n5n6jgNUEH ', '54 phút', 'Làm sao vượt qua được những giới hạn bản thân'),
(413, 167, 'https://docs.google.com/uc?id=1--2BcEnTKDUfJs9aNGlaMdX2upAngLBv ', '43 phút', 'Làm sao vượt thoát nỗi lo'),
(414, 167, 'https://docs.google.com/uc?id=1AJIII8Pml4nV5zXFFHtMmLLdxYVVa-Cn ', '64 phút', 'Làm thế nào để có chánh niệm'),
(415, 167, 'https://docs.google.com/uc?id=1agBafYzn2wyGreJedykyEn-GHzLVKzRh ', '62 phút', 'Lam yếu mòn bản ngã, hành Thiện đúng cách'),
(416, 167, 'https://docs.google.com/uc?id=1RsGgzqOOJTWKaMx5EQ4wIsl_S2OocnDS ', '48 phút', 'Lắng nghe thấu tận nguồn cơn'),
(417, 167, 'https://docs.google.com/uc?id=1SFZ3tt9xHxXIgUoJmDXERDEzzaULeORz ', '109 phút', 'Lãnh đạo bằng năng lượng tỉnh thức'),
(418, 167, 'https://docs.google.com/uc?id=1JipUzDhzRTfGzL0z9YcnNeqve1K_zl3U ', '65 phút', 'Lo sợ bên ngoài là do yếu đuối bên trong'),
(419, 167, 'https://docs.google.com/uc?id=1emiJ7DLZdi1wZOMvPQ_UgnzD7jP-nsPX ', '130 phút', 'Mất chỗ nào tìm chỗ đó'),
(420, 167, 'https://docs.google.com/uc?id=1aJD57zPiUgSgTHfbNAFYrLvPkbnTIcfS ', '61 phút', 'Mẹ ơi con biết mẹ vẫn còn đó'),
(421, 167, 'https://docs.google.com/uc?id=1vstkU_0siQt-b71ePffu12hUvyo6oq0S ', '50 phút', 'Mỗi giây phút của đời sống đã là mục đích rồi'),
(422, 167, 'https://docs.google.com/uc?id=1GzuCFiGsICbg6SyDJghZ_fWNpQTqm23h ', '65 phút', 'Mỗi giây phút đều là cơ hội để sống'),
(423, 167, 'https://docs.google.com/uc?id=1gHhOhXDM4klWcNmVT1oDVdibzLADnW_w ', '111 phút', 'Mỗi ngày đi về hướng vô ngã'),
(424, 167, 'https://docs.google.com/uc?id=1PuYbIV7l-Ahr2AanEHS444nZ7adhTU-D ', '51 phút', 'Muốn có bình yên hãy nên học cách chấp nhận'),
(425, 167, 'https://docs.google.com/uc?id=1K3bTLjl_HGuXFGKkzczyMbwQ2ofMg7qQ ', '51 phút', 'Nếu chẳng một phen sương lạnh buốt'),
(426, 167, 'https://docs.google.com/uc?id=1oDzJixVZ9jA8gMZ_9e8ZCpfYmC-6UAmt ', '75 phút', 'Nếu chỉ còn một ngày để sống ta sẽ làm gì'),
(427, 167, 'https://docs.google.com/uc?id=1tgrkFatZ31JbUFBaPB8owJi3AznpKRtu ', '55 phút', 'Ngày xa xưa ấy biết đâu mà tìm'),
(428, 167, 'https://docs.google.com/uc?id=15fepp8xprBNvkNy-mFDNdOTs12eRPbb_ ', '61 phút', 'Nghệ thuật buông bỏ bản ngã'),
(429, 167, 'https://docs.google.com/uc?id=14xMakLVvtz_u7UFsjPvIJh9bHWcCi_Bx ', '66 phút', 'Nghệ thuật chăm sóc người sắp lâm chung'),
(430, 167, 'https://docs.google.com/uc?id=1pWLhHrzckgih7iUclH4nvi87cFh9ZWbU ', '121 phút', 'Ngồi chơi với nỗi đau'),
(431, 167, 'https://docs.google.com/uc?id=1uryUfYZTdAK7eaBIS-C3oNQ0cA2MGfcq ', '60 phút', 'Nhận diện và chăm sóc vết thương trong lòng'),
(432, 167, 'https://docs.google.com/uc?id=1JLCCRkh_bQI1P77l4WF7Xqf4HB2TYa79', '62 phút', 'Nhận diện những con sóng ngầm trong tâm'),
(433, 167, 'https://docs.google.com/uc?id=1QEub_-zTEthZo1wsBCBOFq48_ZJjSEyC ', '45 phút', 'Nhìn cuộc sống bằng tâm hồn lắng dịu'),
(434, 167, 'https://docs.google.com/uc?id=1Q98MN6UK99fRM2esjzHuaOm0K6PIaN4a ', '64 phút', 'Nhìn thực tại bằng con mắt bình yên'),
(435, 167, 'https://docs.google.com/uc?id=1bY2oUs3mI3U6uraD596bGN5dsaf6KHVT ', '60 phút', 'Nhìn tới đâu thấu suốt tới đó'),
(436, 167, 'https://docs.google.com/uc?id=1nxdEDIKPqyLJR7TuSRU_gRkeW0IDNZ3x ', '70 phút', 'Nó đây rồi'),
(437, 167, 'https://docs.google.com/uc?id=11RCjdCvQ3NfIHZZzF0EBlcuuJUyDJr62 ', '115 phút', 'Nới rộng dung lượng trái tim');
INSERT INTO `sub_audio` (`id`, `product_id`, `mp3`, `thoi_luong`, `name`) VALUES
(438, 167, 'https://docs.google.com/uc?id=1Lx8Pl75-Fz7lwBNV13M2YUHR6NevtNlw ', '65 phút', 'Nụ cười trên môi bao giờ trao nhau nữa'),
(439, 167, 'https://docs.google.com/uc?id=1MK6haSS5p18mV1hICafyx0s3MSuQxXRk ', '63 phút', 'Nuôi dưỡng tình thương để chuyển hóa cơn giận'),
(440, 167, 'https://docs.google.com/uc?id=1aDqG7QWccAwlH5nqJA2CHTOfYsiNJ-U0 ', '57 phút', 'Ôm ấp và làm chủ cơn giận'),
(441, 167, 'https://docs.google.com/uc?id=1PVBtTv7E83hUUe05jPiM78AL6RhTv0tp ', '123 phút', 'Phát triển nội lực bằng sức mạnh của Định'),
(442, 167, 'https://docs.google.com/uc?id=1YNh39MB9S7ppqYNDqmnez9UkmcudM1H1 ', '49 phút', 'Quay về nương tựa chính mình'),
(443, 167, 'https://docs.google.com/uc?id=1QLcAZIb6otzctx-Z1voqy_GljPqk4-MK ', '60 phút', 'Quay về với thực tại'),
(444, 167, 'https://docs.google.com/uc?id=1kxIebC-BPqKE8Tna0GhS9qFMu6BWiHcT ', '70 phút', 'Quyết tâm xây dựng đà chánh niệm'),
(445, 167, 'https://docs.google.com/uc?id=1BVT2XoLU8T6LihSDyjtptxgHhkWhUC5g ', '57 phút', 'Sao cho trong ấm ngoài êm'),
(446, 167, 'https://docs.google.com/uc?id=16iRUE4kOF1j3QvGBtMOADF8yL9iC1wAA ', '70 phút', 'Sau khi chết ta sẽ đi về đâu'),
(447, 167, 'https://docs.google.com/uc?id=1kHb1z75rsy1KyVa0XbIL1R7DxAZ9dwsM ', '56 phút', 'Sống bằng lòng biết ơn xóa đi mọi ngăn cách'),
(448, 167, 'https://docs.google.com/uc?id=1eKARnlqK3Us_77KlsVu2s0u9oycUHWq- ', '68 phút', 'Sống bình thản giữa những biến động'),
(449, 167, 'https://docs.google.com/uc?id=1GLVuMVbh4ew3DYfjfnHH9qGwwY2A-KdQ ', '53 phút', 'Sống trọn vẹn trong giây phút hiện tại'),
(450, 167, 'https://docs.google.com/uc?id=1FVoDx9JvHk8vlFsxTmFCVvixqWh1e6zF ', '74 phút', 'Sự kỳ diệu của Thân Tâm Hợp Nhất'),
(451, 167, 'https://docs.google.com/uc?id=1tiQozAL_J9D2dJUIb_oBMJMfl6yjFEdv ', '163 phút', 'Muốn bình an thì bình an'),
(452, 167, 'https://docs.google.com/uc?id=1hdDPSDDob-lAIOF_bXqsg2ZxiI9snZ_n ', '50 phút', 'Sự thật về tinh đức'),
(453, 167, ' https://docs.google.com/uc?id=1zLlMfrhmJRmsnOpvCjR_Ps6ZRIZCItum ', '60 phút', 'Sự tử tế trong tình yêu'),
(454, 167, 'https://docs.google.com/uc?id=1ux3UDDcJehH-kA81DECJAjOA0TJCRQ9A ', '62 phút', 'Sức mạnh của sự tĩnh lặng'),
(455, 167, 'https://docs.google.com/uc?id=1eyK2btV5NZXwLjSA2t2StQM2_R_d7BgW ', '55 phút', 'Sức mạnh của tâm bình yên'),
(456, 167, 'https://docs.google.com/uc?id=1SXHmDhrLBydyd-SMt3TyACtBzIX36KcZ ', '55 phút', 'Ta đang làm gì đây'),
(457, 167, 'https://docs.google.com/uc?id=1ig_LccRpLWhGogJVSh5aEjwq3hxifpr3 ', '58 phút', 'Ta đang yêu người hay yêu chính mình'),
(458, 167, 'https://docs.google.com/uc?id=1Se3Y5R2yE9WMq1qKb8c6mbdoCvRzbsZF ', '72 phút', 'Tại sao ta lại khổ đau'),
(459, 167, 'https://docs.google.com/uc?id=1UUlrNrqSYgI1x0DcUzUArIn9nBrhgVN6 ', '52 phút', 'Tại sao ta lại thương yêu'),
(460, 167, 'https://docs.google.com/uc?id=1s5oSPqfq0kXwpXIJhVHBkyvxDd5U8Tve ', '45 phút', 'Tầm quan trọng của thực tập Chánh nghiệp'),
(461, 167, 'https://docs.google.com/uc?id=1A71mPfsiFiv-2TMWgP5tbpxlU4SXB6-0', '50 phút', 'Tâm ta thế nào sẽ nhìn thực tại thế ấy'),
(462, 167, 'https://docs.google.com/uc?id=1VDcj7YvGWC4rF4dKG0FljbJw6iDaI2ke ', '58 phút', 'Tập quan sát đối tượng như chính nó hiện ra'),
(463, 167, 'https://docs.google.com/uc?id=1KDCstvDU7QoPZDxhQ7qreF3y8DIaAJPU ', '75 phút', 'Thái Độ Hành Thiền Đúng Đắn Mới Vượt Qua Được Phiền Não'),
(464, 167, 'https://docs.google.com/uc?id=10rdpz_tEZ3WKb6PeHcFngd7C3zJ3cSh4 ', '39 phút', 'Thành công và hạnh phúc có rồi cần tìm đâu'),
(465, 167, 'https://docs.google.com/uc?id=15K66lY0r85rQi_YieVkxCb8V-6DpAEeZ ', '111 phút', 'Thành công phải song hành cùng hạnh phúc'),
(466, 167, ' https://docs.google.com/uc?id=1QcugrgtgzRpIg5I6jp25qB0Au85CYZUa ', '57 phút', 'Thêm cũng chính là bớt'),
(467, 167, 'https://docs.google.com/uc?id=1FfHaaRf_mqoSbR6URJQO6kxyzS-kBEMJ ', '41 phút', 'Thiền buông thư'),
(468, 167, 'https://docs.google.com/uc?id=1hPG00Yf4tno1eN8WlxOO0ELczJGXoZSM ', '63 phút', 'Thiền Tứ Niệm Xứ'),
(469, 167, 'https://docs.google.com/uc?id=1NsCICNIXfCaSKnPjnbvoBEOFK8PWdmTe ', '97 phút', 'Thoát khỏi ràng buộc khổ đau'),
(470, 167, 'https://docs.google.com/uc?id=1DLCkXTpdRal9IcBZ05jeAPJKDfCe2UuG ', '59 phút', 'Thực tại mầu nhiệm'),
(471, 167, 'https://docs.google.com/uc?id=1auBof2sBK437IbsgCxbOO_hZyKSTfF94 ', '43 phút', 'Thực tập buông xả'),
(472, 167, 'https://docs.google.com/uc?id=1u8b0a8877teWndtYEY6LW-HoaZsSYWXC ', '84 phút', 'Thương nhau rồi thì đừng làm khổ nhau'),
(473, 167, 'https://docs.google.com/uc?id=1RSzqyxDeBbG1FVMU3iGvO4olCXc4Jdax ', '85 phút', 'Thương yêu bằng trái tim tỉnh thức'),
(474, 167, 'https://docs.google.com/uc?id=1ijrYaCpvsQJKmDJfxowbvgqIDBrtBhi8', '97 phút', 'Thương yêu mà không ràng buộc'),
(475, 167, 'https://docs.google.com/uc?id=1h6I3x_gOkqIvm0rFvXrSnXZGj8gXupSH ', '84 phút', 'Thương yêu như thế nào để đừng làm khổ nhau'),
(476, 167, 'https://docs.google.com/uc?id=1ufayz1vCpf8Ki9LCV7_9kSY2Dq93luA2 ', '57 phút', 'Tìm lại chân hình'),
(477, 167, 'https://docs.google.com/uc?id=1DqrE1DHMqzfqq2GbDsv2bQ6ZeANnpFcX ', '119 phút', 'Tìm lại động cơ hành thiền'),
(478, 167, 'https://docs.google.com/uc?id=17pAlPV0grKlUvcnK8x9ZpXBir5ed7jZ0 ', '65 phút', 'Tỉnh giấc khi tiếp xúc với thực tại'),
(479, 167, 'https://docs.google.com/uc?id=1T9v0_4Q16wmKPsKoXWd6BOCPrRGt4wIE ', '60 phút', 'Tỉnh thức thưởng thức những gì mình đang có'),
(480, 167, 'https://docs.google.com/uc?id=1dajZ2su9Lq-XhViDQSouZhKvtk9yIBHy ', '119 phút', 'Tôi đang an trú vững vàng vào chính tôi'),
(481, 167, 'https://docs.google.com/uc?id=1HnZtDiqb48O6CZunWPH1ZkXw8tD-S4qq ', '118 phút', 'Trả ơn cuộc đời bằng năng lượng thương yêu'),
(482, 167, 'https://docs.google.com/uc?id=11PXAPzsp-wLyM_g5Bb3hvoTHgkEnxHGa ', '111 phút', 'Trí tuệ đến từ sự thực hành đúng đắn'),
(483, 167, 'https://docs.google.com/uc?id=1Bw7qt3tKrTicgwwQd1byltMLdwDx8Ezq ', '109 phút', 'Trong có ấm thì ngoài mới êm'),
(484, 167, 'https://docs.google.com/uc?id=1mvlLN5ndoW8OHqubymZpMwIv9KBP7-mu ', '84 phút', 'Tự chữa lành vết thương trong tâm hồn'),
(485, 167, 'https://docs.google.com/uc?id=1sExLvQDdUaMBeVtTxik0izwsPk4sRd2i ', '56 phút', 'Uy lực trong liên hệ thương yêu'),
(486, 167, 'https://docs.google.com/uc?id=1SSe2CPtgquL30PvxKHF88tqaVrFq4AT8', '80 phút', 'Vấn đáp Hạnh Bồ Tát'),
(487, 167, 'https://docs.google.com/uc?id=1H65lNFEpYeYb7p2JQjCTzV0WuA9bVoVs ', '91 phút', 'Vấn đáp khóa tu hạnh phúc đến từ bên trong'),
(488, 167, 'https://docs.google.com/uc?id=1E1xztCq-DfILwSnwc01Ce496wUZ1H0eV ', '83 phút', 'Vấn đáp khóa tu thương yêu có hiểu biết'),
(489, 167, 'https://docs.google.com/uc?id=1uENlPpuEoT72fv9kMWXsXUAQkAVtpzV2 ', '45 phút', 'Vấn đáp Thiền- vững chãi trong từng bước chân'),
(490, 167, 'https://docs.google.com/uc?id=1VsMSeJpEBDTLT-OBeSJBqlADoiSJWAk2 ', '70 phút', 'Vì một thế giới hòa bình'),
(491, 167, 'https://docs.google.com/uc?id=13gYCIwjP4ZbKNrGAR197gxQgtfxKNbZG ', '76 phút', 'Việc gì là quan trọng nhất'),
(492, 167, 'https://docs.google.com/uc?id=172nm-5hGBQIoLCv7FgnHXRim-ALlf6pE ', '83 phút', 'Vui sống giữa những nghịch duyên'),
(493, 167, 'https://docs.google.com/uc?id=1ZEkOzXBJQX5vSTrMVmYZE8u5sAPdgnLu ', '50 phút', 'Vượt qua những điều trái nghịch'),
(494, 167, 'https://docs.google.com/uc?id=1KHVAyTEpeLM8F4qk27BLuXFYgOy-VtSz ', '60 phút', 'Xác định lại thái độ thiền tập'),
(495, 167, 'https://docs.google.com/uc?id=1xbhTVWhIgMffWTrWbEJtw8xXwiWWvgKO ', '50 phút', 'Giới bồ tát'),
(496, 167, 'https://docs.google.com/uc?id=1AxRZpvPpNJW8DPD5JKa34aZo0UhTmdQU ', '75 phút', 'Ba câu trả lời màu nhiệm'),
(497, 167, 'https://docs.google.com/uc?id=1ZkLyMMVvjJzhONLTLQhZk0g6JzVoM3VQ ', '67 phút', 'Không ngừng quan sát tâm chống cự'),
(498, 167, 'https://docs.google.com/uc?id=1jf3hm35SaIpCyaR7mi1bYKEOwJJg2nQS ', '70 phút', 'Trì giới để hoàn thiện chính mình'),
(499, 168, 'https://docs.google.com/uc?id=1z-76RqNlPnXY1KLbvNanl39sJNClWyi0', '93 phút', 'Ai hiểu lòng cha'),
(500, 168, 'https://docs.google.com/uc?id=15nlAIrzVB3Sho9ft3Hyflp9Cv8VtGsVQ ', '75 phút', 'Đừng tham vọng thay đổi người khác'),
(501, 168, 'https://docs.google.com/uc?id=1E420McKT_o3l4vm-NTpwkdFS-2JQVnbg ', '101 phút', 'Nhớ ơn và trả ơn'),
(502, 168, 'https://docs.google.com/uc?id=1spnq6HXqhe3Q8hxIfOxmmXN-xCyTdr10 ', '89 phút', 'Nuôi dạy con thời hiện đại'),
(503, 168, 'https://docs.google.com/uc?id=1xRGMOG0l34X8KndmalOu4GO--rmTMcHz ', '57 phút', 'Vun trồng thế hệ tương lai'),
(504, 168, 'https://docs.google.com/uc?id=1J6hRSLnHjCINmS10APZIjFU9jioqRDwi ', '92 phút', 'Xin đừng làm khổ nhau'),
(505, 169, 'https://docs.google.com/uc?id=1Mrut2OHhk0hxEr7Z2nQpYTQxk1UBSQdQ ', '80 phút', 'Bảo vệ thuần phong mỹ tục'),
(506, 169, 'https://docs.google.com/uc?id=1_eYSopnrmV9a6btbqfkeET8NadcLOJlR ', '90 phút', 'Đạo hiếu'),
(507, 169, 'https://docs.google.com/uc?id=1SNqPWnzOtg0WYlU6rNlapwt0pBx0x-M7 ', '89 phút', 'Đạo làm con'),
(508, 169, 'https://docs.google.com/uc?id=1fs0MQh7H6Lf3XR4QlZE1STUJVTQeP_3h ', '179 phút', 'Dạy con'),
(509, 169, 'https://docs.google.com/uc?id=15nF9j1qWQLMz2zbqIjUFsq8czO7Wow6c ', '182 phút', 'Dạy con nên người'),
(510, 169, 'https://docs.google.com/uc?id=1qv9Dj0ZTlfxEJsZCQNoBF4HovZDpDjeP ', '128 phút', 'Giáo dục'),
(511, 169, 'https://docs.google.com/uc?id=13ivzcbkPUrUxVuCOHA_mgbXB5jOLNSIc ', '90 phút', 'Giúp trẻ tin Phật'),
(512, 169, 'https://docs.google.com/uc?id=11GRtoWFzdlps9VL9uMRzeOdQ1dyiRxV3 ', '92 phút', 'Hôn nhân'),
(513, 169, 'https://docs.google.com/uc?id=19cw-nQlcR3JOUhfI6533DFSFY0Ta0PGd ', '87 phút', 'Người với nguời'),
(514, 169, 'https://docs.google.com/uc?id=1xdnc1aMkhT0yPmASDMjiuP_y5EXaE5Ye ', '185 phút', 'Quan hệ vợ chồng'),
(515, 169, 'https://docs.google.com/uc?id=1u6p0B3089Y2JzdmBLWFwHznUMHdA8Nam ', '90 phút', 'Sự hòa hợp'),
(516, 169, 'https://docs.google.com/uc?id=1kDPAPBtXQP3z5H6DoPBwjRi1yQ8BOAiX ', '87 phút', 'Tâm niệm và hành vi'),
(517, 169, 'https://docs.google.com/uc?id=1eD-1wOraGir8DsIi_mEgdi3FM1Z5wt86 ', '47 phút', 'Tình nghĩa và trách nhiệm'),
(518, 169, 'https://docs.google.com/uc?id=1Rh8dcxkHV_yywEjVXnxksYvNK6Mg_56G ', '56 phút', 'Tinh thần và trách nhiệm'),
(519, 169, 'https://docs.google.com/uc?id=16ulFh6aWplguoIwSzC2h_sJISQ2osqjA ', '196 phút', 'Tình yêu và hôn nhân'),
(520, 169, 'https://docs.google.com/uc?id=17awy2RYUDmLWz-fjVNn_cN-UFqVcshuQ ', '98 phút', 'Tổ ấm gia đình ngày nay'),
(521, 169, 'https://docs.google.com/uc?id=12XBYC1UiMMxV_K8xUaBWc3bG2UZxmWq3', '65 phút', 'Trung thành cũng là đạo đức'),
(522, 169, 'https://docs.google.com/uc?id=1UXM4x-asZrGseP-ubQTaRfJE1tT5kptn ', '60 phút', 'Ước mơ và nhận thức'),
(523, 169, 'https://docs.google.com/uc?id=1jOgLbzYTbLsN__TtkPtuLmjAPaQ8NEbj ', '50 phút', 'Ước nguyện và thực hiện'),
(524, 169, 'https://docs.google.com/uc?id=1Uw8iWdAsy9rrkzaroubz3Md_LVoi58qp ', '67 phút', 'Ước vọng của học sinh'),
(525, 169, 'https://docs.google.com/uc?id=1NLbAJh5Wh2TUwNOrQp5hBmd7CRRQNeCc ', '61 phút', 'Ý nghĩa sự yêu thương'),
(526, 169, 'https://docs.google.com/uc?id=1KNrmgWERkUnQlwvAdkjwD21ShMnJp21D ', '91 phút', 'Ý niệm gia đình'),
(527, 170, 'https://docs.google.com/uc?id=1VJr19X3klsRFlkC2Ewrd7oAkOYsnYRHs ', '6 phút', 'Nhạc Thiền Phật giáo'),
(528, 170, 'https://docs.google.com/uc?id=1byXQb9RP2ey4xyKXlvfp-T5xS4WRlSnd ', '15 phút', 'Nhạc Thiền tĩnh tâm'),
(529, 170, 'https://docs.google.com/uc?id=1-HpBxwKCcesqW5kJWggkBPfqEaersFJE ', '24 phút', 'Chú đại bi tiếng Phạn'),
(530, 170, 'https://docs.google.com/uc?id=1DFv_OhFlSlTt6GEXe6eBv2J6EkVUzEne ', '24 phút', ' Om Mani Padme Hum'),
(531, 170, 'https://docs.google.com/uc?id=1q0r0dszD9OrVL-fOjy8p6lL_KlW-pTnw ', '3 phút', 'Đã về đã tới- Thiền ca Làng Mai'),
(532, 170, 'https://docs.google.com/uc?id=1bW0g5Bcv_NpcbJf2heSnwEdCnaDUnNEm ', '4 phút', 'Quay về nương tựa- Thiền ca Làng Mai'),
(533, 170, 'https://docs.google.com/uc?id=1qerWAVu36EC-rFE_vT7MiQsMmjheM15E ', '3 phút', 'Đây là tỉnh độ - Thiền ca Làng Mai'),
(534, 170, 'https://docs.google.com/uc?id=1tbj4OT4_IcCP5iEBUPB_vM4IiZT11lEw ', '2 phút', 'Hạnh phúc bây giờ - Thiền ca Làng Mai'),
(535, 170, 'https://docs.google.com/uc?id=1o6ICQL4ln5ctVkN-4Z2KwUAk6_cPQriI ', '4 phút', 'Giọt nắng - Thiền ca Làng Mai'),
(536, 170, 'https://docs.google.com/uc?id=1irftwinDFj6bgTGGTQPDeWfZ_HXypJB9 ', '3 phút', 'Hiểu và thương - Thiền ca Làng Mai'),
(537, 170, 'https://docs.google.com/uc?id=1uHy108D5tQCobq1IGlHdl-PkxD6w3Ki1 ', '2 phút', 'Không đến không đi - Thiền ca Làng Mai'),
(538, 170, 'https://docs.google.com/uc?id=1Bw4uTYaDwanOEaBENTL1Ie6fqUDi_lGB ', '3 phút', 'Cười với thênh thang - Thiền ca Làng Mai'),
(539, 170, 'https://docs.google.com/uc?id=17w95-HGyZIfQ579GsOOrogGFBuN52dwT ', '4 phút', 'Thiền trà -Thiền ca Làng Mai'),
(540, 170, 'https://docs.google.com/uc?id=1IKIrqNO2nmYaR4FWQRy93E9ZcJH1w7EX ', '4 phút', 'An là thở, lạc là đi - Thiền ca Làng Mai'),
(541, 170, 'https://docs.google.com/uc?id=1WRDucAWhRO3R_I7ntklpd21Etu66EV3c ', '4 phút', 'Gần nhau -  Thiền ca Làng Mai'),
(542, 170, 'https://docs.google.com/uc?id=1qzCXuJmBYIXn8hWhnwRBwkNe--iRdQCE ', '7 phút', 'Hãy gọi đúng tên tôi - Thiền ca Làng Mai'),
(543, 170, 'https://docs.google.com/uc?id=1LRah_NEhKOZKdEIG2rFFxF7qiGO__n4K ', '3 phút', 'Xin nguyện làm dòng sông - Thiền ca Làng Mai'),
(544, 170, 'https://docs.google.com/uc?id=1BlnlZVcPuJ6BNY81for1ylVf-EcNaZbi ', '4 phút', 'Hội vui - Thiền ca Làng Mai'),
(545, 170, 'https://docs.google.com/uc?id=1Yu_9VbL5u1NjC3HCmRrvtcOYBEmwXTt4 ', '4 phút', 'Sống vui - Thiền ca Làng Mai'),
(546, 170, 'https://docs.google.com/uc?id=1JJr8Ea2tPOfuU_eW8FbX4qqvUyeuc502 ', '3 phút', 'Chuyển hóa - Thiền ca Làng Mai'),
(547, 170, 'https://docs.google.com/uc?id=1roM0TiYY29KJNYEE3KIBJhlkwRI1tLpz ', '10 phút', 'Lời khấn nguyện - Thiền ca'),
(548, 170, 'https://docs.google.com/uc?id=19PUMCa_IvWf1shxyvkNL1jf-wyVENApT ', '43 phút', 'Thiền buông thư'),
(549, 171, 'https://docs.google.com/uc?id=18iGfwlK61xuZKF7RNqe2TuHz_a2nWXKK ', '100 phút', 'Bảo vệ môi trường'),
(550, 171, 'https://docs.google.com/uc?id=1bJQj_ZXcUOPz7pMFs-KNmVF6N6IhUNVm ', '86 phút', 'Đất'),
(551, 171, 'https://docs.google.com/uc?id=1wvN6D2-ocpPRzCw0dds5QgTrZxm4_FPT ', '94 phút', 'Đất nước quê hương'),
(552, 171, 'https://docs.google.com/uc?id=1nE-R31G2Sc772KY59TufQQBYF6zqahkR ', '93 phút', 'Điều thế giới còn thiếu'),
(553, 171, 'https://docs.google.com/uc?id=1P71bkk93iFmwZAZvxadimwhp2468JOPz ', '49 phút', 'Đời sống hòa thuận'),
(554, 171, 'https://docs.google.com/uc?id=1wEi5_4jV29vhhQnVS4Q0SveNGsv4WkfI ', '89 phút', 'Đời sống tâm linh'),
(555, 171, 'https://docs.google.com/uc?id=1XAL_X0xnkJ9UPFTDEjHV994SGQrQuIzO ', '91 phút', 'Hiện trạng Phật giáo thế giới'),
(556, 171, 'https://docs.google.com/uc?id=14n6J53EPrKa7Aa2uIB9Biu5wqx4xgKIR ', '71 phút', 'Khi thương trái ấu cũng tròn'),
(557, 171, 'https://docs.google.com/uc?id=1gpfJy9EUEVf5M2-xzhWR4_UwOJuloPP9', '24 phút', 'Khôn ba năm dại một giờ'),
(558, 171, 'https://docs.google.com/uc?id=1FKKKvoUq8hqQnFPgfpZ9MHUwTBoTTprD ', '93 phút', 'Làm việc chung 1'),
(559, 171, 'https://docs.google.com/uc?id=1evrn7V4gTXw3GkruuhGGoOuuEE59lSHW ', '170 phút', 'Làm việc chung 2'),
(560, 171, 'https://docs.google.com/uc?id=1SEws8GDs0jK9yjlVbaPZrR6xGKH9_mLN ', '78 phút', 'Nhớ cội nguồn'),
(561, 171, 'https://docs.google.com/uc?id=1kcQslIoiNtSc8ZjYC97JsvXFrzawK-XU ', '92 phút', 'Những nghịch lý của thời đại'),
(562, 171, 'https://docs.google.com/uc?id=1R-DFxOQ85E5kyfkwiemLFJFS3nvDCEpf ', '65 phút', 'Niềm vui doanh nhân'),
(563, 171, 'https://docs.google.com/uc?id=1YAMi4Mama7h5ntPEeHR2RmRg20LUwj5s ', '85 phút', 'Nước'),
(564, 171, 'https://docs.google.com/uc?id=1FNsPeBuGMsep14bijScO-JYyMmGGRntH ', '81 phút', 'Nước mắt đại dương'),
(565, 171, 'https://docs.google.com/uc?id=1if5jAVrwbjeU5vz6RimkbyTH5TsL-Vdp ', '68 phút', 'Quê hương nghĩa nặng tình sâu'),
(566, 171, 'https://docs.google.com/uc?id=1mvmaa81Vu30QUpBuCMGtCdhn5CEXVaKV ', '91 phút', 'Sinh kế'),
(567, 171, 'https://docs.google.com/uc?id=1wZCRye3uAvHshBMwZhlwAaZHbFlw9BOf ', '94 phút', 'Sự xung đột của thế giới'),
(568, 171, 'https://docs.google.com/uc?id=1jSs1frSRS1R4O9bFeaZ_EZe6HLpP7VwW ', '91 phút', 'Thế kỷ của tâm linh'),
(569, 171, 'https://docs.google.com/uc?id=1r3eFBpt9Zg5-MXz-sHTC6IE7i-t-aYVu ', '46 phút', 'Tình yêu và lòng biết ơn Trái đất'),
(570, 171, 'https://docs.google.com/uc?id=1D4wJynuAfGGVWjaf0i-y0TL2FJwAQgFX ', '76 phút', 'Tranh giành cuộc sống'),
(571, 171, 'https://docs.google.com/uc?id=1fj9ovI-PCAmDXCPsuoX9JotRydZCxeTe ', '57 phút', 'Trọng tình yêu Tổ quốc'),
(572, 171, 'https://docs.google.com/uc?id=17IJggmnUFgQ7zNLIwjWGPOW27sVhe88- ', '88 phút', 'Vài nét đặc thù Phật giáo Việt Nam'),
(573, 171, 'https://docs.google.com/uc?id=1leFTrWAIKHmwIqLxNOFXC68PXiHWblEY ', '99 phút', 'Văn hóa làng quê'),
(574, 171, 'https://docs.google.com/uc?id=1JdCJaWHxYsXt4xuK_yna98Be5ltHMVmD ', '93 phút', 'Việc làm từ thiện'),
(575, 171, 'https://docs.google.com/uc?id=1H5ISRozqoS12RGtxRd85LeyNgyiGqiaB ', '91 phút', 'Vì lợi ích chung'),
(576, 171, 'https://docs.google.com/uc?id=1tM6SXv3PHR3tAycKh7haZNuNppotVuT_', '112 phút', 'Vui thay Phật xuất thế'),
(577, 171, 'https://docs.google.com/uc?id=1CGrxpOgNKsz7yeXiAjIE-7yjXvsBPG39', '62 phút', 'Xã hội công bằng'),
(578, 171, 'https://docs.google.com/uc?id=1Rp-ZY6PAf1XIMDOcQjlfPyTjwnj475Zf ', '71 phút', 'Xây dựng ngôi nhà cho mai sau'),
(579, 171, 'https://docs.google.com/uc?id=1THWqqcMjhhU3-m5mLL1p7uOGE6njy-Oz ', '90 phút', 'Yêu thiên nhiên'),
(580, 171, 'https://docs.google.com/uc?id=1EWgebud1GFnYw8JmEVlHQ1xyCETQP-KV ', '95 phút', 'Ý nghĩa hạnh phúc'),
(581, 171, 'https://docs.google.com/uc?id=1Dka4J2_-1_W7mQTpZEp5-mtUZS-qHaHv ', '90 phút', 'Ý nghĩa hòa bình'),
(582, 172, 'https://docs.google.com/uc?id=1zTHpUkrDs-cEr36EssyRon_EDatVUgEy ', '53 phút', 'Phép lạ của sự tỉnh thức 1'),
(583, 172, 'https://docs.google.com/uc?id=10uVaARZDlQjxzJpAcGYE9JUc03hyJ_zc ', '50 phút', 'Phép lạ của sự tỉnh thức 2'),
(584, 172, 'https://docs.google.com/uc?id=12ZQZ_26Z4mn2jeOh14k4VVp7WG5ey7qR ', '33 phút', 'Phép lạ của sự tỉnh thức - 31 bài thực tập'),
(585, 172, 'https://docs.google.com/uc?id=1qfBg_eHj9aFxQ5e0IOtlKZEjpxU6qgYV ', '65 phút', 'Phép lạ của sự tỉnh thức- Kinh lục'),
(586, 173, 'https://docs.google.com/uc?id=1bttQ65OZBfgRHontfd-3-nYUO08d7YV_', '2 phút', 'Lời giới thiệu'),
(587, 173, 'https://docs.google.com/uc?id=17Vij2nJLv-QJYCT4BMUZ3FQWSLjQFaMj ', '14 phút', 'Lời mở đầu'),
(588, 173, 'https://docs.google.com/uc?id=1ShmnnzAPDoWJXrJ_pVjQYrlEQFcEtk7A ', '23 phút', 'An nhiên vô sự'),
(589, 173, 'https://docs.google.com/uc?id=1xPndbcy44IltJKyqSLPe45e_jTZtxXNF ', '30 phút', 'Trở về thực tại'),
(590, 173, 'https://docs.google.com/uc?id=1BY0E-o3Ugd30g1FUfPekwfcp8ucjD0AG ', '44 phút', 'Thấy biết trong sáng'),
(591, 173, 'https://docs.google.com/uc?id=14Ffa9wPy5fMXzKGXyINqiMMdcxhLejFF ', '25 phút', 'Suy nghĩ chân thực'),
(592, 173, 'https://docs.google.com/uc?id=1Ly8hAKmc50I24s8tq0aJA-94e8f5DvhT ', '33 phút', 'Nhiệt tâm cần mẫn'),
(593, 173, 'https://docs.google.com/uc?id=16ScXpb2P_FS4VwehahCPlF0IutEon_5o ', '33 phút', 'Bình thản đón nhận'),
(594, 173, 'https://docs.google.com/uc?id=1w18lrBw0jYhD7i6S3cowOSZxKVaaxF0e ', '34 phút', 'Hành xử tử tế'),
(595, 173, 'https://docs.google.com/uc?id=1FQPwoOH9U3T8rGh1ad_5P8gFxtn83p-L ', '40 phút', 'Nội tâm tĩnh lặng'),
(596, 173, 'https://docs.google.com/uc?id=1xdjix8KcXrdi28x6_0SY5t5Xlovwp0A5 ', '56 phút', 'Ngày đó là bờ'),
(597, 173, 'https://docs.google.com/uc?id=1KtE0ETCMSBBdegB3ShO2Aa0S6LduToXn ', '4 phút', 'Lời cuốn sách'),
(598, 174, 'https://docs.google.com/uc?id=1Al3jUBcFKVjCzNyicwH9WTlzm4mBtZ83', '7 phút', 'Lời  mở đầu'),
(599, 174, 'https://docs.google.com/uc?id=1fPgoQXU02sOj8zbhU-PZxl_pL4EsqfMB ', '29 phút', 'Thiền- Lý do và phương pháp'),
(600, 174, 'https://docs.google.com/uc?id=1cCdBF5foVL4cWkqmcubAxODIZ4Zd0A_- ', '14 phút', 'Ảnh hưởng Thiền đến đời sống ta'),
(601, 174, 'https://docs.google.com/uc?id=1SBdKTSaC8ZW_y0ncsT4nmQgKAsLSIydt ', '30', 'Thanh tịnh và tỉnh giấc'),
(602, 174, 'https://docs.google.com/uc?id=1JRBIsk-CMwRhxWGVadey84Fro9PEGCyp ', '52 phút', 'Tứ vô lượng tâm'),
(603, 174, 'https://docs.google.com/uc?id=1Ksg7SKKinLi-mw-zllH8Lj6QvVhz25IO ', '4 phút', 'Từ bi quan'),
(604, 174, 'https://docs.google.com/uc?id=1OoJIyinln_rwgFjbEJiXc3Y4jgtsBpH8', '82 phút', 'Năm chướng ngại'),
(605, 174, 'https://docs.google.com/uc?id=1E8e8mhnFrkS3-pgZwd93za6nWV7AknDB ', '27 phút', 'Nghiệp và luân hồi'),
(606, 174, 'https://docs.google.com/uc?id=1SbOv8cLovnDWaf92WAXhyhPV87WeivSM ', '49 phút', 'Kinh từ bi'),
(607, 174, 'https://docs.google.com/uc?id=1XsBAf4Y3YcEssEN0SeIkpXP1XpEEoClK ', '26', 'Bốn hỷ lạc'),
(608, 174, 'https://docs.google.com/uc?id=1RLnpizkGq-1_FPqTZLv-wii9Igko90wc ', '26 phút', 'Ngũ uẩn'),
(609, 174, 'https://docs.google.com/uc?id=1cZitj1JMWI9ukPxHs1yAlK7MBkWVg_VB ', '48 phút', 'Mười điều thiện'),
(610, 174, 'https://docs.google.com/uc?id=1mJECiD62fY7IsMy4SuNTY33ro9z1MpRl ', '74 phút', 'Tứ diệu đế, bát chánh đạo'),
(611, 174, 'https://docs.google.com/uc?id=1rKlBUddOPrMNSVbNPj0oGYgz2xRwYLu8', '17 phút', 'Một cuộc bắt đầu mới'),
(612, 175, 'https://docs.google.com/uc?id=12v8fdsQal6yZOKqc-yCN5oQEcAWuQT6U ', '10 phút', 'Lời giới thiệu'),
(613, 175, 'https://docs.google.com/uc?id=1VbD32PWdJ-b_QxnXhDKYK0B5CZGXD-vg ', '53 phút', 'Giáo lý căn bản'),
(614, 175, 'https://docs.google.com/uc?id=181MP9a7H4GqOmmeXVsAirzo3JiGRqD7U ', '38 phút', 'Thiền Miến Điện Thái Lan'),
(615, 175, 'https://docs.google.com/uc?id=11GpPoiVjNYNaJ7aGxfitCzal4jrDcYA0', '55 phút', 'Thiền sư AchaanChaa'),
(616, 175, 'https://docs.google.com/uc?id=1K5H1OkfaLI1uBX5a4D9WOz70LoK6ICst ', '92 phút', 'Thiền sư MahasiSayadaw'),
(617, 175, 'https://docs.google.com/uc?id=1m84mTbuf_aD2bI5M96hQhxFrXZ3J4pnN ', '104 phút', 'Thiền su SunlunSayadaw'),
(618, 175, 'https://docs.google.com/uc?id=1HHKgSVSgLJ2YIjhCqAm7B7R9GlfmSwvO ', '40 phút', 'Thiền sư AchaanBuddhadasa'),
(619, 175, 'https://docs.google.com/uc?id=1k4p-MvPM6eFCZwWIOj-1_MJ5FoYocQOV ', '89 phút', 'Thiền sư AchaanNaeb'),
(620, 175, 'https://docs.google.com/uc?id=1En5Af2GMCh0dNROW4Ea-3yxGSwWRl5ch ', '55 phút', 'Thiền sư AchaanMahaBoowa'),
(621, 175, 'https://docs.google.com/uc?id=11jtYDvb5f4EhK3neQq3iDNw3PfhLkzSt ', '19 phút', 'Thiền sư TaungpuluSayadaw'),
(622, 175, 'https://docs.google.com/uc?id=1hDjsHVrTOR026f79FeXlaH-JLe7Y3NHC ', '35 phút', 'Thiền sư Monhynsayadaw'),
(623, 175, 'https://docs.google.com/uc?id=1rs10WPjtiOt4P3SgAvbZD6XBCOk_jt4P ', '70 phút', 'Thiền sư Mogoksayadaw'),
(624, 175, 'https://docs.google.com/uc?id=1nZU3yHrPeFd9gfhWE-0kjeDwfksd4oQv ', '52 phút', 'Thiền sư Ubakhin'),
(625, 175, 'https://docs.google.com/uc?id=1-5espVYDJPw74d4KL03QAk862btpm1j5 ', '43 phút', 'Thiền sư AchaanDhammadaro'),
(626, 175, 'https://docs.google.com/uc?id=1WwjQU0FB8JwLlLHlajBzBp7xc7RT6kAP ', '35 phút', 'Thiền sư AchaanJumnien'),
(627, 175, 'https://docs.google.com/uc?id=1ptomUr2j003XnUPCct9SsJrmukHGPnOQ ', '49 phút', 'Những câu hỏi thêm'),
(628, 175, 'https://docs.google.com/uc?id=1bb0Meci8RQxUREYYPTT1bNs9vtWkhcqK ', '40 phút', 'Những môn phái Thiền của Phật giáo nguyên thủy'),
(629, 176, 'https://docs.google.com/uc?id=1K2Omm_rbU8RA-yFwFJmt9nBCvCR5rRgp ', '12 phút', 'Lời tựa-giới thiệu'),
(630, 176, 'https://docs.google.com/uc?id=1BqsM9VuQVa3Hz4uOvN_LwDcJW0W9aLBA ', '14 phút', 'Tìm gặp DipaMa'),
(631, 176, 'https://docs.google.com/uc?id=1yLXPChuu0x3kef4Ncvq_NSKq5Vt9ETuF ', '18 phút', 'Sanh trong Đạo Phật'),
(632, 176, 'https://docs.google.com/uc?id=1H2JTCaZ17RGuuCBH1nUO3bvgCIBcVeR9 ', '24 phút', 'Thức tỉnh'),
(633, 176, 'https://docs.google.com/uc?id=1vgj6t8sMmdfrwudHZ80Vgp780hJ0BzAv ', '9 phút', 'An lạc chẳng lung lay'),
(634, 176, 'https://docs.google.com/uc?id=1VETtrOYlV76NI6WQBPoTMSRSGyM67RBh ', '19 phút', 'Tận sức và vượt qua'),
(635, 176, 'https://docs.google.com/uc?id=1TCKl5j5cEtTehsFv7xMTjTY-1jH-6IoA ', '19 phút', 'Thấu suốt các vọng tưởng'),
(636, 176, 'https://docs.google.com/uc?id=1a6oSC5u5PM8xHM1FcWOttmrrklajI8Y1 ', '21 phút', 'Giải thoát sâu xa nhất'),
(637, 176, ' https://docs.google.com/uc?id=1jj65ae8eEmpNtxQavqPJ1H1RRzBKMz2g ', '13 phút', 'Bạn sống đời thường ra sao'),
(638, 176, 'https://docs.google.com/uc?id=1hrRsolCzacifhIZzO-kaOLMdi_-1o0MH ', '17 phút', 'Tình thương đánh lễ tình thương'),
(639, 176, 'https://docs.google.com/uc?id=1lFcHiXhu7p_yFM4oSHtDjD9WP-epsmCd ', '32 phút', 'Thần thông tự tại'),
(640, 176, 'https://docs.google.com/uc?id=1U6R6zuOWapKny54gvyqOnK_TKOZ2Ns5B ', '18 phút', 'Thích nữ Vô úy'),
(641, 176, 'https://docs.google.com/uc?id=1WgaP7HSZgayrQ3MPPSBUL1grq-2ABa4_ ', '31 phút', 'Mười bài học để sống đời'),
(642, 176, 'https://docs.google.com/uc?id=17B3vFemaZf_jpO9W6RxnR6Tr3tfVi_l8 ', '26 phút', 'Trước mặt thầy vấn đáp'),
(643, 176, 'https://docs.google.com/uc?id=1Kd4YpzC8zMuOk-dCxU1C-_bC_HP8c4UL ', '30 phút', 'Di huấn vẫn tiếp tục'),
(644, 176, 'https://docs.google.com/uc?id=1zrMC2_vJm8GldxsfFEq3I3YPD9DNZRQJ ', '25 phút', 'Lời kết'),
(645, 176, 'https://docs.google.com/uc?id=1jfbjAU03gWZSOgas7wlVmI94eq2rTRTx ', '30 phút', 'Phụ lục'),
(646, 177, 'https://docs.google.com/uc?id=1ht0AzB06ru2_QNi-7o43JcjXvBqAqI2b ', '32 phút', 'Ngay trong kiếp sống này 1A'),
(647, 177, 'https://docs.google.com/uc?id=1i1s217T9ZnSfPA1uxcgZbeL2gVFLpwc3 ', '32 phút', 'Ngay trong kiếp sống này 1B'),
(648, 177, 'https://docs.google.com/uc?id=1ldtXU1SvUTC9orJVJbildQp7kANbjCCU ', '31 phút', 'Ngay trong kiếp sống này 2A'),
(649, 177, 'https://docs.google.com/uc?id=1aXBg1xFo2Zs89BGwXQPozn6pm9XnfTkn ', '31 phút', 'Ngay trong kiếp sống này 2B'),
(650, 177, 'https://docs.google.com/uc?id=1OgJzQB-T-fJCrBFTAi4txIRUVhHfGu_M ', '32 phút', 'Ngay trong kiếp sống này 3A'),
(651, 177, 'https://docs.google.com/uc?id=1RojG0cegSaoZAysOBwiUojGf-aA-WWvZ ', '32 phút', 'Ngay trong kiếp sống này 3B'),
(652, 177, 'https://docs.google.com/uc?id=1Kn5B_sKaQffCMLT5wBwegjAabhDutbj2', '31 phút', 'Ngay trong kiếp sống này 4A'),
(653, 177, 'https://docs.google.com/uc?id=1qeWUvmfuHEEctg0FCQkX0m9L8EjLr_hS ', '31 phút', 'Ngay trong kiếp sống này 4B'),
(654, 177, 'https://docs.google.com/uc?id=1vRJqnhnJ5_-ynBbfuQ0Q5gOHNWMqj67G ', '31 phút', 'Ngay trong kiếp sống này 5A'),
(655, 177, 'https://docs.google.com/uc?id=1mqyCMbMxlQGe_grvOmwyZHFzcItXjIfe ', '31 phút', 'Ngay trong kiếp sống này 5B'),
(656, 177, 'https://docs.google.com/uc?id=1j57XIlaRW6RGCStNI6Cqy5vqgUIWprq0 ', '31 phút', 'Ngay trong kiếp sống này 6A'),
(657, 177, 'https://docs.google.com/uc?id=11KTSQeoTuxY2KT9s0VilnG3Msja8-ER- ', '31 phút', 'Ngay trong kiếp sống này 6B'),
(658, 177, 'https://docs.google.com/uc?id=180dyNmo7k2R54IQjHqjtFhhzm1PLmWY- ', '31 phút', 'Ngay trong kiếp sống này 7A'),
(659, 177, 'https://docs.google.com/uc?id=1kBQzi_d-4zlRQiwmdG879uQee9mv2sGd ', '31 phút', 'Ngay trong kiếp sống này 7B'),
(660, 177, 'https://docs.google.com/uc?id=1qMqZGiIlYQRTEaOCY-omL7MqjufyCVpN ', '31 phút', 'Ngay trong kiếp sống này 8A'),
(661, 177, 'https://docs.google.com/uc?id=1QDTMmMLcK1nIoD0gQzsr3qc_YYc5cE8q ', '31 phút', 'Ngay trong kiếp sống này 8B'),
(662, 177, 'https://docs.google.com/uc?id=1zN2v1aH2X4T3-0SXZMOyEN0t8HkEunr6', '31 phút', 'Ngay trong kiếp sống này 9A'),
(663, 177, 'https://docs.google.com/uc?id=1QNmLEUg4GWCBepvyCeaJ0DX2i8Lk1ynl ', '31 phút', 'Ngay trong kiếp sống này 9B'),
(664, 177, 'https://docs.google.com/uc?id=1AODkvnyJX8uYDrhePQ4Shz20GYKrDK1k ', '31 phút', 'Ngay trong kiếp sống này 10A'),
(665, 177, 'https://docs.google.com/uc?id=1IPlarm_VH4isvyBXzNLc6QqXy3u2J5c1 ', '31 phút', 'Ngay trong kiếp sống này 10B'),
(666, 177, 'https://docs.google.com/uc?id=13IBEUxGDMfK4OHVOANMmjIOBSLEk_MvT ', '31 phút', 'Ngay trong kiếp sống này 11A'),
(667, 177, 'https://docs.google.com/uc?id=1vjKiY4T5T2tOHE-75gMc0FlTdKAaB8In ', '31 phút', 'Ngay trong kiếp sống này 11B'),
(668, 177, 'https://docs.google.com/uc?id=10DVnBhVo4NdUIE-9c01fXvSZhFzJEzP_ ', '31 phút', 'Ngay trong kiếp sống này 12A'),
(669, 177, 'https://docs.google.com/uc?id=1sBPy5iV5j2XllB-4QjiVnKDqBSmojCIv ', '31 phút', 'Ngay trong kiếp sống này 12B'),
(670, 177, 'https://docs.google.com/uc?id=10i2IhPPwhNK3QA7fvAEE1KzEhLTUcatd ', '31 phút', 'Ngay trong kiếp sống này 13A'),
(671, 177, 'https://docs.google.com/uc?id=10i2IhPPwhNK3QA7fvAEE1KzEhLTUcatd ', '31 phút', 'Ngay trong kiếp sống này 13B'),
(672, 177, 'https://docs.google.com/uc?id=1UezcY_EnxSZrx0g9xvI_PdscvAk4vymb ', '31 phút', 'Ngay trong kiếp sống này 14A'),
(673, 177, 'https://docs.google.com/uc?id=1gTaSxw4kACBxc9J34WGhf0RP23DZlSqY ', '31 phút', 'Ngay trong kiếp sống này 14B'),
(674, 178, 'https://docs.google.com/uc?id=1ovJeu3gzY5eFg0L04e-vlSPrVXqS6aXo ', '66 phút', 'Khái niệm nhân quả'),
(675, 178, 'https://docs.google.com/uc?id=1AHamDzdOZWZgDiZs8fAW3q91AjgZh4Ar ', '47 phút', 'Làm phước'),
(676, 178, 'https://docs.google.com/uc?id=1M4vFqBSUZiYypXPT9rAXUHzQd3fM763A ', '23 phút', 'Làm sao chuyên nghiệp'),
(677, 178, 'https://docs.google.com/uc?id=1V8q1SHYzYpanXZwVmu-J17dLJAtwNJhN ', '73 phút', 'Luật nhân quả trong đạo Phật'),
(678, 178, 'https://docs.google.com/uc?id=1zYfwEQsKfnu9IlnR4z948yA9xCDkV8rK ', '188 phút', 'Người tin nhân quả'),
(679, 178, 'https://docs.google.com/uc?id=1u5JoPeKdQmaUXiRHIkl_LmS8OUJRQc7y ', '151 phút', 'Nhân quả'),
(680, 178, 'https://docs.google.com/uc?id=1JT8XhSIOk8V8efl2YqVlDQbcupmoZkch ', '83 phút', 'Nhân quả công bằng A'),
(681, 178, 'https://docs.google.com/uc?id=16nvoQxE7gqhWqfGAYe7-I0i-8W3RdA9H ', '177 phút', 'Nhân quả công bằng B'),
(682, 178, 'https://docs.google.com/uc?id=1MTj0foNL7rrL1aTSTtlPuHw6y83xxV8N ', '88 phút', 'Nhân quả giàu và nghèo'),
(683, 178, 'https://docs.google.com/uc?id=1kiyS5tBQSqboDiNaK4NtCJjK3L9uu9og ', '82 phút', 'Nhân quả sâu xa'),
(684, 178, 'https://docs.google.com/uc?id=1CwyiVYbd5xbFnRkI1UvuLe92Zh3ZOlom ', '95 phút', 'Nhân và quả'),
(685, 178, 'https://docs.google.com/uc?id=1EhXvuvA4trCQJfgv2ToGbDqOL2uxuHBQ ', '87 phút', 'Nói chuyện nhân quả'),
(686, 178, 'https://docs.google.com/uc?id=1CLmqpa-WfqbsO2_vt6NrAY1S1w2Oedfz ', '60 phút', 'Sự bù trừ của luật nhân quả'),
(687, 178, 'https://docs.google.com/uc?id=1lbHLgr1yz9wCyytNwDsMJe-KuXZG7QcX ', '58 phút', 'Sự giấu mặt của luật nhân quả'),
(688, 178, 'https://docs.google.com/uc?id=1Z3OINPW4hcK8q7IA85nfy6Yp4U53ewFs ', '23 phút', 'Ý nghiệp'),
(689, 178, 'https://docs.google.com/uc?id=1sGoxjD81D5qbp1LPcNbUM34QTpWUs9Jb ', '42 phút', 'Kinh nhân quả 3 đời ( Thích Thiện Tâm)'),
(690, 179, 'https://docs.google.com/uc?id=15ggrN2ZtFD2hgwTgVQY1kNqLJXzNBe77', '155 phút', 'Hiểu sâu về luật nhân quả'),
(691, 179, 'https://docs.google.com/uc?id=1jqcCwYHwDJ7SFsyF77BJXgp_MeNquOXG ', '225 phút', '12 cửa vào Đạo'),
(692, 179, 'https://docs.google.com/uc?id=1S9bd3u6WCdBudQJ4Q_UaWzdY16b_IKT0 ', '228 phút', '37 phẩm trợ Đạo'),
(693, 179, 'https://docs.google.com/uc?id=1BY-eNxAe_J-rd1FyUiC8QUyzN7Dk4Rf0', '18 phút', 'Cách thực hành như lý tác ý thiện xảo'),
(694, 179, 'https://docs.google.com/uc?id=1FhbCR8IVmOJsxn5FxXcbzBeznxN_vZok ', '145 phút', 'Tứ diệu đế, bát chánh đạo'),
(695, 179, 'https://docs.google.com/uc?id=1lNj6NeAbDt_KutHghJiAsOs872OrHaur ', '7 phút', 'Tu tập 6 pháp căn bản'),
(696, 180, 'https://docs.google.com/uc?id=1qdaAE3G4_O_4q8pr3iY53wqiiGDDYVSS ', '47 phút', 'Khổ đế 1A'),
(697, 180, 'https://docs.google.com/uc?id=1RK_4d8w2xSrFhJxMAz9w0XDHmTjqucEz ', '46 phút', 'Khổ đế 1B'),
(698, 180, 'https://docs.google.com/uc?id=10QdjrQGsRA-VnI26cshKnfYWwrzLXBMV ', '47 phút', 'Khổ đế 2A'),
(699, 180, 'https://docs.google.com/uc?id=1Jctv-bOYApPclDWThhTV_PZep4EUGz0D ', '42 phút', 'Khổ đế 2B'),
(700, 180, 'https://docs.google.com/uc?id=16raUgRZvuL3VZyzs6S52qLaZyY58hyXk ', '47 phút', 'Tập đế A'),
(701, 180, 'https://docs.google.com/uc?id=1hWV8cPmBCEQ6IuUEhfdJ_PDtaE7pgk03 ', '47 phút', 'Tập đế B'),
(702, 180, 'https://docs.google.com/uc?id=13_rsBIIMGjK-5VkUO-JAaC4xq076RH8T ', '174 phút', 'Diệt đế'),
(703, 180, 'https://docs.google.com/uc?id=1Ew5jBcu5YDpezKXHmScoF5u4da-A2CcV ', '84 phút', 'Bát chánh đạo'),
(704, 180, 'https://docs.google.com/uc?id=1DPc3jy0syjFoAwrbCD_6LywUnKOR_-o2', '93 phút', 'Chánh kiến'),
(705, 180, 'https://docs.google.com/uc?id=1qLx1cO_n5Ru8qNVjt_qP2TmhvVueXUjB ', '93 phút', 'Chánh tư duy'),
(706, 180, 'https://docs.google.com/uc?id=1l2PY8F8LzXEA4tWHIAQK_tOjqyv03o2C ', '94 phút', 'Chánh ngữ'),
(707, 180, 'https://docs.google.com/uc?id=1uDkYSkSPk9LsSdNxC-f77EhIyjGGoQYc ', '92 phút', 'Chánh nghiệp'),
(708, 180, 'https://docs.google.com/uc?id=1RMgV8FlOWuDQDzbhoieuTMkBAzlNW_ef ', '95 phút', 'Chánh mạng'),
(709, 180, 'https://docs.google.com/uc?id=1elifGDF_fq2WwGXGlH_HG7a_ThaiXcve ', '96 phút', 'Chánh tinh tấn'),
(710, 180, 'https://docs.google.com/uc?id=1rGCGkG_-4eNKKxaq-2D4GHYAx9IShWwP ', '94 phút', 'Chánh niệm'),
(711, 180, 'https://docs.google.com/uc?id=1Imxay0eUQtLYsaszAJjHm9qSA_uvUl1C ', '47 phút', 'Chánh định 1A'),
(712, 180, 'https://docs.google.com/uc?id=1g57IAI3Y9XW5iX6p8buBnQjTHpoqjhzc ', '51 phút', 'Chánh định 1B'),
(713, 180, 'https://docs.google.com/uc?id=1kvlDzh9HBPPpG1gYbyao0qxBkBUFeqjB ', '46 phút', 'Chánh định 2A'),
(714, 180, 'https://docs.google.com/uc?id=1BNG_CslQRcfs9WXtNbd1jjSpJk5wfClt ', '42 phút', 'Chánh định 2B'),
(715, 180, 'https://docs.google.com/uc?id=1tZMDYozWhZlFISxaPZSVOFbnZqcpCxRp ', '82 phút', 'Chánh Tinh tấn'),
(716, 181, 'https://docs.google.com/uc?id=1kmmPW0lebJFe9ipSVkT0Wvy3dRlE2Njf ', '53 phút', 'Lời tựa và chánh kiến'),
(717, 181, 'https://docs.google.com/uc?id=1sEh_5uQgo-HviHi3GJpse3ftsBf-nd0Y ', '42 phút', 'Chánh tư duy'),
(718, 181, 'https://docs.google.com/uc?id=1d_saWIDXlZwReTmhWDhWIHdfOCvTy5XN ', '48 phút', 'Chánh Ngữ'),
(719, 181, 'https://docs.google.com/uc?id=1ugFhxmVd-yiK2i1Hs2CcsjbDTe-2TQqx ', '74 phút', 'Chánh nghiệp'),
(720, 181, 'https://docs.google.com/uc?id=16jay7O0Eq2Yhbrgju5QaQ0-LhwozXoWq ', '48 phút', 'Chánh mạng'),
(721, 181, 'https://docs.google.com/uc?id=1845EVBhwoRbO60CYHj_OZCwtpaQN1BBx ', '52 phút', 'Chánh tinh tấn'),
(722, 181, 'https://docs.google.com/uc?id=1_-T9TRmBeZV3RmYmyTG2feNg9eyarmGP ', '70 phút', 'Chánh niệm'),
(723, 181, 'https://docs.google.com/uc?id=1F-dbqFMGCP4gZvcaQxXoY5vkzEbfUnyp ', '56 phút', 'Chánh định'),
(724, 183, 'https://docs.google.com/uc?id=1oyZSnmNbOE4ppSTQoo5XaFMPMd-_cEfE ', '106 phút', 'Giới Định tuệ'),
(725, 183, 'https://docs.google.com/uc?id=1QOrWBadxD4lemOBWXfnTdAx7iiEd7SKT ', '100 phút', 'Phẩm trợ đạo - vấn đáp'),
(726, 183, 'https://docs.google.com/uc?id=1wHz0N0kfM-UON5Ub6rm5s4yT-EcHGV6J ', '28 phút', 'Tứ diệu đế'),
(727, 183, 'https://docs.google.com/uc?id=1_UidozKB3h5qZO21OXga7vmpexP_e1_p ', '110 phút', 'Từ chân đế đến tục đế'),
(728, 184, 'https://docs.google.com/uc?id=1S1WwQZBUEZ0D0gasxJVB8BoPe9AHKs7g ', '65 phút', 'Bát chánh đạo'),
(729, 184, 'https://docs.google.com/uc?id=1U2Ci-VZ8bir-xFZ5zbm5B0AMO81fB5_z ', '80 phút', 'Thất bồ đề phần'),
(730, 184, 'https://docs.google.com/uc?id=1WUWlYYMfLDyttIHiJbCyZAWp2uqvRwMw ', '79 phút', 'Tứ diệu đế'),
(731, 185, 'https://docs.google.com/uc?id=1z_rt7vW45YZE-jjs_AGWq7FE84fsBAIp ', '46 phút', 'Tứ diệu đế 1A'),
(732, 185, 'https://docs.google.com/uc?id=1PzfI4j3gllhdmEvjSXjo6uFCJx4irCV1', '46 phút', 'Tứ diệu đế 1B'),
(733, 185, 'https://docs.google.com/uc?id=18-aqu8VuYrQQId-iuxa2CQUcgHaTeAN8', '44 phút', 'Tứ diệu đế 2A'),
(734, 185, 'https://docs.google.com/uc?id=1SN4VL1W_ck_7yuwrkKU-OQPwQ29__NPV ', '65 phút', 'Tứ diệu đế 2B'),
(735, 185, 'https://docs.google.com/uc?id=1okfPMi4xOIRviLvNXV4qU8VycSe-c_rn ', '49 phút', 'Bát chánh đạo A'),
(736, 185, 'https://docs.google.com/uc?id=161-uroFvVwJqNgw30JHuqcBlXHPmVgca ', '49 phút', 'Bát chánh đạo B'),
(737, 186, 'https://docs.google.com/uc?id=1Z1kbaLjwF0PWQ8h4Up1ou1X4JkOaKp1R ', '28 phút', 'Tục đế chân đế'),
(738, 186, 'https://docs.google.com/uc?id=1d3oOkNYIVUSZmyDLHfaxuYnsfOpUEmIP ', '27 phút', 'Tứ tất đàn, bốn điều y cứ, cây đuốc duyên khởi'),
(739, 186, 'https://docs.google.com/uc?id=1e1GyvaM_KLQspsaIGy7DiU1OWiox-dEE ', '43 phút', 'Học Phật phải thấy lòng nhẹ nhàng'),
(740, 186, 'https://docs.google.com/uc?id=1RzlfpntHz08YvEmy91eOgopNVI-Drzgz ', '34 phút', 'Pháp thoại đầu'),
(741, 186, 'https://docs.google.com/uc?id=1Trt4tcRyfWRur5i3kCu1VYpC6z9wiE0v ', '26 phút', 'Tâm chuyển'),
(742, 186, 'https://docs.google.com/uc?id=1GHlQ9e_af6wt2Ty4LKLswaJxFy15ot93 ', '27 phút', 'Niềm vui tương đối'),
(743, 186, 'https://docs.google.com/uc?id=1CGuFn_ozKiYchG5I02A61HQj32ZfjXbr ', '25 phút', 'Hành trì thị chuyển'),
(744, 186, 'https://docs.google.com/uc?id=1wVVPPmw8oJWXN6El9L7zHLSWpjooUvhD ', '42 phút', 'Đạo đế - bát chánh đạo'),
(745, 186, 'https://docs.google.com/uc?id=1TGfZXch7Is05bzKhpyVElSJNWrz-LCbK ', '46 phút', 'Quá trình văn tu tư'),
(746, 186, 'https://docs.google.com/uc?id=1826jzaPeqIKwuW6NZc_xYQvsjVej3wzj ', '44 phút', 'Bât chánh đạo tương sinh tương tức'),
(747, 186, 'https://docs.google.com/uc?id=1Ct7nPMqWskWaIAp4oQKdGl8JQRvEHis5', '45 phút', 'Ái ngữ'),
(748, 186, 'https://docs.google.com/uc?id=1_Nkog0z-7CB3dEbXkMQsAWtNNRhen_ky ', '42 phút', 'Chánh niệm và 51 tâm hành'),
(749, 186, 'https://docs.google.com/uc?id=1PVtLWozywNfRKPV6FC_gpaJfB3oXyTsm ', '45 phút', 'Sống giây phút hiện tại'),
(750, 186, 'https://docs.google.com/uc?id=1wX5G3cYN4kLP8YDVvG3uefwfVt21-4yc ', '34 phút', 'Chánh niệm là tự làm chủ'),
(751, 186, 'https://docs.google.com/uc?id=1psdq-Ieg6jNtYv995oS6GQKx_Y98f5bo ', '33 phút', 'Quan niệm thân trong thân'),
(752, 186, 'https://docs.google.com/uc?id=1ElBvzYJfrEI3F0dAabr8TNsHhjLVv-4y ', '47 phút', 'Tiếp xúc với sự sống nhiệm màu'),
(753, 186, 'https://docs.google.com/uc?id=1-BPnJipIUYNyOk1h_thv4oTngRL4-jPM ', '45 phút', 'Như lý tác ý '),
(754, 186, 'https://docs.google.com/uc?id=1fbR18c-6zjCJBkklkBLRV6euCjo47P67', '36 phút', 'Quán chiếu cảm thọ'),
(755, 186, 'https://docs.google.com/uc?id=1MKT-hk-pmKE--0rmmF8BWkHd3mwyP0li ', '36 phút', 'Quán pháp trong pháp'),
(756, 186, 'https://docs.google.com/uc?id=1GjTxwDt-Y-w4swqPDgeJZBhmeN0wHrXE ', '48 phút', 'Chánh định'),
(757, 186, 'https://docs.google.com/uc?id=1CFea93-RBj4ZBl3liml_luzrSekWqb34', '52 phút', 'Pháp an'),
(758, 186, 'https://docs.google.com/uc?id=1YxOoC9OWepl7C3ZlNb-O1aMwGKbtwjEn ', '47 phút', 'Chuyển hóa tập khí '),
(759, 186, 'https://docs.google.com/uc?id=1ldW-tsipKZXzB7GLNpOfPUgeMvfG2sXU ', '37 phút', 'Quán Không Trong Năm Lễ'),
(760, 186, 'https://docs.google.com/uc?id=12zWDifH1Lv1f0-yccOuYWXGGpqK8eAiq ', '35 phút', 'Quán vô tắc vô nguyên'),
(761, 186, 'https://docs.google.com/uc?id=1o7g9ZMnTh1gEiNb1FTOLQv04PIRVvC50', '27 phút', 'Bốn duyên và sáu nhân'),
(762, 186, 'https://docs.google.com/uc?id=11IyLkWyy-UhDoJG5Is8yFzv5l7OOT5dK ', '38 phút', 'Liên hệ giữa 12 nhân duyên'),
(763, 186, 'https://docs.google.com/uc?id=1vnDp_ge9lsQfxJGk350fa6RMweFF0GR_', '51 phút', 'Hộ trì sáu căn bằng chánh niệm'),
(764, 186, 'https://docs.google.com/uc?id=1BB_GHNIS71sU17Y4ivkM3RtPqwMiyQB9', '35 phút', 'Tu tập từ quán'),
(765, 186, 'https://docs.google.com/uc?id=1BB_GHNIS71sU17Y4ivkM3RtPqwMiyQB9', '35', 'Tu tập từ quán'),
(766, 186, 'https://docs.google.com/uc?id=1boz6VVLM33Yi1Xgu5zBCxs4p9D1RRGBZ ', '42 phút', 'Niềm tin thể hiện trong đời sống'),
(767, 186, 'https://docs.google.com/uc?id=1aubTOMOUXiUxuNWb15hEpnUZWOG9qnm2', '27 phút', 'Kết thúc'),
(768, 187, 'https://docs.google.com/uc?id=1stU0haJWhcCCP4hB-21LFVvti2bPyrOm ', '79 phút', 'Đường xưa mây trắng 1'),
(769, 187, 'https://docs.google.com/uc?id=1H0XSmtbA8dlVY8NNXj3otMzXxbm9C_Ik ', '76 phút', 'Đường xưa mây trắng 2'),
(770, 187, 'https://docs.google.com/uc?id=1reilUQa-9w1R0r3S4fYVwEiaAyr-9-5t ', '76 phút', 'Đường xưa mây trắng 3'),
(771, 187, 'https://docs.google.com/uc?id=13l9ixyYgx3ispyMrWQRbtFxXVhPRqTt4', '75 phút', 'Đường xưa mây trắng 4'),
(772, 187, 'https://docs.google.com/uc?id=1qzyPht_m5XIAblyHE6Nvtx71_EddMqJw ', '71 phút', 'Đường xưa mây trắng 5'),
(773, 187, 'https://docs.google.com/uc?id=1On6LSuNazVLkVWx9AVyttovwu-Bj-Cd8 ', '72 phút', 'Đường xưa mây trắng 6'),
(774, 187, 'https://docs.google.com/uc?id=1zWiNgslD7h8bBvVJ1Tupxsxkcj5npxdM ', '80 phút', 'Đường xưa mây trắng 7'),
(775, 187, 'https://docs.google.com/uc?id=1dsG0pYvVE7z1exnASVi2mNKdn1oF4-dr ', '71 phút', 'Đường xưa mây trắng 8'),
(776, 187, 'https://docs.google.com/uc?id=1L37GwpNCxMlOhqzP7j0QUbeNiEjHvq9Q ', '61 phút', 'Đường xưa mây trắng 9'),
(777, 187, 'https://docs.google.com/uc?id=1-ftlGhyVY6QVADUAVBB5VvtwJ6eadL_U ', '68 phút', 'Đường xưa mây trắng 10'),
(778, 187, 'https://docs.google.com/uc?id=1OtQpTOU6sZljg7oqutSVVV9i1f3zURP- ', '69 phút', 'Đường xưa mây trắng 11'),
(779, 187, 'https://docs.google.com/uc?id=1-_ypnJmfNvQpMCpNJSf7vGkFSp8rC1uF ', '69 phút', 'Đường xưa mây trắng 12'),
(780, 187, 'https://docs.google.com/uc?id=1SadpqmbNn3g2tmdgLlPV3rna0baf8eJn ', '80 phút', 'Đường xưa mây trắng 13'),
(781, 187, 'https://docs.google.com/uc?id=1eiBYLVrrWB3BFC_fvoxBrZ5Yjtwh0VxE ', '67 phút', 'Đường xưa mây trắng 14'),
(782, 187, 'https://docs.google.com/uc?id=1ndCaB15rdMfgjA68P1r5-D-v3bjRRwyX ', '74 phút', 'Đường xưa mây trắng 15'),
(783, 187, 'https://docs.google.com/uc?id=1igA8d_RBOwNLgIBwD3f29jSIXeUyKyyw ', '68 phút', 'Đường xưa mây trắng 16'),
(784, 187, 'https://docs.google.com/uc?id=1QEv09Z_nEEr_0IEDHYIjr67FDpWmj9z5 ', '78 phút', 'Đường xưa mây trắng 17'),
(785, 187, 'https://docs.google.com/uc?id=17AW5NQEo9hapy58tSLDHwbQl_Ux4ovuV ', '69 phút', 'Đường xưa mây trắng 18'),
(786, 187, 'https://docs.google.com/uc?id=1W94mBTdJkhNJoauGRrM9WESI1KWf_D31', '62 phút', 'Đường xưa mây trắng 19'),
(787, 187, 'https://docs.google.com/uc?id=1PYOU1eX6wHt2c4uxC0boVcM65yph0NFp ', '65 phút', 'Đường xưa mây trắng 20'),
(788, 187, 'https://docs.google.com/uc?id=1SWFWmihJtos-o-pDXwkh5YnzaerLRx1y ', '41 phút', 'Đường xưa mây trắng 21'),
(789, 188, 'https://docs.google.com/uc?id=1tj8G5lvqddOTIVuvero09Jhp-vSaf-on ', '23 phút', 'Tiểu sử Đại đức Narada - Lời mở đầu'),
(790, 188, 'https://docs.google.com/uc?id=1v3BwNW4T6B3j_hPvXqOvvpRAQzc5mdtk ', '24 phút', 'Đức Phật từ đản sanh đến xuất gia'),
(791, 188, 'https://docs.google.com/uc?id=1IH3XZPTvmbsxUCZrNSMzt5KVIczCrk77', '26 phút', 'Chiến đấu để thành đạo quả'),
(792, 188, 'https://docs.google.com/uc?id=120uiJcxC8nMtdbQXPMHJdbPE7sVBlvKD ', '21 phút', 'Đạo quả Phật'),
(793, 188, 'https://docs.google.com/uc?id=18H3gXa8YnovyBFwo7ynifzpisvIANZR1', '14 phút', 'Sau khi Thành Đạo'),
(794, 188, 'https://docs.google.com/uc?id=1D9RDAubjzKdory_wMfAyrNQshqZUPQfT ', '28 phút', 'Cung Thỉnh Đức Phật Truyền Bá Giáo Pháp'),
(795, 188, 'https://docs.google.com/uc?id=1jkCpgPin3Ehvbr-k6-AF8jbP5yl9Eau3 ', '50 phút', 'Kinh Chuyển pháp luân'),
(796, 188, 'https://docs.google.com/uc?id=1g3pJ4whDJi4GObxXJcT4ABnW1_-4ZM96 ', '28 phút', 'Truyền Bá Giáo Pháp'),
(797, 188, 'https://docs.google.com/uc?id=1SEsRKmKIADYhhBda0HNlANXk6du_TQTR ', '34 phút', 'Đức Phật và thân quyến 1'),
(798, 188, 'https://docs.google.com/uc?id=198xOTAVO4Xy9hNM_Vh8sJK8mKbAoPu01 ', '35 phút', 'Đức Phật và thân quyến 2'),
(799, 188, 'https://docs.google.com/uc?id=1iOKmLzVGEgXkh8_rVyQeP2m4XDGVH2zF ', '52 phút', 'Những người chống đối và những đại thí chủ'),
(800, 188, 'https://docs.google.com/uc?id=1ox9ReuEf0OI6-B063OZDPJgmJLaW2Y40 ', '26 phút', 'Những Đại Thí Chủ trong hàng vua chúa'),
(801, 188, 'https://docs.google.com/uc?id=1n06X9DSfWO6TUNmw8Ha0Z_1K8fXlEJ_Y ', '35 phút', 'Con đường hoàng pháp'),
(802, 188, 'https://docs.google.com/uc?id=1XbvLJuQLegg5j64d0AK_lOD6dHJYY6ix ', '10 phút', 'Đời sống hàng ngày của Đức Phật'),
(803, 188, 'https://docs.google.com/uc?id=1PusXlo6fbfDAl0NR24J50ShEEA4bsvTh ', '59 phút', 'Đức Phật nhập đại niết bàn'),
(804, 188, 'https://docs.google.com/uc?id=1KnGmmE0j-X3kMLHGcO7jvT6GfVNfANob ', '49 phút', 'Phật giáo là gì'),
(805, 188, 'https://docs.google.com/uc?id=1eSj4jODJI1E1T6e7A5yJKUddX0YlNvnS ', '42 phút', 'Vài đặc điểm của Phật giáo'),
(806, 188, 'https://docs.google.com/uc?id=1viUPUYTcLTTXcGsleDIqaL8tvGqXm17B ', '29 phút', 'Tứ diệu đế'),
(807, 188, 'https://docs.google.com/uc?id=1gqisaTJwn-eiX1TZ_NoQxd-5spBHnMRG ', '29 phút', 'Nghiệp báo'),
(808, 188, 'https://docs.google.com/uc?id=1ax1RloD1Kaj6DTgVS1exEish7NCO7zVr ', '26 phút', 'Nghiệp là gì'),
(809, 188, 'https://docs.google.com/uc?id=1OsRl8SVInKtqaNYTTZ1JD1AyGVTGgDf3 ', '35 phút', 'Sự báo ứng của nghiệp'),
(810, 188, 'https://docs.google.com/uc?id=12JQZHLJA9hY9uKK1ME_d8TtU-CW-wBhb ', '22 phút', 'Tính chất của nghiệp'),
(811, 188, 'https://docs.google.com/uc?id=1nx-eTlopGgVI-3UgW7fDzW3xncl_SurM ', '22 phút', 'Khởi thủy của đời sống là gì'),
(812, 188, 'https://docs.google.com/uc?id=1Bi5PPcBqP-yRT1xq8lyqZHuA9UMOnbT4 ', '11 phút', 'Đức phật và vấn đề thần linh tạo hóa'),
(813, 188, 'https://docs.google.com/uc?id=1TZnIdYPQMMpft388AwqILeemlBOFImml ', '20 phút', 'Những lý do tin có tái sanh'),
(814, 188, 'https://docs.google.com/uc?id=1BCTuU50OKlDYT9_wDPSXbI45KczpSLFn ', '26 phút', 'Thập nhị nhân duyên'),
(815, 188, 'https://docs.google.com/uc?id=1X2dmstfrdUPM6VebVzM2V-iE4RHQLOHR ', '6 phút', 'Những hình thức sanh và tử'),
(816, 188, 'https://docs.google.com/uc?id=15Cbq0x0dSq2hAiWQovoXubgDJlHd2C64 ', '17 phút', 'Những cảnh giới'),
(817, 188, 'https://docs.google.com/uc?id=1qtESr5f8EIPInnuAaxKIkvmcWXxMvnO8', '14 phút', 'Hiện tượng tái sanh'),
(818, 188, 'https://docs.google.com/uc?id=1ocfEqyAnjuQu-RNPsGL-nigXdHYKM5XX ', '32 phút', 'Cái gì đi tái sanh- lý vô ngã'),
(819, 188, 'https://docs.google.com/uc?id=1PbMugEtvntHAwO7ebaGHus5d7qsGgjyk ', '8 phút', 'Trách nhiệm tinh thần'),
(820, 188, 'https://docs.google.com/uc?id=10P0AeZVRkvZY1GeFMX1Asu3nsGszG4dU ', '16 phút', 'Nghiệp chuyển lên và nghiệp chuyển xuống'),
(821, 188, 'https://docs.google.com/uc?id=1axxc91vxajCqM7ilpGh-KyqYkt7BQzEB ', '18 phút', 'Nghiệp báo và tái sanh với người phương tây'),
(822, 188, 'https://docs.google.com/uc?id=1NI6wxH6_qgbMhyxKSPerSACmwSrNpyXl ', '17 phút', 'Niết bàn'),
(823, 188, 'https://docs.google.com/uc?id=1ZSYDsTDfpuI3RaxyI6yEiUZamBR8CS9l ', '27 phút', 'Đặc tính của niết bàn'),
(824, 188, 'https://docs.google.com/uc?id=1j6kkvN1WhAIdeuOo7F2xg7-f_Z_z-OKu ', '14 phút', 'Con đường niết bàn 1'),
(825, 188, 'https://docs.google.com/uc?id=1wbcOrniTNErAJpp5ZkUb5OBFkY11XWjB ', '37 phút', 'Con đường niết bàn 2'),
(826, 188, 'https://docs.google.com/uc?id=1dqZwEH1nDeDXrEUpuBEwfQba0_jnQOU- ', '10 phút', 'Chướng ngại tinh thần'),
(827, 188, 'https://docs.google.com/uc?id=1oPCCBKUyaA67jE8MChGFaErMktGvpHhw ', '25 phút', 'Con đường niết bàn 3'),
(828, 188, 'https://docs.google.com/uc?id=1a656vJC5vbnOJOoStq0nedvk-a-wMWlV ', '12 phút', 'Phẩm hạnh ALanHan'),
(829, 188, 'https://docs.google.com/uc?id=1BY8lPGrhc4oR7k3_BCcEARpruVoNMwSI ', '23 phút', 'Bồ tát đạo'),
(830, 188, 'https://docs.google.com/uc?id=1LEf0ypeYw5JrjW1L9CkigXTX0Gr3fAYZ ', '82 phút', 'Ba La Mật '),
(831, 188, 'https://docs.google.com/uc?id=1NOjBWMlJIrvVbJBW55Rxj7q22ts6tRph ', '57 phút', 'Tứ vô lượng tâm'),
(832, 188, 'https://docs.google.com/uc?id=18OAC210MKVTLDV-9RBqIkz0tqGguYbvT ', '58 phút', 'Những bước thăng trầm- Tám pháp thế gian'),
(833, 189, 'https://docs.google.com/uc?id=11mIRMSmUYueEtU73SnYBMG9CjKmZB9MI ', '35 phút', 'Lời tựa-giới thiệu'),
(834, 189, 'https://docs.google.com/uc?id=1W8jxTnmC8LjYKp7_1k1m1mhwIKRlF7G2 ', '20 phút', 'Vấn đề của tâm - những điều cơ bản'),
(835, 189, 'https://docs.google.com/uc?id=1bKpyiitUMq8DPCcqiy-kw7xjsAAKD-U0 ', '22 phút', 'Sống trong đạo Pháp'),
(836, 189, 'https://docs.google.com/uc?id=1nAzbfpTAl63TefT3qqhcCszS7hQd2Y_F ', '19 phút', 'Tâm thiện lành'),
(837, 189, 'https://docs.google.com/uc?id=1mHNf8ACei_TPyNIOhPogio8t6x5c0Xn1 ', '33 phút', 'Lục căn - cội nguồn của trí tuệ'),
(838, 189, 'https://docs.google.com/uc?id=1IyRNLtC8cKNrTlLwSu53IgF2U4IFez_w ', '29 phút', 'Hiểu luật'),
(839, 189, 'https://docs.google.com/uc?id=1g0WdukeJc4y5VmMSYqrmWF518y0pKY3s ', '19 phút', 'Duy trì những tiêu chuẩn tu hành'),
(840, 189, 'https://docs.google.com/uc?id=1qN5D_lw2DpjY1-YoJAjmVn_cxm0aOm1a ', '28 phút', 'Tại sao chúng ta ở đây'),
(841, 189, 'https://docs.google.com/uc?id=1OYYRISlF1x8ABHdQ_x65aZd90eu99RYv ', '23 phút', 'Cơn lũ dục vọng'),
(842, 189, 'https://docs.google.com/uc?id=1iycvm3uDArYjcK6ihsvi955weynDNzmj ', '34 phút', 'Hai mặt của thực tại'),
(843, 189, 'https://docs.google.com/uc?id=1-_OwPJhvFRCIzowMl0d64yQf329NXbsa ', '18 phút', 'Món quà chánh Pháp'),
(844, 189, 'https://docs.google.com/uc?id=1cBLoTeTNiNfSQwpvLA9iUV9Oy9jMjKFV ', '15 phút', 'Sự quân bình nội tâm'),
(845, 189, 'https://docs.google.com/uc?id=1wMbl_DkiKNmpywN_r9TpuotlkG7khI61 ', '13 phút', 'Sự hài hòa trong đạo'),
(846, 189, 'https://docs.google.com/uc?id=1Hc4yVXUfm90kGIIZOnqzhJr7UqHL54ao ', '32 phút', 'Điệu phục tâm'),
(847, 189, 'https://docs.google.com/uc?id=15rQHCh-Z-pPzw3FHwDPgu4vsSmOeSS6v ', '22 phút', 'Nhận biết tâm'),
(848, 189, 'https://docs.google.com/uc?id=1bmVD1lvpJhQ8iONVDrVCmcS19j_CawMH ', '22 phút', 'Thiền minh sát'),
(849, 189, 'https://docs.google.com/uc?id=1bF9O_x1BatxMo0qVnZxIkA_6T2kRlMKu ', '40 phút', 'Chìa khóa của sự giải thoát'),
(850, 189, 'https://docs.google.com/uc?id=1Ou-bCkdVxgeO2DqbjELpCS51J8PUg_vX ', '33 phút', 'Năng lực của thiền định'),
(851, 189, 'https://docs.google.com/uc?id=1yvd55FaknHGfKPfXjcftrxfRW_2fAhyI ', '38 phút', 'Tu hành thạnh tâm'),
(852, 189, 'https://docs.google.com/uc?id=141tzmJpCecMAJ8Vh89SJhpr6n6Tsz-Al ', '24 phút', 'Thiền định'),
(853, 189, 'https://docs.google.com/uc?id=1NihtuBBxpiNucOiHZtBcJ-SsOyLq-fPJ ', '25 phút', 'Pháp chiến'),
(854, 189, 'https://docs.google.com/uc?id=1-dmzAOPWx16wSsltVyHJf-cE-5dJqMdI ', '30 phút', 'Tu hành đúng- tu hành kiên định'),
(855, 189, 'https://docs.google.com/uc?id=1zgF-9rDIrzRG3cDymMcLdhlzXsqJS2-3 ', '22 phút', 'Chánh định tu hành với sự xả bỏ'),
(856, 189, 'https://docs.google.com/uc?id=1Qc8vO2FjJAVx0EvwvWU5hBavzDh1at2i ', '37 phút', 'Trong màn đêm dày đặc'),
(857, 189, 'https://docs.google.com/uc?id=1NXHW7Dq6ASR-O8PdZDRMHbRCICcY6o6k ', '32 phút', 'Quán chiếu là gì'),
(858, 189, 'https://docs.google.com/uc?id=1KX25KGvdaV2QJKzqeVbKfoOxWLdchVWA ', '25 phút', 'Sống với rắn hổ mang'),
(859, 189, 'https://docs.google.com/uc?id=1nDHMuWogTQ9LTmHflRsq1wEwD2IkYGEN ', '23 phút', 'Sự bình an xuất thế gian'),
(860, 189, 'https://docs.google.com/uc?id=12fL35w7MhIVRlLI05dxVjlttJcXC5sVV ', '18', 'Quy ước và giải thoát'),
(861, 189, 'https://docs.google.com/uc?id=1-vOJ6uCWfMV2nAfzxCyHaC6Gmb2uBPNH ', '30 phút', 'Không có điểm tựa'),
(862, 189, 'https://docs.google.com/uc?id=1AhClIRBdlGE4_0e7QWiL29uK5Bh5WkwN ', '32 phút', 'Căn nhà thật của chúng ta'),
(863, 189, 'https://docs.google.com/uc?id=1aqK5frZKYMTXKtiXU7e1_v5iT1uKv80s ', '19 phút', 'Tứ diệu đế'),
(864, 189, 'https://docs.google.com/uc?id=1h0AmRJQUCvAFItou0IS7588c3H2gyrM0 ', '28 phút', 'Kinh điển rỗng tuếch'),
(865, 189, 'https://docs.google.com/uc?id=1a2sXcRnDKRLWJP6MSrNI7JyAUpdqHTBe ', '31 phút', 'Không chắc'),
(866, 189, 'https://docs.google.com/uc?id=1XceNN2-zjLoYlBXRP0zKVgr04FC2NFaA ', '24 phút', 'Dòng nước tĩnh lặng'),
(867, 189, 'https://docs.google.com/uc?id=1PbLs3l28HVPirQZMIkpWahobtMyF-sFb ', '31 phút', 'Sự siêu việt'),
(868, 189, 'https://docs.google.com/uc?id=1zi0B-3u4vpc6zRSbjg1MsHGtVXwlTvXB ', '20 phút', 'Vô duyên khởi'),
(869, 190, 'https://docs.google.com/uc?id=1kGM_71tSrto8o6ozwu_uHHPANSFlSDkk ', '33 phút', 'Lời mở đầu- ý thức về cái chết'),
(870, 190, 'https://docs.google.com/uc?id=1mKIjHFCPISZIKjdx_DC0vQF3KcM1D7IN ', '21 phút', 'Tự giải thoát khỏi sự sợ hãi'),
(871, 190, 'https://docs.google.com/uc?id=1qIrbxjsPPvYsw58e8bUs8Ot_4OWgIpT9 ', '33 phút', 'Chuẩn bị cho cái chết');
INSERT INTO `sub_audio` (`id`, `product_id`, `mp3`, `thoi_luong`, `name`) VALUES
(872, 190, 'https://docs.google.com/uc?id=1cv3344K5QT48sMkJLkJGUTudBXiR8u9V ', '12 phút', 'Vượt qua chướng ngại cản trở cái chết'),
(873, 190, 'https://docs.google.com/uc?id=1Y8GdA2mT9O2Xi0ac4URnj5hOWRn1l1st ', '14 phút', 'Tạo điều kiện thuận lợi giờ phút lâm chung'),
(874, 190, 'https://docs.google.com/uc?id=1drRW1_oNv33YmW8YtnO4tXJgpO4PrTHf ', '28 phút', 'Thiền định trong khi chết'),
(875, 190, 'https://docs.google.com/uc?id=14V2W2DyiUKovHNFEEuVbTCuWnoIWEEua ', '41 phút', 'Cấu trúc bên trong'),
(876, 190, 'https://docs.google.com/uc?id=19U6lCxsobujly6MY43Z_XSuiSfauG00V ', '38 phút', 'Ánh sáng trong suốt của cái chết'),
(877, 190, 'https://docs.google.com/uc?id=1NEAloeuD51vJZOmcHlGOCT7YKegyLujx ', '30 phút', 'Phản ứng trong giai đoạn chuyển tiếp'),
(878, 190, 'https://docs.google.com/uc?id=1JBLCArksnBdJfyGwIrG7XDNcYJ35xQIQ ', '18 phút', 'Hướng về sự tái sinh tích cực'),
(879, 190, 'https://docs.google.com/uc?id=1hFDUOzxKJIFRM3OlxQg-OUY7itUKGUzf ', '31 phút', 'Phụ lục - tóm lược những lời khuyên'),
(880, 191, 'https://docs.google.com/uc?id=19socpON4epCGZOJFKsjXxM2EWL0cH0iI ', '30 phút', 'Lời đầu- điểm chính yếu giáo huấn đức Phật'),
(881, 191, 'https://docs.google.com/uc?id=11GRVwetVYYz9kf4BPNMlKMJ4MogVcXI4 ', '36 phút', 'Căn bệnh tâm linh'),
(882, 191, 'https://docs.google.com/uc?id=1UFkR2Qc5zFvECLlJ07ntDG56LgHSpU_i ', '50 phút', 'Trợ lực của đạo đức'),
(883, 191, 'https://docs.google.com/uc?id=18w1E8OMH3mm4Xglika0cwoYWQx6Nsvwh ', '23 phút', 'Anicca Dukkha Anatta là gì'),
(884, 191, 'https://docs.google.com/uc?id=1LR7FbOxN6G0Kdj4tzNW-UqUFNJX0kKVU ', '29 phút', 'Ba thành phần giúp đưa đến niết bàn'),
(885, 191, 'https://docs.google.com/uc?id=16D7WhgvmG5izNc8FIfalv6_W_vwN33vP ', '25 phút', 'Sự chấm dứt của Nghiệp'),
(886, 191, 'https://docs.google.com/uc?id=1uHbowhaAFwkgGbXR6qr3r7MI3dWffqXz ', '29 phút', 'Luyện tập để thường trú trong tánh không'),
(887, 191, 'https://docs.google.com/uc?id=18rvkVxxDPEu6LbXXXS_4mFnusHyOoNFV ', '32 phút', 'Luyện tập trong những lúc bình thường'),
(888, 191, 'https://docs.google.com/uc?id=1IvZplsGSn76UfkyILT833_V9e-XjFRkL ', '40 phút', 'Luyện tập trong khi thiền định'),
(889, 191, 'https://docs.google.com/uc?id=1fw0Fd8Tb9sGPTw8iJ3wZIy9_D2Fy_b4F ', '22 phút', 'Phụ lục'),
(890, 192, 'https://docs.google.com/uc?id=1_8m5hKO2c2GdJkmoRtHVtyLUMqkS2TQk ', '103 phút', '8 Đặc điểm của biển'),
(891, 192, 'https://docs.google.com/uc?id=15r9MMlyNFlh8HjLJ5GlS26M6bJAQa0Qi ', '122 phút', '10 Điều tâm niệm'),
(892, 192, 'https://docs.google.com/uc?id=1qVDvRSpiv1r8j3YD_k8R8uOlX9ySgfdX ', '137 phút', '14 Điều răn'),
(893, 192, 'https://docs.google.com/uc?id=1FBv9rPMQXPXGd2iEaFbCEX6MbJcoug96 ', '53 phút', 'Bài học từ bó đũa'),
(894, 192, 'https://docs.google.com/uc?id=1eGBeeI0VyC5RKOIZE8QIZ6mu0rA6pUyt ', '85 phút', 'Bài học về lòng từ bi'),
(895, 192, 'https://docs.google.com/uc?id=11ZpcYw-1CD0JmgcEH6VDjTaL8kZIuO5n ', '102 phút', 'Bản ngã càng lớn, khổ đau càng nhiều'),
(896, 192, 'https://docs.google.com/uc?id=12hxRZ66PmozOzbINBIPutqthcK-EwpJV ', '81 phút', 'Bát chánh đạo - con đường giác ngộ'),
(897, 192, 'https://docs.google.com/uc?id=1zBnXU4SpC-hGSVrd1sNapsFwvNuuCpbw ', '86 phút', 'Biết đủ trong đạo Phật'),
(898, 192, 'https://docs.google.com/uc?id=1LmLXUNJGF4TWQXd7H-LHhz7m79oNTv7S ', '120 phút', 'Bốn pháp nương tựa'),
(899, 192, 'https://docs.google.com/uc?id=1mWKJ4sU5Rk2XXHwWIWhs8OTVL7TycFWu ', '63 phút', 'Bước đầu học Phật'),
(900, 192, 'https://docs.google.com/uc?id=13VeJWQT5SOEB6eaHQfgB_T96EGrlzvzg ', '96 phút', 'Chánh niệm - chìa khóa cho mọi thành công'),
(901, 192, 'https://docs.google.com/uc?id=1UpNpbR64tEVP5x3lnoq1ifEMpfsfXlu4 ', '80 phút', 'Chánh tinh tấn'),
(902, 192, 'https://docs.google.com/uc?id=1RLKPG2NZiYLbkA4lRHSdny6m8HKugDyd ', '103 phút', 'Chánh tín và mê tín'),
(903, 192, 'https://docs.google.com/uc?id=1QCBwg9G5J0iKJb4n9RDbL_mMjB8ix0oz ', '87 phút', 'Chuyển nghiệp dễ hay khó'),
(904, 192, 'https://docs.google.com/uc?id=1IXfpvEKVcq7jU4B1n8vwmDar5CbNx0VC ', '65 phút', 'Đạo làm người'),
(905, 192, 'https://docs.google.com/uc?id=1R9MZPrBs2X--Fnrsq6rMTsJ3kSQklP5Y ', '66 phút', 'Đừng để đạo đức trở thành món hàng xa xỉ'),
(906, 192, 'https://docs.google.com/uc?id=1P6NjRU8_-Z43TNvlnUFHrMT-UKE29i69 ', '95 phút', 'Giá trị đồng tiền'),
(907, 192, 'https://docs.google.com/uc?id=1d3bKGoVY-NFmsWF-pYDgp6AlvUf8SiFa ', '92 phút', 'Ngã mạn là gì'),
(908, 192, 'https://docs.google.com/uc?id=1cHjBz1WEv46ntN_BdvQt44b-U0mGme-X ', '90 phút', 'Nhìn bằng chánh kiến'),
(909, 192, 'https://docs.google.com/uc?id=1_9NsCpVXs-RydUrp6AmNHPmTih61yNe-', '77 phút', 'Tại sao phụ nữ đi chùa nhiều hơn nam giới'),
(910, 192, 'https://docs.google.com/uc?id=1oYLJ_zsum5Ut3G90o9ZXBUGW1Ty5frqv ', '96 phút', 'Tìm hiểu lý nhân quả'),
(911, 192, 'https://docs.google.com/uc?id=1ttbJA8W-SkRi-_yz00kaQqiksvyJ3Xux ', '93 phút', 'Tứ diệu đế'),
(912, 192, 'https://docs.google.com/uc?id=1ii1Y1SUCoqGHlRSyvWWor3leuCsVxCzf ', '98 phút', 'Vì vô minh con tạo lỗi lầm'),
(913, 192, 'https://docs.google.com/uc?id=1BkR24V0ky_9FmA8H7iXebWO8XxJ-Blzs ', '87 phút', 'Vô minh là gì'),
(914, 192, 'https://docs.google.com/uc?id=1_qJLqb8K0VZ0lUv1UjKoanO44ldw5uc- ', '93 phút', 'Vô ngã giữa đời thường'),
(915, 193, 'https://docs.google.com/uc?id=125WBfu5k44uwI6TVth6wnmvQxoIvqspx ', '86 phút', 'Bản chất và môi trường'),
(916, 193, 'https://docs.google.com/uc?id=1XNB43iP0T2ux6Kzh-v-ok0Q7ujcnSv9m ', '84 phút', 'Cái chung và cái riêng'),
(917, 193, 'https://docs.google.com/uc?id=1HJwMJFj_YikpvmRNw3stHybfY5IrfRYs ', '91 phút', 'Đốn và tiệm'),
(918, 193, 'https://docs.google.com/uc?id=1NJ_E00H6_XQfLBHiHFEQGCy-w-b2J3ab ', '83 phút', 'Đúng và sai'),
(919, 193, 'https://docs.google.com/uc?id=1Jtbsh3XrKpOURHaiYxvMsF9MBUfjEKjx ', '95 phút', 'Những chữ Tự'),
(920, 193, 'https://docs.google.com/uc?id=1lTAA3ZyHRJ4ARs6nRASXDcWEwzu7DRa5 ', '95 phút', 'Tinh thần và vật chất'),
(921, 193, 'https://docs.google.com/uc?id=1w9-nVGcU4Ynevj3OXzj_uFyFD6Ei3tjH ', '84 phút', 'Nghiêm và từ'),
(922, 193, 'https://docs.google.com/uc?id=1UkJg9DuoCnbOpMNinTbnHsGjfLSky8aK ', '43 phút', 'Bình thường- bất thường- phi thường'),
(923, 193, 'https://docs.google.com/uc?id=1C6Y0AplbFJhm2-YWwywUb4DIF8Sk3gJX ', '90 phút', 'Cao siêu và thực tế'),
(924, 193, 'https://docs.google.com/uc?id=1cOKm7N-zuJutMiDbK26-dQAQuAPCInxn ', '92 phút', 'Có và không'),
(925, 193, 'https://docs.google.com/uc?id=1JGpVAZz-GLraZRh-mo72ZbecHajBjN4O ', '91 phút', 'Cứu cánh và phương tiện'),
(926, 193, 'https://docs.google.com/uc?id=1BOvBYYDm5glJ3L8kuuzFyHbPu8hGLQNf ', '92 phút', 'Đạo và thuật'),
(927, 193, 'https://docs.google.com/uc?id=1Ct-ogHcmF8LI3___eRL6uEqTAk3_muuP ', '91 phút', 'Hơn và kém'),
(928, 193, 'https://docs.google.com/uc?id=1H1WdbhhFuqawV9x7medxv1BDBW6vif9o ', '93 phút', 'Hữu lậu và vô lậu'),
(929, 193, 'https://docs.google.com/uc?id=1ZCOwA8zdmSCsgjTF-7f0pUJMcEm8kuBA ', '92 phút', 'Lớn và nhỏ'),
(930, 193, 'https://docs.google.com/uc?id=19yCt9cu9FAMbAjQBYlYpd2pHy0FOzD77 ', '90 phút', 'Lý và sự'),
(931, 193, 'https://docs.google.com/uc?id=1dSNgCij_gvXG8Uo89rhTIsYeTNP0cFAJ ', '95 phút', 'Mới và cũ'),
(932, 193, 'https://docs.google.com/uc?id=1jldYvWf7ZGz8L7uxI2z1fjoCaCM8k8mk ', '92 phút', 'Ngã và pháp'),
(933, 193, 'https://docs.google.com/uc?id=1nwcZTAbNuRuFecAISK7HxIbPl0iUicEJ ', '86 phút', 'Nghiệp và duyên'),
(934, 193, 'https://docs.google.com/uc?id=1zDuD_9yOU7rYs4c-4WrOXecp9D9L-hA5', '92 phút', 'Niềm tin và trí tuệ'),
(935, 193, 'https://docs.google.com/uc?id=1wNW2yu0shOqmtobhWM1F2XXWFLwFUIS2', '77 phút', 'Nội tâm và nghiệp báo'),
(936, 193, 'https://docs.google.com/uc?id=1GkneCFGRk4h7QsB-yTmIuI2xYdo_I3T0', '95 phút', 'Thái quá và bất cập'),
(937, 193, 'https://docs.google.com/uc?id=115KUKlhqbelLod41uLiKVfi3kDNdYeGv ', '92 phút', 'Tình cảm và lý trí'),
(938, 193, 'https://docs.google.com/uc?id=1wGvA-JquwjA3mcGPrgobFVl5vC4JVWX- ', '89 phút', 'Trực tiếp và gián tiếp'),
(939, 193, 'https://docs.google.com/uc?id=1XPa7n0mRt3giQrYdToyXP4f0pBh1GNIJ ', '87 phút', 'Tương đối và tuyệt đối'),
(940, 193, 'https://docs.google.com/uc?id=1pOLxo5rE544rxowwk4zkqAGtFrDaWURr ', '87 phút', 'Tùy duyên và bất biến'),
(941, 194, 'https://docs.google.com/uc?id=1YmacVb7BKGChIeUp5ZTt28X7FqA9Hz5T ', '77 phút', 'Bốn điều cần phải có'),
(942, 194, 'https://docs.google.com/uc?id=10mU7ya6Y3VTrpXB4osoQ4cO9ovrff7J1 ', '93 phút', 'Nhân và duyên'),
(943, 194, 'https://docs.google.com/uc?id=1Snqwbu6TgLPqVgTTgeH657HLL-ojzjm0', '46 phút', 'Kiết sử A'),
(944, 194, 'https://docs.google.com/uc?id=1Pkc5MDXEPeXDkIX5Wz1yyY9kRLF3sQDj ', '46 phút', 'Kiết sử B'),
(945, 194, 'https://docs.google.com/uc?id=1bQmEBw6ds2J_ypRVVAzb0iIZIOZz9kEJ ', '92 phút', 'Vui vẻ'),
(946, 194, 'https://docs.google.com/uc?id=1GzrLW10oJGfWCFGHPj_Fg6jy-Dqt5IrW ', '82 phút', 'Ái ngữ'),
(947, 194, 'https://docs.google.com/uc?id=1Z8tOwiQIRkbCAhoJkPC6nkhBOAA56xUc ', '247 phút', 'Ái và dục'),
(948, 194, 'https://docs.google.com/uc?id=1OFkQtoX2_T7bXEj816blSYJb73IFqmfE ', '93 phút', 'Bi - trí- dũng'),
(949, 194, 'https://docs.google.com/uc?id=1ZtywGtPcO8Fsore6lqxCsmSf2ejfayqn ', '78 phút', 'Công Đức Của Thánh'),
(950, 194, 'https://docs.google.com/uc?id=1-imn52Fu_64nXORi1gFG63OmpHYpiVPi ', '81 phút', 'Đạo đức người tu - khiêm hạ'),
(951, 194, 'https://docs.google.com/uc?id=1Y2qoY4q39KnErzFMDOcMjYKumP20SaSi ', '77 phút', 'Đệ tử Phật phải hướng về vô ngã'),
(952, 194, 'https://docs.google.com/uc?id=1jyUkKOoIQJ4-A1nM1mAJLBVvntMKGjlF ', '63 phút', 'Điều thiện hoàn hảo'),
(953, 194, 'https://docs.google.com/uc?id=11XMTCs1YWFHwdgNXLtovF5D6LsXv-2Jv ', '65 phút', 'Định lượng tội phước'),
(954, 194, 'https://docs.google.com/uc?id=1LVWCy9afqWoP7UKZYfvHwg2o6FS-yZaL ', '70 phút', 'Hiểu đúng về lòng từ bi'),
(955, 194, 'https://docs.google.com/uc?id=1HhFqnjDUnx9tSDAo8no5u6NC9cwiW9X- ', '67 phút', 'Hiểu về bản ngã'),
(956, 194, 'https://docs.google.com/uc?id=1Z5bVnSKiAtoKEWPz9SXAZx8QMMusoW3Q ', '112 phút', 'Không sầu muộn lo âu'),
(957, 194, 'https://docs.google.com/uc?id=1PhO6RON5sijtD4Wf0f4lEtGGq6w4oshZ ', '24 phút', 'Kiểm soát tâm'),
(958, 194, 'https://docs.google.com/uc?id=1pZ6pYwC3AHGqGr5FZXP8oHcl8zFqGZkV ', '91 phút', 'Kiềm chế'),
(959, 194, 'https://docs.google.com/uc?id=1zAQ6zNikln25oeT8s5QbkJvgtBACPOVk ', '45 phút', 'Làm phước không dễ A'),
(960, 194, 'https://docs.google.com/uc?id=1MhWIIwCy-XhYNb10n-fx3l0dpfSqp69M ', '44 phút', 'Làm phước không dễ B'),
(961, 194, 'https://docs.google.com/uc?id=169DJWfV0mG1gYEiadGkZVJTF6Lyk56WA ', '53 phút', 'Lễ hội'),
(962, 194, 'https://docs.google.com/uc?id=1W9Pd2BFiRv1JRYa5CEBUFoBYK6X639zq ', '94 phút', 'Lương tâm'),
(963, 194, 'https://docs.google.com/uc?id=1F0DQIStyzsUgj8WRZunYbfua3B0WgDSc ', '47 phút', 'Mê tín đến từ đâu'),
(964, 194, 'https://docs.google.com/uc?id=1MkDwnpTV3vTXlBKjmp8Hmj_R3PfFs5TB ', '91 phút', 'Mục đích cuộc sống'),
(965, 194, 'https://docs.google.com/uc?id=1iFivuuSRs4B90BFAZ2UVF8ZIWSHQ81SK ', '60 phút', 'Nghịch hạnh trong tu hành A'),
(966, 194, 'https://docs.google.com/uc?id=1_pvR_VLVYJISaUrTsSz1DxGagaHrduIq ', '56 phút', 'Nghịch hạnh trong tu hành B'),
(967, 194, 'https://docs.google.com/uc?id=1lbWrEZPilKJ4gJoby_W-3yefqMvE-RUu ', '91 phút', 'Ở hiền gặp lành'),
(968, 194, 'https://docs.google.com/uc?id=15SfJr4H5F_6QB7QWLRKawOKhsC70hih_ ', '70 phút', 'Phát tâm bồ tát'),
(969, 194, 'https://docs.google.com/uc?id=1eo-r3JoihneX8WQ8RqrPVprTGW6xliRa ', '59 phút', 'Phát tâm vô thượng'),
(970, 194, 'https://docs.google.com/uc?id=1CWMyb2eyXzFbRPFHI5olqtHLNs7YLG-i ', '50 phút', 'Sạch sẽ cũng là đạo đức'),
(971, 194, 'https://docs.google.com/uc?id=1B-7CwY6jHYtxUQYJPo_bMkmNOVNqilnE ', '91 phút', 'Sai-đúng'),
(972, 194, 'https://docs.google.com/uc?id=1uyAN3sjL8jUO_fRMTPVFtCVXHt7UhwM7 ', '99 phút', 'So sánh đạo đức và quy tắc'),
(973, 194, 'https://docs.google.com/uc?id=1izEeNZpnqV-Djlj4rjYCi-DGHchsZA68 ', '92 phút', 'Sức mạnh và lẽ phải'),
(974, 194, 'https://docs.google.com/uc?id=1d80lwV5AJvNZHsdjPk_Jn0BPt3PikHXJ ', '92 phút', 'Sự dao động của tâm'),
(975, 194, 'https://docs.google.com/uc?id=1PGQWj6PKPhnDUidUARCgpu0bQfCwSyaU ', '92 phút', 'Tâm'),
(976, 194, 'https://docs.google.com/uc?id=1O_60W_ia0D78rt1hXICL7MbaZUgOPvPW ', '95 phút', 'Tham ái'),
(977, 194, 'https://docs.google.com/uc?id=1xb-B6TDLRMFCqiovqOK7AAZXkPGEkDn0 ', '88 phút', 'Tôn kính Phật bằng trí tuệ'),
(978, 194, 'https://docs.google.com/uc?id=1_l0VVtdA8oho368F5kjSkd46JZa06CTm ', '97 phút', 'Tự do và giáo dục'),
(979, 194, 'https://docs.google.com/uc?id=16w3N0tnB8JdWzadBNxLE8tDrAvkmyyAH ', '77 phút', 'Tứ vô lượng tâm'),
(980, 194, 'https://docs.google.com/uc?id=135i5P5Vrw-au9DxewjuVW1neIAKaf-wU ', '78 phút', 'Ý nghĩa chữ không trong đạo phật'),
(981, 195, 'https://docs.google.com/uc?id=1lquyT-2YjqGRw0Ovg9zXK65Mcqm9Pk2t ', '33 phút', 'Lời giới thiệu'),
(982, 195, 'https://docs.google.com/uc?id=1cxc9Se2JMwntGpvlHhbG9ZSSoZ_nXzDk ', '36 phút', 'Ý niệm hạnh phúc'),
(983, 195, 'https://docs.google.com/uc?id=1F5_yezGP1xVmIuyxuaRinHV2hxiLsod3 ', '41 phút', 'Khổ đau tuệ giác'),
(984, 195, 'https://docs.google.com/uc?id=1pDmPbt2m56S235ditNQHlkvT2M0RWWAm ', '40 phút', 'Hiểu và thương'),
(985, 195, 'https://docs.google.com/uc?id=15tbh3R8J6fhszgQVm-rjfTcMAO5j-bBI ', '41 phút', 'Hiểu sai về yêu'),
(986, 195, 'https://docs.google.com/uc?id=1BmCzqeW11d6XQNgn21INhDNj-NJzQQhm ', '45 phút', 'Truyền thông'),
(987, 195, 'https://docs.google.com/uc?id=11Ec123jgqAC_mMiI0qIFZFAbEA-mRlg- ', '46 phút', 'Tuệ giác bất nhị'),
(988, 195, 'https://docs.google.com/uc?id=1LK1CDhyMnx78UJMJdKqZiMhbCofTP0hY ', '37 phút', 'Thói quen ăn uống'),
(989, 195, 'https://docs.google.com/uc?id=17AIHaDRmAy84DEADH5l0ioE5isvgNcfj ', '33 phút', 'Đang luân hồi'),
(990, 195, 'https://docs.google.com/uc?id=1cyRSHtKfL2wjdR0ctEe3-lZbuVOvBttv ', '38 phút', 'Không niềm tin'),
(991, 195, 'https://docs.google.com/uc?id=13O8XUIcaLnc9vizeAa0vsK8Ach_Lhocu ', '35 phút', 'Phật giáo cần hiện đại'),
(992, 195, 'https://docs.google.com/uc?id=1nSFSfYZSkYEjLeCm0q3iXWPJnF7Ss9dk ', '42 phút', 'Muốn hết chiến tranh'),
(993, 195, 'https://docs.google.com/uc?id=1uFs2TCHZ57aSE_S6osd0ZNiS7D58Zpd5', '30 phút', 'Cúng tế chuyển nghiệp'),
(994, 196, 'https://docs.google.com/uc?id=1qiHNbGjQFeIsP96wwVdwazVhs7KFEODa ', '12 phút', 'Lời giới thiệu'),
(995, 196, 'https://docs.google.com/uc?id=1uoJ7TSYYlAs7RiRh6Uvl2C8kN75RQ_L4 ', '40 phút', 'Đạo Phật'),
(996, 196, 'https://docs.google.com/uc?id=1Vokid2yyxz7p3qEO9WtOcxvDKEZFDsDL ', '50 phút', 'Tứ diệu đế'),
(997, 196, 'https://docs.google.com/uc?id=16gDYEcDYPy3LXRo-AyJNRK40Jwb-ED2y ', '34 phút', 'Quy y tam bảo'),
(998, 196, 'https://docs.google.com/uc?id=12aILBF5ojfzaF782cjH7TddNMZlNNcyB ', '30 phút', 'Tâm từ'),
(999, 196, 'https://docs.google.com/uc?id=16vdHEJ1eBPaVjDlf8BTCzTWH68GbTDOE ', '37 phút', 'Nghiệp và tái sanh'),
(1000, 196, 'https://docs.google.com/uc?id=1tuyt_YzGpkZmV3xFcnu_zvPG0f69Rkrb ', '32 phút', 'Tâm và vũ trụ'),
(1001, 196, 'https://docs.google.com/uc?id=1CAftGaSp_WtO8yacqbD76FplKM0S7eR1 ', '32 phút', 'Niết bàn giải thoát'),
(1002, 196, 'https://docs.google.com/uc?id=15xJLVa-ZQsYrywmUn6GTC-YkvrAGLq36 ', '33 phút', 'Hành Thiền'),
(1003, 196, 'https://docs.google.com/uc?id=1jjq_dIJlaU8LdpT1i00mNe_cDmJZQJdl ', '32 phút', 'Quán niệm hơi thở'),
(1004, 196, 'https://docs.google.com/uc?id=1ZymFFyg-8PIDa3sxgmZiWVBwIoqKawtu ', '38 phút', 'Thanh lọc thân tâm'),
(1005, 196, 'https://docs.google.com/uc?id=11IELEPcxN4Z29V2WSsJnBGorK2Gwf-52 ', '29 phút', 'Ghi nhận không gian'),
(1006, 196, 'https://docs.google.com/uc?id=1zmnNcIyaHoIslOjrwpDN7OH-0pEUQun3 ', '38 phút', 'Sống với thực tại'),
(1007, 196, 'https://docs.google.com/uc?id=1ac7FCB_85z6-7PSHm9-nLhcwT1bsHMyn ', '39 phút', 'Các đề mục tu tập hàng ngày'),
(1008, 196, 'https://docs.google.com/uc?id=1MJlud-0fsxfIJzVGOL-Wc-juXKOUAleh ', '41 phút', 'Tự do của tâm thức'),
(1009, 196, 'https://docs.google.com/uc?id=1rbZhc9OWdO-iaJ2aSVFk1m52s7XZX9RZ ', '35 phút', 'Học làm điều thiện'),
(1010, 196, 'https://docs.google.com/uc?id=1P8dgImvOGsvtsUkgjM6SUqYlTr9z83gg ', '45 phút', 'Con người và đời sống gia đình'),
(1011, 196, 'https://docs.google.com/uc?id=1lWD8eBt-3b6IiyufHfPtxrwNnEzC-lyu ', '24 phút', 'Giáo dục con người về cuộc đời'),
(1012, 196, 'https://docs.google.com/uc?id=1kdj6KX7L_uFHmaueWRl3obrIeMjuhx1e ', '39 phút', 'Về một xã hội toàn hảo'),
(1013, 196, 'https://docs.google.com/uc?id=1Ew92iPll7UvWtWZQPdYRZ8WttKfmOAe7', '29 phút', 'Sự sống và sự chết'),
(1014, 196, 'https://docs.google.com/uc?id=1WgL3PsUQshTfDY7V3lSFzcJlj1JYeOkp ', '25 phút', 'Hướng về tương lai'),
(1015, 197, 'https://docs.google.com/uc?id=1uucKS5jdfDBFnUlbdLXJD-OMr-Xy4MQ1', '30 phút', 'Lời giới thiệu'),
(1016, 197, 'https://docs.google.com/uc?id=1L6WKJaOX9q94ffVZECELB0UPHW1yG7tU ', '32 phút', 'Nguồn hạnh phúc'),
(1017, 197, 'https://docs.google.com/uc?id=1nW1vAg__KY6LYOchcE8IuEYp_LVox7Sm ', '30 phút', 'Vun trồng tâm thiện'),
(1018, 197, 'https://docs.google.com/uc?id=1dwEskmzecDGSujC8TzrQkn_5NIrWUyrh ', '34 phút', 'Chánh kiến'),
(1019, 197, 'https://docs.google.com/uc?id=1jFwuz6RDepcWY_QxrDdn3mpqhde1D4C1', '36 phút', 'Đổi thay'),
(1020, 197, 'https://docs.google.com/uc?id=1Hx1p-G2m7s9Ktvucm6k3RUGVap7xN_81', '35 phút', 'Chịu trách nhiệm'),
(1021, 197, 'https://docs.google.com/uc?id=1QLdAUxsbpNJI9R4wXdL_bqo-CH11_k30', '42 phút', 'Chánh tư duy'),
(1022, 197, 'https://docs.google.com/uc?id=16csC49sGdTmWcuWCAoVUkt46l88tR_sA ', '38 phút', 'Lòng từ bi'),
(1023, 197, 'https://docs.google.com/uc?id=1-xHN8rmM6y9wQ639i6Sb3BjJH7EEP8gX ', '33 phút', 'Từ bi đối với con cái'),
(1024, 197, 'https://docs.google.com/uc?id=1Ss4EJ30IH5bDI5faBb1qISrk9pNdrujU ', '27 phút', 'Chánh ngữ'),
(1025, 197, 'https://docs.google.com/uc?id=1Z0rvR9NsnKdKTDbZYI-Co008Z7qJfbWF ', '29 phút', 'Tránh nói chuyện phù phiếm'),
(1026, 197, 'https://docs.google.com/uc?id=1bss1nHGE7AMy04osuNobH2QUN3Z5HlWW ', '45 phút', 'Chánh nghiệp'),
(1027, 197, 'https://docs.google.com/uc?id=1vopzYPwqP2y3_QlQRkFC8q3Izg44UFj3 ', '29 phút', 'Những giới luật'),
(1028, 197, 'https://docs.google.com/uc?id=14LCPkFVgmEHZG4EXpHUsX6nbhwyzZ1aZ ', '28 phút', 'Chánh mạng'),
(1029, 197, 'https://docs.google.com/uc?id=1cWgR_eiHSg2qMcq9bGdpBUoVoIf1tvuV ', '24 phút', 'Tuân giữ chánh mạng'),
(1030, 197, 'https://docs.google.com/uc?id=1PhVyPsVi_dzIz48O7rlorpTXWMq9ETNC ', '38 phút', 'Chánh tinh tấn'),
(1031, 197, 'https://docs.google.com/uc?id=1d6BwoVPJXzXSIFTsRdIiFxhqxJI9ywGw ', '39 phút', 'Tứ chánh cần'),
(1032, 197, 'https://docs.google.com/uc?id=109QF5B0ivJK0hTz9l1F-iC4K_RAqK7XY ', '28 phút', 'Chế ngự các kiết sử'),
(1033, 197, 'https://docs.google.com/uc?id=1sqqoky6ZMb_ugbW3aAgPHegA01bqPZyB ', '32 phút', 'Duy trì trạng thái tâm thiện'),
(1034, 197, 'https://docs.google.com/uc?id=1EtObA6qrTzQjRFJIJPg2I5YI3RSHk_lV ', '28 phút', 'Chánh niệm'),
(1035, 197, 'https://docs.google.com/uc?id=1ttAiZq4-WqmiQTcrFLLzyqjDD-qy-xsi ', '22 phút', 'Chánh niệm về các tư thế'),
(1036, 197, 'https://docs.google.com/uc?id=1PGCphzDPqycD7I6EHNyCU3CudPDdNGc2 ', '45 phút', 'Chánh niệm về thọ'),
(1037, 197, 'https://docs.google.com/uc?id=1tTUS0brTLC81z7NYcMdYqTWzL-W28KqF ', '40 phút', 'Chánh định'),
(1038, 197, 'https://docs.google.com/uc?id=1LF2ZyeMAXvJGUSQj7Lhipde1j5AiDAWb ', '25 phút', 'Chánh niệm về chánh định'),
(1039, 197, 'https://docs.google.com/uc?id=1SSRtxd6VAL-XX_Bkc9U-kIp4ylRk8Rmg ', '32 phút', 'Lời kết'),
(1040, 198, 'https://docs.google.com/uc?id=1sY0xohjb_lqfwgaSlIOSc9k4bIdUn7tr ', '26 phút', 'Giới thiệu và lời nói đầu'),
(1041, 198, 'https://docs.google.com/uc?id=134OPE0-hwz9BrFytpK5ZC9UqsP26DFPo ', '25 phút', 'Đức Phật'),
(1042, 198, 'https://docs.google.com/uc?id=1D7Pah8Uct0zMe3FcJ2QvXSYWI-WrZf3E ', '24 phút', 'Bài pháp đầu tiên'),
(1043, 198, 'https://docs.google.com/uc?id=1Aqpx5hAr-0jN3wep-EHZ3f5uNlSEwGDM ', '20 phút', 'Công trình Hoằng pháp'),
(1044, 198, 'https://docs.google.com/uc?id=1878DVBiqvL7E6xjleCLE0tzOEqy2rD1l ', '26 phút', 'Đạo quả Phật'),
(1045, 198, 'https://docs.google.com/uc?id=1U9Z5silTr1E8JTW-ZjluOJgHnSxonJkF ', '21 phút', 'Những ngày cuối cùng'),
(1046, 198, 'https://docs.google.com/uc?id=1p7KjGU9ffPh4E3SewmcWUfBk7g5y0-hD ', '10 phút', 'Đại đức Ananda'),
(1047, 198, 'https://docs.google.com/uc?id=1CeLG7_xRYnwYcQWh2PfFYNj9k-cgbaic ', '28 phút', 'Con đường tích cực'),
(1048, 198, 'https://docs.google.com/uc?id=1NgNeK4ybyqnheKuhg8FHjMuufSeLhL3R ', '26 phút', 'Làm chủ cái tâm'),
(1049, 198, 'https://docs.google.com/uc?id=1T8T2v2CaHjUB68soBuD9bcg5oDGSSZZV ', '24 phút', 'Con đường tích cực 2'),
(1050, 198, 'https://docs.google.com/uc?id=1rtcApJ-iLssnwOPIPZ8VhxlRof2CXwSg ', '24 phút', 'Suy gẫm về Phật ngôn'),
(1051, 198, 'https://docs.google.com/uc?id=1JKaGAc4PzxAIL8AHe9b1aXC5tF9EnkSM ', '12 phút', 'Trau dồi nội tâm'),
(1052, 198, 'https://docs.google.com/uc?id=1EvkK4J42Xkn4SZYN7BDGXXqH4VS2pm5Y ', '20 phút', 'Đặc tướng vô thường'),
(1053, 198, 'https://docs.google.com/uc?id=1VQpyFcBci3YIJUGUcPtAJwdgW9cDf_mQ ', '29 phút', 'Thuyết tái sinh trong Phật giáo'),
(1054, 198, 'https://docs.google.com/uc?id=1EuvCv4_9mhPppdmqiz_zEkBGJMsxD6UR ', '17 phút', 'Thuyết tái sanh'),
(1055, 198, 'https://docs.google.com/uc?id=1sXJqDYUxO85uRlK7WE0Yb_areWU1BLBH ', '18 phút', 'Những thần đồng'),
(1056, 198, 'https://docs.google.com/uc?id=1eOLJEGjNeWSUYAuL2ECOyrhIgY7sf0Rj ', '28 phút', 'Pháp tùy thuộc phát sanh 1'),
(1057, 198, 'https://docs.google.com/uc?id=12yfsm45Mr5Jqp5P48EIr4mD7KKz62dnz ', '35 phút', 'Pháp tùy thuộc phát sanh 2'),
(1058, 198, 'https://docs.google.com/uc?id=1kPsSUqn8Q7-adYpPB9GIVp84qNR6MpHH ', '22 phút', 'Pháp tùy thuộc phát sanh 3'),
(1059, 198, 'https://docs.google.com/uc?id=1G0ulbJN30dlH5WDL-sA5KKmNHmEoIw79', '6 phút', 'Pháp tùy thuộc phát sanh 4'),
(1060, 198, 'https://docs.google.com/uc?id=105DUpXp0RmyQSgJQMbR1DpjIqOd-qQfW ', '27 phút', 'Sắc thái tâm lý của Phật giáo 1'),
(1061, 198, 'https://docs.google.com/uc?id=1cakLqmdU9LbLDWO9IHVzzSqVYX3vMpnF ', '32 phút', 'Sắc thái tâm lý của Phật giáo 2'),
(1062, 198, 'https://docs.google.com/uc?id=1HxsZRmwoAz0Dr6STwT4byl_M6BGXJYYk ', '36 phút', 'Thiền tập trong Phật giáo 1'),
(1063, 198, 'https://docs.google.com/uc?id=1t_lyUdlmULsVTniPQBt5UKR-CChrf1bK ', '44 phút', 'Thiền tập trong Phật giáo 2'),
(1064, 198, 'https://docs.google.com/uc?id=1OHna0No-5--g5VPQinWsd-dSW3cDVTdJ ', '42 phút', 'Thiền tập trong Phật giáo 3'),
(1065, 198, 'https://docs.google.com/uc?id=1ZnywPEFU7SgVkk0QGwDZ2C7Nmp4N7MkD ', '35 phút', 'Thiền tập trong Phật giáo 4'),
(1066, 198, 'https://docs.google.com/uc?id=1B-kFNqWalTzNDxcXaDc5rVx8k3oExNbp ', '32 phút', 'Tứ vô lượng tâm'),
(1067, 198, 'https://docs.google.com/uc?id=1wgrCaPf_YrrXIna1zdrm5IaujZ2pD7gV ', '13 phút', 'Năm pháp triền cái'),
(1068, 198, 'https://docs.google.com/uc?id=1FPY4DhmBWNVavkfXqfsMP9rjkjySgp6s ', '8 phút', 'Phụ bàn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sub_audio_giay`
--

CREATE TABLE `sub_audio_giay` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `sub_audio_id` bigint(20) NOT NULL DEFAULT 0,
  `giay` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sub_audio_giay`
--

INSERT INTO `sub_audio_giay` (`id`, `user_id`, `sub_audio_id`, `giay`) VALUES
(1, 2, 4, 5),
(2, 2, 5, 8),
(3, 7, 4, 11),
(4, 2, 3, 56),
(5, 9, 53, 38),
(6, 9, 144, 2),
(7, 9, 249, 17),
(8, 9, 212, 3),
(9, 9, 209, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `them_vao_tu_sach`
--

CREATE TABLE `them_vao_tu_sach` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `them_vao_tu_sach`
--

INSERT INTO `them_vao_tu_sach` (`id`, `user_id`, `product_id`) VALUES
(1, 2, 81),
(2, 2, 80),
(3, 7, 160),
(4, 7, 100),
(5, 7, 161),
(6, 2, 161),
(7, 9, 101);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user1`
--

CREATE TABLE `user1` (
  `id` bigint(20) NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `diem` int(11) NOT NULL DEFAULT 0,
  `product_id` text CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `goi_vip` int(11) NOT NULL DEFAULT 0,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `goi_1` int(11) NOT NULL DEFAULT 0,
  `goi_2` int(11) NOT NULL DEFAULT 0,
  `goi_3` int(11) NOT NULL DEFAULT 0,
  `goi_4` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user1`
--

INSERT INTO `user1` (`id`, `name`, `phone`, `diem`, `product_id`, `goi_vip`, `address`, `goi_1`, `goi_2`, `goi_3`, `goi_4`) VALUES
(2, 'Trương Quang Tuấn', '0987654321', 2, '[\"79\",\"78\"]', 1, 'Hà Nội', 1, 1, 1, 1),
(3, 'Phạm Thúy Hà', '0973359612', 0, NULL, 0, NULL, 0, 0, 0, 0),
(6, 'Phạm Thúy Hà', '0973378668', 0, NULL, 0, 'Khương Trung', 0, 0, 0, 0),
(7, 'Phạm Thúy Hằng', '0973378669', 0, NULL, 1, 'Khương Trung', 0, 0, 0, 0),
(9, 'nguyễn văn huấn', '0973355179', 0, '[\"101\"]', 1, 'phan thái ất tp vinh', 0, 0, 0, 1),
(10, 'trần ngọc khánh', '0978767293', 0, NULL, 0, 'tp vinh', 0, 0, 0, 0),
(11, 'Trần Thị Thanh Thủy', '0986585313', 0, NULL, 0, 'tp vinh', 1, 0, 0, 0),
(12, 'le thi lieu', '0985650654', 0, NULL, 0, NULL, 0, 0, 1, 0),
(13, 'trần thanh tra', '0984906890', 0, NULL, 0, 'vinh', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `tgtmp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Chỉ mục cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Chỉ mục cho bảng `audio`
--
ALTER TABLE `audio`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Chỉ mục cho bảng `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Chỉ mục cho bảng `dang_ky_goi`
--
ALTER TABLE `dang_ky_goi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gia_goi`
--
ALTER TABLE `gia_goi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_ao`
--
ALTER TABLE `khach_ao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Chỉ mục cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Chỉ mục cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `nghe_thu`
--
ALTER TABLE `nghe_thu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Chỉ mục cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Chỉ mục cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Chỉ mục cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Chỉ mục cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Chỉ mục cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Chỉ mục cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Chỉ mục cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Chỉ mục cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Chỉ mục cho bảng `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Chỉ mục cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Chỉ mục cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Chỉ mục cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Chỉ mục cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Chỉ mục cho bảng `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Chỉ mục cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Chỉ mục cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Chỉ mục cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `so_huu`
--
ALTER TABLE `so_huu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sub_audio`
--
ALTER TABLE `sub_audio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `sub_audio_giay`
--
ALTER TABLE `sub_audio_giay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `them_vao_tu_sach`
--
ALTER TABLE `them_vao_tu_sach`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Chỉ mục cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `audio`
--
ALTER TABLE `audio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dang_ky_goi`
--
ALTER TABLE `dang_ky_goi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `gia_goi`
--
ALTER TABLE `gia_goi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khach_ao`
--
ALTER TABLE `khach_ao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `khoa_hoc`
--
ALTER TABLE `khoa_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT cho bảng `nghe_thu`
--
ALTER TABLE `nghe_thu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT cho bảng `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT cho bảng `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT cho bảng `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `so_huu`
--
ALTER TABLE `so_huu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sub_audio`
--
ALTER TABLE `sub_audio`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1069;

--
-- AUTO_INCREMENT cho bảng `sub_audio_giay`
--
ALTER TABLE `sub_audio_giay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `them_vao_tu_sach`
--
ALTER TABLE `them_vao_tu_sach`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user1`
--
ALTER TABLE `user1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sub_audio`
--
ALTER TABLE `sub_audio`
  ADD CONSTRAINT `sub_audio_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

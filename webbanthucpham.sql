-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 10, 2022 lúc 06:46 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webbanthucpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `address`, `image`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(1, 'pbkdf2_sha256$320000$jSr0SkZHOfBt7kTA1O4B6U$wV/Unp4u5GwNqqR06f40obdXnvgdxGdcmqgDU1kwr/U=', 'Lê Công', 'Tuấn', 'admin', 'ktdfood@gmail.com', '0975118974', '28 Lưu Chí Hiếu, Tây Thạnh, Tân Phú, HCM', 'photos/acount/dung_FnA7uTt.jpg', '2021-12-30 14:39:11.688380', '2022-01-10 15:34:46.194816', 1, 1, 1, 1),
(2, 'pbkdf2_sha256$320000$zkTa3XwXtRLlRQUSxVoafM$EO1Szm8XOPdQhB2egLZP/AKLh8o/xOv59cVKV4rM49I=', 'Lê', 'Tuấn', 'tuan123', 'tuan123@gmai.com', '0369950653', '', 'False', '2022-01-10 15:19:01.553034', '2022-01-10 15:19:09.309685', 0, 0, 1, 0),
(3, 'pbkdf2_sha256$320000$TGNTkLEaSWQQHrfX5XYbNu$DIaxbhJ1wc1VV6l1UWc5ZisRlNZXwOn/E8wngvRW5mM=', 'Nguyễn', 'Dũng', 'dung123', 'dung123@gmail.com', '0356989867', '', 'False', '2022-01-10 15:32:49.548173', '2022-01-10 15:33:05.143315', 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_phanhoi`
--

CREATE TABLE `accounts_phanhoi` (
  `idphanhoi` int(11) NOT NULL,
  `tenkh` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` varchar(255) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `thoigiaph` datetime(6) NOT NULL,
  `User_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_traloiphanhoi`
--

CREATE TABLE `accounts_traloiphanhoi` (
  `idphanhoi` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `noidung` longtext NOT NULL,
  `thoigiantaloi` datetime(6) NOT NULL,
  `PH_id` int(11) NOT NULL,
  `User_id` bigint(20) NOT NULL,
  `hoatdong` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add account', 1, 'add_account'),
(2, 'Can change account', 1, 'change_account'),
(3, 'Can delete account', 1, 'delete_account'),
(4, 'Can view account', 1, 'view_account'),
(5, 'Can add phanhoi', 2, 'add_phanhoi'),
(6, 'Can change phanhoi', 2, 'change_phanhoi'),
(7, 'Can delete phanhoi', 2, 'delete_phanhoi'),
(8, 'Can view phanhoi', 2, 'view_phanhoi'),
(9, 'Can add traloiphanhoi', 3, 'add_traloiphanhoi'),
(10, 'Can change traloiphanhoi', 3, 'change_traloiphanhoi'),
(11, 'Can delete traloiphanhoi', 3, 'delete_traloiphanhoi'),
(12, 'Can view traloiphanhoi', 3, 'view_traloiphanhoi'),
(13, 'Can add danhmuc', 4, 'add_danhmuc'),
(14, 'Can change danhmuc', 4, 'change_danhmuc'),
(15, 'Can delete danhmuc', 4, 'delete_danhmuc'),
(16, 'Can view danhmuc', 4, 'view_danhmuc'),
(17, 'Can add khohang', 5, 'add_khohang'),
(18, 'Can change khohang', 5, 'change_khohang'),
(19, 'Can delete khohang', 5, 'delete_khohang'),
(20, 'Can view khohang', 5, 'view_khohang'),
(21, 'Can add sanpham', 6, 'add_sanpham'),
(22, 'Can change sanpham', 6, 'change_sanpham'),
(23, 'Can delete sanpham', 6, 'delete_sanpham'),
(24, 'Can view sanpham', 6, 'view_sanpham'),
(25, 'Can add thongke', 7, 'add_thongke'),
(26, 'Can change thongke', 7, 'change_thongke'),
(27, 'Can delete thongke', 7, 'delete_thongke'),
(28, 'Can view thongke', 7, 'view_thongke'),
(29, 'Can add variation', 8, 'add_variation'),
(30, 'Can change variation', 8, 'change_variation'),
(31, 'Can delete variation', 8, 'delete_variation'),
(32, 'Can view variation', 8, 'view_variation'),
(33, 'Can add product detail', 9, 'add_productdetail'),
(34, 'Can change product detail', 9, 'change_productdetail'),
(35, 'Can delete product detail', 9, 'delete_productdetail'),
(36, 'Can view product detail', 9, 'view_productdetail'),
(37, 'Can add danhgiasp', 10, 'add_danhgiasp'),
(38, 'Can change danhgiasp', 10, 'change_danhgiasp'),
(39, 'Can delete danhgiasp', 10, 'delete_danhgiasp'),
(40, 'Can view danhgiasp', 10, 'view_danhgiasp'),
(41, 'Can add chitietkho', 11, 'add_chitietkho'),
(42, 'Can change chitietkho', 11, 'change_chitietkho'),
(43, 'Can delete chitietkho', 11, 'delete_chitietkho'),
(44, 'Can view chitietkho', 11, 'view_chitietkho'),
(45, 'Can add customers', 12, 'add_customers'),
(46, 'Can change customers', 12, 'change_customers'),
(47, 'Can delete customers', 12, 'delete_customers'),
(48, 'Can view customers', 12, 'view_customers'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add tinh', 14, 'add_tinh'),
(54, 'Can change tinh', 14, 'change_tinh'),
(55, 'Can delete tinh', 14, 'delete_tinh'),
(56, 'Can view tinh', 14, 'view_tinh'),
(57, 'Can add thanhtoan', 15, 'add_thanhtoan'),
(58, 'Can change thanhtoan', 15, 'change_thanhtoan'),
(59, 'Can delete thanhtoan', 15, 'delete_thanhtoan'),
(60, 'Can view thanhtoan', 15, 'view_thanhtoan'),
(61, 'Can add quan', 16, 'add_quan'),
(62, 'Can change quan', 16, 'change_quan'),
(63, 'Can delete quan', 16, 'delete_quan'),
(64, 'Can view quan', 16, 'view_quan'),
(65, 'Can add phuong', 17, 'add_phuong'),
(66, 'Can change phuong', 17, 'change_phuong'),
(67, 'Can delete phuong', 17, 'delete_phuong'),
(68, 'Can view phuong', 17, 'view_phuong'),
(69, 'Can add order sanpham', 18, 'add_ordersanpham'),
(70, 'Can change order sanpham', 18, 'change_ordersanpham'),
(71, 'Can delete order sanpham', 18, 'delete_ordersanpham'),
(72, 'Can view order sanpham', 18, 'view_ordersanpham'),
(73, 'Can add giaohang', 19, 'add_giaohang'),
(74, 'Can change giaohang', 19, 'change_giaohang'),
(75, 'Can delete giaohang', 19, 'delete_giaohang'),
(76, 'Can view giaohang', 19, 'view_giaohang'),
(77, 'Can add giohang', 20, 'add_giohang'),
(78, 'Can change giohang', 20, 'change_giohang'),
(79, 'Can delete giohang', 20, 'delete_giohang'),
(80, 'Can view giohang', 20, 'view_giohang'),
(81, 'Can add item_giohang', 21, 'add_item_giohang'),
(82, 'Can change item_giohang', 21, 'change_item_giohang'),
(83, 'Can delete item_giohang', 21, 'delete_item_giohang'),
(84, 'Can view item_giohang', 21, 'view_item_giohang'),
(85, 'Can add log entry', 22, 'add_logentry'),
(86, 'Can change log entry', 22, 'change_logentry'),
(87, 'Can delete log entry', 22, 'delete_logentry'),
(88, 'Can view log entry', 22, 'view_logentry'),
(89, 'Can add permission', 23, 'add_permission'),
(90, 'Can change permission', 23, 'change_permission'),
(91, 'Can delete permission', 23, 'delete_permission'),
(92, 'Can view permission', 23, 'view_permission'),
(93, 'Can add group', 24, 'add_group'),
(94, 'Can change group', 24, 'change_group'),
(95, 'Can delete group', 24, 'delete_group'),
(96, 'Can view group', 24, 'view_group'),
(97, 'Can add content type', 25, 'add_contenttype'),
(98, 'Can change content type', 25, 'change_contenttype'),
(99, 'Can delete content type', 25, 'delete_contenttype'),
(100, 'Can view content type', 25, 'view_contenttype'),
(101, 'Can add session', 26, 'add_session'),
(102, 'Can change session', 26, 'change_session'),
(103, 'Can delete session', 26, 'delete_session'),
(104, 'Can view session', 26, 'view_session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc_danhmuc`
--

CREATE TABLE `danhmuc_danhmuc` (
  `iddanhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(255) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc_danhmuc`
--

INSERT INTO `danhmuc_danhmuc` (`iddanhmuc`, `tendanhmuc`, `slug`) VALUES
(1, 'Thực Phẩm Xanh', 'thc-phm-xanh'),
(2, 'Thực Phẩm Tươi Sống', 'thc-phm-ti-sng'),
(3, 'Dầu Ăn Và Gia Vị', 'du-an-va-gia-v'),
(4, 'Bánh Kẹo Các Loại', 'banh-ko-cac-loi'),
(5, 'Nước Giải khát', 'nc-gii-khat'),
(6, 'Thực Phẩm Đông Lạnh', 'thc-phm-djong-lnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_giaohang`
--

CREATE TABLE `dathang_giaohang` (
  `id` bigint(20) NOT NULL,
  `thoigiandat` datetime(6) NOT NULL,
  `thoigiangiao` datetime(6) NOT NULL,
  `trangthai` varchar(30) NOT NULL,
  `nhanviengiao_id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dathang_giaohang`
--

INSERT INTO `dathang_giaohang` (`id`, `thoigiandat`, `thoigiangiao`, `trangthai`, `nhanviengiao_id`, `order_id`) VALUES
(1, '2022-01-10 15:26:16.000000', '2022-01-11 01:26:30.000000', 'Đang giao', 1, 2),
(2, '2022-01-10 15:27:09.000000', '2022-01-10 01:27:11.000000', 'Đã giao', 1, 1),
(3, '2022-01-10 15:34:59.000000', '2022-01-11 01:35:03.000000', 'Đã giao', 3, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_order`
--

CREATE TABLE `dathang_order` (
  `id` bigint(20) NOT NULL,
  `Thanhtoan` varchar(225) NOT NULL,
  `code` varchar(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dienthoai` varchar(15) NOT NULL,
  `diachi1` varchar(250) NOT NULL,
  `tinh` varchar(225) NOT NULL,
  `quan` varchar(225) NOT NULL,
  `tongtien` varchar(50) NOT NULL,
  `donhang` varchar(100) NOT NULL,
  `phiship` varchar(50) NOT NULL,
  `trangthai` varchar(20) NOT NULL,
  `dathanhtoan` tinyint(1) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `ghichu` varchar(250) NOT NULL,
  `thoigiandat` datetime(6) NOT NULL,
  `thoigiancapnhat` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dathang_order`
--

INSERT INTO `dathang_order` (`id`, `Thanhtoan`, `code`, `first_name`, `last_name`, `dienthoai`, `diachi1`, `tinh`, `quan`, `tongtien`, `donhang`, `phiship`, `trangthai`, `dathanhtoan`, `ip`, `ghichu`, `thoigiandat`, `thoigiancapnhat`, `user_id`) VALUES
(1, 'Thanh Toán Khi Nhận Hàng', 'WV7MQ', 'Lê', 'Tuấn', '0369950653', '28 Lưu Chí Hiếu, Tây Thanh', 'Điện Biên', 'Quận Tân Phú', '85000', '202201101', '0', 'Hoàn Tất', 1, '127.0.0.1', 'giao nhanh', '2022-01-10 15:20:31.291944', '2022-01-10 15:27:37.616513', 2),
(2, 'Thanh Toán Khi Nhận Hàng', 'BKVN6', 'Lê', 'Tuấn', '0369950653', '28 Lưu Chí Hiếu, Tây Thạnh', 'Thành phố Hồ Chí Minh', 'Quận Tân Phú', '152600', '202201102', '0', 'Hoàn Tất', 1, '127.0.0.1', 'nhanh nhé', '2022-01-10 15:22:14.901433', '2022-01-10 15:27:47.471243', 2),
(3, 'Thanh Toán Khi Nhận Hàng', 'WPX4V', 'Nguyễn', 'Dũng', '0876567864', '140 lê trọng tấn tây thạnh', 'Thành phố Hồ Chí Minh', 'Quận Tân Phú', '106800', '202201103', '0', 'Hoàn Tất', 1, '127.0.0.1', 'giao nhanh nè', '2022-01-10 15:34:25.575307', '2022-01-10 15:35:17.222297', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_ordersanpham`
--

CREATE TABLE `dathang_ordersanpham` (
  `id` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` double NOT NULL,
  `dadathang` varchar(30) NOT NULL,
  `thoigiangat` datetime(6) NOT NULL,
  `thoigiangiao` datetime(6) NOT NULL,
  `Order_id` bigint(20) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `variant_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dathang_ordersanpham`
--

INSERT INTO `dathang_ordersanpham` (`id`, `soluong`, `tongtien`, `dadathang`, `thoigiangat`, `thoigiangiao`, `Order_id`, `sanpham_id`, `variant_id`) VALUES
(1, 1, 85000, 'Chấp Nhận', '2022-01-10 15:20:31.507263', '2022-01-10 15:20:31.507263', 1, 1, NULL),
(2, 1, 85000, 'Chấp Nhận', '2022-01-10 15:20:31.776435', '2022-01-10 15:20:31.776435', 1, 9, NULL),
(3, 2, 152600, 'Chấp Nhận', '2022-01-10 15:22:15.050020', '2022-01-10 15:22:15.050020', 2, 6, NULL),
(4, 1, 152600, 'Chấp Nhận', '2022-01-10 15:22:15.110919', '2022-01-10 15:22:15.110919', 2, 11, NULL),
(5, 1, 152600, 'Chấp Nhận', '2022-01-10 15:22:15.127031', '2022-01-10 15:22:15.127031', 2, 9, NULL),
(6, 1, 106800, 'Chấp Nhận', '2022-01-10 15:34:26.091848', '2022-01-10 15:34:26.091848', 3, 8, NULL),
(7, 1, 106800, 'Chấp Nhận', '2022-01-10 15:34:26.207479', '2022-01-10 15:34:26.207479', 3, 12, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_phuong`
--

CREATE TABLE `dathang_phuong` (
  `id` bigint(20) NOT NULL,
  `tenphuong` varchar(255) NOT NULL,
  `thuoc` varchar(255) NOT NULL,
  `quan_id` bigint(20) DEFAULT NULL,
  `tinh_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_quan`
--

CREATE TABLE `dathang_quan` (
  `id` bigint(20) NOT NULL,
  `tenquan` varchar(255) NOT NULL,
  `thuoc` varchar(255) NOT NULL,
  `tinh_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_thanhtoan`
--

CREATE TABLE `dathang_thanhtoan` (
  `id` bigint(20) NOT NULL,
  `idthanhtoan` varchar(100) NOT NULL,
  `phươngthuctt` varchar(100) NOT NULL,
  `tongtien` varchar(100) NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `thoigiantt` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dathang_tinh`
--

CREATE TABLE `dathang_tinh` (
  `id` bigint(20) NOT NULL,
  `tentinh` varchar(255) NOT NULL,
  `matinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-12-30 14:58:23.834745', '1', '1,Thực Phẩm Xanh', 1, '[{\"added\": {}}]', 4, 1),
(2, '2021-12-30 14:58:32.497094', '2', '2,Thực Phẩm Tươi Sống', 1, '[{\"added\": {}}]', 4, 1),
(3, '2021-12-30 14:58:45.368430', '3', '3,Dầu Ăn Và Gia Vị', 1, '[{\"added\": {}}]', 4, 1),
(4, '2021-12-30 14:59:02.609210', '4', '4,Bánh Kẹo Các Loại', 1, '[{\"added\": {}}]', 4, 1),
(5, '2021-12-30 14:59:40.724706', '5', '5,Nước Giải khát', 1, '[{\"added\": {}}]', 4, 1),
(6, '2021-12-30 14:59:57.120429', '6', '6,Thực Phẩm Đông Lạnh', 1, '[{\"added\": {}}]', 4, 1),
(7, '2022-01-10 14:22:27.880481', '1', 'Bánh bông lan cuộn kem', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (1)\"}}]', 6, 1),
(8, '2022-01-10 14:29:32.579250', '2', 'Bánh bông lan cuộn kem vị socola', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (2)\"}}]', 6, 1),
(9, '2022-01-10 14:31:17.553338', '3', 'Bánh Bông lan hương dâu', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (3)\"}}]', 6, 1),
(10, '2022-01-10 14:33:07.565106', '4', 'Bánh bông lan solite vị bò sữa', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (4)\"}}]', 6, 1),
(11, '2022-01-10 14:35:10.034203', '5', 'Bánh Cracker lua mì 200g', 1, '[{\"added\": {}}]', 6, 1),
(12, '2022-01-10 14:40:03.852310', '6', 'Bánh Cracker phủ phô mai', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (5)\"}}]', 6, 1),
(13, '2022-01-10 14:42:58.027489', '7', 'Bánh quy pho mai nissin', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (6)\"}}]', 6, 1),
(14, '2022-01-10 14:49:44.518026', '8', 'Dầu ăn đậu nành happi 2L', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (7)\"}}]', 6, 1),
(15, '2022-01-10 14:52:10.096481', '9', 'Dầu ăn đậu nành happi 1L', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (8)\"}}]', 6, 1),
(16, '2022-01-10 14:55:46.505874', '10', 'Dầu Cooking nakydaco 1L', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (9)\"}}]', 6, 1),
(17, '2022-01-10 14:57:46.199628', '9', 'Dầu ăn đậu nành happi 1L', 2, '[{\"changed\": {\"fields\": [\"\\u0110\\u01a1n v\\u1ecb t\\u00ednh:\"]}}]', 6, 1),
(18, '2022-01-10 14:57:57.484455', '8', 'Dầu ăn đậu nành happi 2L', 2, '[{\"changed\": {\"fields\": [\"\\u0110\\u01a1n v\\u1ecb t\\u00ednh:\"]}}]', 6, 1),
(19, '2022-01-10 14:58:10.431967', '10', 'Dầu Cooking nakydaco 1L', 2, '[{\"changed\": {\"fields\": [\"\\u0110\\u01a1n v\\u1ecb t\\u00ednh:\"]}}]', 6, 1),
(20, '2022-01-10 15:01:11.643750', '11', 'Dầu thực vật Tường An cooking oil 250ml', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (10)\"}}]', 6, 1),
(21, '2022-01-10 15:04:12.137203', '12', 'Bột Tiêu Thiên Thành 50g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (11)\"}}]', 6, 1),
(22, '2022-01-10 15:06:10.954882', '13', 'Đường biên hòa saving 1kg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (12)\"}}]', 6, 1),
(23, '2022-01-10 15:08:52.744704', '14', 'Đường mía Toàn Phát 1kg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (13)\"}}]', 6, 1),
(24, '2022-01-10 15:11:02.688957', '15', 'Muối iot Bạc Liêu cao cấp 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (14)\"}}]', 6, 1),
(25, '2022-01-10 15:24:24.400109', '1', 'Nguyễn Gia Thuận', 1, '[{\"added\": {}}]', 12, 1),
(26, '2022-01-10 15:25:08.794771', '2', 'Nguyễn Trí Tín', 1, '[{\"added\": {}}]', 12, 1),
(27, '2022-01-10 15:25:36.966202', '3', 'Lê Hoàng', 1, '[{\"added\": {}}]', 12, 1),
(28, '2022-01-10 15:26:46.257833', '2', 'Tuấn', 2, '[{\"changed\": {\"fields\": [\"Tr\\u1ea1ng Th\\u00e1i\"]}}, {\"added\": {\"name\": \"giaohang\", \"object\": \"Nguy\\u1ec5n Gia Thu\\u1eadn\"}}]', 13, 1),
(29, '2022-01-10 15:27:37.970681', '1', 'Tuấn', 2, '[{\"changed\": {\"fields\": [\"Tr\\u1ea1ng Th\\u00e1i\", \"\\u0110\\u00e3 Thanh To\\u00e1n\"]}}, {\"added\": {\"name\": \"giaohang\", \"object\": \"Nguy\\u1ec5n Gia Thu\\u1eadn\"}}]', 13, 1),
(30, '2022-01-10 15:27:47.472243', '2', 'Tuấn', 2, '[{\"changed\": {\"fields\": [\"Tr\\u1ea1ng Th\\u00e1i\", \"\\u0110\\u00e3 Thanh To\\u00e1n\"]}}]', 13, 1),
(31, '2022-01-10 15:35:17.366554', '3', 'Dũng', 2, '[{\"changed\": {\"fields\": [\"Tr\\u1ea1ng Th\\u00e1i\", \"\\u0110\\u00e3 Thanh To\\u00e1n\"]}}, {\"added\": {\"name\": \"giaohang\", \"object\": \"L\\u00ea Ho\\u00e0ng\"}}]', 13, 1),
(32, '2022-01-10 15:36:17.327111', '1', 'Kho 1', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"chitietkho\", \"object\": \"Kho 1,B\\u00e1nh b\\u00f4ng lan cu\\u1ed9n kem\"}}]', 5, 1),
(33, '2022-01-10 15:38:40.668876', '1', 'Kho 1', 2, '[{\"added\": {\"name\": \"chitietkho\", \"object\": \"Kho 1,B\\u00e1nh b\\u00f4ng lan cu\\u1ed9n kem v\\u1ecb socola\"}}]', 5, 1),
(34, '2022-01-10 15:43:09.905406', '16', 'Bạc hà bó 200g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (15)\"}}]', 6, 1),
(35, '2022-01-10 15:43:46.866883', '1', 'Kho 1', 2, '[]', 5, 1),
(36, '2022-01-10 15:58:08.254657', '17', 'Bắp cải trắng túi 1kg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (16)\"}}]', 6, 1),
(37, '2022-01-10 16:00:54.852685', '18', 'bí đỏ hồ lô túi 700g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (17)\"}}]', 6, 1),
(38, '2022-01-10 16:03:01.648822', '19', 'Cà rốt đà lạt túi 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (18)\"}}]', 6, 1),
(39, '2022-01-10 16:05:37.056939', '20', 'Cà Chua túi 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (19)\"}}]', 6, 1),
(40, '2022-01-10 16:42:34.870617', '21', 'Cải bẹ xanh', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (20)\"}}]', 6, 1),
(41, '2022-01-10 16:46:07.549258', '22', 'Me chua', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (21)\"}}]', 6, 1),
(42, '2022-01-10 16:48:02.903325', '23', 'Củ cải trắng túi 1kg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (22)\"}}]', 6, 1),
(43, '2022-01-10 16:50:09.836551', '24', 'Ớt hiểm 50g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (23)\"}}]', 6, 1),
(44, '2022-01-10 16:52:34.830765', '25', 'Khoai lang Nhật 1kg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (24)\"}}]', 6, 1),
(45, '2022-01-10 16:57:01.031947', '26', 'Bắp cải thảo 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (25)\"}}]', 6, 1),
(46, '2022-01-10 16:59:00.113504', '27', 'Cải ngọt 4kfarm 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (26)\"}}]', 6, 1),
(47, '2022-01-10 17:01:15.270488', '28', 'Mướp hương túi 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (27)\"}}]', 6, 1),
(48, '2022-01-10 17:03:33.786230', '29', 'Đậu cô ve 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (28)\"}}]', 6, 1),
(49, '2022-01-10 17:05:46.295565', '30', 'Bắp giò heo nhập khẩu 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (29)\"}}]', 6, 1),
(50, '2022-01-10 17:08:10.490175', '31', 'Ba rọi heo C.P 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (30)\"}}]', 6, 1),
(51, '2022-01-10 17:11:43.735620', '32', 'Cánh gà giữa nhập khẩu đông lạnh 1kg', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (31)\"}}]', 6, 1),
(52, '2022-01-10 17:14:41.082651', '33', 'Chân gà vỉ 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (32)\"}}]', 6, 1),
(53, '2022-01-10 17:16:39.238847', '34', 'ức gà tươi phi lê 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (33)\"}}]', 6, 1),
(54, '2022-01-10 17:22:24.875307', '35', 'Bò Viên C.P gói 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (34)\"}}]', 6, 1),
(55, '2022-01-10 17:24:13.052434', '36', 'Cá viên Hoa Doanh gói 500g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (35)\"}}]', 6, 1),
(56, '2022-01-10 17:26:34.924327', '37', 'Xúc xích cocktail gói 200g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (36)\"}}]', 6, 1),
(57, '2022-01-10 17:29:00.059451', '38', 'Ca hố cắt khúc mama food 200g', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (37)\"}}]', 6, 1),
(58, '2022-01-10 17:37:43.475318', '39', 'Nước bù khoáng revieve chanh muối 390ml', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (38)\"}}]', 6, 1),
(59, '2022-01-10 17:39:37.397584', '40', '6 chai nước 7up 390ml', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"product detail\", \"object\": \"productDetail object (39)\"}}]', 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'accounts', 'account'),
(2, 'accounts', 'phanhoi'),
(3, 'accounts', 'traloiphanhoi'),
(22, 'admin', 'logentry'),
(24, 'auth', 'group'),
(23, 'auth', 'permission'),
(25, 'contenttypes', 'contenttype'),
(4, 'danhmuc', 'danhmuc'),
(12, 'dathang', 'customers'),
(19, 'dathang', 'giaohang'),
(13, 'dathang', 'order'),
(18, 'dathang', 'ordersanpham'),
(17, 'dathang', 'phuong'),
(16, 'dathang', 'quan'),
(15, 'dathang', 'thanhtoan'),
(14, 'dathang', 'tinh'),
(20, 'giohangs', 'giohang'),
(21, 'giohangs', 'item_giohang'),
(11, 'sanpham', 'chitietkho'),
(10, 'sanpham', 'danhgiasp'),
(5, 'sanpham', 'khohang'),
(9, 'sanpham', 'productdetail'),
(6, 'sanpham', 'sanpham'),
(7, 'sanpham', 'thongke'),
(8, 'sanpham', 'variation'),
(26, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2021-12-30 14:36:37.874591'),
(2, 'accounts', '0002_auto_20211225_2302', '2021-12-30 14:36:38.509149'),
(3, 'accounts', '0003_traloiphanhoi_hoatdong', '2021-12-30 14:36:38.682388'),
(4, 'contenttypes', '0001_initial', '2021-12-30 14:36:38.952656'),
(5, 'admin', '0001_initial', '2021-12-30 14:36:40.546699'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-12-30 14:36:40.671766'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-30 14:36:40.718820'),
(8, 'contenttypes', '0002_remove_content_type_name', '2021-12-30 14:36:41.173913'),
(9, 'auth', '0001_initial', '2021-12-30 14:36:44.153794'),
(10, 'auth', '0002_alter_permission_name_max_length', '2021-12-30 14:36:45.265618'),
(11, 'auth', '0003_alter_user_email_max_length', '2021-12-30 14:36:45.303446'),
(12, 'auth', '0004_alter_user_username_opts', '2021-12-30 14:36:45.355566'),
(13, 'auth', '0005_alter_user_last_login_null', '2021-12-30 14:36:45.759209'),
(14, 'auth', '0006_require_contenttypes_0002', '2021-12-30 14:36:45.785181'),
(15, 'auth', '0007_alter_validators_add_error_messages', '2021-12-30 14:36:45.818167'),
(16, 'auth', '0008_alter_user_username_max_length', '2021-12-30 14:36:45.853793'),
(17, 'auth', '0009_alter_user_last_name_max_length', '2021-12-30 14:36:45.880953'),
(18, 'auth', '0010_alter_group_name_max_length', '2021-12-30 14:36:45.960497'),
(19, 'auth', '0011_update_proxy_permissions', '2021-12-30 14:36:46.005629'),
(20, 'auth', '0012_alter_user_first_name_max_length', '2021-12-30 14:36:46.063419'),
(21, 'danhmuc', '0001_initial', '2021-12-30 14:36:46.229090'),
(22, 'sanpham', '0001_initial', '2021-12-30 14:36:52.636801'),
(23, 'dathang', '0001_initial', '2021-12-30 14:37:02.810981'),
(24, 'dathang', '0002_remove_ordersanpham_user', '2021-12-30 14:37:03.367575'),
(25, 'giohangs', '0001_initial', '2021-12-30 14:37:08.810303'),
(26, 'sessions', '0001_initial', '2021-12-30 14:37:09.327364'),
(27, 'accounts', '0004_remove_traloiphanhoi_dienthoai_and_more', '2022-01-10 14:26:06.108141'),
(28, 'sanpham', '0002_alter_sanpham_donvitinh', '2022-01-10 14:26:06.147132'),
(29, 'sanpham', '0003_alter_sanpham_donvitinh', '2022-01-10 14:57:21.164986'),
(30, 'sanpham', '0004_alter_chitietkho_tinhtrang', '2022-01-10 15:37:45.082003'),
(31, 'sanpham', '0005_alter_sanpham_donvitinh', '2022-01-10 17:19:07.545230');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9wf7u5rwxjpslk6qf1lnj3xcwcliivq8', '.eJxVjEEOwiAQRe_C2hAYChSX7j0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIstDj9boT8yG0H6Y7tNkue27pMJHdFHrTL65zy83K4fwcVe_3WpDRw4CGwRVDWBB4LBe2yL2A9gRlQsULvnGZjc_JjJmsYtIcAXEC8P9OjN2g:1n6PON:poWa59PgfKhZiuWvXChLuul-0gDLbgd-n1KHsuxBR4k', '2022-01-23 04:01:15.530793'),
('eoyszsyyiuyydaupvqed98kzfsdbtiqv', '.eJxVjEEOwiAQRe_C2hAYChSX7j0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIstDj9boT8yG0H6Y7tNkue27pMJHdFHrTL65zy83K4fwcVe_3WpDRw4CGwRVDWBB4LBe2yL2A9gRlQsULvnGZjc_JjJmsYtIcAXEC8P9OjN2g:1n6wh4:CElOH3oU3LhFZWP28YzcC1YuWJ4JcOOlkJJ43jnNeds', '2022-01-24 15:34:46.222910'),
('ginw21rvdodrdrt2i5kjhr8dplygbq6v', '.eJxVjEEOwiAQRe_C2hAYChSX7j0DmRlAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xSuIstDj9boT8yG0H6Y7tNkue27pMJHdFHrTL65zy83K4fwcVe_3WpDRw4CGwRVDWBB4LBe2yL2A9gRlQsULvnGZjc_JjJmsYtIcAXEC8P9OjN2g:1n2wsS:CCbec6a5FJpN0PnhryLAMvN8ioBwiG4TBa34gBAuiVU', '2022-01-13 14:58:00.814633');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohangs_giohang`
--

CREATE TABLE `giohangs_giohang` (
  `id` bigint(20) NOT NULL,
  `idgiohang` varchar(250) NOT NULL,
  `ngaythem` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giohangs_giohang`
--

INSERT INTO `giohangs_giohang` (`id`, `idgiohang`, `ngaythem`) VALUES
(1, 'mi4wwd9le3ccx5n5r6pcmbakll8jxsky', '2022-01-10 14:43:15.386980'),
(2, 'hb0ges7xrbwuwz3eov7dxvm9tfvqz6k6', '2022-01-10 15:19:19.334118'),
(3, 'ea589vbehb42r91a0d0fngnvgffk90yp', '2022-01-10 15:33:26.251610'),
(4, 'eoyszsyyiuyydaupvqed98kzfsdbtiqv', '2022-01-10 15:52:24.746574');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohangs_item_giohang`
--

CREATE TABLE `giohangs_item_giohang` (
  `id` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hoatdong` tinyint(1) NOT NULL,
  `giohang_id` bigint(20) DEFAULT NULL,
  `sanpham_id` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohangs_item_giohang_variant`
--

CREATE TABLE `giohangs_item_giohang_variant` (
  `id` bigint(20) NOT NULL,
  `item_giohang_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_chitietkho`
--

CREATE TABLE `sanpham_chitietkho` (
  `id` int(11) NOT NULL,
  `soluongsp` int(11) NOT NULL,
  `tinhtrang` varchar(500) NOT NULL,
  `khohang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham_chitietkho`
--

INSERT INTO `sanpham_chitietkho` (`id`, `soluongsp`, `tinhtrang`, `khohang_id`, `sanpham_id`) VALUES
(1, 10, 'sản phẩm tồn kho', 1, 1),
(2, 10, 'Sản phẩm tồn kho', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_danhgiasp`
--

CREATE TABLE `sanpham_danhgiasp` (
  `id` bigint(20) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `noidung` longtext NOT NULL,
  `xephang` double NOT NULL,
  `ip` varchar(20) NOT NULL,
  `trangthai` tinyint(1) NOT NULL,
  `thoigiantao` datetime(6) NOT NULL,
  `thoigiancn` datetime(6) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_khohang`
--

CREATE TABLE `sanpham_khohang` (
  `idkhohang` int(11) NOT NULL,
  `tenkho` varchar(255) NOT NULL,
  `diachikho` varchar(255) NOT NULL,
  `trangthai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham_khohang`
--

INSERT INTO `sanpham_khohang` (`idkhohang`, `tenkho`, `diachikho`, `trangthai`) VALUES
(1, 'Kho 1', '28 Lưu Chí Hiếu, Tây Thạnh, Tân phú', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_productdetail`
--

CREATE TABLE `sanpham_productdetail` (
  `iddetail` int(11) NOT NULL,
  `thongtin` longtext NOT NULL,
  `congdung` longtext NOT NULL,
  `sudung` longtext NOT NULL,
  `baoquan` longtext NOT NULL,
  `idsanpham_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham_productdetail`
--

INSERT INTO `sanpham_productdetail` (`iddetail`, `thongtin`, `congdung`, `sudung`, `baoquan`, `idsanpham_id`) VALUES
(1, 'Lớp bánh bông lan thơm, béo mềm mịn hấp dẫn được cuộn một lớp kem vị lá dứa béo ngậy hào quyện với nhau kích thích vô cùng. Bánh bông lan cuộn kem vị lá dứa Solite hộp 288g tiện lợi cho gia đình sử dụng.', '460kcal/100g', 'ăn liền khi mở gói.', 'bảo quản nơi thoáng mát, tránh ánh nắng mặt trời.', 1),
(2, 'Sản xuất tại Việt Nam', 'Thành phần có trong bánh giúp cung cấp nguồn năng lượng, các Vitamin cần thiết cho cơ thể. Sản phẩm thích hợp cho bữa sáng hay bữa ăn nhẹ sau giờ làm việc, học tập kéo dài.', 'Ăn liền khi mở hộp', 'bảo quản nơi thoáng mát, tránh ánh nắng mặt trời.', 2),
(3, 'Sản xuất tại Việt Nam', 'Thành phần có trong bánh giúp cung cấp nguồn năng lượng, các Vitamin cần thiết cho cơ thể. Sản phẩm thích hợp cho bữa sáng hay bữa ăn nhẹ sau giờ làm việc, học tập kéo dài.', 'Ăn liền khi bóc hộp', 'Nơi thoáng mát, tránh ánh nắng mặt trời', 3),
(4, 'Sản xuất tại Việt Nam', 'Thành phần có trong bánh giúp cung cấp nguồn năng lượng, các Vitamin cần thiết cho cơ thể. Sản phẩm thích hợp cho bữa sáng hay bữa ăn nhẹ sau giờ làm việc, học tập kéo dài.', 'Ăn liền khi bóc hộp', 'Nơi thoáng mát, tránh ánh nắng mặt trời', 4),
(5, 'Thương hiệu : Lurich (Việt Nam)', '464kcal/100g', 'Ăn liền khi bóc hộp', 'Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', 6),
(6, 'Thương hiệu Nissin (Indonesia)\r\nNơi sản xuất Indonesia', 'Năng lượng 150kcal/30g', 'Ăn liền khi bóc vỏ', 'Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', 7),
(7, 'có nguồn gốc 100% từ thực vật, phối hợp hoàn hảo giữa dầu olein, dầu hạt cải và dầu nành thích hợp cho mọi hoạt động chế biến thực phẩm từ chiên, xào, ướp các món mặn cho đến món chay', 'giàu vitamin A, E và Omega 3, 6, 9 tự nhiên, giúp bảo vệ gia đình khỏi các bệnh về tim mạch, huyết áp, giảm nguy cơ đột quỵ.', 'Chiên, xào, trộn salad, làm sốt', 'Nơi thoáng mát, nên dùng trong 1 tháng sau khi mở nắp', 8),
(8, 'Thương hiệu Happi Soya (Việt Nam)', 'Giàu Omega 3, 6, 9 sẽ giúp làm giảm nguy cơ tăng Cholesterol trong máu, tăng cường hệ thống miễn dịch, cho bạn nguồn dinh dưỡng tuyệt vời và một trái tim khoẻ mạnh.', 'Chiên, xào, trộn salad, làm sốt', 'Nơi thoáng mát, nên dùng trong 1 tháng sau khi mở nắp', 9),
(9, 'Là sản phẩm truyền thống của công ty, không chứa cholesterol', 'Dầu Palm olein, Dầu Nành, dầu phụng, dầu Canola tốt cho sức khỏe', 'Dùng để chiên, xào, làm bánh, sốt trứng hoặc nấu các món chay', 'Dùng trong một tráng sau khi mở nắp', 10),
(10, 'Dầu olein, dầu đậu nành, dầu hạt cải tinh luyện, chất nhũ hoá, vitamin A palmitat', 'Thực phẩm tăng cường vi chất dinh dưỡng, thích hợp cho người ăn chay', 'Chiên, xào, trộn salad, làm bánh, làm sốt', 'Nơi thoáng mát, nên dùng trong 1 tháng sau khi mở nắp', 11),
(11, 'Thành phần Tiêu đen 100%', 'Giúp món ăn đậm vị, thơm nồng.', 'Ướp thực phẩm, nêm món xào, kho, canh', 'Nơi khô ráo, thoáng mát, tránh ánh nắng mặt trời', 12),
(12, 'Thương hiệu Biên Hòa (Việt Nam)', 'Bổ sung vi chất tốt cho sức khỏe', 'Pha chế, nấu ăn', 'Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', 13),
(13, 'Thương hiệu Toàn Phát (Việt Nam)', 'Với chiết xuất từ mía tốt cho sức khỏe, sản phẩm có hạt đường nhỏ màu trắng tinh khiết, không chứa chất độc hại đảm bảo an toàn sức khỏe cho người sử dụng', 'Pha chế, nấu ăn', 'Để nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp', 14),
(14, 'Thương hiệu Bạc Liêu (Việt Nam)', 'Dùng cho phòng bệnh, chữa bệnh bướu cổ và các rối loạn do thiếu hụt i-ốt', 'Như muối thường, sử dụng trong chế biến và bảo quản thực phẩm', 'Bảo quản nơi khô, mát và tránh ánh nắng mặt trời', 15),
(15, 'Môn to, dọc mùng, ráy dọc mùng là những tên gọi khác của môn bạc hà, một loại cây rau gia vị không thể thiếu trong những bát canh chua đậm vị, thơm ngon', 'Các món ăn từ dọc mùng rất thích hợp đối với bệnh nhân béo phì, tăng huyết áp, đái tháo đường, gút.', 'Ăn sống, nấu chín tùy theo món bạn chế biến', 'bảo quản nơi thoáng mát, tránh ánh nắng mặt trời', 16),
(16, 'Xuất xứ: Công Ty TNHH Đà Lạt G.A.P', 'bắp cải vị ngọt tính hàn, không độc, có tác dụng hoạt huyết, cầm máu, lợi tiểu, làm mát phổi, thanh nhiệt, trừ đàm thấp, giải độc…', 'Dùng để chế biến các món ăn', 'Bảo quản mát, tránh ánh nắng trực tiếp', 17),
(17, 'Còn gọi là bí đỏ hạt đậu, đây là giống bí có ruột rất đặc, ít hả ăn dẻo và ngọt. Bí hồ lô chứa nhiều chất dinh dưỡng và mang lại nhiều lợi ích cho sức khoẻ', 'Bí hồ lô rất giàu hàm lượng beta caroten tiền chất của vitamin A, chứa nhiều nước đến 91%, giàu chất đạm, chất béo và chất bột đường cũng như cung cấp năng lượng nhiều cho cơ thể.', 'Dùng chế biến thành các món ăn', 'Bảo quản mát, tránh ánh nắng trực tiếp', 18),
(18, '200g cà rốt; cửa hàng sẽ nhập rau tươi mới hàng ngày.', 'Cà rốt vị ngọt nhẹ, tính hơi ấm, có tác dụng hạ khí bổ trung, yên ngũ tạng, tăng tiêu hoá, làm khoan khoái trong bụng.', 'Gỏi cà rốt tai heo, trứng xào cà rốt, canh xương cà rốt khoai tây, bò kho cà rốt, nước ép cà rốt...', 'Dễ dàng bảo quản trong nhiệt độ bình thường.', 19),
(19, 'Cà chua được để trong túi giấy bảo vệ môi trường; cửa hàng sẽ nhập rau tươi mới hàng ngày.', 'Cà chua chứa nhiều thành phần dinh dưỡng có ích cho sức khỏe và hệ thống miễn dịch. Thành phần dinh dưỡng của cà chua có thể bảo vệ cơ thể khỏi nhiều căn bệnh nguy hiểm bao gồm bệnh tim, tiểu đường và ung thư.', 'Cà chua sạch có thể dùng để ăn trực tiếp, hoặc chế biến thành các món đơn giản như sau: đậu phụ nhồi thịt xốt cà chua, cà chua xào súp lơ, cà chua xốt mỳ Ý, nước ép cà chua..', 'Có thể dễ dàng bảo quản trong ngăn mát tủ lạnh', 20),
(20, 'Cải Bẹ Xanh Lá To rất giàu các vitamin A, B, C, K, chất xơ, carotene, abumin, axit nicotinic… Ngoài ra trong hạt cải Bẹ Xanh còn chứa tinh dầu béo với nồng độ 30-38%, tinh dầu 2-9% và chất nhầy', 'Theo đông y, Cải Bẹ Xanh Lá có vị cay, ôn hòa có công dụng trừ phong, tiêu đờm, lợi khí. Hạt cải bẹ xanh lá to có vị cay đắng, tính ấm làm tiêu đờm, an thần, tiêu thũng và giảm đau.', 'Chế biến món ăn', 'bảo quản nơi thoáng mát', 21),
(21, 'Me chua thanh nhẹ nhàng mùi vị của me, ngọt mà không gắt', 'Khi không có nhiều thời gian dành cho việc nấu nướng, me chua chỉ mất từ 2 - 3 phút trộn đều là bạn đã có ngay một món ăn hấp dẫn cho cả gia đình.', 'Đây cũng là thứ nước chấm siêu phẩm, ngoài dùng để nấu các món sốt me, còn dùng để chấm các món thịt chiên, hải sản nướng, nấu canh, khơi dậy vị chua trong từng món ăn.', 'để nơi thoáng mát, tránh ánh nắng mặt trời', 22),
(22, 'Túi 1kg ~ 3 củ; cửa hàng sẽ nhập rau tươi mới hàng ngày.', 'Củ cải trắng có kết cấu giòn và giống với cà rốt. Hương vị nhẹ hơn so với các loại củ cải khác và được mô tả là hơi ngọt và cay.', 'Củ cải trắng ngâm tương, củ cải trắng xào trứng, củ cải trắng muối chua ngọt, củ cải trắng luộc chấm muối vừng, củ cải trắng kho thịt ba chỉ, canh củ cải trắng thịt băm,...', 'Bọc kín bằng túi trước khi để rau trong ngăn mát.', 23),
(23, 'Loại sản phẩm Ớt hiểm', 'ớt còn công dụng tuyệt vời trong việc chăm sóc sức khỏe, sắc đẹp như: Làm chậm quá trình lão hóa, chống cảm cúm, chống bệnh tiểu đường,...', 'Dùng làm gia vị', 'nơi khô ráo', 24),
(24, 'Khoai lang Nhật Đà Lạt có hình dáng thon, dài. Vỏ màu tím, ruột vàng, hương vị dịu nhẹ, bùi, chiếm được cảm tình nhiều người.', 'là loại thực phẩm ngoài giàu chất xơ còn dồi dào vitamin A, B6, C…rất tốt cho cơ thể. Bên cạnh đó, khoai lang Nhật có vitamin chống nhiễm mỡ rất hiệu quả.', 'Dùng chế biến món ăn hoặc nướng, luộc', 'nơi khô ráo', 25),
(25, 'Cải thảo là một loại rau gần như là phổ biến đối với tất cả mọi người. Bắp cải thảo còn có nhiều tên gọi khác như: cải bao, cải cuốn, bắp cải tây,..', 'Cải thảo là một loại rau tốt cho sức khoẻ, một số lợi ích có thể kể đến như: giúp lợi tiểu, ngăn ngừa ung thư, chữa viêm họng, giảm chứng giảm trí nhớ,....', 'Chế biến các món ăn', 'nơi khô ráo', 26),
(26, 'Cải ngọt 4K Farm là một trong những loại rau cải không thể thiếu trong bữa ăn của mỗi gia đình Việt.', 'phòng ngừa ung thư, hỗ trợ trị bệnh gout, trĩ, xơ gan, tăng sức đề kháng và thanh lọc cơ thể.', 'Chế biến các món ăn', 'nơi khô ráo', 27),
(27, 'Mướp hương tươi ngon gói 500g là một loại quả thường xuất hiện trong mâm cơm của mỗi gia đình bởi vì hương vị thơm ngon, dễ ăn vô cùng, thích hợp cho trẻ em cho đến người lớn tuổi.', 'có tác dụng chống viêm, chống nếp nhăn và hỗ trợ điều trị các chứng ho, đau họng, đau răng, đau lưng, đau bụng kinh hoặc viêm bàng quang.', 'Chế biến món ăn', 'nơi khô ráo', 28),
(28, '-Đậu ve có dáng dài 15-20cm, màu xanh nhạt đến đậm, vị giòn và ngọt tự nhiên, tính mát.', 'Có hàm lượng cao các chất dinh dưỡng như Magie, Sắt, Kala, Canxi, Natri và Protein, tốt cho hệ tiêu hóa và hệ xương khớp, có lợi cho tim mạch...', 'Dùng nấu món luộc, xào, kho...', 'Bảo quản trong ngăn mát tủ lạnh.', 29),
(29, 'Bắp giò heo nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', 'Bắp giò heo là nguyên liệu quen thuộc của mọi nhà, giàu chất dinh dưỡng, đặc biệt là collagen, rất tốt cho sức khoẻ.', 'Chế biến món ăn', 'ngăn đá tủ lạnh', 30),
(30, 'Ba rọi heo của thương hiệu CP đạt các tiêu chuẩn về an toàn toàn thực phẩm, đảm bảo chất lượng, độ tươi ngon.', 'Theo nghiên cứu, thịt ba rọi là phần có đầy đủ các loại dinh dưỡng cho sức khoẻ, cứ 100gr thịt ba chỉ heo chứ 16.5 gam protein, 21.5 gam mỡ, 9 mg can xi, 178mg phosphor, 1.5 mg sắt, 1.91 mg kẽm, 285 mg kali, 55 mg natri, vitamin A... đây được xem là những chất cần thiết cho sức khoẻ.', 'Nấu chín trước khi sử dụng', 'Thời hạn sử dụng 3 ngày kể từ ngày sản xuất, bảo quản ở nhiệt độ 0 - 4 độ C', 31),
(31, 'Cánh gà giữa nhập khẩu đông lạnh với phương pháp cấp đông hiện đại, giúp lưu giữ hương vị tự nhiên, mang đến những món ăn ngon cho gia đình.', 'giàu chất dinh dưỡng tốt cho sưc khỏe', 'Nấu chính trước khi sử dụng', 'Nên bảo quản thịt ở ngăn đông đá là -18°C đến 25°C và ngăn mát là 1 – 4°C.', 32),
(32, 'Chân gà của thương hiệu CP đạt các tiêu chuẩn về an toàn thực phẩm, đảm bảo về chất lượng, độ tươi và ngon, xuất xứ rõ ràng.', 'Có nhiều dưỡng chất tốt cho cơ thể', 'Nấu chín trước khi sử dụng', 'Thời hạn sử dụng 4 ngày kể từ ngày sản xuất, bảo quản ở nhiệt độ 0 - 4 độ C', 33),
(33, 'Loại sản phẩm Ức gà tươi phi lê', 'Có nhiều dưỡng chất tốt cho cơ thể', 'nấu chín trước khi sử dụng', 'Thời hạn sử dụng 4 ngày kể từ ngày sản xuất, bảo quản ở nhiệt độ 0 - 4 độ C', 34),
(34, 'Là sản phẩm cao cấp đến từ thương hiệu CP, vô cùng quen thuộc với người dùng. Bò viên C.P gói 500g được chế biến từ thành phần cá tươi, không chất bảo quản, an toàn cho sức khỏe người sử dụng', 'có hương vị thơm ngon, dễ ăn và là một trong những món khoái khẩu của giới trẻ hiện nay.', 'Chiên, nướng, hấp, nấu lẩu', 'Bảo quản ngăn mát hoặc ngăn đông tủ lạnh', 35),
(35, 'Cá viên Hoa Doanh luôn đảm bảo sử dụng nguyên liệu tươi ngon, an toàn cho sức khoẻ. Cá viên Hoa Doanh gói 500g với đặc điểm dai mềm, thơm ngon với hương vị chả cá đặc trưng.', 'Có nhiều chất tốt cho cơ thể', 'Chiên, xào, nấu canh, lẩu, súp,...', 'Nhiệt độ -18 độ C hoặc trong ngăn đá tủ lạnh', 36),
(36, 'Loại sản phẩm Xúc xích cocktail', 'kết hợp với các loại gia vị quen thuộc, tạo nên món xúc xích tươi với hương vị thơm ngon, dai dai khó cưỡng.', 'Chiên, hấp, luộc, làm nóng bằng lò vi sóng hoặc dùng làm nguyên liệu chế biến các món ăn khác.', 'Bảo quản ở nhiệt độ 0 - 5 độ C', 37),
(37, 'Loại sản phẩm Cá bống đục đông lạnh', 'Cá lớp thịt trắng và chắc, giàu đạm và có nhiều dinh dưỡng, không xương dăm, phù hợp cho mọi lứa tuổi.', 'có thể chế biến nhiều món ăn ngon khác nhau như kho, nấu canh chua, chiên sả, nướng,…', 'Bảo quản từ -18 độ C hoặc ngăn đá tủ lạnh', 38),
(38, 'Nước bão hòa CO2, đường sucrose và dextrose, chất điều chỉnh độ axit, chất điện giải, chất nhũ hóa, chất bảo quản, chất tạo ngọt, hương chanh muối giống tự nhiên, chất điện giải Natri, Kali, vitamin B3, B6, B12.', 'Nước khoáng tác dụng bù khoáng, giảm mất nước, hỗ trợ cung cấp năng lượng và thuận tiện mang theo bên mình cho mọi chuyến đi', 'Lắc nhẹ trước khi uống, dùng ngay sau khi mở nắp. Ngon hơn khi uống lạnh.', 'Để nơi khô ráo, thoáng mát, tránh ánh sáng trực tiếp hoặc nơi có nhiệt độ cao', 39),
(39, 'Từ thương hiệu nước ngọt 7Up uy tín được ưa chuộng. 6 chai nước ngọt 7 Up hương chanh 390ml có vị ngọt vừa phải và hương vị gas the mát', 'giúp bạn xua tan nhanh chóng cơn khát, giảm cảm giác ngấy, kích thích vị giác giúp ăn ngon hơn, cung cấp năng lượng cho tinh thần tươi vui mỗi ngày', 'Ngon hơn khi uống lạnh', 'Để nơi khô ráo, thoáng mát tránh ánh nắng trực tiếp.', 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_sanpham`
--

CREATE TABLE `sanpham_sanpham` (
  `idsanpham` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giaban` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `donvitinh` varchar(100) NOT NULL,
  `conhang` tinyint(1) NOT NULL,
  `ngaytao` datetime(6) NOT NULL,
  `ngaysuadoi` datetime(6) NOT NULL,
  `iddanhmuc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham_sanpham`
--

INSERT INTO `sanpham_sanpham` (`idsanpham`, `tensanpham`, `giaban`, `hinhanh`, `soluong`, `donvitinh`, `conhang`, `ngaytao`, `ngaysuadoi`, `iddanhmuc_id`) VALUES
(1, 'Bánh bông lan cuộn kem', 45000, 'photos/sanpham/banh-bong-lan-cuon-kem-vi-la-dua-solite-hop-288g-16-goi-201908211348135792.jpg', 15, 'None', 1, '2022-01-10 14:22:27.838409', '2022-01-10 14:22:27.838409', 4),
(2, 'Bánh bông lan cuộn kem vị socola', 40000, 'photos/sanpham/banh-bong-lan-cuon-kem-vi-socola-solite-hop-360g-20-goi-20190821142738953_8DsDby3.jpg', 15, 'Hộp', 1, '2022-01-10 14:29:32.551272', '2022-01-10 14:29:32.551272', 4),
(3, 'Bánh Bông lan hương dâu', 40000, 'photos/sanpham/banh-bong-lan-huong-dau-tipo-hop-360g-202006250902469966_Nbpc8gf.jpg', 15, 'Hộp', 1, '2022-01-10 14:31:17.551339', '2022-01-10 14:31:17.551339', 4),
(4, 'Bánh bông lan solite vị bò sữa', 40000, 'photos/sanpham/banh-bong-lan-solite-kem-vi-bo-sua-360g-20-cai-201903151557104307.jpg', 15, 'Hộp', 1, '2022-01-10 14:33:07.032108', '2022-01-10 14:33:07.032108', 4),
(5, 'Bánh Cracker lua mì 200g', 28000, 'photos/sanpham/banh-cracker-lua-mi-afc-dinh-duong-hop-200g-201912151640301991.jpg', 15, 'Hộp', 1, '2022-01-10 14:35:10.032208', '2022-01-10 14:35:10.032208', 4),
(6, 'Bánh Cracker phủ phô mai', 49500, 'photos/sanpham/banh-cracker-phu-pho-mai-lurich-hop-304g-202002031313107986.jpg', 15, 'Hộp', 1, '2022-01-10 14:40:03.816342', '2022-01-10 14:40:03.816342', 4),
(7, 'Bánh quy pho mai nissin', 34000, 'photos/sanpham/banh-quy-pho-mai-nissin-sagu-keju-goi-110g-201912201419420911.jpg', 10, 'Hộp', 1, '2022-01-10 14:42:58.023382', '2022-01-10 14:42:58.023382', 4),
(8, 'Dầu ăn đậu nành happi 2L', 88500, 'photos/sanpham/dau-an-dau-dau-nanh-happi-soya-2l-2-org_PyUuhZ4.jpg', 14, 'Chai', 1, '2022-01-10 14:49:44.385932', '2022-01-10 14:57:57.483458', 3),
(9, 'Dầu ăn đậu nành happi 1L', 40000, 'photos/sanpham/dau-an-happi-koki-1l-2-org_1.jpg', 20, 'Chai', 1, '2022-01-10 14:52:10.035548', '2022-01-10 14:57:46.197234', 3),
(10, 'Dầu Cooking nakydaco 1L', 41000, 'photos/sanpham/dau-cooking-nakydaco-1l-t12-2-org.jpg', 20, 'Chai', 1, '2022-01-10 14:55:46.502877', '2022-01-10 14:58:10.428970', 3),
(11, 'Dầu thực vật Tường An cooking oil 250ml', 13600, 'photos/sanpham/dau-thuc-vat-tuong-an-cooking-oil-chai-250ml-202105201318467090.jpg', 20, 'Chai', 1, '2022-01-10 15:01:11.540839', '2022-01-10 15:01:11.540839', 3),
(12, 'Bột Tiêu Thiên Thành 50g', 18300, 'photos/sanpham/bot-tieu-thien-thanh-hu-50g-201901240934555636.jpg', 10, 'Chai', 1, '2022-01-10 15:04:11.769044', '2022-01-10 15:04:11.770043', 3),
(13, 'Đường biên hòa saving 1kg', 24900, 'photos/sanpham/duong-bien-hoa-saving-goi-1kg-2-org.jpg', 15, 'kg', 1, '2022-01-10 15:06:10.950885', '2022-01-10 15:06:10.950885', 3),
(14, 'Đường mía Toàn Phát 1kg', 25600, 'photos/sanpham/duong-mia-toan-phat-goi-1kg-201904191453396660.jfif', 15, 'kg', 1, '2022-01-10 15:08:52.634589', '2022-01-10 15:08:52.634589', 3),
(15, 'Muối iot Bạc Liêu cao cấp 500g', 5800, 'photos/sanpham/muoi-iot-ban-lieu-cao-cap-500gam-2-org.jpg', 20, 'g', 1, '2022-01-10 15:11:02.684962', '2022-01-10 15:11:02.684962', 3),
(16, 'Bạc hà bó 200g', 8000, 'photos/sanpham/bac-ha-bo-200g-202009292336520831.jpg', 10, 'kg', 1, '2022-01-10 15:43:09.559370', '2022-01-10 15:43:09.559370', 1),
(17, 'Bắp cải trắng túi 1kg', 16000, 'photos/sanpham/bap-cai-trang-tui-1kg-202012282215030756_6RHbixl.jpg', 10, 'kg', 1, '2022-01-10 15:58:08.175715', '2022-01-10 15:58:08.175715', 1),
(18, 'bí đỏ hồ lô túi 700g', 19500, 'photos/sanpham/bi-do-ho-lo-tui-700g-202012282211419654.jpg', 10, 'g', 1, '2022-01-10 16:00:54.826907', '2022-01-10 16:00:54.826907', 1),
(19, 'Cà rốt đà lạt túi 500g', 17000, 'photos/sanpham/ca-rot-da-lat-tui-500g-202009172031505039_7XPjHVt.jpg', 10, 'g', 1, '2022-01-10 16:03:01.293449', '2022-01-10 16:03:01.293449', 1),
(20, 'Cà Chua túi 500g', 23000, 'photos/sanpham/ca-chua-tui-500g-202103102242186090_zxGKjEv.jpg', 15, 'g', 1, '2022-01-10 16:05:37.044945', '2022-01-10 16:05:37.044945', 1),
(21, 'Cải bẹ xanh', 17000, 'photos/sanpham/cai-be-xanh-4kfarm-tui-200-300g-202102051428326037.jpg', 10, 'kg', 1, '2022-01-10 16:42:34.794017', '2022-01-10 16:42:34.794017', 1),
(22, 'Me chua', 4000, 'photos/sanpham/me-chua-vat-202009181251236060.jpg', 15, 'Hộp', 1, '2022-01-10 16:46:07.513208', '2022-01-10 16:46:07.514207', 1),
(23, 'Củ cải trắng túi 1kg', 22000, 'photos/sanpham/cu-cai-trang-tui-1kg-202011111021164963.jpg', 20, 'kg', 1, '2022-01-10 16:48:02.567783', '2022-01-10 16:48:02.567783', 1),
(24, 'Ớt hiểm 50g', 5000, 'photos/sanpham/ot-hiem-goi-50g-202009300017340094.jpg', 20, 'g', 1, '2022-01-10 16:50:09.481982', '2022-01-10 16:50:09.481982', 1),
(25, 'Khoai lang Nhật 1kg', 38000, 'photos/sanpham/khoai-lang-nhat-1kg-202101150934398643.jpg', 20, 'kg', 1, '2022-01-10 16:52:34.371000', '2022-01-10 16:52:34.372000', 1),
(26, 'Bắp cải thảo 500g', 18000, 'photos/sanpham/bap-cai-thao-tui-500g-202012101132180722.jpg', 15, 'kg', 1, '2022-01-10 16:57:01.028948', '2022-01-10 16:57:01.028948', 1),
(27, 'Cải ngọt 4kfarm 500g', 15000, 'photos/sanpham/cai-ngot-4kfarm-tui-500g-202109171131424503.jpg', 10, 'g', 1, '2022-01-10 16:58:59.765325', '2022-01-10 16:58:59.765325', 1),
(28, 'Mướp hương túi 500g', 16000, 'photos/sanpham/muop-huong-tui-500g-202012022347184409.jpg', 15, 'kg', 1, '2022-01-10 17:01:14.941033', '2022-01-10 17:01:14.941033', 1),
(29, 'Đậu cô ve 500g', 21000, 'photos/sanpham/dau-cove-tui-500g-202009290951591991.jpg', 15, 'kg', 1, '2022-01-10 17:03:33.688335', '2022-01-10 17:03:33.688335', 1),
(30, 'Bắp giò heo nhập khẩu 500g', 29500, 'photos/sanpham/bap-gio-heo-nhap-khau-khay-500g-202108150403318247.jpeg', 30, 'g', 1, '2022-01-10 17:05:46.269408', '2022-01-10 17:05:46.269408', 2),
(31, 'Ba rọi heo C.P 500g', 91000, 'photos/sanpham/ba-roi-heo-cp-khay-500g-202106260947141452_TeCRA80.jpg', 20, 'g', 1, '2022-01-10 17:08:10.477183', '2022-01-10 17:08:10.477183', 2),
(32, 'Cánh gà giữa nhập khẩu đông lạnh 1kg', 45500, 'photos/sanpham/canh-ga-giua-nhap-khau-dong-lanh-tui-1kg-202108191059190582_BFxUAs3.jpg', 15, 'kg', 1, '2022-01-10 17:11:43.692732', '2022-01-10 17:11:43.692732', 2),
(33, 'Chân gà vỉ 500g', 35000, 'photos/sanpham/chan-ga-vi-500g-202009290930559990.jpg', 10, 'g', 1, '2022-01-10 17:14:41.071664', '2022-01-10 17:14:41.071664', 2),
(34, 'ức gà tươi phi lê 500g', 43000, 'photos/sanpham/uc-ga-tuoi-phi-le-khay-500g-202105200017153940.jpg', 20, 'g', 1, '2022-01-10 17:16:38.826373', '2022-01-10 17:16:38.826373', 2),
(35, 'Bò Viên C.P gói 500g', 69000, 'photos/sanpham/bo-vien-cp-goi-500g-202004071115148827_qjijD2y.jpg', 20, 'Gói', 1, '2022-01-10 17:22:24.521141', '2022-01-10 17:22:24.521141', 6),
(36, 'Cá viên Hoa Doanh gói 500g', 57000, 'photos/sanpham/ca-vien-hoa-doanh-goi-500g-202108051142042390_eM8reJ1.jpg', 15, 'Gói', 1, '2022-01-10 17:24:13.036449', '2022-01-10 17:24:13.036449', 6),
(37, 'Xúc xích cocktail gói 200g', 48500, 'photos/sanpham/xuc-xich-cocktail-dong-nam-a-goi-200g-202004071121187777.jpg', 15, 'Gói', 1, '2022-01-10 17:26:34.563538', '2022-01-10 17:26:34.563538', 6),
(38, 'Ca hố cắt khúc mama food 200g', 44000, 'photos/sanpham/ca-ho-cat-khuc-dong-lanh-mama-food-khay-200g-202106021040161157.jpg', 10, 'g', 1, '2022-01-10 17:29:00.012492', '2022-01-10 17:29:00.012492', 6),
(39, 'Nước bù khoáng revieve chanh muối 390ml', 56000, 'photos/sanpham/6-chai-nuoc-bu-khoang-revive-chanh-muoi-390ml-202103272142426493.jpg', 20, 'Lốc', 1, '2022-01-10 17:37:43.044423', '2022-01-10 17:37:43.044423', 5),
(40, '6 chai nước 7up 390ml', 36000, 'photos/sanpham/6-chai-nuoc-ngot-7-up-vi-chanh-390ml-202107191654364185.jpg', 10, 'Lốc', 1, '2022-01-10 17:39:37.377603', '2022-01-10 17:39:37.377603', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_thongke`
--

CREATE TABLE `sanpham_thongke` (
  `id` bigint(20) NOT NULL,
  `ngaybdtk` datetime(6) NOT NULL,
  `ngaykttk` datetime(6) NOT NULL,
  `thongkedt` varchar(225) NOT NULL,
  `thongkesp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_variation`
--

CREATE TABLE `sanpham_variation` (
  `id` bigint(20) NOT NULL,
  `ten` varchar(100) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `cus_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `dienthoai` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ghichu` longtext NOT NULL,
  `thoigiangiao` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_customers`
--

INSERT INTO `tbl_customers` (`cus_id`, `full_name`, `dienthoai`, `email`, `diachi`, `ghichu`, `thoigiangiao`) VALUES
(1, 'Nguyễn Gia Thuận', '0908989888', 'Thuan864@gmail.com', '30 Lưu Chí Hiếu', 'Nhân Viên Giao Hàng', '2022-01-10 15:24:24.048738'),
(2, 'Nguyễn Trí Tín', '0876567864', 'Tin123@gmail.com', '30 Lưu Chí Hiếu, Tây Thạnh, Tân Phú', 'Nhân Viên Giao Hàng', '2022-01-10 15:25:08.463849'),
(3, 'Lê Hoàng', '0975110973', 'hoang@gmail.com', '32 Lưu Chí Hiếu, Tây Thạnh, Tân Phú', 'Nhân Viên Giao Hàng', '2022-01-10 15:25:36.863191');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `accounts_phanhoi`
--
ALTER TABLE `accounts_phanhoi`
  ADD PRIMARY KEY (`idphanhoi`),
  ADD KEY `accounts_phanhoi_User_id_b27452bc_fk_accounts_account_id` (`User_id`);

--
-- Chỉ mục cho bảng `accounts_traloiphanhoi`
--
ALTER TABLE `accounts_traloiphanhoi`
  ADD PRIMARY KEY (`idphanhoi`),
  ADD KEY `accounts_traloiphanh_PH_id_fb7d8323_fk_accounts_` (`PH_id`),
  ADD KEY `accounts_traloiphanhoi_User_id_da9934de_fk_accounts_account_id` (`User_id`);

--
-- Chỉ mục cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Chỉ mục cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Chỉ mục cho bảng `danhmuc_danhmuc`
--
ALTER TABLE `danhmuc_danhmuc`
  ADD PRIMARY KEY (`iddanhmuc`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `dathang_giaohang`
--
ALTER TABLE `dathang_giaohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_giaohang_nhanviengiao_id_996807b7_fk_tbl_Custo` (`nhanviengiao_id`),
  ADD KEY `dathang_giaohang_order_id_86473cf0_fk_dathang_order_id` (`order_id`);

--
-- Chỉ mục cho bảng `dathang_order`
--
ALTER TABLE `dathang_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_order_user_id_d5a6b96f_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `dathang_ordersanpham`
--
ALTER TABLE `dathang_ordersanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_ordersanpham_Order_id_f19c7083_fk_dathang_order_id` (`Order_id`),
  ADD KEY `dathang_ordersanpham_sanpham_id_95a93fba_fk_sanpham_s` (`sanpham_id`),
  ADD KEY `dathang_ordersanpham_variant_id_4eb22856_fk_sanpham_variation_id` (`variant_id`);

--
-- Chỉ mục cho bảng `dathang_phuong`
--
ALTER TABLE `dathang_phuong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_phuong_quan_id_cc15b593_fk_dathang_quan_id` (`quan_id`),
  ADD KEY `dathang_phuong_tinh_id_306aeadb_fk_dathang_tinh_id` (`tinh_id`);

--
-- Chỉ mục cho bảng `dathang_quan`
--
ALTER TABLE `dathang_quan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_quan_tinh_id_09adb3d5_fk_dathang_tinh_id` (`tinh_id`);

--
-- Chỉ mục cho bảng `dathang_thanhtoan`
--
ALTER TABLE `dathang_thanhtoan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dathang_thanhtoan_user_id_16edc283_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `dathang_tinh`
--
ALTER TABLE `dathang_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Chỉ mục cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Chỉ mục cho bảng `giohangs_giohang`
--
ALTER TABLE `giohangs_giohang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `giohangs_item_giohang`
--
ALTER TABLE `giohangs_item_giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giohangs_item_giohang_giohang_id_9a61e144_fk_giohangs_giohang_id` (`giohang_id`),
  ADD KEY `giohangs_item_giohan_sanpham_id_b1d30414_fk_sanpham_s` (`sanpham_id`),
  ADD KEY `giohangs_item_giohang_user_id_4dbbcfae_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `giohangs_item_giohang_variant`
--
ALTER TABLE `giohangs_item_giohang_variant`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `giohangs_item_giohang_va_item_giohang_id_variatio_3772f5d1_uniq` (`item_giohang_id`,`variation_id`),
  ADD KEY `giohangs_item_giohan_variation_id_700784d6_fk_sanpham_v` (`variation_id`);

--
-- Chỉ mục cho bảng `sanpham_chitietkho`
--
ALTER TABLE `sanpham_chitietkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_chitietkho_khohang_id_2b7a0b4d_fk_sanpham_k` (`khohang_id`),
  ADD KEY `sanpham_chitietkho_sanpham_id_2bdaa276_fk_sanpham_s` (`sanpham_id`);

--
-- Chỉ mục cho bảng `sanpham_danhgiasp`
--
ALTER TABLE `sanpham_danhgiasp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_danhgiasp_sanpham_id_f4c69cb2_fk_sanpham_s` (`sanpham_id`),
  ADD KEY `sanpham_danhgiasp_user_id_4f161583_fk_accounts_account_id` (`user_id`);

--
-- Chỉ mục cho bảng `sanpham_khohang`
--
ALTER TABLE `sanpham_khohang`
  ADD PRIMARY KEY (`idkhohang`);

--
-- Chỉ mục cho bảng `sanpham_productdetail`
--
ALTER TABLE `sanpham_productdetail`
  ADD PRIMARY KEY (`iddetail`),
  ADD KEY `sanpham_productdetai_idsanpham_id_b6bf2e00_fk_sanpham_s` (`idsanpham_id`);

--
-- Chỉ mục cho bảng `sanpham_sanpham`
--
ALTER TABLE `sanpham_sanpham`
  ADD PRIMARY KEY (`idsanpham`),
  ADD UNIQUE KEY `tensanpham` (`tensanpham`),
  ADD KEY `sanpham_sanpham_iddanhmuc_id_cc24631e_fk_danhmuc_d` (`iddanhmuc_id`);

--
-- Chỉ mục cho bảng `sanpham_thongke`
--
ALTER TABLE `sanpham_thongke`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham_variation`
--
ALTER TABLE `sanpham_variation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_variation_sanpham_id_40d086d8_fk_sanpham_s` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `accounts_phanhoi`
--
ALTER TABLE `accounts_phanhoi`
  MODIFY `idphanhoi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `accounts_traloiphanhoi`
--
ALTER TABLE `accounts_traloiphanhoi`
  MODIFY `idphanhoi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `danhmuc_danhmuc`
--
ALTER TABLE `danhmuc_danhmuc`
  MODIFY `iddanhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `dathang_giaohang`
--
ALTER TABLE `dathang_giaohang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `dathang_order`
--
ALTER TABLE `dathang_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `dathang_ordersanpham`
--
ALTER TABLE `dathang_ordersanpham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dathang_phuong`
--
ALTER TABLE `dathang_phuong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dathang_quan`
--
ALTER TABLE `dathang_quan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dathang_thanhtoan`
--
ALTER TABLE `dathang_thanhtoan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dathang_tinh`
--
ALTER TABLE `dathang_tinh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `giohangs_giohang`
--
ALTER TABLE `giohangs_giohang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `giohangs_item_giohang`
--
ALTER TABLE `giohangs_item_giohang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `giohangs_item_giohang_variant`
--
ALTER TABLE `giohangs_item_giohang_variant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham_chitietkho`
--
ALTER TABLE `sanpham_chitietkho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham_danhgiasp`
--
ALTER TABLE `sanpham_danhgiasp`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham_khohang`
--
ALTER TABLE `sanpham_khohang`
  MODIFY `idkhohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham_productdetail`
--
ALTER TABLE `sanpham_productdetail`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `sanpham_sanpham`
--
ALTER TABLE `sanpham_sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `sanpham_thongke`
--
ALTER TABLE `sanpham_thongke`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham_variation`
--
ALTER TABLE `sanpham_variation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts_phanhoi`
--
ALTER TABLE `accounts_phanhoi`
  ADD CONSTRAINT `accounts_phanhoi_User_id_b27452bc_fk_accounts_account_id` FOREIGN KEY (`User_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `accounts_traloiphanhoi`
--
ALTER TABLE `accounts_traloiphanhoi`
  ADD CONSTRAINT `accounts_traloiphanh_PH_id_fb7d8323_fk_accounts_` FOREIGN KEY (`PH_id`) REFERENCES `accounts_phanhoi` (`idphanhoi`),
  ADD CONSTRAINT `accounts_traloiphanhoi_User_id_da9934de_fk_accounts_account_id` FOREIGN KEY (`User_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Các ràng buộc cho bảng `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Các ràng buộc cho bảng `dathang_giaohang`
--
ALTER TABLE `dathang_giaohang`
  ADD CONSTRAINT `dathang_giaohang_nhanviengiao_id_996807b7_fk_tbl_Custo` FOREIGN KEY (`nhanviengiao_id`) REFERENCES `tbl_customers` (`cus_id`),
  ADD CONSTRAINT `dathang_giaohang_order_id_86473cf0_fk_dathang_order_id` FOREIGN KEY (`order_id`) REFERENCES `dathang_order` (`id`);

--
-- Các ràng buộc cho bảng `dathang_order`
--
ALTER TABLE `dathang_order`
  ADD CONSTRAINT `dathang_order_user_id_d5a6b96f_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `dathang_ordersanpham`
--
ALTER TABLE `dathang_ordersanpham`
  ADD CONSTRAINT `dathang_ordersanpham_Order_id_f19c7083_fk_dathang_order_id` FOREIGN KEY (`Order_id`) REFERENCES `dathang_order` (`id`),
  ADD CONSTRAINT `dathang_ordersanpham_sanpham_id_95a93fba_fk_sanpham_s` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham_sanpham` (`idsanpham`),
  ADD CONSTRAINT `dathang_ordersanpham_variant_id_4eb22856_fk_sanpham_variation_id` FOREIGN KEY (`variant_id`) REFERENCES `sanpham_variation` (`id`);

--
-- Các ràng buộc cho bảng `dathang_phuong`
--
ALTER TABLE `dathang_phuong`
  ADD CONSTRAINT `dathang_phuong_quan_id_cc15b593_fk_dathang_quan_id` FOREIGN KEY (`quan_id`) REFERENCES `dathang_quan` (`id`),
  ADD CONSTRAINT `dathang_phuong_tinh_id_306aeadb_fk_dathang_tinh_id` FOREIGN KEY (`tinh_id`) REFERENCES `dathang_tinh` (`id`);

--
-- Các ràng buộc cho bảng `dathang_quan`
--
ALTER TABLE `dathang_quan`
  ADD CONSTRAINT `dathang_quan_tinh_id_09adb3d5_fk_dathang_tinh_id` FOREIGN KEY (`tinh_id`) REFERENCES `dathang_tinh` (`id`);

--
-- Các ràng buộc cho bảng `dathang_thanhtoan`
--
ALTER TABLE `dathang_thanhtoan`
  ADD CONSTRAINT `dathang_thanhtoan_user_id_16edc283_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `giohangs_item_giohang`
--
ALTER TABLE `giohangs_item_giohang`
  ADD CONSTRAINT `giohangs_item_giohan_sanpham_id_b1d30414_fk_sanpham_s` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham_sanpham` (`idsanpham`),
  ADD CONSTRAINT `giohangs_item_giohang_giohang_id_9a61e144_fk_giohangs_giohang_id` FOREIGN KEY (`giohang_id`) REFERENCES `giohangs_giohang` (`id`),
  ADD CONSTRAINT `giohangs_item_giohang_user_id_4dbbcfae_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `giohangs_item_giohang_variant`
--
ALTER TABLE `giohangs_item_giohang_variant`
  ADD CONSTRAINT `giohangs_item_giohan_item_giohang_id_64bc5de2_fk_giohangs_` FOREIGN KEY (`item_giohang_id`) REFERENCES `giohangs_item_giohang` (`id`),
  ADD CONSTRAINT `giohangs_item_giohan_variation_id_700784d6_fk_sanpham_v` FOREIGN KEY (`variation_id`) REFERENCES `sanpham_variation` (`id`);

--
-- Các ràng buộc cho bảng `sanpham_chitietkho`
--
ALTER TABLE `sanpham_chitietkho`
  ADD CONSTRAINT `sanpham_chitietkho_khohang_id_2b7a0b4d_fk_sanpham_k` FOREIGN KEY (`khohang_id`) REFERENCES `sanpham_khohang` (`idkhohang`),
  ADD CONSTRAINT `sanpham_chitietkho_sanpham_id_2bdaa276_fk_sanpham_s` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham_sanpham` (`idsanpham`);

--
-- Các ràng buộc cho bảng `sanpham_danhgiasp`
--
ALTER TABLE `sanpham_danhgiasp`
  ADD CONSTRAINT `sanpham_danhgiasp_sanpham_id_f4c69cb2_fk_sanpham_s` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham_sanpham` (`idsanpham`),
  ADD CONSTRAINT `sanpham_danhgiasp_user_id_4f161583_fk_accounts_account_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Các ràng buộc cho bảng `sanpham_productdetail`
--
ALTER TABLE `sanpham_productdetail`
  ADD CONSTRAINT `sanpham_productdetai_idsanpham_id_b6bf2e00_fk_sanpham_s` FOREIGN KEY (`idsanpham_id`) REFERENCES `sanpham_sanpham` (`idsanpham`);

--
-- Các ràng buộc cho bảng `sanpham_sanpham`
--
ALTER TABLE `sanpham_sanpham`
  ADD CONSTRAINT `sanpham_sanpham_iddanhmuc_id_cc24631e_fk_danhmuc_d` FOREIGN KEY (`iddanhmuc_id`) REFERENCES `danhmuc_danhmuc` (`iddanhmuc`);

--
-- Các ràng buộc cho bảng `sanpham_variation`
--
ALTER TABLE `sanpham_variation`
  ADD CONSTRAINT `sanpham_variation_sanpham_id_40d086d8_fk_sanpham_s` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham_sanpham` (`idsanpham`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

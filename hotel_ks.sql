-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 22, 2018 lúc 11:40 AM
-- Phiên bản máy phục vụ: 5.7.19
-- Phiên bản PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel_ks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangbosuutap`
--

DROP TABLE IF EXISTS `bangbosuutap`;
CREATE TABLE IF NOT EXISTS `bangbosuutap` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDPhong` int(11) NOT NULL,
  `URL` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BBST_P` (`IDPhong`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bangbosuutap`
--

INSERT INTO `bangbosuutap` (`ID`, `IDPhong`, `URL`) VALUES
(1, 1, 'phong1_1.jpg'),
(2, 1, 'phong1_2.jpg'),
(3, 1, 'phong1_3.jpg'),
(4, 2, 'phong2_1.jpg'),
(5, 2, 'phong2_2.jpg'),
(6, 2, 'phong2_3.jpg'),
(7, 3, 'phong3_1.jpg'),
(8, 3, 'phong3_2.jpg'),
(9, 3, 'phong3_3.jpg'),
(10, 4, 'phong4_1.jpg'),
(11, 4, 'phong4_2.jpg'),
(12, 4, 'phong4_3.jpg'),
(13, 5, 'phong5_1.jpg'),
(14, 5, 'phong5_2.jpg'),
(15, 5, 'phong5_3.jpg'),
(16, 6, 'phong6_1.jpg'),
(17, 6, 'phong6_2.jpg'),
(18, 6, 'phong6_3.jpg'),
(19, 7, 'phong7_1.jpg'),
(20, 7, 'phong7_2.jpg'),
(21, 7, 'phong7_3.jpg'),
(22, 8, 'phong8_1.jpg'),
(23, 8, 'phong8_2.jpg'),
(24, 8, 'phong8_3.jpg'),
(25, 9, 'phong9_1.jpg'),
(26, 9, 'phong9_2.jpg'),
(27, 9, 'phong9_3.jpg'),
(28, 10, 'phong10_1.jpg'),
(29, 10, 'phong10_2.jpg'),
(30, 10, 'phong10_3.jpg'),
(31, 11, 'phong11_1.jpg'),
(32, 11, 'phong11_2.jpg'),
(33, 11, 'phong11_3.jpg'),
(34, 12, 'phong12_1.jpg'),
(35, 12, 'phong12_2.jpg'),
(36, 12, 'phong12_3.jpg'),
(37, 13, 'phong13_1.jpg'),
(38, 13, 'phong13_2.jpg'),
(39, 13, 'phong13_3.jpg'),
(40, 14, 'phong14_1.jpg'),
(41, 14, 'phong14_2.jpg'),
(42, 14, 'phong14_3.jpg'),
(43, 15, 'phong15_1.jpg'),
(44, 15, 'phong15_2.jpg'),
(45, 15, 'phong15_3.jpg'),
(46, 16, 'phong16_1.jpg'),
(47, 16, 'phong16_2.jpg'),
(48, 16, 'phong16_3.jpg'),
(49, 17, 'phong17_1.jpg'),
(50, 17, 'phong17_2.jpg'),
(51, 17, 'phong17_3.jpg'),
(52, 18, 'phong18_1.jpg'),
(53, 18, 'phong18_2.jpg'),
(54, 18, 'phong18_3.jpg'),
(55, 19, 'phong19_1.jpg'),
(56, 19, 'phong19_2.jpg'),
(57, 19, 'phong19_3.jpg'),
(58, 20, 'phong20_1.jpg'),
(59, 20, 'phong20_2.jpg'),
(60, 20, 'phong20_3.jpg'),
(61, 21, 'phong21_1.jpg'),
(62, 21, 'phong21_2.jpg'),
(63, 21, 'phong21_3.jpg'),
(64, 22, 'phong22_1.jpg'),
(65, 22, 'phong22_2.jpg'),
(66, 22, 'phong22_3.jpg'),
(67, 23, 'phong23_1.jpg'),
(68, 23, 'phong23_2.jpg'),
(69, 23, 'phong23_3.jpg'),
(70, 24, 'phong24_1.jpg'),
(71, 24, 'phong24_2.jpg'),
(72, 24, 'phong24_3.jpg'),
(73, 25, 'phong25_1.jpg'),
(74, 25, 'phong25_2.jpg'),
(75, 25, 'phong25_3.jpg'),
(76, 26, 'phong26_1.jpg'),
(77, 26, 'phong26_2.jpg'),
(78, 26, 'phong26_3.jpg'),
(79, 27, 'phong27_1.jpg'),
(80, 27, 'phong27_2.jpg'),
(81, 27, 'phong27_3.jpg'),
(82, 28, 'phong28_1.jpg'),
(83, 28, 'phong28_2.jpg'),
(84, 28, 'phong28_3.jpg'),
(85, 29, 'phong29_1.jpg'),
(86, 29, 'phong29_2.jpg'),
(87, 29, 'phong29_3.jpg'),
(88, 30, 'phong30_1.jpg'),
(89, 30, 'phong30_2.jpg'),
(90, 30, 'phong30_3.jpg'),
(91, 31, 'phong31_1.jpg'),
(92, 31, 'phong31_2.jpg'),
(93, 31, 'phong31_3.jpg'),
(94, 32, 'phong32_1.jpg'),
(95, 32, 'phong32_2.jpg'),
(96, 32, 'phong32_3.jpg'),
(97, 33, 'phong33_1.jpg'),
(98, 33, 'phong33_2.jpg'),
(99, 33, 'phong33_3.jpg'),
(100, 34, 'phong34_1.jpg'),
(101, 34, 'phong34_2.jpg'),
(102, 34, 'phong34_3.jpg'),
(103, 35, 'phong35_1.jpg'),
(104, 35, 'phong35_2.jpg'),
(105, 35, 'phong35_3.jpg'),
(106, 36, 'phong36_1.jpg'),
(107, 36, 'phong36_2.jpg'),
(108, 36, 'phong36_3.jpg'),
(109, 37, 'phong37_1.jpg'),
(110, 37, 'phong37_2.jpg'),
(111, 37, 'phong37_3.jpg'),
(112, 38, 'phong38_1.jpg'),
(113, 38, 'phong38_2.jpg'),
(114, 38, 'phong38_3.jpg'),
(115, 39, 'phong39_1.jpg'),
(116, 39, 'phong39_2.jpg'),
(117, 39, 'phong39_3.jpg'),
(118, 40, 'phong40_1.jpg'),
(119, 40, 'phong40_2.jpg'),
(120, 40, 'phong40_3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

DROP TABLE IF EXISTS `datphong`;
CREATE TABLE IF NOT EXISTS `datphong` (
  `NgayDat` date NOT NULL,
  `IDKhachHang` int(11) NOT NULL,
  `IDPhong` int(11) NOT NULL,
  `NgayDen` date NOT NULL,
  `NgayDi` date NOT NULL,
  KEY `FK_DP_KH` (`IDKhachHang`),
  KEY `FK_DP_P` (`IDPhong`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `IDKhachHang` int(11) NOT NULL AUTO_INCREMENT,
  `HoTenKH` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `SoDT` int(11) NOT NULL,
  `DiaChi` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `TaiKhoan` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `MatKhau` varchar(100) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`IDKhachHang`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`IDKhachHang`, `HoTenKH`, `NgaySinh`, `SoDT`, `DiaChi`, `TaiKhoan`, `MatKhau`) VALUES
(1, 'Nguyễn Thu Tuyết', '1998-03-30', 1632058811, 'Dầu Tiếng, Bình Dương', 'nguyenthutuyet98@gmail.com', '1234'),
(2, 'Ngô Thị Ngọc Diễm', '1998-04-26', 162828734, 'Tân Trụ, Long An', 'ngothingocdiem', '1234'),
(3, 'Vũ Thu Thảo', '1998-05-09', 98763425, 'Đồng Nai', 'vuthuthao98@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphong`
--

DROP TABLE IF EXISTS `loaiphong`;
CREATE TABLE IF NOT EXISTS `loaiphong` (
  `IDLoaiPhong` int(11) NOT NULL AUTO_INCREMENT,
  `TenLoaiPhong` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`IDLoaiPhong`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiphong`
--

INSERT INTO `loaiphong` (`IDLoaiPhong`, `TenLoaiPhong`) VALUES
(1, 'Phòng Trẻ Em'),
(2, 'Phòng Đơn'),
(3, 'Phòng Đôi'),
(4, 'Phòng Dành Cho Nhóm, Gia đình ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

DROP TABLE IF EXISTS `phong`;
CREATE TABLE IF NOT EXISTS `phong` (
  `IDPhong` int(11) NOT NULL AUTO_INCREMENT,
  `TenPhong` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `IDLoaiPhong` int(50) NOT NULL,
  `Gia` int(11) NOT NULL,
  `MoTa` varchar(5000) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `HinhDaiDien` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IDPhong`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`IDPhong`, `TenPhong`, `IDLoaiPhong`, `Gia`, `MoTa`, `HinhDaiDien`) VALUES
(1, 'Phòng 1', 1, 460000, '\r\nĐược tu sửa lại năm 2016, khách sạn Minh Tam Hotel and Spa bảo đảm mang đến cho quý khách sự hài lòng dù đang ở Hồ Chí Minh để công tác hay nghỉ dưỡng. Từ đây, khách có thể dễ dàng tiếp cận được nét đẹp sống động của thành phố ở mọi góc cạnh. Với vị trí thuận lợi, khách sạn dễ dàng tiếp cận những điểm tham quan du lịch nổi tiếng của thành phố.\r\n\r\nTại Minh Tam Hotel and Spa, mọi sự cố gắng đều nhằm mục đích khiến cho du khách hài lòng. Để làm được điều đó, khách sạn sẽ cung cấp dịch vụ và tiện nghi tốt nhất. Sự chọn lọc khắt khe những thiết bị hàng đầu như dịch vụ phòng 24 giờ, miễn phí wifi tất cả các phòng, dịch vụ bưu điện, quầy lễ tân 24 giờ, giữ hành lý để khách có thể tận hưởng thoải mái khi ở khách sạn. \r\n\r\nKhách có thể chọn 31 phòng có không khí yên bình và tuyệt vời. Những phương tiện giải trí của khách sạn bao gồm phòng sauna, spa, massage, phòng tắm hơi được thiết kế để đem đến cho bạn sự thư giãn thoải mái. Dù cho lý do của bạn khi tham quan Hồ Chí Minh là gì đi nữa, Minh Tam Hotel and Spa là một nơi tuyệt vời cho chuyến nghỉ mát vui vẻ và thú vị.', 'phong1_1.jpg'),
(2, 'Phòng 2', 2, 328000, 'Thien Tue cung cấp các phòng máy lạnh với Wi-Fi miễn phí, truyền hình cáp và phòng tắm đầy đủ tiện nghi. Chỉ cách Siêu thị An Phú 3 phút đi bộ, khách sạn có nhà hàng phục vụ ăn uống cả ngày.\r\n\r\nĐược trang bị với đồ nội thất bằng gỗ kiểu cổ điển, các phòng đều mở ra quang cảnh khu vườn. Tiện nghi trong phòng có minibar, bồn tắm và đồ vệ sinh cá nhân.\r\n\r\nThien Tue Hotel cách Chợ Bến Thành 10 phút lái xe cũng như cách Nhà thờ Đức Bà và Dinh Thống Nhất 15 phút lái xe. Từ khách sạn chỉ cần lái xe 30 phút là tới Sân bay Quốc tế Tân Sơn Nhất và khách sạn có chỗ đỗ xe miễn phí.\r\n\r\nNhân viên tại quầy lễ tân 24 giờ có thể hỗ trợ khách về dịch vụ thu đổi ngoại tệ, cho thuê xe hơi và giặt là. \r\n\r\nQuận 2 là lựa chọn tuyệt vời cho du khách thích nhà hàng, ẩm thực đường phố và người dân thân thiện.', 'phong2_1.jpg'),
(3, 'Phòng 3', 3, 568700, '\r\nNằm ở vị trí thuận lợi trong Quận 1 , The Reverie Saigon là một điểm lý tưởng để khởi hành chuyến du lịch của bạn ở Hồ Chí Minh. Từ đây, khách có thể dễ dàng tiếp cận được nét đẹp sống động của thành phố ở mọi góc cạnh. Với vị trí thuận lợi, khách sạn dễ dàng tiếp cận những điểm tham quan du lịch nổi tiếng của thành phố.\r\n\r\nHãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được ở khách sạn Hồ Chí Minh này. Tại khách sạn tuyệt vời này, khách hàng có thể tận hưởng các tiện nghi như miễn phí wifi tất cả các phòng, an ninh 24 giờ, dịch vụ phòng hàng ngày, dịch vụ taxi, dịch vụ vé.\r\n\r\nHãy trải nghiệm các thiết bị phòng chất lượng cao trong suốt thời gian lưu trú tại đây. Một số phòng được trang bị tivi màn hình phẳng, tủ đồ có khoá, gương, bộ kim chỉ, dép, giúp cho bạn tái tạo năng lượng sau một ngày dài. Khách sạn cung cấp rất nhiều phương tiện giải trí độc đáo như phòng thể dục, phòng sauna, hồ bơi ngoài trời, spa, massage. Khi bạn đang tìm chỗ ở thoải mái và thuận tiện ở Hồ Chí Minh, The Reverie Saigon mang đến cho bạn cảm giác như đang ở nhà.', 'phong3_1.jpg'),
(4, 'Phòng 4', 4, 332000, 'Khách Sạn Paradise Sài Gòn Boutique có 18 phòng, tất cả đồ nội thất đều dễ chịu, êm ái, và thậm chí nhiều phòng còn cung cấp các tiện nghi như ban công, tủ lạnh, máy pha trà/cà phê, áo choàng tắm, tủ đồ ăn uống nhẹ. Bên cạnh đó, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ.\r\n\r\nTừ Khách Sạn Paradise Sài Gòn Boutique dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Paradise Sài Gòn Boutique, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Paradise Sài Gòn Boutique luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong4_1.jpg'),
(5, 'Phòng 5', 1, 334000, 'Khách sạn Cosmopolitan 3 sao là một trong những khách sạn đẹp ở thành phố Hồ Chí Minh, với 63 phòng rộng rãi, dãy phòng của khách sạn  được thiết kế để cung cấp sự thoải mái và phong cách với dịch vụ cá nhân và các tiện nghi thuận tiện.\r\n\r\nHãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được tại Khách Sạn Cosmopolitan như dịch vụ làm đẹp, phòng hút thuốc, quầy lễ tân 24 giờ, đưa đón khách sạn/sân bay, quầy nước...\r\n\r\nKhách Sạn Cosmopolitan rất chú ý đến việc trang bị đầy đủ tiện nghi để đạt được sự thoải mái và tiện lợi nhất. Trong một số phòng, khách hàng có thể tìm thấy kênh phim nội bộ, màn rèm cửa, áo choàng tắm, đầu đĩa DVD/CD, bồn tắm. Danh sách phương tiện giải trí được trang bị ở khách sạn, bao gồm bồn tắm nóng, hát karaoke, mát xa, phòng tắm hơi, spa…\r\n\r\nTừ Khách Sạn Cosmopolitan dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Cosmopolitan, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Cosmopolitan luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong5_1.jpg'),
(6, 'Phòng 6', 2, 340000, 'Khách Sạn Nhật Hạ 3 tọa lạc tại trung tâm kinh doanh sôi động của thành phố Hồ Chí Minh và các khu phức hợp quận 1. Khách Sạn Nhật Hạ 3 là thiên đường của tiện nghi, thoải mái, an toàn và yên bình. Vị trí thuận lợi tuyệt vời cho khách đến tham quan tại các điểm du lịch, khu vui chơi giải trí và trung tâm mua sắm. Từ khách sạn, quý khách chỉ cần lái xe 5 phút là tới Dinh Thống Nhất và 25 phút là đến Sân bay Quốc tế Tân Sơn Nhất.\r\n\r\nKhách Sạn Nhật Hạ 3 là khách sạn đạt chuẩn 3 sao bao gồm 91 phòng ngủ được thiết kế sang trọng theo phong cách Châu Âu. Khi đặt phòng Khách Sạn Nhật Hạ 3, du khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây. Với phong cách phục vụ chuyên nghiệp và sự thân thiện của nhân viên khách sạn, du khách sẽ được nghỉ ngơi thoải mái sau những ngày làm việc căng thẳng hay tận hưởng những giây phút ấn tượng và khó quên bên gia đình và những người thân yêu.', 'phong6_1.jpg'),
(7, 'Phòng 7', 3, 432000, 'Khách sạn River Prince Đà Lạt được xây dựng theo tiêu chuẩn 4 sao với phong cách hiện đại, trang nhã, thiết kế sang trọng mang kiểu dáng phương Tây kết hợp hài hòa với kiểu dáng phương Đông, mỗi phòng đều có cửa sổ để ngắm nhìn thành phố. Là không gian nghỉ dưỡng hấp dẫn cho quý khách khi đến với Đà Lạt\r\n\r\nKhách sạn River Prince Đà Lạt gồm có 104 phòng sang trọng, trang thiết bị đầy đủ tiện nghi, được thiết kế hiện đại trang nhã. Mỗi phòng đều được trang bị đầy đủ các tiện nghi như: TV 29 inch, truyền hình cáp, wireless free, điện thoại gọi quốc tế, quạt mát, mini bar, bồn tắm đứng hoặc bồn tắm nằm, nước uống miễn phí, văn phòng phẩm, café, trà và vật dụng pha chế…', 'phong7_1.jpg'),
(8, 'Phòng 8', 4, 520000, 'Khách sạn Marguerite là khách sạn đạt tiêu chuẩn 3 sao do Sở Du Lịch Thương Mại chứng nhận. Đến với Khách sạn Marguerite quý khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây. Với phong cách phục vụ du khách chuyên nghiệp và sự thân thiện của nhân viên, khách sạn chắc chắn sẽ làm cho du khách hài lòng.\r\n\r\nKhách sạn Marguerite gồm 40 phòng, mỗi phòng được thiết kế trang nhã với không gian ấm áp, Tất cả phòng nghỉ đều được trang bị quạt làm mát, wifi, TV. Phòng tắm riêng đi kèm vòi sen với máy nước nóng, máy sấy tóc và đồ vệ sinh cá nhân miễn phí. Bộ khăn trải giường và khăn tắm được cung cấp cho khách… Ngoài ra còn có các tiện nghi khác bao gồm dịch vụ đặt vé, cho thuê xe máy, đặt tour và dịch vụ ủi.\r\nCùng với đội ngũ nhân viên trẻ trung, nhiệt tình, ham học hỏi, có trình độ chuyên nghiệp và bề dày kinh nghiệm sẵn sàng phục vụ quý khách 24/24h Khách sạn Marguerite sẽ mang đến cho quý khách một kỳ lưu trú khó quên.', 'phong8_1.jpg'),
(9, 'Phòng 9', 2, 460000, 'Khách sạn Cosmopolitan 3 sao là một trong những khách sạn đẹp ở thành phố Hồ Chí Minh, với 63 phòng rộng rãi, dãy phòng của khách sạn  được thiết kế để cung cấp sự thoải mái và phong cách với dịch vụ cá nhân và các tiện nghi thuận tiện.\r\n\r\nHãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được tại Khách Sạn Cosmopolitan như dịch vụ làm đẹp, phòng hút thuốc, quầy lễ tân 24 giờ, đưa đón khách sạn/sân bay, quầy nước...\r\n\r\nKhách Sạn Cosmopolitan rất chú ý đến việc trang bị đầy đủ tiện nghi để đạt được sự thoải mái và tiện lợi nhất. Trong một số phòng, khách hàng có thể tìm thấy kênh phim nội bộ, màn rèm cửa, áo choàng tắm, đầu đĩa DVD/CD, bồn tắm. Danh sách phương tiện giải trí được trang bị ở khách sạn, bao gồm bồn tắm nóng, hát karaoke, mát xa, phòng tắm hơi, spa…\r\n\r\nTừ Khách Sạn Cosmopolitan dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Cosmopolitan, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Cosmopolitan luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong9_1.jpg'),
(10, 'Phòng 10', 2, 368000, 'Lake View hotel is located right in the heart of Dalat city, lying on the hill looking down to Xuan Huong Lake. Within easy walking distance to access city’s major office buildings, banks, post offices, shopping centers and Da Lat market. We features 20 luxurious and comfortable rooms, the cozy restaurant as you are home! Some other services together, friendly and professional staff will render guests a relaxing and enjoyable trips.\r\nKhách sạn Lake View toạ lạc giữa trung tâm thành phố Đà Lạt, nằm trên ngọn đồi hướng xuống hồ Xuân Hương thơ mộng. Dễ dàng đi bộ đến các tòa nhà văn phòng lớn, các ngân hàng, bưu điện, trung tâm mua sắm và chợ Đà Lạt. Chúng tôi có 20 phòng nghỉ sang trọng và tiện nghi, nhà hàng gia đình với không gian ấm cúng, một số dịch vụ khác cùng đội ngũ nhân viên thân thiện và chuyên nghiệp sẽ giúp quý khách có một kì nghỉ thư giãn và thú vị.', 'phong10_1.jpg'),
(11, 'Phòng 11', 3, 335000, 'PARACEL Danang Hotel, international 4-star hotel, is ideally located just a few steps away from the beautiful beach.\r\n\r\nCombining antique architecture and elegantly modern design, the hotel offers high-end accommodations, world class facilities including luxury spa, outdoor pool, restaurants, coffee lounge & bar, Cinema, Cigar room and spacious ballroom for banquet and conference. All the rooms feature sea view, wooden floor, and elegant luxurious furniture. \r\n\r\nThe Hotel is perfectly situated at the most tourist attracted street in the town with easy access to city center as well as tourist attractions. Only 2-minute walk to the picturesque beautiful beach and then you can enjoy the sea to the fullest with fresh air, white sands, and a lots of beach activities, etc. Also, the Hotel is close to major landmarks such as Son Tra Peninsula, Marble Mountain, Ba Na Hills etc, and easy access to the city downtown. Whatever your reason for visiting Danang, Paracel Danang Hotel is always an ideal venue for exhilarating and exciting break away.', 'phong11_1.jpg'),
(12, 'Phòng 12', 3, 530000, 'Khách Sạn Paradise Sài Gòn Boutique có 18 phòng, tất cả đồ nội thất đều dễ chịu, êm ái, và thậm chí nhiều phòng còn cung cấp các tiện nghi như ban công, tủ lạnh, máy pha trà/cà phê, áo choàng tắm, tủ đồ ăn uống nhẹ. Bên cạnh đó, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ.\r\n\r\nTừ Khách Sạn Paradise Sài Gòn Boutique dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Paradise Sài Gòn Boutique, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Paradise Sài Gòn Boutique luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong12_1.jpg'),
(13, 'Phòng 13', 4, 510000, 'Khách sạn Happy Day nằm ngay tại vị trí trung tâm đường Bạch Đằng, con đường đẹp nhất thành phố Đà Nẵng, khách sạn sẽ mang lại cho du khách nơi nghỉ chân tuyệt vời để tiếp tục khám phá một thành phố sôi động. Du khách có thể dạo bộ đến những địa điểm lý tưởng như nhà thờ Chính Tòa Đà Nẵng chỉ cách 0,1km, bảo tàng Chăm chỉ 0,5km, tự do mua sắm tại chợ Hàn chỉ 0,05km và du khách chỉ mất khoảng 7 phút để đến sân bay.\r\n\r\nKhách sạn Happy Day với tất cả các phòng khách đều được trang bị những thiết bị tiện nghi hiện đại như tivi Led, máy điều hòa,tủ lạnh, bồn tắm nằm, buồng tắm đứng. Cùng với những tính năng hàng đầu của khách sạn như thang máy, người vận chuyển hành lý, đưa đón khách sạn/sân bay, internet wifi và trông xe miễn phí kèm theo các dịch vụ du lịch, cho thuê xe các loại, giặt là… Về đêm, khách ở khách sạn có thể ngắm nhìn hai bên bờ sông, cầu quay Sông Hàn và cầu Rồng với những ánh đèn muôn sắc lung linh. Với vị trí đắc địa này cùng cơ sở vật chất, thiết bị hoàn hảo, Khách sạn Happy Day tự hào mang đến cho các bạn một kỳ nghỉ thoải mái và an lành.\r\n\r\nTừ khách sạn có thể dễ dàng tiếp cận đến các địa danh như  cách bãi biển công cộng Phạm Văn Đồng 3 km và cách Ngũ Hành Sơn 10 km…', 'phong13_1.jpg'),
(14, 'Phòng 14', 1, 615000, 'Khách sạn Marguerite là khách sạn đạt tiêu chuẩn 3 sao do Sở Du Lịch Thương Mại chứng nhận. Đến với Khách sạn Marguerite quý khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây. Với phong cách phục vụ du khách chuyên nghiệp và sự thân thiện của nhân viên, khách sạn chắc chắn sẽ làm cho du khách hài lòng.\r\n\r\nKhách sạn Marguerite gồm 40 phòng, mỗi phòng được thiết kế trang nhã với không gian ấm áp, Tất cả phòng nghỉ đều được trang bị quạt làm mát, wifi, TV. Phòng tắm riêng đi kèm vòi sen với máy nước nóng, máy sấy tóc và đồ vệ sinh cá nhân miễn phí. Bộ khăn trải giường và khăn tắm được cung cấp cho khách… Ngoài ra còn có các tiện nghi khác bao gồm dịch vụ đặt vé, cho thuê xe máy, đặt tour và dịch vụ ủi.\r\nCùng với đội ngũ nhân viên trẻ trung, nhiệt tình, ham học hỏi, có trình độ chuyên nghiệp và bề dày kinh nghiệm sẵn sàng phục vụ quý khách 24/24h Khách sạn Marguerite sẽ mang đến cho quý khách một kỳ lưu trú khó quên.', 'phong14_1.jpg'),
(15, 'Phòng 15', 2, 435000, 'Lake View hotel is located right in the heart of Dalat city, lying on the hill looking down to Xuan Huong Lake. Within easy walking distance to access city’s major office buildings, banks, post offices, shopping centers and Da Lat market. We features 20 luxurious and comfortable rooms, the cozy restaurant as you are home! Some other services together, friendly and professional staff will render guests a relaxing and enjoyable trips.\r\nKhách sạn Lake View toạ lạc giữa trung tâm thành phố Đà Lạt, nằm trên ngọn đồi hướng xuống hồ Xuân Hương thơ mộng. Dễ dàng đi bộ đến các tòa nhà văn phòng lớn, các ngân hàng, bưu điện, trung tâm mua sắm và chợ Đà Lạt. Chúng tôi có 20 phòng nghỉ sang trọng và tiện nghi, nhà hàng gia đình với không gian ấm cúng, một số dịch vụ khác cùng đội ngũ nhân viên thân thiện và chuyên nghiệp sẽ giúp quý khách có một kì nghỉ thư giãn và thú vị.', 'phong15_1.jpg'),
(16, 'Phòng 16', 3, 656000, 'Khách sạn Cosmopolitan 3 sao là một trong những khách sạn đẹp ở thành phố Hồ Chí Minh, với 63 phòng rộng rãi, dãy phòng của khách sạn  được thiết kế để cung cấp sự thoải mái và phong cách với dịch vụ cá nhân và các tiện nghi thuận tiện.\r\n\r\nHãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được tại Khách Sạn Cosmopolitan như dịch vụ làm đẹp, phòng hút thuốc, quầy lễ tân 24 giờ, đưa đón khách sạn/sân bay, quầy nước...\r\n\r\nKhách Sạn Cosmopolitan rất chú ý đến việc trang bị đầy đủ tiện nghi để đạt được sự thoải mái và tiện lợi nhất. Trong một số phòng, khách hàng có thể tìm thấy kênh phim nội bộ, màn rèm cửa, áo choàng tắm, đầu đĩa DVD/CD, bồn tắm. Danh sách phương tiện giải trí được trang bị ở khách sạn, bao gồm bồn tắm nóng, hát karaoke, mát xa, phòng tắm hơi, spa…\r\n\r\nTừ Khách Sạn Cosmopolitan dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Cosmopolitan, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Cosmopolitan luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong16_1.jpg'),
(17, 'Phòng 17', 4, 436000, 'PARACEL Danang Hotel, international 4-star hotel, is ideally located just a few steps away from the beautiful beach.\r\n\r\nCombining antique architecture and elegantly modern design, the hotel offers high-end accommodations, world class facilities including luxury spa, outdoor pool, restaurants, coffee lounge & bar, Cinema, Cigar room and spacious ballroom for banquet and conference. All the rooms feature sea view, wooden floor, and elegant luxurious furniture. \r\n\r\nThe Hotel is perfectly situated at the most tourist attracted street in the town with easy access to city center as well as tourist attractions. Only 2-minute walk to the picturesque beautiful beach and then you can enjoy the sea to the fullest with fresh air, white sands, and a lots of beach activities, etc. Also, the Hotel is close to major landmarks such as Son Tra Peninsula, Marble Mountain, Ba Na Hills etc, and easy access to the city downtown. Whatever your reason for visiting Danang, Paracel Danang Hotel is always an ideal venue for exhilarating and exciting break away.', 'phong17_1.jpg'),
(18, 'Phòng 18', 1, 445000, 'Khách Sạn Nhật Hạ 3 tọa lạc tại trung tâm kinh doanh sôi động của thành phố Hồ Chí Minh và các khu phức hợp quận 1. Khách Sạn Nhật Hạ 3 là thiên đường của tiện nghi, thoải mái, an toàn và yên bình. Vị trí thuận lợi tuyệt vời cho khách đến tham quan tại các điểm du lịch, khu vui chơi giải trí và trung tâm mua sắm. Từ khách sạn, quý khách chỉ cần lái xe 5 phút là tới Dinh Thống Nhất và 25 phút là đến Sân bay Quốc tế Tân Sơn Nhất.\r\n\r\nKhách Sạn Nhật Hạ 3 là khách sạn đạt chuẩn 3 sao bao gồm 91 phòng ngủ được thiết kế sang trọng theo phong cách Châu Âu. Khi đặt phòng Khách Sạn Nhật Hạ 3, du khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây. Với phong cách phục vụ chuyên nghiệp và sự thân thiện của nhân viên khách sạn, du khách sẽ được nghỉ ngơi thoải mái sau những ngày làm việc căng thẳng hay tận hưởng những giây phút ấn tượng và khó quên bên gia đình và những người thân yêu.', 'phong18_1.jpg'),
(19, 'Phòng 19', 1, 540000, 'Khách sạn Happy Day nằm ngay tại vị trí trung tâm đường Bạch Đằng, con đường đẹp nhất thành phố Đà Nẵng, khách sạn sẽ mang lại cho du khách nơi nghỉ chân tuyệt vời để tiếp tục khám phá một thành phố sôi động. Du khách có thể dạo bộ đến những địa điểm lý tưởng như nhà thờ Chính Tòa Đà Nẵng chỉ cách 0,1km, bảo tàng Chăm chỉ 0,5km, tự do mua sắm tại chợ Hàn chỉ 0,05km và du khách chỉ mất khoảng 7 phút để đến sân bay.\r\n\r\nKhách sạn Happy Day với tất cả các phòng khách đều được trang bị những thiết bị tiện nghi hiện đại như tivi Led, máy điều hòa,tủ lạnh, bồn tắm nằm, buồng tắm đứng. Cùng với những tính năng hàng đầu của khách sạn như thang máy, người vận chuyển hành lý, đưa đón khách sạn/sân bay, internet wifi và trông xe miễn phí kèm theo các dịch vụ du lịch, cho thuê xe các loại, giặt là… Về đêm, khách ở khách sạn có thể ngắm nhìn hai bên bờ sông, cầu quay Sông Hàn và cầu Rồng với những ánh đèn muôn sắc lung linh. Với vị trí đắc địa này cùng cơ sở vật chất, thiết bị hoàn hảo, Khách sạn Happy Day tự hào mang đến cho các bạn một kỳ nghỉ thoải mái và an lành.\r\n\r\nTừ khách sạn có thể dễ dàng tiếp cận đến các địa danh như  cách bãi biển công cộng Phạm Văn Đồng 3 km và cách Ngũ Hành Sơn 10 km…', 'phong19_1.jpg'),
(20, 'Phòng 20', 2, 560000, 'Khách Sạn Paradise Sài Gòn Boutique có 18 phòng, tất cả đồ nội thất đều dễ chịu, êm ái, và thậm chí nhiều phòng còn cung cấp các tiện nghi như ban công, tủ lạnh, máy pha trà/cà phê, áo choàng tắm, tủ đồ ăn uống nhẹ. Bên cạnh đó, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ.\r\n\r\nTừ Khách Sạn Paradise Sài Gòn Boutique dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Paradise Sài Gòn Boutique, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Paradise Sài Gòn Boutique luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong20_1.jpg'),
(21, 'Phòng 21', 3, 670000, 'Khách sạn River Prince Đà Lạt được xây dựng theo tiêu chuẩn 4 sao với phong cách hiện đại, trang nhã, thiết kế sang trọng mang kiểu dáng phương Tây kết hợp hài hòa với kiểu dáng phương Đông, mỗi phòng đều có cửa sổ để ngắm nhìn thành phố. Là không gian nghỉ dưỡng hấp dẫn cho quý khách khi đến với Đà Lạt\r\n\r\nKhách sạn River Prince Đà Lạt gồm có 104 phòng sang trọng, trang thiết bị đầy đủ tiện nghi, được thiết kế hiện đại trang nhã. Mỗi phòng đều được trang bị đầy đủ các tiện nghi như: TV 29 inch, truyền hình cáp, wireless free, điện thoại gọi quốc tế, quạt mát, mini bar, bồn tắm đứng hoặc bồn tắm nằm, nước uống miễn phí, văn phòng phẩm, café, trà và vật dụng pha chế…', 'phong21_1.jpg'),
(22, 'Phòng 22', 3, 542000, 'Lake View hotel is located right in the heart of Dalat city, lying on the hill looking down to Xuan Huong Lake. Within easy walking distance to access city’s major office buildings, banks, post offices, shopping centers and Da Lat market. We features 20 luxurious and comfortable rooms, the cozy restaurant as you are home! Some other services together, friendly and professional staff will render guests a relaxing and enjoyable trips.\r\nKhách sạn Lake View toạ lạc giữa trung tâm thành phố Đà Lạt, nằm trên ngọn đồi hướng xuống hồ Xuân Hương thơ mộng. Dễ dàng đi bộ đến các tòa nhà văn phòng lớn, các ngân hàng, bưu điện, trung tâm mua sắm và chợ Đà Lạt. Chúng tôi có 20 phòng nghỉ sang trọng và tiện nghi, nhà hàng gia đình với không gian ấm cúng, một số dịch vụ khác cùng đội ngũ nhân viên thân thiện và chuyên nghiệp sẽ giúp quý khách có một kì nghỉ thư giãn và thú vị.', 'phong22_1.jpg'),
(23, 'Phòng 23', 4, 545000, 'PARACEL Danang Hotel, international 4-star hotel, is ideally located just a few steps away from the beautiful beach.\r\n\r\nCombining antique architecture and elegantly modern design, the hotel offers high-end accommodations, world class facilities including luxury spa, outdoor pool, restaurants, coffee lounge & bar, Cinema, Cigar room and spacious ballroom for banquet and conference. All the rooms feature sea view, wooden floor, and elegant luxurious furniture. \r\n\r\nThe Hotel is perfectly situated at the most tourist attracted street in the town with easy access to city center as well as tourist attractions. Only 2-minute walk to the picturesque beautiful beach and then you can enjoy the sea to the fullest with fresh air, white sands, and a lots of beach activities, etc. Also, the Hotel is close to major landmarks such as Son Tra Peninsula, Marble Mountain, Ba Na Hills etc, and easy access to the city downtown. Whatever your reason for visiting Danang, Paracel Danang Hotel is always an ideal venue for exhilarating and exciting break away.', 'phong23_1.jpg'),
(24, 'Phòng 24', 4, 578000, 'Khách Sạn Paradise Sài Gòn Boutique có 18 phòng, tất cả đồ nội thất đều dễ chịu, êm ái, và thậm chí nhiều phòng còn cung cấp các tiện nghi như ban công, tủ lạnh, máy pha trà/cà phê, áo choàng tắm, tủ đồ ăn uống nhẹ. Bên cạnh đó, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ.\r\n\r\nTừ Khách Sạn Paradise Sài Gòn Boutique dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Paradise Sài Gòn Boutique, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Paradise Sài Gòn Boutique luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong24_1.jpg'),
(25, 'Phòng 25', 1, 348000, 'Khách sạn River Prince Đà Lạt được xây dựng theo tiêu chuẩn 4 sao với phong cách hiện đại, trang nhã, thiết kế sang trọng mang kiểu dáng phương Tây kết hợp hài hòa với kiểu dáng phương Đông, mỗi phòng đều có cửa sổ để ngắm nhìn thành phố. Là không gian nghỉ dưỡng hấp dẫn cho quý khách khi đến với Đà Lạt\r\n\r\nKhách sạn River Prince Đà Lạt gồm có 104 phòng sang trọng, trang thiết bị đầy đủ tiện nghi, được thiết kế hiện đại trang nhã. Mỗi phòng đều được trang bị đầy đủ các tiện nghi như: TV 29 inch, truyền hình cáp, wireless free, điện thoại gọi quốc tế, quạt mát, mini bar, bồn tắm đứng hoặc bồn tắm nằm, nước uống miễn phí, văn phòng phẩm, café, trà và vật dụng pha chế…', 'phong25_1.jpg'),
(26, 'Phòng 26', 3, 553000, 'Khách sạn Happy Day nằm ngay tại vị trí trung tâm đường Bạch Đằng, con đường đẹp nhất thành phố Đà Nẵng, khách sạn sẽ mang lại cho du khách nơi nghỉ chân tuyệt vời để tiếp tục khám phá một thành phố sôi động. Du khách có thể dạo bộ đến những địa điểm lý tưởng như nhà thờ Chính Tòa Đà Nẵng chỉ cách 0,1km, bảo tàng Chăm chỉ 0,5km, tự do mua sắm tại chợ Hàn chỉ 0,05km và du khách chỉ mất khoảng 7 phút để đến sân bay.\r\n\r\nKhách sạn Happy Day với tất cả các phòng khách đều được trang bị những thiết bị tiện nghi hiện đại như tivi Led, máy điều hòa,tủ lạnh, bồn tắm nằm, buồng tắm đứng. Cùng với những tính năng hàng đầu của khách sạn như thang máy, người vận chuyển hành lý, đưa đón khách sạn/sân bay, internet wifi và trông xe miễn phí kèm theo các dịch vụ du lịch, cho thuê xe các loại, giặt là… Về đêm, khách ở khách sạn có thể ngắm nhìn hai bên bờ sông, cầu quay Sông Hàn và cầu Rồng với những ánh đèn muôn sắc lung linh. Với vị trí đắc địa này cùng cơ sở vật chất, thiết bị hoàn hảo, Khách sạn Happy Day tự hào mang đến cho các bạn một kỳ nghỉ thoải mái và an lành.\r\n\r\nTừ khách sạn có thể dễ dàng tiếp cận đến các địa danh như  cách bãi biển công cộng Phạm Văn Đồng 3 km và cách Ngũ Hành Sơn 10 km…', 'phong26_1.jpg'),
(27, 'Phòng 27', 2, 456000, 'PARACEL Danang Hotel, international 4-star hotel, is ideally located just a few steps away from the beautiful beach.\r\n\r\nCombining antique architecture and elegantly modern design, the hotel offers high-end accommodations, world class facilities including luxury spa, outdoor pool, restaurants, coffee lounge & bar, Cinema, Cigar room and spacious ballroom for banquet and conference. All the rooms feature sea view, wooden floor, and elegant luxurious furniture. \r\n\r\nThe Hotel is perfectly situated at the most tourist attracted street in the town with easy access to city center as well as tourist attractions. Only 2-minute walk to the picturesque beautiful beach and then you can enjoy the sea to the fullest with fresh air, white sands, and a lots of beach activities, etc. Also, the Hotel is close to major landmarks such as Son Tra Peninsula, Marble Mountain, Ba Na Hills etc, and easy access to the city downtown. Whatever your reason for visiting Danang, Paracel Danang Hotel is always an ideal venue for exhilarating and exciting break away.', 'phong27_1.jpg'),
(28, 'Phòng 28', 2, 444000, 'Khách sạn Cosmopolitan 3 sao là một trong những khách sạn đẹp ở thành phố Hồ Chí Minh, với 63 phòng rộng rãi, dãy phòng của khách sạn  được thiết kế để cung cấp sự thoải mái và phong cách với dịch vụ cá nhân và các tiện nghi thuận tiện.\r\n\r\nHãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được tại Khách Sạn Cosmopolitan như dịch vụ làm đẹp, phòng hút thuốc, quầy lễ tân 24 giờ, đưa đón khách sạn/sân bay, quầy nước...\r\n\r\nKhách Sạn Cosmopolitan rất chú ý đến việc trang bị đầy đủ tiện nghi để đạt được sự thoải mái và tiện lợi nhất. Trong một số phòng, khách hàng có thể tìm thấy kênh phim nội bộ, màn rèm cửa, áo choàng tắm, đầu đĩa DVD/CD, bồn tắm. Danh sách phương tiện giải trí được trang bị ở khách sạn, bao gồm bồn tắm nóng, hát karaoke, mát xa, phòng tắm hơi, spa…\r\n\r\nTừ Khách Sạn Cosmopolitan dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Cosmopolitan, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Cosmopolitan luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong28_1.jpg'),
(29, 'Phòng 29', 1, 567000, 'Khách sạn River Prince Đà Lạt được xây dựng theo tiêu chuẩn 4 sao với phong cách hiện đại, trang nhã, thiết kế sang trọng mang kiểu dáng phương Tây kết hợp hài hòa với kiểu dáng phương Đông, mỗi phòng đều có cửa sổ để ngắm nhìn thành phố. Là không gian nghỉ dưỡng hấp dẫn cho quý khách khi đến với Đà Lạt\r\n\r\nKhách sạn River Prince Đà Lạt gồm có 104 phòng sang trọng, trang thiết bị đầy đủ tiện nghi, được thiết kế hiện đại trang nhã. Mỗi phòng đều được trang bị đầy đủ các tiện nghi như: TV 29 inch, truyền hình cáp, wireless free, điện thoại gọi quốc tế, quạt mát, mini bar, bồn tắm đứng hoặc bồn tắm nằm, nước uống miễn phí, văn phòng phẩm, café, trà và vật dụng pha chế…', 'phong29_1.jpg'),
(30, 'Phòng 30', 4, 578000, 'Khách Sạn Nhật Hạ 3 tọa lạc tại trung tâm kinh doanh sôi động của thành phố Hồ Chí Minh và các khu phức hợp quận 1. Khách Sạn Nhật Hạ 3 là thiên đường của tiện nghi, thoải mái, an toàn và yên bình. Vị trí thuận lợi tuyệt vời cho khách đến tham quan tại các điểm du lịch, khu vui chơi giải trí và trung tâm mua sắm. Từ khách sạn, quý khách chỉ cần lái xe 5 phút là tới Dinh Thống Nhất và 25 phút là đến Sân bay Quốc tế Tân Sơn Nhất.\r\n\r\nKhách Sạn Nhật Hạ 3 là khách sạn đạt chuẩn 3 sao bao gồm 91 phòng ngủ được thiết kế sang trọng theo phong cách Châu Âu. Khi đặt phòng Khách Sạn Nhật Hạ 3, du khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây. Với phong cách phục vụ chuyên nghiệp và sự thân thiện của nhân viên khách sạn, du khách sẽ được nghỉ ngơi thoải mái sau những ngày làm việc căng thẳng hay tận hưởng những giây phút ấn tượng và khó quên bên gia đình và những người thân yêu.', 'phong30_1.jpg'),
(31, 'Phòng 31', 2, 489000, 'Lake View hotel is located right in the heart of Dalat city, lying on the hill looking down to Xuan Huong Lake. Within easy walking distance to access city’s major office buildings, banks, post offices, shopping centers and Da Lat market. We features 20 luxurious and comfortable rooms, the cozy restaurant as you are home! Some other services together, friendly and professional staff will render guests a relaxing and enjoyable trips.\r\nKhách sạn Lake View toạ lạc giữa trung tâm thành phố Đà Lạt, nằm trên ngọn đồi hướng xuống hồ Xuân Hương thơ mộng. Dễ dàng đi bộ đến các tòa nhà văn phòng lớn, các ngân hàng, bưu điện, trung tâm mua sắm và chợ Đà Lạt. Chúng tôi có 20 phòng nghỉ sang trọng và tiện nghi, nhà hàng gia đình với không gian ấm cúng, một số dịch vụ khác cùng đội ngũ nhân viên thân thiện và chuyên nghiệp sẽ giúp quý khách có một kì nghỉ thư giãn và thú vị.', 'phong31_1.jpg'),
(32, 'Phòng 32', 3, 458000, 'Khách Sạn Paradise Sài Gòn Boutique có 18 phòng, tất cả đồ nội thất đều dễ chịu, êm ái, và thậm chí nhiều phòng còn cung cấp các tiện nghi như ban công, tủ lạnh, máy pha trà/cà phê, áo choàng tắm, tủ đồ ăn uống nhẹ. Bên cạnh đó, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ.\r\n\r\nTừ Khách Sạn Paradise Sài Gòn Boutique dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Paradise Sài Gòn Boutique, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Paradise Sài Gòn Boutique luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong32_1.jpg'),
(33, 'Phòng 33', 1, 566000, 'PARACEL Danang Hotel, international 4-star hotel, is ideally located just a few steps away from the beautiful beach.\r\n\r\nCombining antique architecture and elegantly modern design, the hotel offers high-end accommodations, world class facilities including luxury spa, outdoor pool, restaurants, coffee lounge & bar, Cinema, Cigar room and spacious ballroom for banquet and conference. All the rooms feature sea view, wooden floor, and elegant luxurious furniture. \r\n\r\nThe Hotel is perfectly situated at the most tourist attracted street in the town with easy access to city center as well as tourist attractions. Only 2-minute walk to the picturesque beautiful beach and then you can enjoy the sea to the fullest with fresh air, white sands, and a lots of beach activities, etc. Also, the Hotel is close to major landmarks such as Son Tra Peninsula, Marble Mountain, Ba Na Hills etc, and easy access to the city downtown. Whatever your reason for visiting Danang, Paracel Danang Hotel is always an ideal venue for exhilarating and exciting break away.', 'phong33_1.jpg'),
(34, 'Phòng 34', 2, 578000, 'Khách sạn Happy Day nằm ngay tại vị trí trung tâm đường Bạch Đằng, con đường đẹp nhất thành phố Đà Nẵng, khách sạn sẽ mang lại cho du khách nơi nghỉ chân tuyệt vời để tiếp tục khám phá một thành phố sôi động. Du khách có thể dạo bộ đến những địa điểm lý tưởng như nhà thờ Chính Tòa Đà Nẵng chỉ cách 0,1km, bảo tàng Chăm chỉ 0,5km, tự do mua sắm tại chợ Hàn chỉ 0,05km và du khách chỉ mất khoảng 7 phút để đến sân bay.\r\n\r\nKhách sạn Happy Day với tất cả các phòng khách đều được trang bị những thiết bị tiện nghi hiện đại như tivi Led, máy điều hòa,tủ lạnh, bồn tắm nằm, buồng tắm đứng. Cùng với những tính năng hàng đầu của khách sạn như thang máy, người vận chuyển hành lý, đưa đón khách sạn/sân bay, internet wifi và trông xe miễn phí kèm theo các dịch vụ du lịch, cho thuê xe các loại, giặt là… Về đêm, khách ở khách sạn có thể ngắm nhìn hai bên bờ sông, cầu quay Sông Hàn và cầu Rồng với những ánh đèn muôn sắc lung linh. Với vị trí đắc địa này cùng cơ sở vật chất, thiết bị hoàn hảo, Khách sạn Happy Day tự hào mang đến cho các bạn một kỳ nghỉ thoải mái và an lành.\r\n\r\nTừ khách sạn có thể dễ dàng tiếp cận đến các địa danh như  cách bãi biển công cộng Phạm Văn Đồng 3 km và cách Ngũ Hành Sơn 10 km…', 'phong34_1.jpg'),
(35, 'Phòng 35', 3, 634000, 'Khách sạn Happy Day nằm ngay tại vị trí trung tâm đường Bạch Đằng, con đường đẹp nhất thành phố Đà Nẵng, khách sạn sẽ mang lại cho du khách nơi nghỉ chân tuyệt vời để tiếp tục khám phá một thành phố sôi động. Du khách có thể dạo bộ đến những địa điểm lý tưởng như nhà thờ Chính Tòa Đà Nẵng chỉ cách 0,1km, bảo tàng Chăm chỉ 0,5km, tự do mua sắm tại chợ Hàn chỉ 0,05km và du khách chỉ mất khoảng 7 phút để đến sân bay.\r\n\r\nKhách sạn Happy Day với tất cả các phòng khách đều được trang bị những thiết bị tiện nghi hiện đại như tivi Led, máy điều hòa,tủ lạnh, bồn tắm nằm, buồng tắm đứng. Cùng với những tính năng hàng đầu của khách sạn như thang máy, người vận chuyển hành lý, đưa đón khách sạn/sân bay, internet wifi và trông xe miễn phí kèm theo các dịch vụ du lịch, cho thuê xe các loại, giặt là… Về đêm, khách ở khách sạn có thể ngắm nhìn hai bên bờ sông, cầu quay Sông Hàn và cầu Rồng với những ánh đèn muôn sắc lung linh. Với vị trí đắc địa này cùng cơ sở vật chất, thiết bị hoàn hảo, Khách sạn Happy Day tự hào mang đến cho các bạn một kỳ nghỉ thoải mái và an lành.\r\n\r\nTừ khách sạn có thể dễ dàng tiếp cận đến các địa danh như  cách bãi biển công cộng Phạm Văn Đồng 3 km và cách Ngũ Hành Sơn 10 km…', 'phong35_1.jpg'),
(36, 'Phòng 36', 4, 758000, 'Khách sạn Cosmopolitan 3 sao là một trong những khách sạn đẹp ở thành phố Hồ Chí Minh, với 63 phòng rộng rãi, dãy phòng của khách sạn  được thiết kế để cung cấp sự thoải mái và phong cách với dịch vụ cá nhân và các tiện nghi thuận tiện.\r\n\r\nHãy tận hưởng hết vô số dịch vụ và tiện nghi không gì sánh được tại Khách Sạn Cosmopolitan như dịch vụ làm đẹp, phòng hút thuốc, quầy lễ tân 24 giờ, đưa đón khách sạn/sân bay, quầy nước...\r\n\r\nKhách Sạn Cosmopolitan rất chú ý đến việc trang bị đầy đủ tiện nghi để đạt được sự thoải mái và tiện lợi nhất. Trong một số phòng, khách hàng có thể tìm thấy kênh phim nội bộ, màn rèm cửa, áo choàng tắm, đầu đĩa DVD/CD, bồn tắm. Danh sách phương tiện giải trí được trang bị ở khách sạn, bao gồm bồn tắm nóng, hát karaoke, mát xa, phòng tắm hơi, spa…\r\n\r\nTừ Khách Sạn Cosmopolitan dễ dàng tiếp cận đến các địa điểm như Nhà hát Lớn Sài Gòn, Dinh Thống Nhất, nhà thờ Đức Bà, Nhà Thờ Huyền Sỹ, bảo tàng Hồ Chí Minh, bảo tàng chứng tích chiến tranh, nhà thi đấu Phú Thọ, bến Nhà Rồng... là những địa điểm hàng năm thu hút rất nhiều du khách đặt tour tới đây.\r\n\r\nBên cạnh đó, khi đặt phòng Khách Sạn Cosmopolitan, khách sạn còn gợi ý cho bạn những hoạt động vui chơi giải trí bảo đảm bạn luôn thấy hứng thú trong suốt kì nghỉ. Dù bạn đến để thư giãn hay làm gì, Khách Sạn Cosmopolitan luôn là sự lựa chọn hoàn hảo cho kì nghỉ của bạn ở Sài Gòn.', 'phong36_1.jpg'),
(37, 'Phòng 37', 2, 676000, 'Khách sạn River Prince Đà Lạt được xây dựng theo tiêu chuẩn 4 sao với phong cách hiện đại, trang nhã, thiết kế sang trọng mang kiểu dáng phương Tây kết hợp hài hòa với kiểu dáng phương Đông, mỗi phòng đều có cửa sổ để ngắm nhìn thành phố. Là không gian nghỉ dưỡng hấp dẫn cho quý khách khi đến với Đà Lạt\r\n\r\nKhách sạn River Prince Đà Lạt gồm có 104 phòng sang trọng, trang thiết bị đầy đủ tiện nghi, được thiết kế hiện đại trang nhã. Mỗi phòng đều được trang bị đầy đủ các tiện nghi như: TV 29 inch, truyền hình cáp, wireless free, điện thoại gọi quốc tế, quạt mát, mini bar, bồn tắm đứng hoặc bồn tắm nằm, nước uống miễn phí, văn phòng phẩm, café, trà và vật dụng pha chế…', 'phong37_1.jpg'),
(38, 'Phòng 38', 1, 722000, 'Khách Sạn Nhật Hạ 3 tọa lạc tại trung tâm kinh doanh sôi động của thành phố Hồ Chí Minh và các khu phức hợp quận 1. Khách Sạn Nhật Hạ 3 là thiên đường của tiện nghi, thoải mái, an toàn và yên bình. Vị trí thuận lợi tuyệt vời cho khách đến tham quan tại các điểm du lịch, khu vui chơi giải trí và trung tâm mua sắm. Từ khách sạn, quý khách chỉ cần lái xe 5 phút là tới Dinh Thống Nhất và 25 phút là đến Sân bay Quốc tế Tân Sơn Nhất.\r\n\r\nKhách Sạn Nhật Hạ 3 là khách sạn đạt chuẩn 3 sao bao gồm 91 phòng ngủ được thiết kế sang trọng theo phong cách Châu Âu. Khi đặt phòng Khách Sạn Nhật Hạ 3, du khách sẽ hoàn toàn hài lòng về dịch vụ và giá cả tại đây. Với phong cách phục vụ chuyên nghiệp và sự thân thiện của nhân viên khách sạn, du khách sẽ được nghỉ ngơi thoải mái sau những ngày làm việc căng thẳng hay tận hưởng những giây phút ấn tượng và khó quên bên gia đình và những người thân yêu.', 'phong38_1.jpg'),
(39, 'Phòng 39', 2, 656000, 'PARACEL Danang Hotel, international 4-star hotel, is ideally located just a few steps away from the beautiful beach.\r\n\r\nCombining antique architecture and elegantly modern design, the hotel offers high-end accommodations, world class facilities including luxury spa, outdoor pool, restaurants, coffee lounge & bar, Cinema, Cigar room and spacious ballroom for banquet and conference. All the rooms feature sea view, wooden floor, and elegant luxurious furniture. \r\n\r\nThe Hotel is perfectly situated at the most tourist attracted street in the town with easy access to city center as well as tourist attractions. Only 2-minute walk to the picturesque beautiful beach and then you can enjoy the sea to the fullest with fresh air, white sands, and a lots of beach activities, etc. Also, the Hotel is close to major landmarks such as Son Tra Peninsula, Marble Mountain, Ba Na Hills etc, and easy access to the city downtown. Whatever your reason for visiting Danang, Paracel Danang Hotel is always an ideal venue for exhilarating and exciting break away.', 'phong39_1.jpg'),
(40, 'Phòng 40', 4, 676000, 'Khách sạn Happy Day nằm ngay tại vị trí trung tâm đường Bạch Đằng, con đường đẹp nhất thành phố Đà Nẵng, khách sạn sẽ mang lại cho du khách nơi nghỉ chân tuyệt vời để tiếp tục khám phá một thành phố sôi động. Du khách có thể dạo bộ đến những địa điểm lý tưởng như nhà thờ Chính Tòa Đà Nẵng chỉ cách 0,1km, bảo tàng Chăm chỉ 0,5km, tự do mua sắm tại chợ Hàn chỉ 0,05km và du khách chỉ mất khoảng 7 phút để đến sân bay.\r\n\r\nKhách sạn Happy Day với tất cả các phòng khách đều được trang bị những thiết bị tiện nghi hiện đại như tivi Led, máy điều hòa,tủ lạnh, bồn tắm nằm, buồng tắm đứng. Cùng với những tính năng hàng đầu của khách sạn như thang máy, người vận chuyển hành lý, đưa đón khách sạn/sân bay, internet wifi và trông xe miễn phí kèm theo các dịch vụ du lịch, cho thuê xe các loại, giặt là… Về đêm, khách ở khách sạn có thể ngắm nhìn hai bên bờ sông, cầu quay Sông Hàn và cầu Rồng với những ánh đèn muôn sắc lung linh. Với vị trí đắc địa này cùng cơ sở vật chất, thiết bị hoàn hảo, Khách sạn Happy Day tự hào mang đến cho các bạn một kỳ nghỉ thoải mái và an lành.\r\n\r\nTừ khách sạn có thể dễ dàng tiếp cận đến các địa danh như  cách bãi biển công cộng Phạm Văn Đồng 3 km và cách Ngũ Hành Sơn 10 km…', 'phong40_1.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

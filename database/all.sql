-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2016 at 05:02 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `all`
--

-- --------------------------------------------------------

--
-- Table structure for table `f100_article`
--

CREATE TABLE IF NOT EXISTS `f100_article` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `summary` varchar(2000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_article`
--

INSERT INTO `f100_article` (`id`, `cat_id`, `title`, `img`, `summary`, `content`, `time`) VALUES
(1, 7, 'Cá Lóc Hấp', '7830f-box1.jpg', 'Có những thực phẩm chúng ta tưởng rằng tốt cho sức khỏe mà hóa ra lại không tốt và ngược lại. Dưới đây là 8 sự thật liên quan đến lợi ích của thực phẩm chúng ta vẫn dùng hàng ngày mà bất kì ai đều không nên bỏ qua.', '<p style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px 0px 10px; color: rgb(51, 51, 51); line-height: 25.71428680419922px;">\n	C&oacute; những điều ch&uacute;ng ta biết về chuyện ăn uống v&agrave; thức ăn, thực phẩm lại kh&ocirc;ng đ&uacute;ng với thực tế. Vậy l&agrave;m sao để biết đ&acirc;u l&agrave; đ&uacute;ng, đ&acirc;u l&agrave; sai, thực phẩm n&agrave;o l&agrave; tốt, thực phẩm n&agrave;o l&agrave; kh&ocirc;ng tốt v&agrave; l&agrave;m sao để lựa chọn thực phẩm tốt cho sức khỏe?&hellip; Sau đ&acirc;y l&agrave; 8 sự thật li&ecirc;n quan đến thực phẩm ch&uacute;ng ta vẫn d&ugrave;ng h&agrave;ng ng&agrave;y m&agrave; bất k&igrave; ai quan t&acirc;m đến sức khỏe của m&igrave;nh v&agrave; người th&acirc;n đều kh&ocirc;ng n&ecirc;n bỏ qua.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">1. Rau đ&ocirc;ng lạnh &iacute;t dinh dưỡng hơn so với rau tươi</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Những ch&acirc;n l&yacute; về lợi &iacute;ch của thực phẩm Rau tươi nhiều dinh dưỡng hơn rau đ&ocirc;ng lạnh. Rau vừa h&aacute;i chứa nhiều vitamin v&agrave; kho&aacute;ng chất nhất, mức độ dinh dưỡng sẽ giảm xuống trong qu&aacute; tr&igrave;nh vận chuyển v&agrave; lưu trữ. V&agrave; lượng dinh dưỡng sẽ c&agrave;ng giảm khi rau được lưu trữ l&acirc;u ng&agrave;y ở dạng b&igrave;nh thường. Nhưng mặt kh&aacute;c, nếu giữ ở ngăn đ&ocirc;ng lạnh th&igrave; đ&egrave;n flash đ&ocirc;ng lạnh sẽ giữ lại hầu hết c&aacute;c chất dinh dưỡng của rau.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">2. M&oacute;n salad kh&ocirc;ng c&oacute; chất b&eacute;o l&agrave; tốt nhất</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Salad rau chứa đầy chất dinh dưỡng tuyệt vời như lycopene v&agrave; beta-carotene. Nhưng cơ thể của bạn kh&ocirc;ng thể hấp thụ ch&uacute;ng m&agrave; kh&ocirc;ng c&oacute; một ch&uacute;t gi&uacute;p đỡ từ chất b&eacute;o. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; chỉ một lượng nhỏ dầu &ocirc; liu l&agrave; đủ hoặc bạn c&oacute; thể th&ecirc;m pho m&aacute;t &iacute;t chất b&eacute;o, c&aacute;c loại hạt, hạt giống, hoặc bơ th&ecirc;m v&agrave;o m&oacute;n salad của m&igrave;nh.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">3. Thịt lợn sẽ l&agrave;m bạn b&eacute;o</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Sự thật l&agrave; x&uacute;c x&iacute;ch v&agrave; xương sườn chứa nhiều calo, nhưng thịt lợn đ&atilde; nấu ch&iacute;n th&igrave; c&oacute; &iacute;t calo hơn, cũng chỉ tương đương với lượng calo của ức g&agrave; kh&ocirc;ng c&oacute; da.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">4. Thực phẩm được l&agrave;m ngọt bằng nước &eacute;p tr&aacute;i c&acirc;y sẽ bổ dưỡng hơn</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Cơ thể kh&ocirc;ng ph&acirc;n biệt được sự kh&aacute;c biệt giữa đường b&igrave;nh thường v&agrave; nước tr&aacute;i c&acirc;y chế biến được sử dụng để l&agrave;m ngọt c&aacute;c loại thực phẩm. Do đ&oacute;, kh&ocirc;ng c&oacute; chuyện nước &eacute;p tr&aacute;i c&acirc;y d&ugrave;ng l&agrave;m chất ngọt sẽ cung cấp nhiều dinh dưỡng hơn.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">5. Bạn n&ecirc;n uống t&aacute;m ly nước mỗi ng&agrave;y</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Những ch&acirc;n l&yacute; về lợi &iacute;ch của thực phẩm H&atilde;y uống nước bất k&igrave; khi n&agrave;o bạn kh&aacute;t v&agrave; muốn uống. Nước l&agrave; thứ đồ uống kh&aacute;t tuyệt vời mặc d&ugrave; sữa v&agrave; nước tr&aacute;i c&acirc;y &ndash; c&agrave; ph&ecirc; thậm ch&iacute;, tr&agrave; v&agrave; nước giải kh&aacute;t cũng g&oacute;p phần cung cấp nước cho cơ thể. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng như ai v&agrave; ai cũng cần uống t&aacute;m ly nước mỗi ng&agrave;y. T&ugrave;y thể trạng v&agrave; điều kiện thời tiết, c&aacute;c m&ugrave;a trong năm m&agrave; lượng nước cần mỗi ng&agrave;y. Nhưng tốt nhất th&igrave; vẫn l&agrave; uống bất k&igrave; khi n&agrave;o bạn kh&aacute;t v&agrave; muốn uống.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">6. C&aacute; chứa rất nhiều natri&nbsp;</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Nếu l&agrave; c&aacute; được đ&oacute;ng hộp, hun kh&oacute;i th&igrave; đ&uacute;ng l&agrave; như vậy. Tuy nhi&ecirc;n, c&aacute; tươi, cho d&ugrave; nước mặn hoặc nước ngọt, th&igrave; h&agrave;m lượng Natri tự nhi&ecirc;n lại thấp.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">7. Thực phẩm bổ sung vitamin v&agrave; kho&aacute;ng chất lu&ocirc;n tốt hơn</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Điều n&agrave;y c&ograve;n phụ thuộc đ&oacute; l&agrave; thực phẩm n&agrave;o. V&iacute; dụ, nước cam v&agrave; sữa gi&agrave;u canxi bổ sung vitamin D, l&agrave; sự lựa chọn tuyệt vời. Tuy nhi&ecirc;n, ăn một thanh kẹo c&oacute; chứa một số loại vitamin v&agrave; kho&aacute;ng chất hoặc ăn c&aacute;c m&oacute;n ăn chế biến với một loại đường n&agrave;o đ&oacute; được cho l&agrave; cũng c&oacute; vitamin v&agrave; kho&aacute;ng chất th&igrave; chưa hẳn l&agrave; tốt lắm.&nbsp;<br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	<span style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700;">8. C&aacute;c loại hạt rang kh&ocirc; sẽ &iacute;t calo hơn l&agrave; rang với dầu</span><br style="box-sizing: border-box; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px;" />\n	Đ&uacute;ng l&agrave; ở đ&acirc;y c&oacute; một sự kh&aacute;c biệt nhỏ về lượng calo nhưng nếu ăn rất nhiều bất k&igrave; loại hạt n&agrave;o rang bằng dầu th&igrave; mới phải lo lắng đến chuyện calo n&agrave;y. Điều quan trọng l&agrave;, cần ưu ti&ecirc;n lựa chọn những loại hạt tốt cho sức khỏe tim như hạnh nh&acirc;n, quả &oacute;c ch&oacute;. Theo B&aacute;o Hạnh Ph&uacute;c Gia Đ&igrave;nh</p>\n<p>\n	<span style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 25.71428680419922px; float: right; font-style: italic;">Theo Đo&agrave;n Vnd News</span></p>\n', '2014-05-20 10:00:04'),
(2, 15, 'Những Thực Phẩm Giàu Chất Đạm', '', 'Những Thực Phẩm Giàu Chất Đạm như tôm cá mực, bò , dê', '<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: architep, Times, serif; font-size: 18px; line-height: 25.71428680419922px;">Salad rau chứa đầy chất dinh dưỡng tuyệt vời như lycopene v&agrave; beta-carotene. Nhưng cơ thể của bạn kh&ocirc;ng thể hấp thụ ch&uacute;ng m&agrave; kh&ocirc;ng c&oacute; một ch&uacute;t gi&uacute;p đỡ từ chất b&eacute;o. Điều n&agrave;y kh&ocirc;ng c&oacute; nghĩa l&agrave; chỉ một lượng nhỏ dầu &ocirc; liu l&agrave; đủ hoặc bạn c&oacute; thể th&ecirc;m pho m&aacute;t &iacute;t chất b&eacute;o, c&aacute;c loại hạt, hạt giống, hoặc bơ th&ecirc;m v&agrave;o m&oacute;n salad của m&igrave;nh.&nbsp;</span></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: architep, Times, serif; font-size: 18px; font-weight: 700; line-height: 25.71428680419922px;">Bạn n&ecirc;n uống t&aacute;m ly nước mỗi ng&agrave;y</span></p>\r\n<p>\r\n	<span style="color: rgb(51, 51, 51); font-family: architep, Times, serif; font-size: 18px; line-height: 25.71428680419922px;">Những ch&acirc;n l&yacute; về lợi &iacute;ch của thực phẩm H&atilde;y uống nước bất k&igrave; khi n&agrave;o bạn kh&aacute;t v&agrave; muốn uống. Nước l&agrave; thứ đồ uống kh&aacute;t tuyệt vời mặc d&ugrave; sữa v&agrave; nước tr&aacute;i c&acirc;y &ndash; c&agrave; ph&ecirc; thậm ch&iacute;, tr&agrave; v&agrave; nước giải kh&aacute;t cũng g&oacute;p phần cung cấp nước cho cơ thể. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng như ai v&agrave; ai cũng cần uống t&aacute;m ly nước mỗi ng&agrave;y. T&ugrave;y thể trạng v&agrave; điều kiện thời tiết, c&aacute;c m&ugrave;a trong năm m&agrave; lượng nước cần mỗi ng&agrave;y. Nhưng tốt nhất th&igrave; vẫn l&agrave; uống bất k&igrave; khi n&agrave;o bạn kh&aacute;t v&agrave; muốn uống.&nbsp;</span><br style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 25.71428680419922px;" />\r\n	<span style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700; color: rgb(51, 51, 51); line-height: 25.71428680419922px;">C&aacute; chứa rất nhiều natri&nbsp;</span><br style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 25.71428680419922px;" />\r\n	<span style="color: rgb(51, 51, 51); font-family: architep, Times, serif; font-size: 18px; line-height: 25.71428680419922px;">Nếu l&agrave; c&aacute; được đ&oacute;ng hộp, hun kh&oacute;i th&igrave; đ&uacute;ng l&agrave; như vậy. Tuy nhi&ecirc;n, c&aacute; tươi, cho d&ugrave; nước mặn hoặc nước ngọt, th&igrave; h&agrave;m lượng Natri tự nhi&ecirc;n lại thấp.&nbsp;</span><br style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 25.71428680419922px;" />\r\n	<span style="box-sizing: border-box; font-family: architep, Times, serif; font-size: 18px; -webkit-transition: all 0.3s ease-in-out; transition: all 0.3s ease-in-out; padding: 0px; margin: 0px; font-weight: 700; color: rgb(51, 51, 51); line-height: 25.71428680419922px;">Thực phẩm bổ sung vitamin v&agrave; kho&aacute;ng chất lu&ocirc;n tốt hơn</span></p>\r\n<p>\r\n	&nbsp;</p>\r\n<p style="text-align: right;">\r\n	<em><cite><font color="#333333" face="architep, Times, serif" size="4"><span style="line-height: 25.71428680419922px;">Đo&agrave;n Vnd News</span></font></cite></em></p>\r\n', '2014-05-22 09:53:24'),
(4, 13, 'mẹo vặt', '', 'mẹo vặt nèk', '<p>\r\n	mẹo vặt</p>\r\n', '2014-05-22 09:54:27'),
(5, 15, '7 thực phẩm tuyệt vời giúp bạn hết chán làm việc', '12ac1-tra-den.jpg', 'Một số thực phẩm "vàng" như dưới đây sẽ giúp bạn tăng cường sức khỏe, năng suất và cả năng lượng để đáp ứng những nhu cầu trong công việc của mình.', '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 25px; text-align: justify;">\n	Nếu bạn đang cảm thấy thiếu năng lượng khi l&agrave;m việc, buồn ngủ v&agrave;o buổi chiều... h&atilde;y chọn biện ph&aacute;p khắc phục l&agrave; bổ sung c&aacute;c loại thực phẩm sau đ&acirc;y. Ch&uacute;ng được coi l&agrave; những thực phẩm &quot;v&agrave;ng&quot; gi&uacute;p bạn cải thiện sức khỏe, tăng năng lượng v&agrave; l&agrave;m việc rất hiệu quả.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	<strong style="margin: 0px; padding: 0px;">1. Tr&agrave; đen</strong><br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Một t&aacute;ch tr&agrave; mỗi ng&agrave;y c&oacute; thể gi&uacute;p bạn nhanh ch&oacute;ng vượt qua căng thẳng. Một nghi&ecirc;n cứu tiến h&agrave;nh tại Đại học College London ph&aacute;t hiện ra rằng tr&agrave; đen c&oacute; t&aacute;c động t&iacute;ch cực đến nồng độ hormone căng thẳng trong cơ thể. Theo c&aacute;c nh&agrave; nghi&ecirc;n cứu, tr&agrave; c&oacute; ảnh hưởng trong việc đưa mức độ hormone căng thẳng trở lại b&igrave;nh thường.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	&quot;Tr&agrave; l&agrave; một hợp chất h&oacute;a học rất phức tạp, với nhiều th&agrave;nh phần kh&aacute;c nhau. Th&agrave;nh phần như catechin, polyphenols, flavonoids v&agrave; c&aacute;c axit amin đ&atilde; được t&igrave;m thấy để dẫn truyền thần kinh c&oacute; hiệu lực trong n&atilde;o bộ&quot;, c&aacute;c nh&agrave; nghi&ecirc;n cứu Đại học tuy&ecirc;n bố. Trước khi một cuộc họp căng thẳng, bạn cũng c&oacute; thể lựa chọn cho m&igrave;nh một t&aacute;ch c&agrave; ph&ecirc; thay v&igrave; tr&agrave;.</div>\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 25px; text-align: center;">\n	<br style="margin: 0px; padding: 0px;" />\n	<img alt="tra-den" src="http://img.dinhduong.com.vn/Upload/images/Thu-Huong/thang5-2014/tra-den.jpg" style="margin: 0px; padding: 0px; border: 0px; width: 600px; height: 338px;" /></div>\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial; font-size: 14px; line-height: 25px; text-align: justify;">\n	<br style="margin: 0px; padding: 0px;" />\n	<strong style="margin: 0px; padding: 0px;">2. Ngũ cốc nguy&ecirc;n hạt</strong><br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Sự tổng hợp của carbohydrates v&agrave; chất xơ trong ngũ cốc nguy&ecirc;n hạt gi&uacute;p giữ mức insulin ổn định trong n&atilde;o, do đ&oacute; l&agrave;m giảm chất b&eacute;o được lưu trữ - t&iacute;n hiệu cho cơ thể của bạn v&agrave; gi&uacute;p bạn tr&aacute;nh mệt mỏi. B&aacute;nh kẹo c&aacute;c loại ngũ cốc l&agrave; một lựa chọn thuận tiện khi bạn đang khỏe mạnh nhưng tại nơi l&agrave;m việc. Nhưng bạn sẽ c&oacute; &iacute;t kh&oacute; khăn để t&igrave;m đ&uacute;ng loại kẹo ngũ cốc n&agrave;y.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Một ch&uacute;t gợi &yacute; để gi&uacute;p bạn l&agrave; bảng th&ocirc;ng tin dinh dưỡng tr&ecirc;n nh&atilde;n sẽ cho bạn biết về c&aacute;c th&agrave;nh phần c&oacute; lợi như yến mạch, kiều mạch , hạnh nh&acirc;n, ngũ cốc... Nghi&ecirc;n cứu được tiến h&agrave;nh tại Trường Y Harvard cho thấy ti&ecirc;u thụ c&aacute;c loại thực phẩm chất xơ ngũ cốc nguy&ecirc;n hạt cũng gi&uacute;p bạn kh&ocirc;ng lo lắng về việc tăng c&acirc;n.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	<strong style="margin: 0px; padding: 0px;">3. Nước</strong><br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Bạn c&oacute; thường cảm thấy đ&oacute;i, mệt mỏi, kh&aacute;t? Đ&oacute; l&agrave; bởi v&igrave; bạn kh&ocirc;ng đ&aacute;p ứng nước m&agrave; cơ thể cần. Trong khi cơ thể cần nước để hoạt động b&igrave;nh thường. Khi bạn bị mất nước, bạn sẽ cảm thấy mệt mỏi, kh&oacute; tập trung hoặc cảm gi&aacute;c ngon miệng hơn b&igrave;nh thường, bởi v&igrave; đ&ocirc;i khi n&atilde;o hiểu lầm t&iacute;n hiệu &quot;mềm&quot; như &quot;đ&oacute;i&quot;. V&igrave; vậy, khi cơ thể mất nước, bạn sẽ cảm thấy mệt mỏi, h&ocirc;n m&ecirc;.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Th&ecirc;m li&ecirc;n tục cơ thể nước l&agrave; c&aacute;ch tốt nhất để giữ cho cơ thể đủ nước v&agrave; khỏe mạnh.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	<strong style="margin: 0px; padding: 0px;">4. Nho</strong><br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Nho kh&ocirc; hay nho tươi l&agrave; một tr&aacute;i c&acirc;y l&agrave; ho&agrave;n hảo để giữ trong văn ph&ograve;ng. N&oacute; kh&ocirc;ng chỉ dễ thực hiện m&agrave; c&ograve;n l&agrave; một m&oacute;n ăn l&agrave;nh mạnh để chia sẻ với c&aacute;c đồng nghiệp của bạn. Bạn c&oacute; biết, một phần nhỏ chỉ cung cấp 90 calo, kh&ocirc;ng c&oacute; chất b&eacute;o hoặc cholesterol, hầu như kh&ocirc;ng c&oacute; natri, v&agrave; l&agrave; một nguồn tuyệt vời của vitamin K.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Nhiều nghi&ecirc;n cứu đ&atilde; chứng minh rằng đ&oacute; l&agrave; nho nước tr&aacute;i c&acirc;y c&oacute; khả năng tăng sản xuất dopamine trong n&atilde;o - một dẫn truyền thần kinh, cần thiết cho bộ nhớ v&agrave; giải quyết c&aacute;c vấn đề của n&atilde;o.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	<strong style="margin: 0px; padding: 0px;">5. C&aacute;c loại hạt</strong><br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	C&aacute;c loại hạt l&agrave; một thực phẩm tuyệt vời để ăn nhẹ, salad hoặc sữa chua phục vụ tại nơi l&agrave;m việc. Kh&ocirc;ng giống như khoai t&acirc;y chi&ecirc;n c&oacute; chứa nhiều carbs trống, c&aacute;c loại hạt c&oacute; chứa chất b&eacute;o l&agrave;nh mạnh, protein v&agrave; chất xơ gi&uacute;p bạn cảm thấy no l&acirc;u hơn v&agrave; s&aacute;ng suốt, tập trung hơn v&agrave;o c&ocirc;ng việc.<br style="margin: 0px; padding: 0px;" />\n	<br style="margin: 0px; padding: 0px;" />\n	Một nghi&ecirc;n cứu năm 2013 được tiến h&agrave;nh bởi c&aacute;c nh&agrave; nghi&ecirc;n cứu lớn, Bệnh viện phụ sản Brigham v&agrave; Trường Y Harvard ph&aacute;t hiện ra rằng những người ăn c&aacute;c loại hạt hơn 7 lần mỗi tuần c&oacute; tỷ lệ tử vong thấp hơn những người kh&ocirc;ng ăn c&aacute;c loại hạt.</div>\n', '2014-05-31 17:00:00'),
(6, 15, 'Chọn dưa ngon không lo ngộ độc', '785f7-chon-dua-ngon.jpg', 'Thực tế, số trường hợp ngộ độc vì ăn dưa lê, dưa bở cao hơn hẳn nhiều loại hoa quả khác nên từ lâu nay, người tiêu dùng vẫn rất dè chừng khi mua các loại dưa trên.', '<div class="detail-info" style="margin: 10px 0px 0px 20px; padding: 0px; float: left; width: 660px; height: auto; overflow: hidden; font-weight: bold; text-align: justify; font-size: 14px; color: rgb(0, 0, 0); font-family: Arial; line-height: 19px;">\n	<span id="ContentHome_ctl00_lblInfo" style="margin: 0px; padding: 0px;">Thực tế, số trường hợp ngộ độc v&igrave; ăn dưa l&ecirc;, dưa bở cao hơn hẳn nhiều loại hoa quả kh&aacute;c n&ecirc;n từ l&acirc;u nay, người ti&ecirc;u d&ugrave;ng vẫn rất d&egrave; chừng khi mua c&aacute;c loại dưa tr&ecirc;n.</span></div>\n<div class="detail-content" style="margin: 10px 20px 0px; padding: 0px; float: left; width: 660px; height: auto; overflow: hidden; text-align: justify; line-height: 25px; font-size: 14px; color: rgb(0, 0, 0); font-family: Arial;">\n	<div style="margin: 0px; padding: 0px;">\n		Theo c&aacute;c nghi&ecirc;n cứu, dưa l&ecirc; hay dưa bở vốn l&agrave; những loại hoa quả ngon, bổ, rẻ, gi&uacute;p thanh nhiệt hiệu quả. Việc ăn dưa bị ngộ độc kh&ocirc;ng phải mọi trường hợp đều do thuốc trừ s&acirc;u g&acirc;y ra. Hiểu r&otilde; về c&aacute;c nguy&ecirc;n nh&acirc;n ngộ độc v&agrave; t&igrave;m c&aacute;ch ph&ograve;ng tr&aacute;nh l&agrave; điều mọi người cần quan t&acirc;m; thay v&igrave; loại bỏ ho&agrave;n to&agrave;n m&oacute;n dưa m&aacute;t bổ ra khỏi thực đơn của gia đ&igrave;nh m&igrave;nh.<br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		<strong style="margin: 0px; padding: 0px;">C&aacute;c nguy&ecirc;n nh&acirc;n g&acirc;y ngộ độc dưa</strong><br style="margin: 0px; padding: 0px;" />\n		&nbsp;<br style="margin: 0px; padding: 0px;" />\n		- Dưa l&ecirc; đặc biệt l&agrave; dưa l&ecirc; xanh thường được phun rất nhiều thuốc trừ s&acirc;u. Khi quả ch&iacute;n người n&ocirc;ng d&acirc;n c&oacute; thể kh&ocirc;ng phun th&ecirc;m nhưng tồn dư thuốc trừ s&acirc;u từ khi dưa c&ograve;n ph&aacute;t triển c&oacute; thể vẫn tồn tại trong quả. Đ&acirc;y l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ngộ độc h&agrave;ng đầu li&ecirc;n quan tới c&aacute;c loại dưa.</div>\n	<div style="margin: 0px; padding: 0px; text-align: center;">\n		<br style="margin: 0px; padding: 0px;" />\n		<img alt="chon-dua" src="http://img.dinhduong.com.vn/Upload/images/Thu-Huong/thang5-2014/chon-dua-ngon.jpg" style="margin: 0px; padding: 0px; border: 0px; width: 448px; height: 298px;" /></div>\n	<div style="margin: 0px; padding: 0px;">\n		&nbsp;<br style="margin: 0px; padding: 0px;" />\n		- Để dưa được tươi l&acirc;u, nhiều thương l&aacute;i đ&atilde; ng&acirc;m dưa trong c&aacute;c h&oacute;a chất bảo quản thực phẩm, vỏ dưa l&ecirc; hay dưa bở đều rất mỏng n&ecirc;n c&aacute;c h&oacute;a chất tr&ecirc;n dễ d&agrave;ng ngấm qua vỏ, g&acirc;y ngộ độc.<br style="margin: 0px; padding: 0px;" />\n		&nbsp;<br style="margin: 0px; padding: 0px;" />\n		- Dưa bở ch&iacute;n thường c&oacute; nhiều vết nứt, nhiều người cho rằng dưa đ&atilde; nứt vỏ mới l&agrave; dưa ch&iacute;n gi&agrave; v&agrave; ngon ngọt n&ecirc;n thường lấy đ&acirc;y l&agrave; dấu hiệu chọn dưa. Tuy nhi&ecirc;n, ruồi muỗi hay c&ocirc;n tr&ugrave;ng dễ b&aacute;m v&agrave;o phần vỏ nứt, g&acirc;y nguy cơ lan truyền bệnh tật. Chưa kể, dưa thường b&aacute;n ở ngo&agrave;i đường ngo&agrave;i chợ m&agrave; kh&ocirc;ng được che chắn n&ecirc;n bụi bẩn dễ b&aacute;m v&agrave;o. Nhiều người chọn dưa cũng v&ocirc; t&igrave;nh mang vi khuẩn từ tay d&iacute;nh v&agrave;o dưa qua c&aacute;c vết nứt.<br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		<strong style="margin: 0px; padding: 0px;">C&aacute;ch chọn dưa ngon, tr&aacute;nh ngộ độc</strong><br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		- Theo kinh nghiệm của nhiều b&agrave; nội trợ &ldquo;s&agrave;nh&rdquo;, dưa l&ecirc; ngon, ngọt l&agrave; những quả tr&ograve;n đều, chắc, da cứng v&agrave; c&oacute; phần ph&iacute;a dưới hơi lồi ra.<br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		- Dưa bở ngon l&agrave; những quả c&oacute; thể c&oacute; rạn một ch&uacute;t, v&igrave; rạn l&agrave; dấu hiệu vỏ kh&ocirc;ng chịu được sức &eacute;p từ ruột ch&iacute;n. Tuy nhi&ecirc;n v&igrave; l&iacute; do đ&atilde; n&ecirc;u ở tr&ecirc;n, bạn kh&ocirc;ng n&ecirc;n chọn dưa nứt qu&aacute; nhiều. Ngo&agrave;i ra, dưa ngon l&agrave; dưa tr&ecirc;n vỏ c&ograve;n một lớp l&ocirc;ng măng mỏng, tỏa m&ugrave;i thơm dễ chịu. Nếu dưa bị ng&acirc;m h&oacute;a chất, cả lớp l&ocirc;ng măng v&agrave; m&ugrave;i hương đều sẽ kh&ocirc;ng c&ograve;n.<br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		- Dưa l&ecirc; hay dưa bở m&ugrave;a h&egrave; đều l&agrave; thời điểm đ&uacute;ng vụ n&ecirc;n rất rẻ, đừng n&ecirc;n ham chọn những quả vẹo vọ hoặc đ&atilde; ch&iacute;n nhũn để bớt th&ecirc;m chi ph&iacute;, gi&aacute; cả kh&ocirc;ng ch&ecirc;nh nhau l&agrave; mấy m&agrave; c&ograve;n c&oacute; nguy cơ rước hại v&agrave;o th&acirc;n.<br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		Khi mua dưa về, bạn cũng n&ecirc;n rửa dưa thật sạch, ng&acirc;m hoặc sục qua ozone. Trước khi bổ dưa hoặc ăn dưa n&ecirc;n vệ sinh tay thật kĩ. Dưa đ&atilde; gọt vỏ cần bảo quản trong m&ocirc;i trường tho&aacute;ng m&aacute;t, tr&aacute;nh tiếp x&uacute;c với ruồi nhặng hoặc bụi bẩn.</div>\n	<div style="margin: 0px; padding: 0px 15px 0px 0px; float: right; text-align: right; width: 330px;">\n		<br style="margin: 0px; padding: 0px;" />\n		<span id="ContentHome_ctl00_lblSources" style="margin: 0px; padding: 0px; font-style: italic;">Nguồn: Depplus.vn</span></div>\n</div>\n<p>\n	&nbsp;</p>\n', '0000-00-00 00:00:00'),
(7, 14, 'Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc', '886dd-thanh-qua-(1)-b4396.jpg', 'Chỉ mất khoảng 10-15 phút, với những nguyên liệu sẵn có, dễ làm, chị em sẽ có ngay món cá diêu hồng ngũ vị khìa dừa thật lạ miệng và đưa cơm!', '<div class="detail_content fl mgt15" style="margin: 15px 0px 0px; padding: 0px; float: left; color: rgb(51, 51, 51); line-height: 20px; width: 492px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.10000000149011612px; font-family: ''Times New Roman'' !important; font-size: 12pt !important;">\n	<p style="text-align: center;">\n		<strong>NGUY&Ecirc;N LIỆU</strong></p>\n	<table border="0" cellpadding="0" cellspacing="0" style="margin: 0px 0px 10px; padding: 0px;">\n		<tbody style="margin: 0px; padding: 0px;">\n			<tr style="margin: 0px; padding: 0px;">\n				<td style="margin: 0px; padding: 0px 20px 25px 0px; width: 300px; text-align: center;" valign="top">\n					&nbsp;</td>\n				<td style="margin: 0px; padding: 0px 5px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 2" h="406" lb="2" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/1-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 2" w="700" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					<span style="margin: 0px; padding: 0px; font-weight: bold;">Bạn cần chuẩn bị những nguy&ecirc;n liệu sau cho m&oacute;n c&aacute; di&ecirc;u hồng ngũ vị kh&igrave;a dừa:&nbsp;</span><br style="margin: 0px; padding: 0px;" />\n					- 1 tr&aacute;i dừa tươi<br style="margin: 0px; padding: 0px;" />\n					- 1 cốc sữa tươi khoảng 150ml.<br style="margin: 0px; padding: 0px;" />\n					- 250g c&aacute; di&ecirc;u hồng ngũ vị: loại c&aacute; di&ecirc;u hồng được l&oacute;c xương, ướp sẵn m&ugrave;i vị vừa ăn v&agrave; phơi kh&ocirc; vừa đủ cho c&aacute; vẫn c&ograve;n vị tươi của thịt.&nbsp;<br style="margin: 0px; padding: 0px;" />\n					- Nước mắm, đường, tỏi.&nbsp;<br style="margin: 0px; padding: 0px;" />\n					&nbsp;</td>\n			</tr>\n			<tr style="margin: 0px; padding: 0px;">\n				<td style="margin: 0px; padding: 0px 15px 25px 0px; width: 300px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 3" lb="3" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/01-282bb/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.png" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 3" /></td>\n				<td style="margin: 0px; padding: 0px 5px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 4" h="534" lb="4" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/buoc-1-cho-ca-vao-chien-chin-(1)-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 4" w="800" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					C&aacute; t&aacute;ch miếng nhỏ, cho v&agrave;o chảo với 1 muỗng canh dầu ăn, chi&ecirc;n ch&iacute;n.<br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 5" h="406" lb="5" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/buoc-1-cho-ca-vao-chien-chin-(2)-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 5" w="700" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					Để nhanh gọn hơn, bạn cũng c&oacute; thể l&agrave;m ch&iacute;n c&aacute; trong l&ograve; vi s&oacute;ng với thời gian khoảng 1 ph&uacute;t hoặc đến khi thấy c&aacute; c&oacute; m&ugrave;i thơm lừng th&igrave; lấy ra nh&eacute;.<br style="margin: 0px; padding: 0px;" />\n					&nbsp;</td>\n			</tr>\n			<tr style="margin: 0px; padding: 0px;">\n				<td style="margin: 0px; padding: 0px 15px 25px 0px; width: 300px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 6" lb="6" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/02-282bb/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.png" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 6" /></td>\n				<td style="margin: 0px; padding: 0px 5px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 7" h="534" lb="7" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/buoc-2-xe-nho-ca-cho-nuoc-dua-vao-(1)-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 7" w="800" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					Chuẩn bị một nồi đất, cho c&aacute; di&ecirc;u hồng đ&atilde; được nướng hoặc chi&ecirc;n ch&iacute;n v&agrave;o nồi.<br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 8" h="534" lb="8" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/buoc-2-xe-nho-ca-cho-nuoc-dua-vao-(2)-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 8" w="800" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					Cho nước dừa x&acirc;m xấp v&agrave;o c&aacute;, đặt l&ecirc;n bếp để nhỏ lửa rim ch&iacute;n.<br style="margin: 0px; padding: 0px;" />\n					&nbsp;</td>\n			</tr>\n			<tr style="margin: 0px; padding: 0px;">\n				<td style="margin: 0px; padding: 0px 15px 25px 0px; width: 300px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 9" lb="9" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/03-282bb/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.png" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 9" /></td>\n				<td style="margin: 0px; padding: 0px 5px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 10" h="534" lb="10" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/buoc-3-khi-gan-can-cho-nuoc-mam-sua-tuoi-vao-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 10" w="800" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					C&aacute; rim gần cạn th&igrave; bạn cho 2 muỗng nước mắm, 1 muỗng đường, 1 cốc sữa tươi kh&ocirc;ng đường (nếu l&agrave; sữa tươi c&oacute; đường th&igrave; kh&ocirc;ng cần bỏ th&ecirc;m 1 muỗng đường v&agrave;o nữa). C&aacute; sẽ kẹo lại v&agrave; dậy m&ugrave;i rất thơm.<br style="margin: 0px; padding: 0px;" />\n					&nbsp;</td>\n			</tr>\n			<tr style="margin: 0px; padding: 0px;">\n				<td style="margin: 0px; padding: 0px 15px 25px 0px; width: 300px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 11" lb="11" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/04-282bb/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.png" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 11" /></td>\n				<td style="margin: 0px; padding: 0px 5px; text-align: center;" valign="top">\n					<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 12" h="476" lb="12" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/DSC03536-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 12" w="700" /><br style="margin: 0px; padding: 0px;" />\n					<br style="margin: 0px; padding: 0px;" />\n					Lấy c&aacute; di&ecirc;u hồng ngũ vị kh&igrave;a dừa ra đĩa, ăn với cơm.<br style="margin: 0px; padding: 0px;" />\n					Lưu &yacute;: c&aacute; di&ecirc;u hồng ngũ vị đ&atilde; được ướp đầy đủ ớt, muối, tỏi, ti&ecirc;u, đường... rất vừa miệng. V&igrave; vậy chị em n&ecirc;n n&ecirc;m nếm theo khẩu vị của m&igrave;nh, tr&aacute;nh bị mặn qu&aacute;.&nbsp;</td>\n			</tr>\n		</tbody>\n	</table>\n	<p style="text-align: center;">\n		<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 13" lb="13" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/15-282bb/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.png" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 13" /><br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		M&oacute;n c&aacute; di&ecirc;u hồng ngũ vị kh&igrave;a dừa ăn với cơm n&oacute;ng cực ngon m&agrave; kh&ocirc;ng hề bị ng&aacute;n hay bị b&eacute;o. Chị em cũng c&oacute; thể nấu một nồi để trong tủ lạnh tiện l&agrave;m thức ăn cho những ng&agrave;y thường bận rộn.&nbsp;</p>\n	<div style="margin: 0px; padding: 0px; text-align: center;">\n		<img alt="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 14" h="475" lb="14" src="http://afamily1.vcmedia.vn/k:thumb_w/600/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/06/thanh-qua-(1)-b4396/ca-dieu-hong-ngu-vi-khia-dua-cho-ca-nha-tam-tac.jpg" style="margin: 0px; padding: 0px; border: none; outline: none; -webkit-appearance: none; max-width: 480px !important; cursor: none;" title="Cá diêu hồng ngũ vị khìa dừa cho cả nhà tấm tắc 14" w="800" /><br style="margin: 0px; padding: 0px;" />\n		<br style="margin: 0px; padding: 0px;" />\n		Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng v&agrave; ngon miệng nh&eacute;!</div>\n</div>\n<p>\n	&nbsp;</p>\n', '2014-06-07 17:00:00'),
(8, 14, 'Món sườn Hàn Quốc', '55509-monsuonhanquoc-d8cc7.jpg', 'Cùng học cách làm món sườn Hàn Quốc đậm đà thơm ngon cho bữa cơm cuối tuần.', '<h2 class="sapo" style="margin: 0px; padding: 0px 0px 10px; font-size: 13px; line-height: 18px; font-family: Arial; color: rgb(51, 51, 51); float: left; width: 610px;">\n	Cùng học cách làm món sườn Hàn Qu&ocirc;́c đ&acirc;̣m đà thơm ngon cho bữa cơm cu&ocirc;́i tu&acirc;̀n.</h2>\n<div class="divcontent" id="divcontent" style="margin: 0px; padding: 0px; font-size: 13px; line-height: 18px; font-family: Arial; color: rgb(0, 0, 0); float: left; width: 610px;">\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		<b>Nguy&ecirc;n liệu:</b></p>\n	<div id="realtivenew" style="margin: 0px; padding: 0px;">\n		&nbsp;</div>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		l Sườn non heo: 600g l Tỏi t&eacute;p: 40g l Poa r&ocirc; băm: ba c&acirc;y nhỏ l Nấm b&agrave;o ngư: 100g<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		l Nấm kim ch&acirc;m: 100g l C&agrave; rốt: 80g<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		Khoai t&acirc;y: 100g l Xốt tương ớt&nbsp;<a href="http://xinhxinh.com.vn/mon-ngon-de-lam/20140327081708723/mien-tron-nam-kieu-han-quoc.xinh" style="text-decoration: none; outline: none; color: rgb(0, 0, 0);"><b title="Hàn Quốc">H&agrave;n Quốc</b></a><br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		l Dầu m&egrave;: một muỗng canh<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		l Nước tương: ba muỗng canh<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		l&nbsp;<b>B&aacute;nh gạo</b>&nbsp;H&agrave;n Quốc: 300g<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		l Gia vị: 10g gừng, một tai hồi, một miếng quế cỡ đốt tay, dầu ăn.<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		Với trọng lượng n&agrave;y d&agrave;nh cho khoảng bốn người&nbsp;thưởng thức.<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px; text-align: center;">\n		<img alt="" height="383" src="http://images.xinhxinh.com.vn//web/2014/06/01/monsuonhanquoc-d8cc7.jpg" style="cursor: -webkit-zoom-in;" width="500" /></p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		<strong>C&aacute;ch l&agrave;m:</strong><br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		Chặt sườn th&agrave;nh miếng vừa ăn, ướp với nước tương, poa r&ocirc; băm.<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		Rang hồi, quế cho thơm. Đập giập gừng. C&agrave; rốt, khoai t&acirc;y cắt l&aacute;t hoặc cắt khối.<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		Cho dầu v&agrave;o chảo n&oacute;ng, bỏ tỏi t&eacute;p v&agrave;o x&agrave;o sem s&eacute;m, cho sườn heo v&agrave;o x&agrave;o ch&aacute;y cạnh rồi bỏ quế, hồi, gừng (nếu trẻ c&oacute; thể ăn cay cho xốt tương ớt v&agrave;o) đảo qua v&agrave;i ph&uacute;t. Sau đ&oacute;, cho khoảng 1,5 ch&eacute;n nước v&agrave;o nấu đến sườn vừa ch&iacute;n. Cho dầu m&egrave; v&agrave;o, n&ecirc;m lại cho vừa ăn.<br />\n		&nbsp;</p>\n	<p style="margin: 0px; padding: 0px; line-height: 19px;">\n		Th&ecirc;m c&agrave; rốt, khoai t&acirc;y v&agrave;o nấu ch&iacute;n, vớt bỏ quế, hồi, gừng ra. Cho b&aacute;nh gạo cắt miếng vừa ăn v&agrave;o nấu s&ocirc;i, cuối c&ugrave;ng th&ecirc;m nấm v&agrave;o, đảo đều.</p>\n</div>\n<p>\n	&nbsp;</p>\n', '2014-05-31 17:00:00');
INSERT INTO `f100_article` (`id`, `cat_id`, `title`, `img`, `summary`, `content`, `time`) VALUES
(9, 14, '3 món canh mùng tơi thanh mát', '64fd4-3moncanhmungtoithanhmat-40dd1.jpg', 'Mùng tơi có thể nấu thành nhiều món canh ngon, mát cho mùa hè.', '<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<em>Nguy&ecirc;n liệu:</em></p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- 1 b&oacute; rau dền</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	-&nbsp;1 b&oacute; rau mồng tơi</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	-&nbsp;50g t&ocirc;m kh&ocirc; (nếu th&iacute;ch c&oacute; thể cho &iacute;t s&ograve; điệp kh&ocirc; cho ngọt hơn)</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	-&nbsp;&Iacute;t h&agrave;nh l&aacute;</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	-&nbsp;C&agrave; ph&aacute;o, mắm t&ocirc;m.<br />\n	&nbsp;</p>\n<table align="center" class="image center" style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; line-height: 18px;" width="500">\n	<tbody>\n		<tr>\n			<td>\n				<img alt="" src="http://images.xinhxinh.com.vn//web/2014/05/30/3moncanhmungtoithanhmat-40dd1.jpg" style="width: 500px; height: 375px; cursor: none;" /></td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	<em>C&aacute;ch l&agrave;m:</em></p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Rau nhặt sạch, rửa sạch, để r&aacute;o, cắt nhỏ.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- T&ocirc;m kh&ocirc; ng&acirc;m nước cho nở, vớt r&aacute;o, giữ lại nước. Gi&atilde; t&ocirc;m kh&ocirc; với v&agrave;i cọng đầu h&agrave;nh.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Cho &iacute;t dầu v&agrave;o chảo, phi thơm t&ocirc;m, n&ecirc;m 1 muỗng cafe đường, 1/2 muỗng cafe nước mắm cho thấm.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Cho 2 l&iacute;t nước v&agrave;o nồi, đun s&ocirc;i, cho t&ocirc;m kh&ocirc; phi thơm v&agrave;o.&nbsp;<br />\n	&nbsp;</p>\n<table align="center" class="image center" style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; line-height: 18px;" width="500">\n	<tbody>\n		<tr>\n			<td>\n				<img alt="" src="http://images.xinhxinh.com.vn//web/2014/05/30/3moncanhmungtoithanhmat-e4973.jpg" style="width: 500px; height: 667px; cursor: none;" /></td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	- Đợi s&ocirc;i lại, cho rau v&agrave;o, đun s&ocirc;i trở lại n&ecirc;m 2 muỗng cafe muối, 1 muỗng canh nước mắm. N&ecirc;m lại cho vừa ăn.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Pha 1,5 muỗng canh đường, vắt 1-2 tr&aacute;i quất, cho 1 muỗng canh mắm t&ocirc;m v&agrave;o, đ&aacute;nh l&ecirc;n cho sủi bọt, n&ecirc;m lại cho vừa ăn. Cho canh ra b&aacute;t, rắc &iacute;t h&agrave;nh l&aacute;, l&ecirc;n tr&ecirc;n rồi thưởng thức ngay nh&eacute;! Khi ăn nhớ đảo đều để h&agrave;nh l&aacute; ch&iacute;n.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Canh t&ocirc;m rau rền, m&ugrave;ng tơi ăn k&egrave;m c&agrave; ph&aacute;o mắm t&ocirc;m ngon tuyệt!</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	<strong>Canh cua mồng tơi</strong><br />\n	&nbsp;</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<em>Nguy&ecirc;n liệu:</em></p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Mồng tơi: &frac12; mớ</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Rau đay: &frac12; mớ</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Cua: 200 g</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Gia vị: dầu ăn, hạt n&ecirc;m, bột canh.<br />\n	&nbsp;</p>\n<table align="center" class="image center" style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; line-height: 18px;" width="500">\n	<tbody>\n		<tr>\n			<td>\n				<img alt="" src="http://images.xinhxinh.com.vn//web/2014/05/30/3moncanhmungtoithanhmat-68840.jpg" style="width: 500px; height: 375px; cursor: none;" /></td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	<em>C&aacute;ch l&agrave;m:</em></p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Mồng tơi, rau đay nhặt bỏ gốc, l&aacute; s&acirc;u v&agrave; rửa sạch, để r&aacute;o.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Th&aacute;i nhỏ rau.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Cua rửa sạch, b&oacute;c bỏ mai. Phần thịt cua cho v&agrave;o m&aacute;y xay hoặc gi&atilde; lọc lấy nước. Lấy tăm khều phần gạch cua.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Đặt phần nước cua l&ecirc;n bếp, th&ecirc;m 1 th&igrave;a bột canh, khuấy đều.&nbsp;<br />\n	&nbsp;</p>\n<table align="center" class="image center" style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; line-height: 18px;" width="500">\n	<tbody>\n		<tr>\n			<td>\n				<img alt="" src="http://images.xinhxinh.com.vn//web/2014/05/30/3moncanhmungtoithanhmat-f2d55.jpg" style="width: 500px; height: 375px; cursor: none;" /></td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	- Đun nhỏ lửa để cua đ&oacute;ng th&agrave;nh gạch.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Khi canh s&ocirc;i thả rau v&agrave;o. Đun th&ecirc;m 3-4 ph&uacute;t hoặc thấy rau ch&iacute;n. N&ecirc;m bột n&ecirc;m cho vừa miệng.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Tắt bếp v&agrave; cho&nbsp;canh cua m&ugrave;ng tơi&nbsp;ra b&aacute;t.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	M&ugrave;a h&egrave; c&oacute; b&aacute;t canh cua m&ugrave;ng tơi&nbsp;ăn với mấy quả c&agrave; đưa cơm phải biết.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	<strong>Canh ngao mồng tơi&nbsp;</strong><br />\n	&nbsp;</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<em>Nguy&ecirc;n liệu:</em></p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Ngao: 1 kg</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	-&nbsp;Mồng tơi: 1 mớ</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	-&nbsp;Gia vị: bột canh, bột n&ecirc;m, m&igrave; ch&iacute;nh.<br />\n	&nbsp;</p>\n<table align="center" class="image center" style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; line-height: 18px;" width="500">\n	<tbody>\n		<tr>\n			<td>\n				<img alt="" src="http://images.xinhxinh.com.vn//web/2014/05/30/3moncanhmungtoithanhmat-e0047.jpg" style="width: 500px; height: 375px;" /></td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	<em>C&aacute;ch l&agrave;m:</em></p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Ngao tươi rửa nhiều nước cho sạch, cho l&ecirc;n bếp luộc s&ocirc;i đến khi ngao h&aacute; miệng.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Nhặt phần ruột ngao v&agrave; bỏ vỏ. Phần nước ngao ngạn cho trong v&agrave; đặt l&ecirc;n bếp đun s&ocirc;i. Cho th&ecirc;m 1 th&igrave;a bột canh.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Mồng tơi nhặt bỏ phần gốc, l&aacute; gi&agrave; v&agrave; rửa sạch. (Nếu th&iacute;ch th&aacute;i th&igrave; th&aacute;i nhỏ c&ograve;n kh&ocirc;ng để cả ăn sẽ ngon hơn).<br />\n	&nbsp;</p>\n<table align="center" class="image center" style="color: rgb(0, 0, 0); font-family: Arial; font-size: 13px; line-height: 18px;" width="500">\n	<tbody>\n		<tr>\n			<td>\n				<img alt="" src="http://images.xinhxinh.com.vn//web/2014/05/30/3moncanhmungtoithanhmat-4c8b3.jpg" style="width: 500px; height: 375px; cursor: none;" /></td>\n		</tr>\n	</tbody>\n</table>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	<br />\n	- Khi nồi canh ngao s&ocirc;i thả mồng tơi v&agrave;o. L&ecirc;n nấu ở lửa to để rau được xanh. Đun khoảng 2-3 ph&uacute;t.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Tiếp đến cho thịt ngao v&agrave;o. N&ecirc;m bột n&ecirc;m cho vừa miệng. Đun th&ecirc;m 1-2 ph&uacute;t nữa.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- Khi thấy nồi canh ch&iacute;n bắc xuống bếp th&ecirc;m m&igrave; ch&iacute;nh rồi ch&uacute;t canh ra b&aacute;t t&ocirc;.</p>\n<p style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 0); font-family: Arial; font-size: 13px;">\n	- M&ugrave;a h&egrave; c&oacute; b&aacute;t canh ngao mồng tơi đưa cơm phải biết.</p>\n', '2014-06-07 17:00:00'),
(10, 17, 'Buffet miễn phí', '9396d-3moncanhmungtoithanhmat-40dd1.jpg', 'Buffet miễn phí', '<p>\n	<strike>B&agrave;i viết kh&ocirc;ng c&ograve;n tồn tại</strike></p>\n', '2014-06-01 05:12:00'),
(11, 14, 'Cá ngừ sốt bơ trứng', '23497-119_200.jpg', 'Cá ngừ sốt bơ trứng làm rất dễ và cực ngon. Bắt tay vào thực hiện thôi bạn.', '<p style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">\n	<em><strong>C&aacute; ngừ sốt bơ trứng l&agrave;m rất dễ v&agrave; cực ngon. Bắt tay v&agrave;o thực hiện th&ocirc;i bạn.</strong></em><br />\n	<br />\n	<strong>1. Nguy&ecirc;n liệu</strong><br />\n	- Phi-l&ecirc; c&aacute; ngừ: 120g<br />\n	- Trứng g&agrave;: 1 quả<br />\n	- Bơ: 10g<br />\n	- Chanh: 1/2 tr&aacute;i<br />\n	- M&ugrave; tạt v&agrave;ng 1/2 muỗng c&agrave; ph&ecirc;<br />\n	- Ng&ograve; t&acirc;y&nbsp;<br />\n	- Muối, ti&ecirc;u<br />\n	&nbsp;</p>\n<div style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">\n	<strong>2. C&aacute;ch l&agrave;m</strong></div>\n<p style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">\n	Phi-l&ecirc; c&aacute; ngừ l&agrave;m sạch, ướp ch&uacute;t muối, ti&ecirc;u. Chi&ecirc;n &aacute;p chảo c&aacute; ngừ v&agrave;ng đều hai mặt.<br />\n	<span style="text-decoration: underline;"><em>Sốt bơ trứng:</em></span>&nbsp;lấy l&ograve;ng đỏ trứng g&agrave; đ&aacute;nh đều với m&ugrave; tạt v&agrave;ng v&agrave; ch&uacute;t muối, ti&ecirc;u cho vừa ăn. D&ugrave;ng chảo nhỏ đun chảy bơ, cho hỗn hợp trứng g&agrave; v&agrave;o đ&aacute;nh đều cho đến l&uacute;c sốt đặc lại, cho v&agrave;i giọt nước chanh v&agrave; ng&ograve; t&acirc;y cắt v&agrave;o.<br />\n	Dọn c&aacute; ngừ ra đĩa với c&agrave; chua bi, khoai t&acirc;y bi, c&agrave; rốt, đậu que x&agrave;o.&nbsp;<br />\n	Rưới nước sốt bơ trứng l&ecirc;n, ăn n&oacute;ng.</p>\n', '2014-06-07 17:00:00'),
(12, 14, 'Cơm trộn gỏi cá', 'd4b19-118_200.jpg', 'Cuối tuần thưởng thức hương vị Hàn quốc cho bữa ăn thêm phong phú nhé.', '<p>\n	<em style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;"><strong>Cuối tuần thưởng thức hương vị H&agrave;n quốc cho bữa ăn th&ecirc;m phong ph&uacute; nh&eacute;.</strong></em><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<strong style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Nguy&ecirc;n liệu:</strong><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">C&aacute; ngừ đại dương tươi 150gr</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">C&aacute; hồi tươi 150gr</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Rong biển 30gr</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">C&agrave; rốt 1củ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Dưa chuột 1quả</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Khoai t&acirc;y 1củ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">X&agrave; l&aacute;ch 1c&acirc;y</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Xốt trộn cơm H&agrave;n quốc 3th&igrave;a canh</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Nước tương chinsu&nbsp; 1 th&igrave;a canh</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">M&ugrave; tạt xanh 1/2th&igrave;a c&agrave; ph&ecirc;</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Gừng tươi 1nh&aacute;nh</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Cơm&nbsp; 2b&aacute;t</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<strong style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Chế biến:</strong><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 1. C&aacute; ngừ v&agrave; c&aacute; hồi tươi, th&aacute;i hạt lựu, đặt l&ecirc;n giấy thấm cho h&uacute;t bớt nước, cấp lạnh trong ngăn đ&aacute;.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 2. C&agrave; rốt, dưa chuột rửa sạch, gọt vỏ. Th&aacute;i chỉ.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 3. Khoai t&acirc;y gọt vỏ, th&aacute;i chỉ, r&aacute;n gi&ograve;n.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 4. X&agrave; l&aacute;ch nhặt từng l&aacute;, rửa sạch, vẩy r&aacute;o, th&aacute;i chỉ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 5. Gừng gọt vỏ, th&aacute;i chỉ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 6. Rong biển chần qua nước s&ocirc;i,&nbsp; đổ ra rổ cho r&aacute;o nước</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 7. Cho xốt trộn, nước tương v&agrave; m&ugrave; tạt v&agrave;o b&aacute;t, đ&aacute;nh đều</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 8. Cho 1 b&aacute;t cơm v&agrave;o đĩa s&acirc;u l&ograve;ng hoặc b&aacute;t to n&ocirc;ng, b&agrave;y c&aacute;c loại rau l&ecirc;n xung quanh. Đặt c&aacute; v&agrave;o giữa b&aacute;t, rắc gừng th&aacute;i sợi v&agrave; đổ xốt đ&atilde; trộn l&ecirc;n tr&ecirc;n c&ugrave;ng. Khi ăn, chỉ việc trộn đều c&aacute;c nguy&ecirc;n liệu.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 9. M&oacute;n n&agrave;y rất cay v&agrave; mang đậm phong c&aacute;ch H&agrave;n quốc. Vừa ăn vừa su&yacute;t xoa thật l&agrave; th&uacute; vị.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Một c&ocirc;ng thức n&agrave;y t&ocirc;i l&agrave;m được 2 phần cơm.</span></p>\n', '2014-06-07 17:00:00'),
(13, 14, 'Cá ngừ Tapenade', '0aa31-117_200.jpg', 'Cuối tuần thưởng thức hương vị Hàn quốc cho bữa ăn thêm phong phú nhé.', '<p>\n	<em style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;"><strong>Cuối tuần thưởng thức hương vị H&agrave;n quốc cho bữa ăn th&ecirc;m phong ph&uacute; nh&eacute;.</strong></em><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<strong style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Nguy&ecirc;n liệu:</strong><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">C&aacute; ngừ đại dương tươi 150gr</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">C&aacute; hồi tươi 150gr</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Rong biển 30gr</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">C&agrave; rốt 1củ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Dưa chuột 1quả</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Khoai t&acirc;y 1củ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">X&agrave; l&aacute;ch 1c&acirc;y</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Xốt trộn cơm H&agrave;n quốc 3th&igrave;a canh</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Nước tương chinsu&nbsp; 1 th&igrave;a canh</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">M&ugrave; tạt xanh 1/2th&igrave;a c&agrave; ph&ecirc;</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Gừng tươi 1nh&aacute;nh</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Cơm&nbsp; 2b&aacute;t</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<strong style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">Chế biến:</strong><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 1. C&aacute; ngừ v&agrave; c&aacute; hồi tươi, th&aacute;i hạt lựu, đặt l&ecirc;n giấy thấm cho h&uacute;t bớt nước, cấp lạnh trong ngăn đ&aacute;.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 2. C&agrave; rốt, dưa chuột rửa sạch, gọt vỏ. Th&aacute;i chỉ.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 3. Khoai t&acirc;y gọt vỏ, th&aacute;i chỉ, r&aacute;n gi&ograve;n.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 4. X&agrave; l&aacute;ch nhặt từng l&aacute;, rửa sạch, vẩy r&aacute;o, th&aacute;i chỉ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 5. Gừng gọt vỏ, th&aacute;i chỉ</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 6. Rong biển chần qua nước s&ocirc;i,&nbsp; đổ ra rổ cho r&aacute;o nước</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 7. Cho xốt trộn, nước tương v&agrave; m&ugrave; tạt v&agrave;o b&aacute;t, đ&aacute;nh đều</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 8. Cho 1 b&aacute;t cơm v&agrave;o đĩa s&acirc;u l&ograve;ng hoặc b&aacute;t to n&ocirc;ng, b&agrave;y c&aacute;c loại rau l&ecirc;n xung quanh. Đặt c&aacute; v&agrave;o giữa b&aacute;t, rắc gừng th&aacute;i sợi v&agrave; đổ xốt đ&atilde; trộn l&ecirc;n tr&ecirc;n c&ugrave;ng. Khi ăn, chỉ việc trộn đều c&aacute;c nguy&ecirc;n liệu.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp; 9. M&oacute;n n&agrave;y rất cay v&agrave; mang đậm phong c&aacute;ch H&agrave;n quốc. Vừa ăn vừa su&yacute;t xoa thật l&agrave; th&uacute; vị.</span><br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<br style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;" />\n	<span style="color: rgb(243, 40, 91); font-family: Tahoma, Geneva, sans-serif;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Một c&ocirc;ng thức n&agrave;y t&ocirc;i l&agrave;m được 2 phần cơm.</span></p>\n', '2014-06-06 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `f100_category`
--

CREATE TABLE IF NOT EXISTS `f100_category` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10',
  `is_show` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_category`
--

INSERT INTO `f100_category` (`id`, `title`, `parent_id`, `order`, `is_show`) VALUES
(1, 'Sản phẩm', 0, 10, 1),
(2, 'Tin tức', 0, 10, 1),
(6, 'Cá Tươi', 1, 1, 1),
(7, 'Mực', 1, 2, 1),
(9, 'Tôm ', 1, 10, 1),
(10, 'Cua ', 1, 10, 1),
(12, 'Các Loại Khác', 1, 10, 1),
(13, 'Mẹo Vặt', 2, 10, 0),
(14, 'Vào Bếp', 2, 10, 1),
(15, 'Tin Tức', 2, 1, 1),
(17, 'Sự Kiện', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `f100_config`
--

CREATE TABLE IF NOT EXISTS `f100_config` (
  `key` varchar(10) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_config`
--

INSERT INTO `f100_config` (`key`, `title`, `value`) VALUES
('address', 'Địa chỉ', '57 Lê Quang Định, 14, Bình Thạnh, Hồ Chí Minh'),
('hotline', 'Hot line', 'Hotline: (08) 3841 2763');

-- --------------------------------------------------------

--
-- Table structure for table `f100_distribution`
--

CREATE TABLE IF NOT EXISTS `f100_distribution` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maps` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_distribution`
--

INSERT INTO `f100_distribution` (`id`, `title`, `img`, `address`, `phone`, `email`, `maps`) VALUES
(1, 'F100 LÊ QUANG ĐỊNH', '5c025-res1.jpg', '57 Lê Quang Định, 14, Bình Thạnh, Hồ Chí Minh', '(08) 3841 2763', 'f100seafoods@gmail.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0901772955585!2d106.69821560555725!3d10.80440513650048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528c730b75cfb%3A0xca809877af0521da!2zNTcgTMOqIFF1YW5nIMSQ4buLbmgsIDE0LCBCw6xuaCBUaOG6oW5o!5e0!3m2!1svi!2sus!4v1401163609305" width="574" height="340" frameborder="0" style="border:0"></iframe>'),
(2, 'F100 LÊ VĂN SỸ', 'b5dc6-res2.jpg', '127 Lê Văn Sỹ, Bến Lức, Quận 3, Hồ Chí Minh', '(08) 3842 2222', 'f100seafoods1@gmail.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0901772955585!2d106.69821560555725!3d10.80440513650048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528c730b75cfb%3A0xca809877af0521da!2zNTcgTMOqIFF1YW5nIMSQ4buLbmgsIDE0LCBCw6xuaCBUaOG6oW5o!5e0!3m2!1svi!2sus!4v1401163609305" width="574" height="340" frameborder="0" style="border:0"></iframe>'),
(3, 'F100 THỦ ĐỨC', 'eb88b-res3.jpg', '117 Võ Văn Ngân, Bình Tự, Thủ Đức, Hồ Chí Minh', '(08) 3831 2534', 'f100seafoods2@gmail.com', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.0901772955585!2d106.69821560555725!3d10.80440513650048!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528c730b75cfb%3A0xca809877af0521da!2zNTcgTMOqIFF1YW5nIMSQ4buLbmgsIDE0LCBCw6xuaCBUaOG6oW5o!5e0!3m2!1svi!2sus!4v1401163609305" width="574" height="340" frameborder="0" style="border:0"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `f100_product`
--

CREATE TABLE IF NOT EXISTS `f100_product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `describe` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cat_id` int(11) NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_top` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_product`
--

INSERT INTO `f100_product` (`id`, `title`, `img`, `describe`, `time`, `cat_id`, `is_hot`, `is_top`) VALUES
(1, 'Cá ngừ biển', 'e07a3-1330509086-anh2.jpg', 'Cá ngừ tươi ngon bổ rẻ', '2014-05-24 00:05:12', 6, 1, 1),
(2, 'Cá ngừ nuôi', 'eea37-Ca-ng----2.jpg', '', '2014-05-24 00:05:12', 6, 0, 0),
(5, 'Mực Nấm', '8bed8-1.jpg', '', '2014-05-27 03:44:32', 7, 0, 1),
(6, 'Mực Tươi', 'bf6e2-2.jpg', '', '2014-05-27 03:44:32', 7, 1, 0),
(7, 'Mực Trắng', 'aba18-3.jpg', '', '2014-05-27 03:44:35', 7, 0, 1),
(8, 'Mực Quảng Ninh', '989ac-4.jpg', '', '2014-05-27 03:44:38', 7, 0, 0),
(9, 'Tôm Sú', '926d7-1.jpg', '', '2014-05-27 03:48:04', 9, 0, 0),
(10, 'Tôm Trường Sa', '5e010-3.jpg', '', '2014-05-27 03:48:08', 9, 1, 0),
(11, 'Tôm Hùm', 'cecaf-4.jpg', '', '2014-05-27 03:48:10', 9, 0, 1),
(12, 'Tôm Tươi', 'da8be-2.jpg', '', '2014-05-27 03:48:23', 9, 0, 0),
(13, 'Cua Đất', 'daeb4-1.jpg', '', '2014-05-27 03:51:18', 10, 1, 0),
(14, 'Cua Đồng', '3c734-2.jpg', '', '2014-05-27 03:51:20', 10, 0, 0),
(15, 'Cua Vịnh', 'b3485-3.jpg', '', '2014-05-27 03:51:21', 10, 0, 0),
(16, 'Cua Mặt Nạ', '40512-4.jpg', '', '2014-05-27 03:51:22', 10, 0, 0),
(17, 'Cua Đỏ', '40e85-5.jpg', '', '2014-05-27 03:51:23', 10, 0, 0),
(18, 'Bạch tuộc 8 tua', '89f2e-1.jpg', '', '2014-05-27 03:53:51', 12, 0, 0),
(20, 'Bạch tuộc nấm', '07d39-3.jpg', '', '2014-05-27 03:53:59', 12, 0, 0),
(21, 'Sao Biển', '189c1-4.jpg', '', '2014-05-27 03:54:00', 12, 0, 0),
(23, 'Bạch Tuộc', 'a2ab9-6.jpg', '', '2014-05-27 03:54:04', 12, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `f100_slider`
--

CREATE TABLE IF NOT EXISTS `f100_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caption` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_slider`
--

INSERT INTO `f100_slider` (`id`, `title`, `caption`, `img`) VALUES
(19, '', '', '13ab6-10417230_683710188360831_452170186_n.jpg'),
(20, '', '', 'b1da8-10363681_683710201694163_1055616847_n.jpg'),
(21, '', '', 'ad757-10358034_683710195027497_526557153_n.jpg'),
(22, '', '', '539fb-10374304_683710231694160_1265874150_n.jpg'),
(23, '', '', '8b891-10405788_683710228360827_634869686_n.jpg'),
(24, '', '', 'c3726-10416914_683710218360828_706546971_n.jpg'),
(25, '', '', 'adf27-10363584_683710211694162_1929291737_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `f100_user`
--

CREATE TABLE IF NOT EXISTS `f100_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `f100_user`
--

INSERT INTO `f100_user` (`id`, `username`, `password`) VALUES
(1, 'leo', 'leo'),
(2, 'khank', 'khank'),
(3, 'doanvnd', 'teo'),
(4, 'admin', 'f100admin');

-- --------------------------------------------------------

--
-- Table structure for table `it24h_article`
--

CREATE TABLE IF NOT EXISTS `it24h_article` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(150) NOT NULL,
  `describe` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_service` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it24h_article`
--

INSERT INTO `it24h_article` (`id`, `title`, `slug`, `img`, `describe`, `content`, `is_service`) VALUES
(2, 'Siêu thị Target bị hack bởi phần mềm Nga', 'sieu-thi', '7322d-686750.jpg', 'Trong khi vụ hack lịch sử vào chuỗi siêu thị Target còn chưa tìm ra thủ phạm, giới bảo mật quốc tế đã phát hiện phần mềm được sử dụng trong vụ việc là "tác phẩm" của một thanh niên 23 tuổi người Nga.', '<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	Theo&nbsp;<em>Wall Street Journal</em>,&nbsp;Rinat Shabaev, 23 tuổi, sống tại miền nam nước Nga đ&atilde; bị ph&aacute;t hiện đang rao b&aacute;n phần mềm độc hại (malware) đ&atilde; được sử dụng trong vụ hack si&ecirc;u thị Target (Mỹ) với gi&aacute; 2.000 USD một bản.</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	Hiện tại, Shabaev vẫn chưa bị truy tố. Trong b&agrave;i phỏng vấn truyền h&igrave;nh c&ugrave;ng trang Lifenews.ru (Nga), người n&agrave;y cho biết tuy kh&ocirc;ng lập tr&igrave;nh to&agrave;n bộ phần mềm n&agrave;y, song cậu lại l&agrave; t&aacute;c giả của một phần mềm bổ trợ (extension) về sau,&nbsp;cho ph&eacute;p malware n&agrave;y lưu lại dữ liệu của kh&aacute;ch h&agrave;ng si&ecirc;u thị Target đồng thời qua mặt c&aacute;c biện ph&aacute;p bảo mật tại đ&acirc;y như người ta đ&atilde; chứng kiến.</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	&nbsp;</p>\r\n<table align="right" bgcolor="#feffa3" cellpadding="5" cellspacing="0" style="color: rgb(0, 0, 0); font-family: arial; font-size: 14px;" width="35%">\r\n	<tbody>\r\n		<tr>\r\n			<td class="pBody" style="font-family: Arial; line-height: 20px; margin: 8px auto;">\r\n				&quot;Nếu bạn d&ugrave;ng chương tr&igrave;nh với mục đ&iacute;ch kh&ocirc;ng tốt, bạn c&oacute; thể kiếm kh&aacute; tiền nhưng lại phạm ph&aacute;p. Đ&oacute; l&agrave; l&yacute; do t&ocirc;i kh&ocirc;ng trực tiếp sử dụng m&agrave; chỉ b&aacute;n để lấy tiền. Việc người ta sử dụng n&oacute; như thế n&agrave;o ho&agrave;n to&agrave;n l&agrave; tr&aacute;ch nhiệm c&aacute; nh&acirc;n họ&quot; &ndash; Rinat Shabaev cho biết khi được phỏng vấn.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style="color: rgb(0, 0, 0); font-family: arial; font-size: 14px;">\r\n	&nbsp;</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	T&aacute;c giả malware&nbsp;cho biết m&igrave;nh&nbsp;viết phần mềm n&agrave;y đơn giản chỉ để b&aacute;n kiếm tiền cho bất cứ ai c&oacute; nhu cầu mua, đồng thời cho rằng về bản chất, việc sử dụng phần mềm của cậu cho mục đ&iacute;ch tốt hay xấu đều phụ thuộc v&agrave;o chủ đ&iacute;ch người d&ugrave;ng. Theo Shabaev, chương tr&igrave;nh do cậu viết ra ho&agrave;n to&agrave;n c&oacute; thể được d&ugrave;ng để ph&aacute;t hiện lỗ hổng b&ecirc;n trong một hệ thống bảo mật.</p>\r\n<p class="pInterTitle" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); font-weight: bold;">\r\n	Cuộc chiến kh&ocirc;ng tiếng s&uacute;ng</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	Đ&ocirc;i khi -&nbsp;tờ Wall Street Journal b&igrave;nh luận -&nbsp;giới lập tr&igrave;nh vi&ecirc;n sẽ tạo ra những phần mềm độc hại với mục đ&iacute;ch t&igrave;m kiếm c&aacute;c lỗ hổng b&ecirc;n trong những hệ thống điện to&aacute;n cũng như để kiểm tra mức độ an to&agrave;n của ch&uacute;ng,&nbsp;thường được c&aacute;c c&ocirc;ng ty c&ocirc;ng nghệ Mỹ gọi bằng thuật ngữ &quot;thử nghiệm x&acirc;m nhập&quot;.</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	&quot;Tại Hoa Kỳ, một lập tr&igrave;nh vi&ecirc;n chỉ bị xem l&agrave; c&oacute; tội khi sử dụng hoặc đe dọa d&ugrave;ng phần mềm của m&igrave;nh với dụng &yacute; xấu, như x&acirc;m nhập tr&aacute;i ph&eacute;p v&agrave;o một hệ thống điện to&aacute;n, hoặc lập &acirc;m mưu tương tự c&ugrave;ng với người kh&aacute;c.&quot; &ndash; Cindy Cohn, gi&aacute;m đốc ph&aacute;p l&yacute; của tổ chức Electronic Frontier Foundation (EFF)&nbsp;cho biết.</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	&nbsp;</p>\r\n<table align="center" border="0" cellpadding="0" cellspacing="4" style="color: rgb(0, 0, 0); font-family: arial; font-size: 14px;" width="40">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				<img border="1" class="lImage" hspace="0" hyperlink="" src="http://images.tuoitre.vn/tianyon/ImageView.aspx?ThumbnailID=686751" style="max-width: 660px; text-align: center;" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class="tLegend" style="font-size: 12px; color: rgb(54, 54, 54); font-style: italic; font-family: Arial;">\r\n				T&agrave;i khoản c&aacute;c loại thẻ ng&acirc;n h&agrave;ng lu&ocirc;n l&agrave; mục ti&ecirc;u b&eacute;o bở của tin tặc v&agrave; tội phạm mạng &ndash; Ảnh minh họa: Internet</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p style="color: rgb(0, 0, 0); font-family: arial; font-size: 14px;">\r\n	&nbsp;</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	Trong một diễn biến li&ecirc;n quan,&nbsp;<em>Wall Street Journal</em>&nbsp;dẫn nguồn từ Hiệp hội t&iacute;n dụng quốc gia Hoa Kỳ (Credit Union National Association) cho hay c&aacute;c c&ocirc;ng ty t&iacute;n dụng tại Mỹ đ&atilde; mất khoảng 30 triệu USD chi ph&iacute; thay thế thẻ cho chủ t&agrave;i khoản bị ảnh hưởng từ vụ hack si&ecirc;u thị Target. Ngo&agrave;i ra, nhiều ng&acirc;n h&agrave;ng lớn của Mỹ như JP Morgan Chase v&agrave; Citigroup cũng đ&atilde; chi h&agrave;ng triệu USD cho việc thay thế thẻ cho kh&aacute;ch h&agrave;ng của m&igrave;nh.</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	Chuỗi si&ecirc;u thị Target &ndash; nạn nh&acirc;n của vụ hack &ndash; cho biết đ&atilde; c&oacute; khoảng 40 triệu t&agrave;i khoản t&iacute;n dụng của kh&aacute;ch h&agrave;ng m&igrave;nh bị đ&aacute;nh cắp dữ liệu từ vụ tấn c&ocirc;ng diễn ra trong kỳ mua sắm cuối năm 2013 vừa qua. Hậu quả l&agrave; c&ocirc;ng ty n&agrave;y đ&atilde; phải cắt giảm 20% dự b&aacute;o lợi nhuận tr&ecirc;n mỗi cổ phiếu trong đầu th&aacute;ng một năm nay.</p>\r\n<p class="pBody" style="font-family: Arial; font-size: 14px; color: rgb(0, 0, 0); line-height: 20px; margin: 8px auto;">\r\n	Trước đ&oacute;, hệ thống điện to&aacute;n của Target đ&atilde; bị kẻ xấu c&agrave;i đặt một loại phần mềm chuy&ecirc;n d&ugrave;ng đọc dữ liệu trong c&aacute;c m&aacute;y&nbsp;quẹt thẻ thanh to&aacute;n. Phần mềm độc hại n&agrave;y nhanh ch&oacute;ng l&acirc;y nhiễm đến 40.000 thiết bị đọc thẻ tại 1.797 si&ecirc;u thị Target v&agrave; thu thập tất cả những g&igrave; c&oacute; tr&ecirc;n một chiếc thẻ t&iacute;n dụng rồi gửi ngược về cho chủ nh&acirc;n. To&agrave;n bộ qu&aacute; tr&igrave;nh đ&atilde; diễn ra tr&oacute;t lọt trong v&ograve;ng 3 tuần &ndash; chủ yếu v&agrave;o đợt mua sắm cuối năm 2013 vừa qua &ndash; trước khi bị ph&aacute;t hiện.</p>\r\n<p class="pAuthor" style="font-family: Arial; font-size: 14px; text-align: right; color: rgb(61, 61, 61); font-weight: bold;">\r\n	TH&Uacute;Y QUỲNH</p>\r\n', 0),
(3, 'Bảo trì máy tính ', 'bao-tri-may-tinh', '4e99b-1_1.jpg', 'Chuyên bảo trì máy tính  bàn và tất cả các loại Laptop có mặt tên thị trường như : Macbook, Sony, IBM, Toshiba, Dell, Accer, Gateway...', '<p>\n	Chuy&ecirc;n bảo tr&igrave; m&aacute;y t&iacute;nh &nbsp;b&agrave;n v&agrave; tất cả c&aacute;c loại Laptop c&oacute; mặt t&ecirc;n thị trường như : Macbook, Sony, IBM, Toshiba, Dell, Accer, Gateway...</p>\n', 1),
(4, 'Lập trình tổng đài', 'lap-trinh-tong-dai', 'd84e9-imgres.jpg', 'Lập trình tổng đài', '<p>\n	Lập tr&igrave;nh tổng đ&agrave;i</p>\n', 1),
(5, 'Quản trị mạng', 'quan-tri-mang', '4d2df-images.jpg', 'Quản trị mạng', '<p>\n	Quản trị mạng</p>\n', 1),
(6, 'Lắp đặt Camera', 'lap-dat-camera', 'ed784-images.jpg', 'Lắp đặt Camera', '<p>\n	Lắp đặt Camera</p>\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `it24h_category`
--

CREATE TABLE IF NOT EXISTS `it24h_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it24h_category`
--

INSERT INTO `it24h_category` (`id`, `name`, `slug`, `parent_id`) VALUES
(1, 'Laptop', 'Laptop', 0),
(2, 'Acer', 'Acer', 1),
(3, 'Linh kiện máy tính', 'linh-kien-may-tinh', 0),
(4, 'Máy in', 'may-in', 0),
(7, 'Camera', 'Camera', 0),
(9, 'Thiết bị mạng', 'thiet-bi-mang', 0),
(10, 'Asus', 'asus', 1),
(11, 'HP', 'hp', 1),
(12, 'Vaio', 'Vaio', 1),
(14, 'Dell', 'Dell', 1),
(15, 'RAM', 'RAM', 3),
(16, 'Bàn phím', 'keyboard', 3),
(17, 'Chuột', 'mouse', 3),
(18, 'Ổ đĩa cứng', 'HDD', 3);

-- --------------------------------------------------------

--
-- Table structure for table `it24h_order`
--

CREATE TABLE IF NOT EXISTS `it24h_order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stt` smallint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it24h_order`
--

INSERT INTO `it24h_order` (`id`, `name`, `phone`, `date`, `address`, `note`, `stt`) VALUES
(2, 'Nguyễn Văn Tèo', '01267350255', '2013-09-05', '97 đường 339 tổ 5 KP4 Q9 TPHCM', '', 0),
(3, 'hoàng', '0213213213', '2014-02-04', 'q1 sài gòn', 'không có j hết', 0),
(4, 'Tình Văn Hình', '08111333333', '2014-02-09', 'nguyễn văn cừ q9', 'nothing about you', 0),
(5, 'Tiểu Tử', '0969105636', '2014-02-28', 'cầu thị nghè', '', 0),
(8, 'super man', '0969105635', '2014-09-01', 'sg', '', 0),
(10, 'khanh ne', '12312312', '2016-09-25', 'nha tui', 'khong co gi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `it24h_order_detail`
--

CREATE TABLE IF NOT EXISTS `it24h_order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quanity` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it24h_order_detail`
--

INSERT INTO `it24h_order_detail` (`id`, `order_id`, `product_id`, `quanity`) VALUES
(1, 2, 9, 1),
(2, 2, 10, 2),
(3, 2, 11, 1),
(4, 3, 23, 1),
(5, 3, 22, 1),
(6, 4, 18, 1),
(7, 4, 10, 1),
(8, 4, 11, 1),
(9, 4, 24, 1),
(10, 4, 9, 1),
(11, 4, 22, 1),
(12, 5, 9, 1),
(13, 6, 27, 1),
(14, 7, 27, 1),
(15, 8, 27, 1),
(16, 8, 10, 1),
(17, 9, 27, 1),
(18, 9, 10, 1),
(19, 10, 23, 1),
(20, 10, 22, 3),
(21, 10, 27, 1),
(22, 10, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `it24h_product`
--

CREATE TABLE IF NOT EXISTS `it24h_product` (
  `id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `warranty` int(11) NOT NULL,
  `describe` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hot` tinyint(1) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it24h_product`
--

INSERT INTO `it24h_product` (`id`, `name`, `slug`, `img`, `price`, `warranty`, `describe`, `hot`, `cat_id`, `date`) VALUES
(9, 'HP 450 - C8J31PA', 'HP-450', '3d025-hp-450-2342g50-300-nowatermark-300x300.jpg', 9650000, 12, '<p style="color: blue;">\n	<strong>Th&ocirc;ng số kỹ thuật:</strong></p>\n<div class="thongtinsp">\n	<p style="color: blue;">\n		<span style="font-size:11px;">- Intel&nbsp;Core i3-3120M (2 x 2.50GHz)&nbsp;<br />\n		- DDRAM 2GB/1600<br />\n		- HDD 500GB<br />\n		- Intel HD&nbsp;<br />\n		<strong>- </strong>DVD-RW<br />\n		- Card Reader - USB 3.0<br />\n		- 14&quot; HD LED - HDMI - Webcam<br />\n		- LAN 10/100/1000 - Wireless N - Bluetooth<br />\n		- Weight 2.0Kg - Battery 6 Cell<br />\n		- OS Linux</span></p>\n</div>\n<p>\n	&nbsp;</p>\n', 0, 11, '2014-02-13'),
(10, 'Acer Aspire 756', 'acer-aspire-756', '5ad54-144_367_acer-aspire-one-756-a.jpg', 4700000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; color: rgb(0, 0, 255); font-size: small; font-weight: bold; font-family: tahoma, arial, helvetica, sans-serif;">- Intel Celeron B877</span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- DDR3 2GB</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- HDD 320GB</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- VGA Intel HD Graphics&nbsp;WXGA (1366 x 768)</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- 11.6&quot;&nbsp;</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- LOA Nghe hay</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Webcam 1,3MP</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- 802.11b/g/n</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Bluetooth+EDR + wifi nhanh</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- 3 USB-card Reader + HDMI</span></strong></span></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-family: tahoma, arial, helvetica, sans-serif;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- PIN ~3h</span></strong></span></span></div>\r\n', 1, 2, '2014-01-29'),
(11, 'Sony Vaio VPCW211AX', 'sony-vaio-vpcw211ax', 'e1081-198_583_31xajbznxml.jpg', 4500000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-weight: bold; color: rgb(0, 0, 255); font-size: small;">- ATOM N450</span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- DDR 2 1GB</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- HDD 160GB</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- VGA Onboard</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 10.1&quot; LED HD</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- LOA nghe hay</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Webcam 1,3MP</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 802.11b/g/n</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bluetooth+EDR</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 3 USB-card Reader</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- PIN ~2h</strong></span></div>\r\n', 1, 12, '2014-01-29'),
(12, 'ASUS X501A-XX225', 'asus-x501a-xx225', 'a8ddc-189_552_asus-x501a-xx225--dark-blue.jpg', 8900000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Độ lớn m&agrave;n h&igrave;nh: 15.6 inch</strong></span></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Loại ổ cứng: HDD</strong></span></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Dung lượng HDD: 500GB</strong></span></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Loại CPU: Intel Core i3-2350M Sandy Bridge</strong></span></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Tốc độ m&aacute;y: 2.30GHz (3MB L3 cache)</strong></span></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Dung lượng Memory: 2GB</strong></span></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 128);"><strong style="margin: 0px; padding: 0px;">Trọng lượng: 2kg</strong></span></div>\r\n	<div>\r\n		&nbsp;</div>\r\n</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n', 0, 10, '2014-01-29'),
(13, 'Sony Vaio SVE11125CVW', 'Sony-Vaio-SVE11125CVW', '9ccf5-188_548_sonyvaiosve11125cvw.jpg', 7500000, 12, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Bộ xử l&yacute; tốc độ cao AMD E2-1800 (1.7GHz)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: small; color: rgb(0, 0, 255);">- DDR3 2GB</span></strong></span></div>\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- HDD 320GB</strong></span></div>\r\n	</div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Windows&reg; 8 64bit nguy&ecirc;n bản</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- M&agrave;n h&igrave;nh Wide 11.6 inch (WXGA: 1366x768) TFT (m&agrave;n h&igrave;nh VAIO, đ&egrave;n nền LED)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- &Acirc;m thanh chất lượng cao với &quot;xLOUD&quot; v&agrave; &quot;Clear Phase&quot;</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Chức năng sạc qua USB m&agrave; kh&ocirc;ng cần cắm AC v&agrave; bật OS</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Camera HD mạnh mẽ với &quot;Exmor for PC&quot;</span></strong></div>\r\n</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Wifi 802.11b/g/n nhanh v&agrave; mạnh</span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bluetooth+EDR + HDMI</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 3 USB-card Reader</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- PIN &gt; 4h</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng</strong></span></div>\r\n', 1, 12, '2014-01-29'),
(14, 'Dell INSPIRON', 'Dell-INSPIRON', '06ea3-36_78_dell-inspiron.jpg', 4000000, 3, '<p>\r\n	<span style="color:#0000cd;"><strong><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-size: 13px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- Intel Atom N455 1.66GHz</span></font></strong></span></p>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong><span style="color:#0000ff;"><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- RAM DDR3 1GB</span></font></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong><span style="color:#0000ff;"><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- HDD 250GB Seagate</span></font></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong><span style="color:#0000ff;"><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- VGA Intel GMA</span></font></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong><span style="color:#0000ff;"><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- M&agrave;n h&igrave;nh 10&quot; wide-gương đẹp</span></font></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong><span style="color:#0000ff;"><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- Wi-fi 802.11 b/g/N.</span></font></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong><span style="color:#0000ff;"><font face="tahoma, arial, helvetica, sans-serif" style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 18px; font-size: 12px;">- Pin 6-cells &gt; 2h</span></font></span></strong></div>\r\n<div>\r\n	&nbsp;</div>\r\n', 0, 14, '2014-01-29'),
(15, 'Sony Vaio 216AG', 'Sony-Vaio-216AG', '22fcb-jpeg.jpg', 5500000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- ATOM N450</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- DDR3 2GB</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- HDD 320GB</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- VGA Onboard</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 10.1&quot; LED HD độ ph&acirc;n giải 1366 x 768</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- LOA OK</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Webcam 1,3MP</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 802.11b/g/n</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bluetooth+EDR Wifi nhanh</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 3 USB-card Reader</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- PIN 3Cell &gt; 2h</strong></span></div>\r\n', 0, 12, '2014-01-29'),
(16, 'Sony Vaio SVE11115EG', 'Sony-Vaio-SVE11115EG', 'b0b79-jpeg.jpg', 6700000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Bộ xử l&yacute; tốc độ cao AMD E2-1800 (1.7GHz)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: small; color: rgb(0, 0, 255);">- DDR3 2GB</span></strong></span></div>\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- HDD 320GB</strong></span></div>\r\n	</div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Windows&reg; 7 Home Basic 64bit nguy&ecirc;n bản</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- M&agrave;n h&igrave;nh Wide 11.6 inch (WXGA: 1366x768) TFT (m&agrave;n h&igrave;nh VAIO, đ&egrave;n nền LED)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- &Acirc;m thanh chất lượng cao với &quot;xLOUD&quot; v&agrave; &quot;Clear Phase&quot;</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Chức năng sạc qua USB m&agrave; kh&ocirc;ng cần cắm AC v&agrave; bật OS</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Camera HD mạnh mẽ với &quot;Exmor for PC&quot;</span></strong></div>\r\n</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Wifi 802.11b/g/n nhanh v&agrave; mạnh</span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bluetooth+EDR + HDMI</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 3 USB-card Reader</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- PIN &gt; 3h</strong></span></div>\r\n', 1, 12, '2014-01-29'),
(17, 'Sony Vaio SVE11115EG', 'Sony-Vaio-SVE11115EG', '96d55-177_504_sony-sve14126cvb-core-i5-3210-vga-1gb-win-8-gia-cuc-re.jpg', 6700000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Bộ xử l&yacute; tốc độ cao AMD E2-1800 (1.7GHz)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: small; color: rgb(0, 0, 255);">- DDR3 2GB</span></strong></span></div>\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- HDD 320GB</strong></span></div>\r\n	</div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Windows&reg; 7 Home Basic 64bit nguy&ecirc;n bản</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- M&agrave;n h&igrave;nh Wide 11.6 inch (WXGA: 1366x768) TFT (m&agrave;n h&igrave;nh VAIO, đ&egrave;n nền LED)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- &Acirc;m thanh chất lượng cao với &quot;xLOUD&quot; v&agrave; &quot;Clear Phase&quot;</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Chức năng sạc qua USB m&agrave; kh&ocirc;ng cần cắm AC v&agrave; bật OS</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Camera HD mạnh mẽ với &quot;Exmor for PC&quot;</span></strong></div>\r\n</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Wifi 802.11b/g/n nhanh v&agrave; mạnh</span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bluetooth+EDR + HDMI</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 3 USB-card Reader</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- PIN &gt; 4h</strong></span></div>\r\n', 0, 12, '2014-01-29'),
(18, 'Sony Vaio SVE11115EGP', 'Sony-Vaio-SVE11115EGP', '21ab2-151_400_sony-sve11115egp.jpg', 6700000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Bộ xử l&yacute; tốc độ cao AMD E2-1800 (1.7GHz)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px;"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; font-size: small; color: rgb(0, 0, 255);">- DDR3 2GB</span></strong></span></div>\r\n		<div style="margin: 0px; padding: 0px;">\r\n			<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- HDD 320GB</strong></span></div>\r\n	</div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Windows&reg; 7 Home Basic 64bit nguy&ecirc;n bản</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- M&agrave;n h&igrave;nh Wide 11.6 inch (WXGA: 1366x768) TFT (m&agrave;n h&igrave;nh VAIO, đ&egrave;n nền LED)</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- &Acirc;m thanh chất lượng cao với &quot;xLOUD&quot; v&agrave; &quot;Clear Phase&quot;</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Chức năng sạc qua USB m&agrave; kh&ocirc;ng cần cắm AC v&agrave; bật OS</span></strong></div>\r\n	<div style="margin: 0px; padding: 0px;">\r\n		<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Camera HD mạnh mẽ với &quot;Exmor for PC&quot;</span></strong></div>\r\n</div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- Wifi 802.11b/g/n nhanh v&agrave; mạnh</span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- Bluetooth+EDR + HDMI</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- 3 USB-card Reader</strong></span></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);"><strong style="margin: 0px; padding: 0px;">- PIN &gt; 3h</strong></span></div>\r\n', 0, 12, '2014-01-29'),
(19, 'Sony Vaio VPC-W216AG', 'Sony-Vaio-VPC-W216AG', '72c58-97_325_1339408101_395637341_1-sony-vaio-netbook-vpcw216ag-andheri-west.jpg', 5200000, 3, '<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- ATOM-N450</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- DDR3 2GB</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- HDD 160GB</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- VGA Intel 3150</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- 10.1&quot; LED FULL HD</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- LOA OK</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- Webcam 1,3MP</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- 802.11b/g/n</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- Bluetooth+EDR</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(51, 102, 255);"><strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">- 3 USB-card Reader</span></strong></span></strong></div>\r\n<div style="margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Arial, Verdana, Tahoma, ''Trebuchet MS'', sans-serif; font-size: 13px;">\r\n	<strong style="margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; line-height: 19px; font-size: small; color: rgb(0, 0, 255);">- pin 4 h</span></strong></div>\r\n', 0, 12, '2014-01-29'),
(20, 'Western 250GB SATA3', 'Western-250GB-SATA3', '06539-o-cung-western-250gb-sata3-21028-1.jpg', 1049000, 24, '', 0, 18, '2014-01-22'),
(21, 'SamSung 1.0 TB Serial ATA II', 'SamSung-1.0-TB-Serial-ATA-II', '8d88a-o-cung-samsung-10-tb-serial-ata-ii-1479-1.jpg', 1690000, 12, '', 0, 18, '2014-01-28'),
(22, 'HP LaserJet 1320', 'HP-LaserJet-1320', '182fc-hp-laserjet-1320.jpg', 2787200, 6, '<p>\r\n	<span style="color:#0000cd;"><strong>HP / Loại m&aacute;y in: Laser đen trắng</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Cỡ giấy: A4 </strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>&nbsp;Độ ph&acirc;n giải: 1200x1200dpi</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Mực in: Khay mực / Kết nối:USB2.0, Parallel, IEEE 1284,</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Tốc độ in đen trắng (Tờ/ph&uacute;t): 22tờ</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Khay đựng giấy thường (Tờ): 250tờ</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Chức năng: In 2 mặt, In tr&agrave;n lề,</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>OS Supported:Microsoft Windows 98, Microsoft Windows 98SE,Microsoft Windows Me, Microsoft Windows NT 4.0,Microsoft Windows 2000, Microsoft Windows XP, Apple Mac OS 7.5 or greater, Linux, Mac OS 9.1 ～ 9.2, Mac OS X 10.2.4, Microsoft Windows XP Pro x64, Microsoft Windows Server 2003, Novell NetWare</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Bộ vi xử l&yacute;:166MHz </strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Bộ nhớ trong(Mb): 16</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>C&ocirc;ng suất ti&ecirc;u thụ(W):345</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Nguồn điện sử dụng: AC 220V 50/60Hz</strong></span></p>\r\n<p>\r\n	<span style="color:#0000cd;"><strong>Khối lượng: 11.2Kg&nbsp;</strong></span></p>\r\n', 0, 4, '2014-02-02'),
(23, 'HP LaserJet 1200 Printer', 'HP-LaserJet-1200-Printer', '9bf4b-hp-laserjet-1200-printer.jpg', 750000, 3, '<p>\r\n	<span style="color:#0000ff;"><strong>HP / Loại m&aacute;y in: Laser đen trắng&nbsp;</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Cỡ giấy: A4 / Độ ph&acirc;n giải: 1200dpi </strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Mực in: Khay mực </strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Kết nối: USB, USB2.0, Parallel</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Tốc độ in đen trắng (Tờ/ph&uacute;t): 14tờ</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Khay đựng giấy thường (Tờ): 250tờ </strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Chức năng: In tr&agrave;n lề, In Label, In trực tiếp</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>OS Supported: Microsoft Windows 98, Microsoft Windows 98SE, Microsoft Windows Me, Microsoft Windows NT 4.0, Microsoft Windows 2000, Microsoft Windows XP, Microsoft Windows Server 2003, Microsoft Windows Vista, Microsoft Windows Server 2008, Microsoft Windows 7</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Bộ vi xử l&yacute;: 133MHz </strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Bộ nhớ trong(Mb): 8 </strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>C&ocirc;ng suất ti&ecirc;u thụ(W): 350 </strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>Nguồn điện sử dụng: AC 220V 50/60Hz</strong></span></p>\r\n', 0, 4, '2014-02-01'),
(24, 'Camera WIT-2144U', 'Camera-WIT-2144U', '6abf9-camera-wit-2144u.jpg', 1660000, 0, '<p>\r\n	<strong><span style="color:#0000cd;">- L&agrave; phi&ecirc;n bản cao cấp hơn của WIT-2144H</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000cd;">- 1/3&rdquo; Sony CCD, 600 TV Lines</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000cd;">- Leds hồng ngoại : 144 pcs</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000cd;">- Độ nhạy s&aacute;ng : 0.1Lux/F1.2, tự c&acirc;n bằng &aacute;nh s&aacute;ng trắng, BLC, auto iris&hellip;</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000cd;">- Nguồn : DC 12V &plusmn; 10% 2.000mA4<br />\r\n	- Lượng đ&egrave;n Leds lớn, th&iacute;ch hợp cho m&ocirc;i trường quan s&aacute;t rộng , lớn trong nh&agrave; xưởng, c&ocirc;ng ty, nh&agrave; kho,...</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#ff0000;">Chi ch&uacute;</span><span style="color:#0000cd;"> : Gi&aacute; chưa bao gồm c&aacute;c phụ kiện rời b&ecirc;n ngo&agrave;i như Adapter, ch&acirc;n đế,...</span></strong></p>\r\n', 0, 7, '2014-02-02'),
(25, 'Camera IP HD WIT-6203DMP13', 'Camera-IP-HD-WIT-6203DMP13', '5ca76-camera-ip-hd-wit-6203dmp13.jpg', 4050000, 12, '<p>\r\n	<span style="color:#ff0000;"><strong>Camera wireless - kh&ocirc;ng d&acirc;y</strong></span></p>\r\n<p>\r\n	<strong><span style="color:#0000ff;">- Led hồng ngọai : 02 Pcs Dot Matrix</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000ff;">- Chuẩn HD 1.3 Megapixel rất sắc n&eacute;t</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000ff;">- Network : 10/100 Mbps Ethernet (RJ-45)</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000ff;">- Network protocol: HTTP, TCP/IP, DHCP, DDNS, NTP. Hỗ trợ : Internet Explorer .</span></strong></p>\r\n<p>\r\n	<strong><span style="color:#0000ff;">- Nguồn : DC 5V - 2000mA<br />\r\n	Th&iacute;ch hợp cho c&ocirc;ng ty, nh&agrave; xưởng,...</span></strong></p>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, 7, '2014-02-02'),
(26, 'Camera WIT-3040V', 'Camera-WIT-3040V', 'b79c5-camera-wit-3040v.jpg', 1150000, 0, '<p>\r\n	<span style="color:#0000ff;"><strong>- 1/3&rdquo; Sony, 700 TV Lines</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>- C&ocirc;ng nghệ chống ngược s&aacute;ng WDR , điều khiển bằng n&uacute;t điều khiển tr&ecirc;n d&acirc;y t&iacute;n hiệu</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>- Độ nhạy s&aacute;ng : 0.1Lux/F1.2, tự c&acirc;n bằng &aacute;nh s&aacute;ng trắng, BLC, auto iris&hellip;</strong></span></p>\r\n<p>\r\n	<span style="color:#0000ff;"><strong>- Nguồn : DC 12V &plusmn; 10% 500mA<br />\r\n	- Giải ph&aacute;p cho những nơi c&oacute; &aacute;nh s&aacute;ng mạnh, nắng gắt, ngược s&aacute;ng,...</strong></span></p>\r\n', 0, 7, '2014-02-02');
INSERT INTO `it24h_product` (`id`, `name`, `slug`, `img`, `price`, `warranty`, `describe`, `hot`, `cat_id`, `date`) VALUES
(27, 'Acer P3 - 171 - 5333Y2G12aS (003)', '14822_acer-p3', '228e9-14822_acer-p3-1711.jpg', 18490000, 12, '<p>\n	<span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">- Intel</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">&nbsp;Core i5-3339Y&nbsp;</strong><span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">1.5GHz - 3M</span><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">-</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">&nbsp;DDRAM 2GB/1600</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">-&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">SSD 120GB</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">-&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">Intel HD 4000</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">-&nbsp;</span><strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">2 camera : Trước HD Camera // Sau 5MP</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">- 11.6&quot; HD Multi Touch - &nbsp;Micro HDMI - USB 3.0</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<span style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;">- No LAN - Wireless N - Bluetooth</span><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">- Keyboard Bluetooth</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">- Weight 0.8Kg - Battery Li-po 4 Cell</strong><br style="color: rgb(0, 0, 0); font-family: Tahoma, Arial;" />\n	<strong style="margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: Tahoma, Arial; color: rgb(0, 0, 0);">- OS Win 8 Single Language</strong></p>\n', 1, 2, '2014-02-12');

-- --------------------------------------------------------

--
-- Table structure for table `it24h_user`
--

CREATE TABLE IF NOT EXISTS `it24h_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `it24h_user`
--

INSERT INTO `it24h_user` (`id`, `username`, `password`) VALUES
(1, 'leo', 'leo');

-- --------------------------------------------------------

--
-- Table structure for table `mb_category`
--

CREATE TABLE IF NOT EXISTS `mb_category` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fr_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) NOT NULL,
  `en_slug` varchar(200) NOT NULL,
  `fr_slug` varchar(200) NOT NULL,
  `group` varchar(20) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_category`
--

INSERT INTO `mb_category` (`id`, `title`, `en_title`, `fr_title`, `slug`, `en_slug`, `fr_slug`, `group`, `parent_id`) VALUES
(13, 'Cà phê', 'Coffee', 'Café', 'ca-phe', 'coffee', 'cafe', 'product', 0),
(14, 'Đặc biệt', 'Đặc biệt', 'Gâteau', 'dac-biet', 'cake', 'gateau', 'product', 0),
(15, 'Tin tức', 'News', 'Néws', 'tin-tuc', 'news', 'news', 'post', 0),
(16, 'Sự kiện', 'Event', 'Evént', 'su-kien', 'event', 'event', 'post', 0),
(18, 'Quà lưu niệm', 'Gift', '', 'qua-luu-niem', 'gift', '', 'product', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_category_content`
--

CREATE TABLE IF NOT EXISTS `mb_category_content` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `lang` char(2) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mb_option`
--

CREATE TABLE IF NOT EXISTS `mb_option` (
  `id` int(11) NOT NULL,
  `group_key` varchar(20) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(3) NOT NULL,
  `meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autoload` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mb_order`
--

CREATE TABLE IF NOT EXISTS `mb_order` (
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `customer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(10) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mb_order_detail`
--

CREATE TABLE IF NOT EXISTS `mb_order_detail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mb_post`
--

CREATE TABLE IF NOT EXISTS `mb_post` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `post_type` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `is_event` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_post`
--

INSERT INTO `mb_post` (`id`, `title`, `slug`, `cover`, `category_id`, `excerpt`, `content`, `created_at`, `is_public`, `user_id`, `post_type`, `deleted`, `is_hot`, `is_event`) VALUES
(6, 'Title demo 1', 'Anh-yeu-em-nhiu-lam-cho-con', '', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '', '2014-08-22 06:29:11', 0, 6, 'post', 1, 0, 1),
(7, 'Title demo 1', '', '', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '', '2014-10-04 16:13:16', 0, 11, 'post', 1, 0, 0),
(8, 'Title demo 1', 'ab-ca-sv', '', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '', '2015-01-04 14:40:37', 0, 0, 'post', 1, 1, 1),
(9, 'Title demo 1', 'a-a-u-u', '', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '', '2014-10-07 16:10:02', 0, 7, 'post', 1, 0, 0),
(10, 'Khơi nguồn ngày mới cùng CoffeeMocBinh', 'khoi-nguon-ngay-moi-cung-coffeemocbinh', '77adc-mcdonaldssalesman.jpg', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '<p style="text-align:center"><strong>Tại sao ch&uacute;ng ta phải uống c&agrave; ph&ecirc; h&oacute;a chất?</strong></p>\r\n\r\n<p>Mặc d&ugrave; t&ocirc;i kh&ocirc;ng phải l&agrave; một t&iacute;n đồ c&agrave; ph&ecirc;, nhưng thời gian gần đ&acirc;y t&ocirc;i cũng đ&atilde; bắt đầu uống c&agrave; ph&ecirc;. V&igrave; khắp nơi, ở đ&acirc;u t&ocirc;i cũng thấy quảng c&aacute;o về c&agrave; ph&ecirc; sạch. c&agrave; ph&ecirc; kh&ocirc;ng h&oacute;a chất, v&agrave; t&ocirc;i bắt đầu cuộc kh&aacute;m ph&aacute; của m&igrave;nh về c&agrave; ph&ecirc;.</p>\r\n\r\n<p>T&ocirc;i đ&atilde; đi rất nhiều qu&aacute;n được giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, kh&ocirc;ng h&oacute;a chất. Nhưng hương vị v&agrave; gi&aacute; cả ở những qu&aacute;n n&agrave;y đều kh&aacute;c nhau (trung b&igrave;nh chỉ từ 10 đến 12 ng&agrave;n đồng/ ly).</p>\r\n\r\n<p>Một v&agrave;i qu&aacute;n giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, nhưng t&ocirc;i vẫn chưa hiểu thế n&agrave;o l&agrave; sạch. Khi t&ocirc;i hỏi th&igrave; họ cũng giải th&iacute;ch với t&ocirc;i l&agrave; c&agrave; ph&ecirc; nguy&ecirc;n chất, nhưng để c&agrave; ph&ecirc; ngon v&agrave; thơm th&igrave; cũng phải cho một v&agrave;i hương liệu.<br />\r\n<img alt="" src="http://www.caphenguyenchat.org/media/file/files/tintuc/ca-phe-nong.jpg" style="height:587px; width:450px" /></p>\r\n\r\n<p>T&ocirc;i lại t&igrave;m đến những nơi kh&aacute;c, cũng c&oacute; một số qu&aacute;n đ&atilde; giải th&iacute;ch rằng: Sạch ở đ&acirc;y l&agrave; khi rang họ kh&ocirc;ng cho bất kỳ hương liệu g&igrave; v&agrave;o, để c&oacute; thể giữ nguy&ecirc;n m&ugrave;i v&agrave; vị thật của c&agrave; ph&ecirc;. V&agrave; khi t&ocirc;i uống th&igrave; thấy đ&uacute;ng l&agrave; kh&aacute;c thật, c&aacute;i vị thanh thanh khi uống v&agrave; cảm gi&aacute;c t&ecirc; t&ecirc; c&aacute;i lưỡi đ&atilde; l&agrave;m t&ocirc;i thật sự phải ghiền thức uống n&agrave;y.</p>\r\n\r\n<p>C&agrave; ph&ecirc; sạch th&igrave; gi&aacute; cũng kh&ocirc;ng mắc hơn c&agrave; ph&ecirc; tạp chất l&agrave; bao nhi&ecirc;u, nhưng quan trọng l&agrave; c&oacute; thể đảm bảo cho sức khỏe. Vậy th&igrave; tại sao ch&uacute;ng ta lại phải bỏ tiền ra để rồi phải uống những loại c&agrave; ph&ecirc; k&eacute;m chất lượng?</p>\r\n\r\n<p>C&aacute;ch nhận ra một ly c&agrave; ph&ecirc; ngon:</p>\r\n\r\n<p><strong>T</strong>&ocirc;i muốn chia sẻ c&aacute;ch ph&acirc;n biệt một ly c&agrave; ph&ecirc; ngon v&agrave; một ly c&agrave; ph&ecirc; đểu. Trước ti&ecirc;n n&oacute;i về c&agrave; ph&ecirc; nguy&ecirc;n liệu; lấy một &iacute;t bột c&agrave; ph&ecirc; cho v&agrave;o l&ograve;ng b&agrave;n tay, chao qua chao lại ch&uacute;ng ta sẽ thấy c&oacute; những hạt &oacute;ng &aacute;nh m&agrave;u đen, đ&oacute; ch&iacute;nh l&agrave; những hạt caramen. Những hạt n&agrave;y ch&iacute;nh l&agrave; những hạt tạo m&agrave;u đen của ly c&agrave; ph&ecirc;. Hạt c&agrave;ng nhiều chất lượng c&agrave;ng giảm, tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất tỷ lệ nghịch với hạt caramen n&agrave;y.</p>\r\n\r\n<p>N&oacute;i chung theo t&ocirc;i biết hiện nay c&agrave; ph&ecirc; b&aacute;n ở vỉa h&egrave; v&agrave; c&aacute;c qu&aacute;n th&igrave; tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất kh&ocirc;ng qu&aacute; 20%.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://anh.eva.vn/upload/1-2012/images/2012-01-04/1325645279-caphesuada-bep-eva6.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>&nbsp;Một ly c&agrave; ph&ecirc; ngon l&agrave; khi ta chế nước s&ocirc;i v&agrave;o phin c&agrave; ph&ecirc;, những hạt c&agrave; ph&ecirc; đầu ti&ecirc;n thường cho m&agrave;u đậm, sau đ&oacute; những giọt sau sẽ nhạt dần. Ngược lại những ly c&agrave; ph&ecirc; chất lượng k&eacute;m thường cho những giọt sau c&agrave;ng l&uacute;c c&agrave;ng đen hơn v&igrave; l&uacute;c n&agrave;y c&aacute;c hạt tạo m&agrave;u, tức l&agrave; hạt caramen mới đủ thời gian tan ra.</p>\r\n\r\n<p>Sưu tầm</p>\r\n', '2015-01-08 11:48:29', 1, 15, 'post', 1, 1, 1),
(11, 'Cách nhận ra một ly cà phê ngon', 'cach-nhan-ra-mot-ly-ca-phe-ngon', '1ecaf-cafechon.jpg', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '<p style="text-align:center"><strong>Tại sao ch&uacute;ng ta phải uống c&agrave; ph&ecirc; h&oacute;a chất?</strong></p>\r\n\r\n<p>Mặc d&ugrave; t&ocirc;i kh&ocirc;ng phải l&agrave; một t&iacute;n đồ c&agrave; ph&ecirc;, nhưng thời gian gần đ&acirc;y t&ocirc;i cũng đ&atilde; bắt đầu uống c&agrave; ph&ecirc;. V&igrave; khắp nơi, ở đ&acirc;u t&ocirc;i cũng thấy quảng c&aacute;o về c&agrave; ph&ecirc; sạch. c&agrave; ph&ecirc; kh&ocirc;ng h&oacute;a chất, v&agrave; t&ocirc;i bắt đầu cuộc kh&aacute;m ph&aacute; của m&igrave;nh về c&agrave; ph&ecirc;.</p>\r\n\r\n<p>T&ocirc;i đ&atilde; đi rất nhiều qu&aacute;n được giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, kh&ocirc;ng h&oacute;a chất. Nhưng hương vị v&agrave; gi&aacute; cả ở những qu&aacute;n n&agrave;y đều kh&aacute;c nhau (trung b&igrave;nh chỉ từ 10 đến 12 ng&agrave;n đồng/ ly).</p>\r\n\r\n<p>Một v&agrave;i qu&aacute;n giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, nhưng t&ocirc;i vẫn chưa hiểu thế n&agrave;o l&agrave; sạch. Khi t&ocirc;i hỏi th&igrave; họ cũng giải th&iacute;ch với t&ocirc;i l&agrave; c&agrave; ph&ecirc; nguy&ecirc;n chất, nhưng để c&agrave; ph&ecirc; ngon v&agrave; thơm th&igrave; cũng phải cho một v&agrave;i hương liệu.<br />\r\n<img alt="" src="http://www.caphenguyenchat.org/media/file/files/tintuc/ca-phe-nong.jpg" style="height:587px; width:450px" /></p>\r\n\r\n<p>T&ocirc;i lại t&igrave;m đến những nơi kh&aacute;c, cũng c&oacute; một số qu&aacute;n đ&atilde; giải th&iacute;ch rằng: Sạch ở đ&acirc;y l&agrave; khi rang họ kh&ocirc;ng cho bất kỳ hương liệu g&igrave; v&agrave;o, để c&oacute; thể giữ nguy&ecirc;n m&ugrave;i v&agrave; vị thật của c&agrave; ph&ecirc;. V&agrave; khi t&ocirc;i uống th&igrave; thấy đ&uacute;ng l&agrave; kh&aacute;c thật, c&aacute;i vị thanh thanh khi uống v&agrave; cảm gi&aacute;c t&ecirc; t&ecirc; c&aacute;i lưỡi đ&atilde; l&agrave;m t&ocirc;i thật sự phải ghiền thức uống n&agrave;y.</p>\r\n\r\n<p>C&agrave; ph&ecirc; sạch th&igrave; gi&aacute; cũng kh&ocirc;ng mắc hơn c&agrave; ph&ecirc; tạp chất l&agrave; bao nhi&ecirc;u, nhưng quan trọng l&agrave; c&oacute; thể đảm bảo cho sức khỏe. Vậy th&igrave; tại sao ch&uacute;ng ta lại phải bỏ tiền ra để rồi phải uống những loại c&agrave; ph&ecirc; k&eacute;m chất lượng?</p>\r\n\r\n<p>C&aacute;ch nhận ra một ly c&agrave; ph&ecirc; ngon:</p>\r\n\r\n<p><strong>T</strong>&ocirc;i muốn chia sẻ c&aacute;ch ph&acirc;n biệt một ly c&agrave; ph&ecirc; ngon v&agrave; một ly c&agrave; ph&ecirc; đểu. Trước ti&ecirc;n n&oacute;i về c&agrave; ph&ecirc; nguy&ecirc;n liệu; lấy một &iacute;t bột c&agrave; ph&ecirc; cho v&agrave;o l&ograve;ng b&agrave;n tay, chao qua chao lại ch&uacute;ng ta sẽ thấy c&oacute; những hạt &oacute;ng &aacute;nh m&agrave;u đen, đ&oacute; ch&iacute;nh l&agrave; những hạt caramen. Những hạt n&agrave;y ch&iacute;nh l&agrave; những hạt tạo m&agrave;u đen của ly c&agrave; ph&ecirc;. Hạt c&agrave;ng nhiều chất lượng c&agrave;ng giảm, tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất tỷ lệ nghịch với hạt caramen n&agrave;y.</p>\r\n\r\n<p>N&oacute;i chung theo t&ocirc;i biết hiện nay c&agrave; ph&ecirc; b&aacute;n ở vỉa h&egrave; v&agrave; c&aacute;c qu&aacute;n th&igrave; tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất kh&ocirc;ng qu&aacute; 20%.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://anh.eva.vn/upload/1-2012/images/2012-01-04/1325645279-caphesuada-bep-eva6.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>&nbsp;Một ly c&agrave; ph&ecirc; ngon l&agrave; khi ta chế nước s&ocirc;i v&agrave;o phin c&agrave; ph&ecirc;, những hạt c&agrave; ph&ecirc; đầu ti&ecirc;n thường cho m&agrave;u đậm, sau đ&oacute; những giọt sau sẽ nhạt dần. Ngược lại những ly c&agrave; ph&ecirc; chất lượng k&eacute;m thường cho những giọt sau c&agrave;ng l&uacute;c c&agrave;ng đen hơn v&igrave; l&uacute;c n&agrave;y c&aacute;c hạt tạo m&agrave;u, tức l&agrave; hạt caramen mới đủ thời gian tan ra.</p>\r\n\r\n<p>Sưu tầm</p>\r\n', '2015-01-08 11:48:29', 1, 0, 'post', 0, 0, 0),
(12, 'Cách nhận ra một ly cà phê ngon', 'cach-nhan-ra-mot-ly-ca-phe-ngon', 'b821b-yeudulich-banh-doremon-nhieu-loai-nhan-3.jpg', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '<p style="text-align:center"><strong>Tại sao ch&uacute;ng ta phải uống c&agrave; ph&ecirc; h&oacute;a chất?</strong></p>\r\n\r\n<p>Mặc d&ugrave; t&ocirc;i kh&ocirc;ng phải l&agrave; một t&iacute;n đồ c&agrave; ph&ecirc;, nhưng thời gian gần đ&acirc;y t&ocirc;i cũng đ&atilde; bắt đầu uống c&agrave; ph&ecirc;. V&igrave; khắp nơi, ở đ&acirc;u t&ocirc;i cũng thấy quảng c&aacute;o về c&agrave; ph&ecirc; sạch. c&agrave; ph&ecirc; kh&ocirc;ng h&oacute;a chất, v&agrave; t&ocirc;i bắt đầu cuộc kh&aacute;m ph&aacute; của m&igrave;nh về c&agrave; ph&ecirc;.</p>\r\n\r\n<p>T&ocirc;i đ&atilde; đi rất nhiều qu&aacute;n được giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, kh&ocirc;ng h&oacute;a chất. Nhưng hương vị v&agrave; gi&aacute; cả ở những qu&aacute;n n&agrave;y đều kh&aacute;c nhau (trung b&igrave;nh chỉ từ 10 đến 12 ng&agrave;n đồng/ ly).</p>\r\n\r\n<p>Một v&agrave;i qu&aacute;n giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, nhưng t&ocirc;i vẫn chưa hiểu thế n&agrave;o l&agrave; sạch. Khi t&ocirc;i hỏi th&igrave; họ cũng giải th&iacute;ch với t&ocirc;i l&agrave; c&agrave; ph&ecirc; nguy&ecirc;n chất, nhưng để c&agrave; ph&ecirc; ngon v&agrave; thơm th&igrave; cũng phải cho một v&agrave;i hương liệu.<br />\r\n<img alt="" src="http://www.caphenguyenchat.org/media/file/files/tintuc/ca-phe-nong.jpg" style="height:587px; width:450px" /></p>\r\n\r\n<p>T&ocirc;i lại t&igrave;m đến những nơi kh&aacute;c, cũng c&oacute; một số qu&aacute;n đ&atilde; giải th&iacute;ch rằng: Sạch ở đ&acirc;y l&agrave; khi rang họ kh&ocirc;ng cho bất kỳ hương liệu g&igrave; v&agrave;o, để c&oacute; thể giữ nguy&ecirc;n m&ugrave;i v&agrave; vị thật của c&agrave; ph&ecirc;. V&agrave; khi t&ocirc;i uống th&igrave; thấy đ&uacute;ng l&agrave; kh&aacute;c thật, c&aacute;i vị thanh thanh khi uống v&agrave; cảm gi&aacute;c t&ecirc; t&ecirc; c&aacute;i lưỡi đ&atilde; l&agrave;m t&ocirc;i thật sự phải ghiền thức uống n&agrave;y.</p>\r\n\r\n<p>C&agrave; ph&ecirc; sạch th&igrave; gi&aacute; cũng kh&ocirc;ng mắc hơn c&agrave; ph&ecirc; tạp chất l&agrave; bao nhi&ecirc;u, nhưng quan trọng l&agrave; c&oacute; thể đảm bảo cho sức khỏe. Vậy th&igrave; tại sao ch&uacute;ng ta lại phải bỏ tiền ra để rồi phải uống những loại c&agrave; ph&ecirc; k&eacute;m chất lượng?</p>\r\n\r\n<p>C&aacute;ch nhận ra một ly c&agrave; ph&ecirc; ngon:</p>\r\n\r\n<p><strong>T</strong>&ocirc;i muốn chia sẻ c&aacute;ch ph&acirc;n biệt một ly c&agrave; ph&ecirc; ngon v&agrave; một ly c&agrave; ph&ecirc; đểu. Trước ti&ecirc;n n&oacute;i về c&agrave; ph&ecirc; nguy&ecirc;n liệu; lấy một &iacute;t bột c&agrave; ph&ecirc; cho v&agrave;o l&ograve;ng b&agrave;n tay, chao qua chao lại ch&uacute;ng ta sẽ thấy c&oacute; những hạt &oacute;ng &aacute;nh m&agrave;u đen, đ&oacute; ch&iacute;nh l&agrave; những hạt caramen. Những hạt n&agrave;y ch&iacute;nh l&agrave; những hạt tạo m&agrave;u đen của ly c&agrave; ph&ecirc;. Hạt c&agrave;ng nhiều chất lượng c&agrave;ng giảm, tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất tỷ lệ nghịch với hạt caramen n&agrave;y.</p>\r\n\r\n<p>N&oacute;i chung theo t&ocirc;i biết hiện nay c&agrave; ph&ecirc; b&aacute;n ở vỉa h&egrave; v&agrave; c&aacute;c qu&aacute;n th&igrave; tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất kh&ocirc;ng qu&aacute; 20%.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://anh.eva.vn/upload/1-2012/images/2012-01-04/1325645279-caphesuada-bep-eva6.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>&nbsp;Một ly c&agrave; ph&ecirc; ngon l&agrave; khi ta chế nước s&ocirc;i v&agrave;o phin c&agrave; ph&ecirc;, những hạt c&agrave; ph&ecirc; đầu ti&ecirc;n thường cho m&agrave;u đậm, sau đ&oacute; những giọt sau sẽ nhạt dần. Ngược lại những ly c&agrave; ph&ecirc; chất lượng k&eacute;m thường cho những giọt sau c&agrave;ng l&uacute;c c&agrave;ng đen hơn v&igrave; l&uacute;c n&agrave;y c&aacute;c hạt tạo m&agrave;u, tức l&agrave; hạt caramen mới đủ thời gian tan ra.</p>\r\n\r\n<p>Sưu tầm</p>\r\n', '2015-01-08 11:48:29', 1, 0, 'post', 0, 1, 0),
(13, 'Cách nhận ra một ly cà phê ngon', 'cach-nhan-ra-mot-ly-ca-phe-ngon', 'a37e1-cafe.jpg', 15, 'Một ly cà phê thật là khi ta chế nước sôi vào phin cà phê, những hạt cà phê đầu tiên thường cho màu đậm, sau đó những giọt sau sẽ nhạt dần. Một ly cà phê ngon sẽ có vị thanh thanh khi uống và cảm giác tê tê cái lưỡi. ', '<p style="text-align:center"><strong>Tại sao ch&uacute;ng ta phải uống c&agrave; ph&ecirc; h&oacute;a chất?</strong></p>\r\n\r\n<p>Mặc d&ugrave; t&ocirc;i kh&ocirc;ng phải l&agrave; một t&iacute;n đồ c&agrave; ph&ecirc;, nhưng thời gian gần đ&acirc;y t&ocirc;i cũng đ&atilde; bắt đầu uống c&agrave; ph&ecirc;. V&igrave; khắp nơi, ở đ&acirc;u t&ocirc;i cũng thấy quảng c&aacute;o về c&agrave; ph&ecirc; sạch. c&agrave; ph&ecirc; kh&ocirc;ng h&oacute;a chất, v&agrave; t&ocirc;i bắt đầu cuộc kh&aacute;m ph&aacute; của m&igrave;nh về c&agrave; ph&ecirc;.</p>\r\n\r\n<p>T&ocirc;i đ&atilde; đi rất nhiều qu&aacute;n được giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, kh&ocirc;ng h&oacute;a chất. Nhưng hương vị v&agrave; gi&aacute; cả ở những qu&aacute;n n&agrave;y đều kh&aacute;c nhau (trung b&igrave;nh chỉ từ 10 đến 12 ng&agrave;n đồng/ ly).</p>\r\n\r\n<p>Một v&agrave;i qu&aacute;n giới thiệu l&agrave; c&agrave; ph&ecirc; sạch, nhưng t&ocirc;i vẫn chưa hiểu thế n&agrave;o l&agrave; sạch. Khi t&ocirc;i hỏi th&igrave; họ cũng giải th&iacute;ch với t&ocirc;i l&agrave; c&agrave; ph&ecirc; nguy&ecirc;n chất, nhưng để c&agrave; ph&ecirc; ngon v&agrave; thơm th&igrave; cũng phải cho một v&agrave;i hương liệu.<br />\r\n<img alt="" src="http://www.caphenguyenchat.org/media/file/files/tintuc/ca-phe-nong.jpg" style="height:587px; width:450px" /></p>\r\n\r\n<p>T&ocirc;i lại t&igrave;m đến những nơi kh&aacute;c, cũng c&oacute; một số qu&aacute;n đ&atilde; giải th&iacute;ch rằng: Sạch ở đ&acirc;y l&agrave; khi rang họ kh&ocirc;ng cho bất kỳ hương liệu g&igrave; v&agrave;o, để c&oacute; thể giữ nguy&ecirc;n m&ugrave;i v&agrave; vị thật của c&agrave; ph&ecirc;. V&agrave; khi t&ocirc;i uống th&igrave; thấy đ&uacute;ng l&agrave; kh&aacute;c thật, c&aacute;i vị thanh thanh khi uống v&agrave; cảm gi&aacute;c t&ecirc; t&ecirc; c&aacute;i lưỡi đ&atilde; l&agrave;m t&ocirc;i thật sự phải ghiền thức uống n&agrave;y.</p>\r\n\r\n<p>C&agrave; ph&ecirc; sạch th&igrave; gi&aacute; cũng kh&ocirc;ng mắc hơn c&agrave; ph&ecirc; tạp chất l&agrave; bao nhi&ecirc;u, nhưng quan trọng l&agrave; c&oacute; thể đảm bảo cho sức khỏe. Vậy th&igrave; tại sao ch&uacute;ng ta lại phải bỏ tiền ra để rồi phải uống những loại c&agrave; ph&ecirc; k&eacute;m chất lượng?</p>\r\n\r\n<p>C&aacute;ch nhận ra một ly c&agrave; ph&ecirc; ngon:</p>\r\n\r\n<p><strong>T</strong>&ocirc;i muốn chia sẻ c&aacute;ch ph&acirc;n biệt một ly c&agrave; ph&ecirc; ngon v&agrave; một ly c&agrave; ph&ecirc; đểu. Trước ti&ecirc;n n&oacute;i về c&agrave; ph&ecirc; nguy&ecirc;n liệu; lấy một &iacute;t bột c&agrave; ph&ecirc; cho v&agrave;o l&ograve;ng b&agrave;n tay, chao qua chao lại ch&uacute;ng ta sẽ thấy c&oacute; những hạt &oacute;ng &aacute;nh m&agrave;u đen, đ&oacute; ch&iacute;nh l&agrave; những hạt caramen. Những hạt n&agrave;y ch&iacute;nh l&agrave; những hạt tạo m&agrave;u đen của ly c&agrave; ph&ecirc;. Hạt c&agrave;ng nhiều chất lượng c&agrave;ng giảm, tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất tỷ lệ nghịch với hạt caramen n&agrave;y.</p>\r\n\r\n<p>N&oacute;i chung theo t&ocirc;i biết hiện nay c&agrave; ph&ecirc; b&aacute;n ở vỉa h&egrave; v&agrave; c&aacute;c qu&aacute;n th&igrave; tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất kh&ocirc;ng qu&aacute; 20%.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://anh.eva.vn/upload/1-2012/images/2012-01-04/1325645279-caphesuada-bep-eva6.jpg" style="height:333px; width:500px" /></p>\r\n\r\n<p>&nbsp;Một ly c&agrave; ph&ecirc; ngon l&agrave; khi ta chế nước s&ocirc;i v&agrave;o phin c&agrave; ph&ecirc;, những hạt c&agrave; ph&ecirc; đầu ti&ecirc;n thường cho m&agrave;u đậm, sau đ&oacute; những giọt sau sẽ nhạt dần. Ngược lại những ly c&agrave; ph&ecirc; chất lượng k&eacute;m thường cho những giọt sau c&agrave;ng l&uacute;c c&agrave;ng đen hơn v&igrave; l&uacute;c n&agrave;y c&aacute;c hạt tạo m&agrave;u, tức l&agrave; hạt caramen mới đủ thời gian tan ra.</p>\r\n\r\n<p>Sưu tầm</p>\r\n', '2015-01-08 11:48:29', 1, 0, 'post', 0, 0, 0),
(14, 'Cà phê sạch là gì? Cách nhận biết cà phê sạch và ngon', 'ca-phe-sach-la-gi-cach-nhan-biet-ca-phe-sach-va-ngon', '91846-10501472_682743861797596_700562858_n.jpg', 15, 'Định nghĩa sạch ở đây được hiểu là toàn bộ quy trình làm cà phê từ khi trồng, chăm sóc, thu hái cho tới sản xuất, chế biến đều sạch và trong suốt quá trình này không có bóng dáng của một chất hóa học nào, đồng thời việc trồng trọt, sản xuất, chế biến cũng phải đảm bảo môi trường sạch, tiêu chí này không phải cơ sở nào cũng có thể làm được. Và với định nghĩa Cà Phê Sạch như trên chúng tôi gọi là Cà Phê Hữu Cơ\nMột tách cafe sạch là tách cafe phải lưu giữ đầy đủ Hương và Vị của Cà Phê', '<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; font-family: sans-serif; font-stretch: inherit; line-height: normal; color: rgb(0, 0, 0); text-align: justify; background: rgba(0, 0, 0, 0.0196078);"><span style="font-family:inherit; font-size:14px"><span style="font-family:inherit">1. C&agrave; ph&ecirc; sạch l&agrave; g&igrave; ??</span><br />\n<br />\nĐịnh nghĩa sạch ở đ&acirc;y được hiểu l&agrave; to&agrave;n bộ quy tr&igrave;nh l&agrave;m&nbsp;<span style="font-family:inherit"><span style="font-family:inherit"><a href="http://verocoffee.vn/" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; -webkit-transition: all 0.3s linear; transition: all 0.3s linear; background: transparent;">c&agrave; ph&ecirc;</a></span></span>&nbsp;từ khi trồng, chăm s&oacute;c, thu h&aacute;i cho tới sản xuất, chế biến đều sạch v&agrave; trong suốt qu&aacute; tr&igrave;nh n&agrave;y kh&ocirc;ng c&oacute; b&oacute;ng d&aacute;ng của một chất h&oacute;a học n&agrave;o, đồng thời việc trồng trọt, sản xuất, chế biến cũng phải đảm bảo m&ocirc;i trường sạch, ti&ecirc;u ch&iacute; n&agrave;y kh&ocirc;ng phải cơ sở n&agrave;o cũng c&oacute; thể l&agrave;m được. V&agrave; với định nghĩa C&agrave; Ph&ecirc; Sạch như tr&ecirc;n ch&uacute;ng t&ocirc;i gọi l&agrave; C&agrave; Ph&ecirc; Hữu Cơ</span></div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; font-family: sans-serif; font-stretch: inherit; line-height: normal; color: rgb(0, 0, 0); text-align: justify; background: rgba(0, 0, 0, 0.0196078);"><span style="font-family:inherit; font-size:14px">Một t&aacute;ch cafe sạch l&agrave; t&aacute;ch cafe phải lưu giữ đầy đủ&nbsp;<span style="font-family:inherit"><a href="http://verocoffee.vn/vi/blog/BLog/Ngay-thu-nhat-Ca-phe-ngon-va-cung-nhau-di-tim-huong-vi-ban-mong-muon-9.html" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; -webkit-transition: all 0.3s linear; transition: all 0.3s linear; background: transparent;">Hương v&agrave; Vị</a></span>&nbsp;của C&agrave; Ph&ecirc;</span></div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; font-family: sans-serif; font-stretch: inherit; line-height: normal; color: rgb(0, 0, 0); text-align: justify; background: rgba(0, 0, 0, 0.0196078);"><img alt="" src="http://verocoffee.vn/uploads/news/2014_07/10501472_682743861797596_700562858_n.jpg" style="background:transparent; border:0px; box-sizing:border-box; font-family:inherit; font-stretch:inherit; font-variant:inherit; font-weight:inherit; height:333px; line-height:inherit; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline; width:500px" /><br />\n<br />\n&nbsp;</div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15px; vertical-align: baseline; font-family: sans-serif; font-stretch: inherit; line-height: normal; color: rgb(0, 0, 0); background: rgba(0, 0, 0, 0.0196078);">\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; text-align: justify; background: transparent;"><br />\n<span style="font-family:inherit; font-size:14px">Sản phẩm cafe sạch được lựa chọn khắt khe từ những hạt cafe ch&iacute;n mọng chất lượng cao nhất của v&ugrave;ng Cầu Đất, kết hợp với&nbsp;<a href="http://verocoffee.vn/vi/blog/BLog/Khi-bi-kiep-rang-ca-phe-khong-con-la-bi-mat-6.html" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; -webkit-transition: all 0.3s linear; transition: all 0.3s linear; background: transparent;"><span style="font-family:inherit">b&iacute; quyết rang xay</span></a>&nbsp;gia truyền v&agrave; ho&agrave;n to&agrave;n thủ c&ocirc;ng. Suốt qu&aacute; tr&igrave;nh chế biến kh&ocirc;ng hề sử dụng c&aacute;c chất độn hay chất phụ gia tạo m&agrave;u, giữ cho hương vị cafe lu&ocirc;n thuần khiết, tốt cho sức khỏe người ti&ecirc;u d&ugrave;ng, m&agrave;u sắc trong trẻo kh&ocirc;ng đen đục v&agrave; đặc qu&aacute;nh.</span></div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; text-align: justify; background: transparent;"><span style="font-family:inherit; font-size:14px">Hương thơm đ&iacute;ch thực v&agrave; nguy&ecirc;n thủy của cafe kh&ocirc;ng qu&aacute; nồng đậm, kh&ocirc;ng th&ocirc; bạo mạnh mẽ nhưng dịu d&agrave;ng, lưu luyến, thanh cao, tinh tế v&agrave; s&acirc;u lắng, đ&ocirc;i l&uacute;c l&agrave;m ng&acirc;y ngất người y&ecirc;u c&agrave; ph&ecirc;</span>&hellip;<br />\n&nbsp;</div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; text-align: justify; background: transparent;"><span style="font-family:inherit"><span style="font-family:inherit; font-size:14px">2.C&aacute;ch nhận ra một ly c&agrave; ph&ecirc; ngon.</span></span><br />\n&nbsp;</div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; text-align: justify; background: transparent;"><span style="font-family:inherit; font-size:14px">T&ocirc;i muốn chia sẻ c&aacute;ch ph&acirc;n biệt một ly&nbsp;<span style="font-family:inherit"><span style="color:rgb(0, 0, 255); font-family:inherit"><span style="font-family:inherit"><a href="http://verocoffee.vn/" style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-decoration: none; color: rgb(255, 255, 255); font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; -webkit-transition: all 0.3s linear; transition: all 0.3s linear; background: transparent;">c&agrave; ph&ecirc; ngon</a></span></span></span><span style="color:rgb(0, 0, 255); font-family:inherit">&nbsp;</span>v&agrave; một ly c&agrave; ph&ecirc; đểu. Trước ti&ecirc;n n&oacute;i về c&agrave; ph&ecirc; nguy&ecirc;n liệu; lấy một &iacute;t bột c&agrave; ph&ecirc; cho v&agrave;o l&ograve;ng b&agrave;n tay, chao qua chao lại ch&uacute;ng ta sẽ thấy c&oacute; những hạt &oacute;ng &aacute;nh m&agrave;u đen, đ&oacute; ch&iacute;nh l&agrave; những hạt caramen. Những hạt n&agrave;y ch&iacute;nh l&agrave; những hạt tạo m&agrave;u đen của ly c&agrave; ph&ecirc;. Hạt c&agrave;ng nhiều chất lượng c&agrave;ng giảm, tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất tỷ lệ nghịch với hạt caramen n&agrave;y.</span></div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; text-align: justify; background: transparent;"><span style="font-family:inherit; font-size:14px">N&oacute;i chung theo t&ocirc;i biết hiện nay c&agrave; ph&ecirc; b&aacute;n ở vỉa h&egrave; v&agrave; c&aacute;c qu&aacute;n th&igrave; tỷ lệ c&agrave; ph&ecirc; nguy&ecirc;n chất kh&ocirc;ng qu&aacute; 20%.</span></div>\n\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-family: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; text-align: justify; background: transparent;"><span style="font-family:inherit; font-size:14px">Một ly c&agrave; ph&ecirc; ngon l&agrave; khi ta chế nước s&ocirc;i v&agrave;o phin c&agrave; ph&ecirc;, những hạt c&agrave; ph&ecirc; đầu ti&ecirc;n thường cho m&agrave;u đậm, sau đ&oacute; những giọt sau sẽ nhạt dần. Ngược lại những ly c&agrave; ph&ecirc; chất lượng k&eacute;m thường cho những giọt sau c&agrave;ng l&uacute;c c&agrave;ng đen hơn v&igrave; l&uacute;c n&agrave;y c&aacute;c hạt tạo m&agrave;u, tức l&agrave; hạt caramen mới đủ thời gian tan ra.</span><br />\n&nbsp;</div>\n</div>\n', '2015-01-15 13:37:57', 0, 0, 'post', 0, 0, 0),
(15, 'demo', 'demo', '22e4e-ca-phe-giam-can-nhu-the-nao.jpeg', 16, 'demo', 'content', '2015-05-18 09:04:24', 1, 15, 'post', 1, 1, 1),
(16, 'Test sự kiện', 'test-su-kien', '76c1e-dd_cake_slider032-235x157.jpg', 16, 'sự kiện demo', 'demo sự kiện', '2015-05-21 09:45:49', 1, 0, 'post', 1, 1, 1),
(17, 'bài viết mới', 'bai-viet-moi', 'b2d2f-dd_cake_slider032-235x157.jpg', 15, 'tóm tắt', 'nội dung<br />\n<br />\nis public chọn yes để hiển thị ngoi&agrave; trang chủ<br />\n<br />\nchọn is hot để n&oacute; v&ocirc; phần nổi bật<br />\n<span style="font-family:arial; font-size:14px">Is event : n&oacute; sẽ hiện ở side bar ,<br />\nem sẽ v&iacute; dụ thử</span><br />\nđ&oacute; l&agrave; is event.<br />\ngiờ em tắt', '2015-05-21 22:23:45', 1, 15, 'post', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_product`
--

CREATE TABLE IF NOT EXISTS `mb_product` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `en_title` varchar(200) NOT NULL,
  `fr_title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `en_slug` varchar(200) NOT NULL,
  `fr_slug` varchar(200) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `old_price` int(11) NOT NULL,
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0',
  `is_new` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_product`
--

INSERT INTO `mb_product` (`id`, `title`, `en_title`, `fr_title`, `slug`, `en_slug`, `fr_slug`, `cover`, `category_id`, `price`, `old_price`, `excerpt`, `content`, `created_at`, `is_public`, `user_id`, `deleted`, `is_hot`, `is_new`) VALUES
(1, 'Cà phê ROBUSTA', '', '', 'Cafe-MB-loai-1', '', '', '860ce-bi-quyet-lam-toc-dai-va-den-muot-voi-ca-fe1.jpg', 13, 45000, 35000, '   Là một sản phẩm đặc biệt trong dòng Cà phê Sáng tạo của Trung Nguyên.\r\n                Có hương thơm đầm, thơm rất lâu với hậu vị đậm và êm.\r\n                Là một sự cân bằng hoàn hảo giữa hương và vị.', '', '2014-10-07 16:11:23', 0, 11, 0, 1, 0),
(2, 'Cafe 2 ', '', '', 'cafe-2', '', '', '02645-cafe.jpg', 13, 50000, 0, '   Là một sản phẩm đặc biệt trong dòng Cà phê Sáng tạo của Trung Nguyên.\r\n                Có hương thơm đầm, thơm rất lâu với hậu vị đậm và êm.\r\n                Là một sự cân bằng hoàn hảo giữa hương và vị.', '', '2014-12-08 15:14:42', 0, 7, 0, 1, 1),
(3, 'Cà phê Chồn 2', '', '', 'cafe chon 2', '', '', '83254-cafechon.jpg', 13, 453543, 0, '   Là một sản phẩm đặc biệt trong dòng Cà phê Sáng tạo của Trung Nguyên.\r\n                Có hương thơm đầm, thơm rất lâu với hậu vị đậm và êm.\r\n                Là một sự cân bằng hoàn hảo giữa hương và vị.', '', '2014-10-07 16:11:23', 0, 11, 0, 0, 0),
(4, 'Cà phê Chồn', '', '', 'cafe-chon', '', '', '88888-ca-phe-chon1.jpg', 18, 20000, 0, '   Là một sản phẩm đặc biệt trong dòng Cà phê Sáng tạo của Trung Nguyên.\r\n                Có hương thơm đầm, thơm rất lâu với hậu vị đậm và êm.\r\n                Là một sự cân bằng hoàn hảo giữa hương và vị.', '', '2014-10-07 16:11:23', 0, 11, 0, 1, 0),
(5, 'Bánh rán', '', '', 'banh-ran', '', '', '769a2-yeudulich-banh-doremon-nhieu-loai-nhan-3.jpg', 14, 1230000, 0, '   Là một sản phẩm đặc biệt trong dòng Cà phê Sáng tạo của Trung Nguyên.\r\n                Có hương thơm đầm, thơm rất lâu với hậu vị đậm và êm.\r\n                Là một sự cân bằng hoàn hảo giữa hương và vị.', '', '2014-10-07 16:11:23', 0, 11, 0, 0, 0),
(6, 'Bánh người', '', '', 'banh-nguoi', '', '', '5ed13-simple-gingerbread-cookie-d.jpg', 14, 123123, 200000, '   Là một sản phẩm đặc biệt trong dòng Cà phê Sáng tạo của Trung Nguyên.\r\n                Có hương thơm đầm, thơm rất lâu với hậu vị đậm và êm.\r\n                Là một sự cân bằng hoàn hảo giữa hương và vị.', '', '2014-10-07 16:11:23', 0, 11, 0, 1, 1),
(7, 'test', 'test', 'test', 'test', 'test', 'test', '03c19-cake_cut.png', 18, 250, 300, 'fsdfsdfádf', '&aacute;df&aacute;dfsadfsdf&aacute;df', '2015-05-21 09:35:17', 1, 15, 1, 1, 1),
(8, 'bánh mới', '', '', 'banh-moi', '', '', '23c11-cake_cut.png', 18, 200000, 0, 'tóm tắt', 't&oacute;m tắt', '2015-05-21 22:26:13', 1, 15, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mb_product_content`
--

CREATE TABLE IF NOT EXISTS `mb_product_content` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `lang` char(2) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mb_user`
--

CREATE TABLE IF NOT EXISTS `mb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_user`
--

INSERT INTO `mb_user` (`id`, `username`, `password`, `is_admin`, `role`, `created_at`, `deleted`) VALUES
(6, 'leo', 'leo', 1, '0', '2014-08-22 00:00:00', 0),
(7, 'khank', 'khank', 0, 'post,slider', '2014-08-23 15:41:42', 1),
(11, 'teo', 'teo', 0, 'post,product,slider', '0000-00-00 00:00:00', 1),
(12, 'teo2', 'teo2', 0, '0', '0000-00-00 00:00:00', 1),
(13, 'teo3', 'teo2', 0, '0', '0000-00-00 00:00:00', 1),
(14, 'TEO4', 'TEO4', 0, '0', '2014-10-02 08:33:53', 1),
(15, 'quantri', 'admin123', 1, '0', '2015-01-04 14:42:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mb_users`
--

CREATE TABLE IF NOT EXISTS `mb_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_users`
--

INSERT INTO `mb_users` (`id`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'sdepold', NULL, '2014-11-23 10:19:03', '2014-11-23 10:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `mb_user_meta`
--

CREATE TABLE IF NOT EXISTS `mb_user_meta` (
  `user_id` int(11) NOT NULL,
  `meta_key` varchar(20) NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mb_user_meta`
--

INSERT INTO `mb_user_meta` (`user_id`, `meta_key`, `value`) VALUES
(13, 'role', 'a:2:{i:0;s:7:"product";i:1;s:6:"slider";}'),
(14, 'role', 'a:2:{i:0;s:4:"post";i:1;s:7:"product";}');

-- --------------------------------------------------------

--
-- Table structure for table `nh_blog`
--

CREATE TABLE IF NOT EXISTS `nh_blog` (
  `id` int(11) NOT NULL,
  `title` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `summary` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `type` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_blog`
--

INSERT INTO `nh_blog` (`id`, `title`, `img`, `summary`, `content`, `time`, `type`) VALUES
(1, 'Canh ngô nấu củ sen thanh ngọt thơm ngon', 'd1af0-ab.jpg', 'Vị ngọt lành tự nhiên của món canh ngô nấu củ sen ắt hẳn sẽ khiến bạn cảm thấy vô cùng dễ chịu khi thưởng thức!', '<h2 class="sapo fl mgt10 mgb10" style="margin: 10px 0px; padding: 0px; float: left; color: rgb(51, 51, 51); width: 492px; line-height: 19.200000762939453px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.10000000149011612px; font-family: ''Times New Roman'' !important; font-size: 12pt !important;">\r\n	Vị ngọt l&agrave;nh tự nhi&ecirc;n của m&oacute;n canh ng&ocirc; nấu củ sen ắt hẳn sẽ khiến bạn cảm thấy v&ocirc; c&ugrave;ng dễ chịu khi thưởng thức!</h2>\r\n<ul class="detail_other fl" style="margin: 0px; padding-right: 0px; padding-left: 0px; list-style: none; float: left; width: 492px; color: rgb(0, 0, 0); font-family: Arial; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.10000000149011612px;">\r\n	<li style="margin: 5px 0px; padding: 0px; float: left; width: 492px;">\r\n		<a href="http://afamily.vn/an-ngon/2-cach-nau-canh-nam-ngot-thom-hap-dan-20140119111541188.chn" style="margin: 0px; padding: 0px; text-decoration: none; color: rgb(119, 119, 119); font-weight: bold; font-family: arial;" title="2 cách nấu canh nấm ngọt thơm hấp dẫn">2 c&aacute;ch nấu canh nấm ngọt thơm hấp dẫn</a></li>\r\n	<li style="margin: 5px 0px; padding: 0px; float: left; width: 492px;">\r\n		<a href="http://afamily.vn/an-ngon/canh-dua-thit-bo-nong-hoi-chua-ngon-20140103083314720.chn" style="margin: 0px; padding: 0px; text-decoration: none; color: rgb(119, 119, 119); font-weight: bold; font-family: arial;" title="Canh dưa thịt bò nóng hổi chua ngon">Canh dưa thịt b&ograve; n&oacute;ng hổi chua ngon</a></li>\r\n	<li style="margin: 5px 0px; padding: 0px; float: left; width: 492px;">\r\n		<a href="http://afamily.vn/an-ngon/cu-sen-kep-tom-thit-chien-gion-la-mieng-ngon-com-20130501122414192.chn" style="margin: 0px; padding: 0px; text-decoration: none; color: rgb(119, 119, 119); font-weight: bold; font-family: arial;" title="Củ sen kẹp tôm thịt chiên giòn lạ miệng ngon cơm">Củ sen kẹp t&ocirc;m thịt chi&ecirc;n gi&ograve;n lạ miệng ngon cơm</a></li>\r\n	<li style="margin: 5px 0px; padding: 0px; float: left; width: 492px;">\r\n		<a href="http://afamily.vn/an-ngon/giai-nhiet-ngay-he-voi-sua-ngo-thom-mat-dam-da-20110808111639830.chn" style="margin: 0px; padding: 0px; text-decoration: none; color: rgb(119, 119, 119); font-weight: bold; font-family: arial;" title="Giải nhiệt ngày hè với sữa ngô thơm mát đậm đà ">Giải nhiệt ng&agrave;y h&egrave; với sữa ng&ocirc; thơm m&aacute;t đậm đ&agrave;</a></li>\r\n</ul>\r\n<div class="detail_content fl mgt15" style="margin: 15px 0px 0px; padding: 0px; float: left; color: rgb(51, 51, 51); line-height: 20px; width: 492px; -webkit-text-stroke-color: rgba(255, 255, 255, 0.00784314); -webkit-text-stroke-width: 0.10000000149011612px; font-family: ''Times New Roman'' !important; font-size: 12pt !important;">\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 1" lb="1" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/13-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 1" /></div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<table border="0" cellpadding="0" cellspacing="0" style="margin: 0px 0px 10px; padding: 0px;">\r\n			<tbody style="margin: 0px; padding: 0px;">\r\n				<tr style="margin: 0px; padding: 0px;">\r\n					<td style="margin: 0px; padding: 0px 20px 25px 0px; width: 300px;" valign="top">\r\n						&nbsp;</td>\r\n					<td style="margin: 0px; padding: 0px 5px;" valign="top">\r\n						<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 2" h="533" lb="2" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/03/03/0-63cc7/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.jpg" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important; cursor: none;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 2" w="800" /><br style="margin: 0px; padding: 0px;" />\r\n						<br style="margin: 0px; padding: 0px;" />\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							<span style="margin: 0px; padding: 0px; font-weight: bold;">Bạn cần chuẩn bị những nguy&ecirc;n liệu sau cho m&oacute;n canh ng&ocirc; nấu củ sen:</span></p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							- 1 bắp ng&ocirc; ngọt (ng&ocirc; Mỹ)</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							- 1 củ sen</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							- 300g xương sườn</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							- 5 l&aacute;t gừng tươi</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							- Muối</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 3" lb="3" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/11-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 3" /></div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<table border="0" cellpadding="0" cellspacing="0" style="margin: 0px 0px 10px; padding: 0px;">\r\n			<tbody style="margin: 0px; padding: 0px;">\r\n				<tr style="margin: 0px; padding: 0px;">\r\n					<td style="margin: 0px; padding: 0px 20px 25px 0px; width: 300px;" valign="top">\r\n						<div align="left" style="margin: 0px; padding: 0px;">\r\n							<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 4" lb="4" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/01-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 4" /></div>\r\n					</td>\r\n					<td style="margin: 0px; padding: 0px 5px;" valign="top">\r\n						<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 5" h="265" lb="5" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/03/03/1-63cc7/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.jpg" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 5" w="800" /><br style="margin: 0px; padding: 0px;" />\r\n						<br style="margin: 0px; padding: 0px;" />\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							&nbsp;</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							Củ sen mua về ng&acirc;m nước trong v&agrave;i giờ, sau đ&oacute; gọt vỏ, d&ugrave;ng đũa đẩy sạch b&ugrave;n trong ruột củ, rửa sạch lại rồi th&aacute;i miếng vừa ăn.</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<table border="0" cellpadding="0" cellspacing="0" style="margin: 0px 0px 10px; padding: 0px;">\r\n			<tbody style="margin: 0px; padding: 0px;">\r\n				<tr style="margin: 0px; padding: 0px;">\r\n					<td style="margin: 0px; padding: 0px 20px 25px 0px; width: 300px;" valign="top">\r\n						<div align="left" style="margin: 0px; padding: 0px;">\r\n							<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 6" lb="6" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/02-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 6" /></div>\r\n					</td>\r\n					<td style="margin: 0px; padding: 0px 5px;" valign="top">\r\n						<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 7" h="265" lb="7" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/03/03/2-63cc7/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.jpg" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 7" w="800" /><br style="margin: 0px; padding: 0px;" />\r\n						<br style="margin: 0px; padding: 0px;" />\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							&nbsp;</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							Xương sườn luộc sơ qua rồi vớt ra, để r&aacute;o.</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							Ng&ocirc; rửa sạch, th&aacute;i từng từng kh&uacute;c nhỏ.</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<table border="0" cellpadding="0" cellspacing="0" style="margin: 0px 0px 10px; padding: 0px;">\r\n			<tbody style="margin: 0px; padding: 0px;">\r\n				<tr style="margin: 0px; padding: 0px;">\r\n					<td style="margin: 0px; padding: 0px 20px 25px 0px; width: 300px;" valign="top">\r\n						<div align="left" style="margin: 0px; padding: 0px;">\r\n							<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 8" lb="8" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/03-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 8" /></div>\r\n					</td>\r\n					<td style="margin: 0px; padding: 0px 5px;" valign="top">\r\n						<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 9" h="265" lb="9" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/03/03/3-63cc7/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.jpg" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 9" w="800" /><br style="margin: 0px; padding: 0px;" />\r\n						<br style="margin: 0px; padding: 0px;" />\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							&nbsp;</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							Đun s&ocirc;i 2,5 l&iacute;t nước, tr&uacute;t sườn v&agrave; v&agrave;i l&aacute;t gừng tươi v&agrave;o nấu trong 15 ph&uacute;t, sau đ&oacute; hạ nhỏ lửa hầm liu riu trong v&ograve;ng 1 giờ. Nếu c&oacute; nồi &aacute;p suất, bạn bỏ sườn v&agrave;o ninh trong khoảng 15 ph&uacute;t để tiết kiệm thời gian v&agrave; năng lượng.</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<table border="0" cellpadding="0" cellspacing="0" style="margin: 0px 0px 10px; padding: 0px;">\r\n			<tbody style="margin: 0px; padding: 0px;">\r\n				<tr style="margin: 0px; padding: 0px;">\r\n					<td style="margin: 0px; padding: 0px 20px 25px 0px; width: 300px;" valign="top">\r\n						<div align="left" style="margin: 0px; padding: 0px;">\r\n							<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 10" lb="10" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/04-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 10" /></div>\r\n					</td>\r\n					<td style="margin: 0px; padding: 0px 5px;" valign="top">\r\n						<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 11" h="265" lb="11" src="http://afamily1.vcmedia.vn/k:thumb_w/400/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/03/03/4-63cc7/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.jpg" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 11" w="800" /><br style="margin: 0px; padding: 0px;" />\r\n						<br style="margin: 0px; padding: 0px;" />\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							&nbsp;</p>\r\n						<p style="margin-top: 8px; margin-right: auto !important; margin-bottom: 8px; margin-left: auto !important; padding: 0px;">\r\n							Sau khi ninh nhừ xương, cho củ sen v&agrave; ng&ocirc; v&agrave;o nấu s&ocirc;i khoảng 30 ph&uacute;t hoặc cho đến khi thấy củ sen v&agrave; ng&ocirc; ch&iacute;n mềm. Trước khi ăn chỉ cần rắc ch&uacute;t muối vừa ăn m&agrave; kh&ocirc;ng cần n&ecirc;m th&ecirc;m gia vị n&agrave;o kh&aacute;c v&igrave; củ sen, ng&ocirc; v&agrave; đặc biệt l&agrave; nước xương đ&atilde; vốn rất ngọt rồi. M&uacute;c canh ra b&aacute;t, rắc ch&uacute;t ti&ecirc;u v&agrave; h&agrave;nh l&aacute; th&aacute;i nhỏ cho thơm, ăn n&oacute;ng.</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 12" lb="12" src="http://afamily1.vcmedia.vn/k:VP75zw5duc3TeizYBCLqPsyCSiS/Image/EmoticonOng/15-282bb/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.png" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 12" /></div>\r\n	<div align="left" style="margin: 0px; padding: 0px;">\r\n		<p style="margin-top: 9.828125px; margin-right: auto !important; margin-bottom: 9.828125px; margin-left: auto !important; padding: 0px;">\r\n			Vị ngọt l&agrave;nh tự nhi&ecirc;n của m&oacute;n canh ng&ocirc; nấu củ sen ắt hẳn sẽ khiến bạn cảm thấy v&ocirc; c&ugrave;ng dễ chịu khi thưởng thức. Trong c&aacute;i bức bối của tiết giao m&ugrave;a, c&aacute;i ngon từ sườn, c&aacute;i ngọt dịu từ ng&ocirc; v&agrave; củ sen giống như một cơn gi&oacute; m&aacute;t xoa dịu mọi gi&aacute;c quan v&agrave; đ&aacute;nh thức vị gi&aacute;c. B&aacute;t cơm thường nhật chẳng mấy chốc hết veo nhờ m&oacute;n canh ngọt m&aacute;t.&nbsp;</p>\r\n	</div>\r\n	<div align="center" style="margin: 0px; padding: 0px;">\r\n		<img alt="Canh ngô nấu củ sen thanh ngọt thơm ngon 13" h="533" lb="13" src="http://afamily1.vcmedia.vn/k:thumb_w/600/Qalypm8xccccccccccccW2vZ1VroR/Image/2014/03/03/5-63cc7/canh-ngo-nau-cu-sen-thanh-ngot-thom-ngon.jpg" style="margin: 0px; padding: 0px; border: none; max-width: 480px !important; cursor: none;" title="Canh ngô nấu củ sen thanh ngọt thơm ngon 13" w="800" /><br style="margin: 0px; padding: 0px;" />\r\n		<br style="margin: 0px; padding: 0px;" />\r\n		Ch&uacute;c bạn th&agrave;nh c&ocirc;ng v&agrave; ngon miệng với m&oacute;n canh ng&ocirc; nấu củ sen n&agrave;y nh&eacute;!</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '2014-04-06 00:00:00', 0),
(2, 'Cách nấu món canh chua mực ngọt mát ngày hè', '10426-hap-dan-mon-canh-chua-muc.jpg', 'Mực là loại hải sản ngon bổ dưỡng và có thể chế biến thành rất nhiều món ăn ngon như mực xào thập cẩm, mực nướng cay, mực nhồi thịt … bên cạnh đó, mực còn đó thể làm thành món canh chua mực vào những ngày hè nóng nực oi bức nữa đấy. Dưới đây, monan.edu.vn sẽ tư vấn cho các bạn cách nấu món canh chua mực ngọt mát ngày hè rất đơn giản nhé.', '<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	C&aacute;ch l&agrave;m m&oacute;n canh chua mực</h2>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Chuẩn bị nguy&ecirc;n liệu nấu m&oacute;n canh chua mực</h3>\r\n<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- Mực ống tươi, loại vừa: 300g;- Me ch&iacute;n: 1 vắt khoảng 30g;- Thơm: 300g (1/4 tr&aacute;i);- C&agrave; chua ch&iacute;n: 1 quả;- Gi&aacute; đậu: 100g;- Đậu bắp: 5 quả;- H&agrave;nh l&aacute;, rau ngổ, rau m&ugrave;i: 100g;- Ớt sừng: 3 tr&aacute;i;- Gia vị: h&agrave;nh kh&ocirc;, tỏi, nước mắm, hạt n&ecirc;m, bột ngọt, muối, đường, ti&ecirc;u, ớt bột, dầu ăn.</h2>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Sơ chế nguy&ecirc;n liệu</h3>\r\n<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	&nbsp;</h2>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	<img alt="Hướng dẫn nấu canh chua mực, huong dan nau canh chua muc ngot mat" class="aligncenter  wp-image-504" height="357" src="http://monan.edu.vn/wp-content/uploads/2014/02/cach-nau-canh-chua-muc-ngot-mat.jpg" style="display: block; margin: 0px auto 10px; background-color: rgb(255, 255, 255); border: 4px solid rgb(238, 238, 238); padding: 1px; max-width: 570px;" width="476" /></p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- H&agrave;nh kh&ocirc;, tỏi: L&agrave;m sạch, băm nhuyễn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Mực ống:</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	+ L&agrave;m sạch, lấy hết t&uacute;i mực, để r&aacute;o, khứa vẩy rồng, cắt miếng vừa ăn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	+ Ướp mực với 2 th&igrave;a h&agrave;nh tỏi băm nhuyễn, 1 th&igrave;a nước mắm, 1 th&igrave;a hạt n&ecirc;m, 1 th&igrave;a bột ngọt, &frac12; th&igrave;a ti&ecirc;u, 1 th&igrave;a dầu ăn trong 20 ph&uacute;t cho mực ngấm gia vị;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Me ch&iacute;n: ng&acirc;m với nước ấm, lọc lấy nước, bỏ b&atilde;;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- C&agrave; chua ch&iacute;n: rửa sạch, bổ m&uacute;i cau;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Đậu bắp: rửa sạch, th&aacute;i l&aacute;t x&eacute;o d&agrave;i;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Thơm: Gọt vỏ, cứa hết mắt, băm nhỏ;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Gi&aacute; đậu: Nhặt rễ, rửa sạch, để r&aacute;o;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- H&agrave;nh l&aacute;, rau ngổ, rau m&ugrave;i: Nhặt v&agrave; rửa sạch, th&aacute;i mịn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Ớt sừng: Bỏ cuống, rửa sạch, th&aacute;i l&aacute;t.</p>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Thực hiện nấu canh chua mực</h3>\r\n<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	&nbsp;</h2>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Phi thơm 1 th&igrave;a dầu ăn với 1 th&igrave;a h&agrave;nh tỏi băm nhuyễn v&agrave; một &iacute;t ớt bột vừa đủ, cho mực v&agrave;o x&agrave;o nhanh tay với lửa lớn khoảng 3 ph&uacute;t, tr&uacute;t mực ra đĩa, để ri&ecirc;ng;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Tiếp tục phi thơm 2 th&igrave;a dầu ăn với 1 th&igrave;a h&agrave;nh tỏi băm nhuyễn v&agrave; một &iacute;t ớt bột, cho c&agrave; chua, thơm v&agrave;o x&agrave;o chung để tạo m&agrave;u sắc đặc trưng của m&oacute;n canh chua rồi cho v&agrave;o nồi một lượng nước vừa đủ. Bạn cũng c&oacute; thể hầm nước xương ri&ecirc;ng cho canh th&ecirc;m ngọt ngon nh&eacute;;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Cho nước me ch&iacute;n v&agrave;o, đun s&ocirc;i, n&ecirc;m th&ecirc;m &frac12; th&igrave;a muối, 1 th&igrave;a hạt n&ecirc;m, 1/3 th&igrave;a đường, 1 th&igrave;a bột ngọt sao cho c&oacute; vị chua ngọt nhẹ vừa ăn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Khi nước s&ocirc;i, bạn d&ugrave;ng th&igrave;a vớt hết lớp bọt b&ecirc;n tr&ecirc;n để nước canh được trong rồi cho đậu bắp, gi&aacute; đậu, mực đ&atilde; x&agrave;o săn v&agrave;o;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- N&ecirc;m nếm lại gia vị sao cho vừa ăn, cho h&agrave;nh l&aacute;, rau ngổ (chừa phần rau m&ugrave;i lại) v&agrave;o rồi tắt bếp;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- M&uacute;c canh ra b&aacute;t lớn, cho rau m&ugrave;i th&aacute;i mịn, &frac12; ớt th&aacute;i l&aacute;t, &frac12; th&igrave;a ti&ecirc;u bột l&ecirc;n tr&ecirc;n l&agrave; bạn đ&atilde; ho&agrave;n th&agrave;nh m&oacute;n<strong>canh chua mực</strong>&nbsp;ngọt m&aacute;t, thơm ngon rồi đấy;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Trộn phần ớt th&aacute;i l&aacute;t c&ograve;n lại v&agrave; 3 th&igrave;a nước mắm d&ugrave;ng để ăn k&egrave;m&nbsp;<strong>canh chua &nbsp;mực</strong>&nbsp;cho m&oacute;n ăn th&ecirc;m phần đậm đ&agrave; nh&eacute;.</p>\r\n<div class="ad" style="font-family: arial, sans-serif; font-size: 13px;">\r\n	&nbsp;</div>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	&nbsp;</p>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Y&ecirc;u cầu v&agrave; thưởng thức m&oacute;n canh chua mực</h3>\r\n<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	&nbsp;</h2>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- M&oacute;n&nbsp;<strong>canh chua mực</strong>&nbsp;c&oacute; m&ugrave;i thơm hấp dẫn, được tr&igrave;nh b&agrave;y h&agrave;i h&ograve;a, đẹp mắt, c&oacute; vị chua ngọt đậm đ&agrave;, vừa ăn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Mực tươi, dai ngon, ngấm gia vị, được khứa vảy rồng đẹp mắt;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Nước canh trong, ngọt thanh hấp dẫn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- C&aacute;c thực phẩm nấu canh chua ch&iacute;n đều, tươi ngon rất hợp vị. H&agrave;nh l&aacute;, rau m&ugrave;i, rau ngổ c&oacute; m&agrave;u xanh nuột hấp dẫn;</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	- Với m&oacute;n canh n&agrave;y bạn n&ecirc;n ăn ngay l&uacute;c n&oacute;ng, d&ugrave;ng k&egrave;m với cơm trắng, nước mắm trộn ớt th&aacute;i l&aacute;t nh&eacute;.</p>\r\n<p style="font-family: arial, sans-serif; font-size: 13px; margin: 0px; padding: 0px 0px 15px;">\r\n	Tr&ecirc;n đ&acirc;y l&agrave;&nbsp;<b>c&aacute;ch nấu m&oacute;n canh chua mực ngọt m&aacute;t ng&agrave;y h&egrave;&nbsp;</b>rất đơn giản m&agrave; ai cũng c&oacute; thể chế biến để cả gia đ&igrave;nh c&ugrave;ng thưởng thức, hương vị hấp dẫn đặc trưng của m&oacute;n canh chua đầy ắp c&aacute;c loại rau quả sẽ lu&ocirc;n l&agrave; sự lựa chọn ph&ugrave; hợp cho những bữa ăn v&agrave;o những ng&agrave;y tiết trời n&oacute;ng bức đấy. T&ugrave;y theo khẩu vị v&agrave; sở th&iacute;ch của c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh m&agrave; bạn c&oacute; thể gia giảm c&aacute;c loại thực phẩm d&ugrave;ng để nấu canh chua nh&eacute;, dọc m&ugrave;ng, măng chua sẽ l&agrave; sự thay thế ph&ugrave; hợp đấy. Ch&uacute;c bạn chế biến m&oacute;n ăn th&agrave;nh c&ocirc;ng v&agrave; ăn ngon miệng.</p>\r\n', '2014-04-14 00:00:00', 0),
(3, 'Cách nấu món cá ngừ kho dứa ngon đậm đà', '128c9-cach-nau-mon-ca-ngu-kho-dua.jpg', 'Cá ngừ là thực phẩm có nhiều chất dinh dưỡng, đặc biệt có hàm lượng protein hết sức phong phú, thịt cá chắc, dai, ngọt ngon và có mùi thơm đặc trưng vì vậy nó rất phù hợp để chị em phụ nữ lựa chọn để chế biến nên những món ăn thơm ngon, bổ dưỡng cho cả gia đình cùng thưởng thức. Cách nấu cá ngừ kho dứa ngon đậm đà dưới đây cũng là một sự lựa chọn thích hợp giúp bạn làm phong phú, hấp dẫn hơn bữa ăn hàng ngày của gia đình đấy.', '<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">Hướng dẫn nấu m&oacute;n c&aacute; ngừ kho dứa</span></h2>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">Nguy&ecirc;n liệu nấu m&oacute;n c&aacute; ngừ kho dứa</span></h3>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- C&aacute; ngừ (lấy phần th&acirc;n): 500g;</span></i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- Ớt xanh (loại lớn): 5 tr&aacute;i, hương vị của ớt xanh sẽ gi&uacute;p m&oacute;n c&aacute; ngừ kho dứa c&oacute; được m&ugrave;i thơm v&agrave; vị cay đặc trưng;</span></i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- Ớt sừng m&agrave;u đỏ: 3 tr&aacute;i;</span></i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- Rau mui: 50g;</span></i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- Dứa (thơm): 300g;</span></i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- C&agrave; chua ch&iacute;n: 1 quả;</span></i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i><span style="background-color:#ffffff;">- Gia vị: H&agrave;nh kh&ocirc;, tỏi, muối, dầu ăn, hạt n&ecirc;m, đường, nước mắm, bột ngọt, ti&ecirc;u, ớt bột.</span></i></address>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">Sơ chế nguy&ecirc;n liệu</span></h3>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- H&agrave;nh kh&ocirc;, tỏi: L&agrave;m sạch, băm nhuyễn;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- C&agrave; chua: rửa sạch, cắt bỏ phần cuống, băm nhỏ;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Dứa: Gọt vỏ, cứa hết mắt, rửa sạch, th&aacute;i l&aacute;t vừa;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">-&nbsp;</span><b><span style="background-color:#ffffff;">C&aacute; ngừ</span></b><span style="background-color:#ffffff;">:</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">+ Th&aacute;i l&aacute;t d&agrave;y khoảng 2cm, rửa sạch với nước c&oacute; pha muối, để r&aacute;o, d&ugrave;ng giấy thấm kỹ nước, ướp một &iacute;t muối đều khắp hai mặt c&aacute; trong 10 ph&uacute;t;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: center;">\r\n	<img alt="Hướng dẫn nấu món cá ngừ kho dứa, huong dan nau mon ca ngu kho dua" class="aligncenter size-full wp-image-546" height="300" src="http://monan.edu.vn/wp-content/uploads/2014/03/So-che-nau-mon-ca-ngu-kho-dua.jpg" style="display: block; margin: 0px auto 10px; background-color: rgb(255, 255, 255); border: 4px solid rgb(238, 238, 238); padding: 1px; max-width: 570px;" title="Hướng dẫn nấu món cá ngừ kho dứa, huong dan nau mon ca ngu kho dua" width="450" /></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">+ D&ugrave;ng chảo chống d&iacute;nh hay chảo đ&atilde; c&oacute; chi&ecirc;n qua với muối tinh, cho v&agrave;o chảo một lượng dầu vừa đủ rồi chi&ecirc;n sơ v&agrave;ng 2 mặt c&aacute;. Gắp c&aacute; ra đĩa, để ri&ecirc;ng, c&aacute; được chi&ecirc;n v&agrave;ng khi kho sẽ thơm ngon hơn v&agrave; c&oacute; m&agrave;u sắc hấp dẫn, bắt mắt hơn đấy nh&eacute;.</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Ớt xanh: Bỏ cuống, rửa sạch, để nguy&ecirc;n;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Ớt sừng đỏ: Bỏ cuống, rửa sạch, th&aacute;i l&aacute;t;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Rau m&ugrave;i: Nhặt v&agrave; rửa sạch, để r&aacute;o, cắt kh&uacute;c 3cm.</span></p>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">Thực hiện nấu m&oacute;n c&aacute; ngừ kho dứa</span></h3>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Phi thơm 3 th&igrave;a dầu ăn với h&agrave;nh tỏi băm nhuyễn v&agrave; 1 th&igrave;a ớt bột để m&oacute;n&nbsp;</span><b><span style="background-color:#ffffff;">c&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;c&oacute; m&agrave;u sắc hấp dẫn;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Cho ớt xanh, &frac12; ớt th&aacute;i l&aacute;t, c&agrave; chua băm nhỏ, thơm th&aacute;i l&aacute;t v&agrave;o x&agrave;o chung;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Cho th&ecirc;m 1 b&aacute;t nước lạnh, 2 th&igrave;a nước mắm, 1 th&igrave;a hạt n&ecirc;m, 1 th&igrave;a bột ngọt, &frac12; th&igrave;a đường, 1 th&igrave;a ti&ecirc;u v&agrave; đun s&ocirc;i kỹ trong 3-5 ph&uacute;t, nếm c&oacute; vị mặn mặn vừa l&agrave; được;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Cho c&aacute; ngừ đ&atilde; chi&ecirc;n v&agrave;o, vặn nhỏ lửa để c&aacute; ch&iacute;n đều, ngấm gia vị đậm đ&agrave;. Khi thấy nước kho c&aacute; c&ocirc; lại c&ograve;n khoảng một nửa, c&aacute; ch&iacute;n, c&oacute; m&agrave;u sắc hấp dẫn, thấm đều đều gia vị bạn cho th&ecirc;m một &iacute;t ti&ecirc;u bột l&ecirc;n tr&ecirc;n nữa rồi tắt bếp nh&eacute;;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- B&agrave;y m&oacute;n&nbsp;</span><b><span style="background-color:#ffffff;">c&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;ra đĩa, rắc phần ớt th&aacute;i l&aacute;t c&ograve;n lại v&agrave; rau m&ugrave;i l&ecirc;n tr&ecirc;n nữa l&agrave; bạn đ&atilde; c&oacute; thể thưởng thức hương vị thơm ngon đậm đ&agrave;, hấp dẫn của m&oacute;n c&aacute; kho n&agrave;y rồi.</span></p>\r\n<div class="ad" style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189);">\r\n	&nbsp;</div>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189);">\r\n	&nbsp;</p>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">Y&ecirc;u cầu v&agrave; thưởng thức m&oacute;n c&aacute; ngừ kho dứa</span></h3>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- M&oacute;n&nbsp;</span><b><span style="background-color:#ffffff;">c&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;được tr&igrave;nh b&agrave;y hấp dẫn, bắt mắt, c&oacute; m&ugrave;i thơm đặc trưng, vị vừa ăn;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">-&nbsp;</span><b><span style="background-color:#ffffff;">C&aacute; ngừ</span></b><span style="background-color:#ffffff;">&nbsp;tươi ngon, thịt ngọt dai, ngấm đều gia vị, đậm đ&agrave;, c&aacute; giữ nguy&ecirc;n kh&uacute;c, kh&ocirc;ng bị vỡ, n&aacute;t trong qu&aacute; tr&igrave;nh chế biến. Vị ngon của c&aacute; h&ograve;a quyện với hương vị đặc trưng của ớt xanh, c&agrave; chua, dứa tạo n&ecirc;n một m&ugrave;i vị hết sức hấp dẫn, đặc trưng;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Nước kho c&aacute; ngọt, vị vừa ăn, bạn c&oacute; thể sử dụng để chấm rau luộc hay chan cơm ăn đều rất ngon v&agrave; hợp vị nh&eacute;;</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<span style="background-color:#ffffff;">- Với m&oacute;n&nbsp;</span><b><span style="background-color:#ffffff;">c&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;n&agrave;y bạn c&oacute; thể kho một lần nhiều c&aacute; để ăn nhiều bữa v&igrave; đặc trưng của m&oacute;n ăn n&agrave;y l&agrave; c&agrave;ng kho th&igrave; c&aacute; c&agrave;ng ngấm gia vị, c&agrave;ng thơm ngon hơn đấy nh&eacute;. D&ugrave;ng k&egrave;m&nbsp;</span><b><span style="background-color:#ffffff;">c&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;với cơm trắng ngay l&uacute;c n&oacute;ng chắc chắn sẽ mang lại cho người thưởng thức những cảm nhận hết sức đặc biệt đấy.</span></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<b><span style="background-color:#ffffff;">C&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;một m&oacute;n ăn c&oacute; hương vị thơm ngon đặc biệt, k&iacute;ch th&iacute;ch khẩu vị người thưởng thức nhưng c&aacute;ch thức chế biến rất đơn giản v&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian, ch&iacute;nh v&igrave; vậy hiểu v&agrave; nắm được</span><b><span style="background-color:#ffffff;">c&aacute;ch nấu c&aacute; ngừ kho dứa ngon đậm đ&agrave;&nbsp;</span></b><span style="background-color:#ffffff;">sẽ gi&uacute;p chị em c&oacute; th&ecirc;m kinh nghiệm trong việc chế biến những m&oacute;n ăn h&agrave;ng ng&agrave;y vừa bổ dưỡng, vừa thơm ngon, vừa tiết kiệm thời gian rất hiệu quả đấy. H&atilde;y chế biến v&agrave; thưởng thức, ch&uacute;c bạn nấu m&oacute;n&nbsp;</span><b><span style="background-color:#ffffff;">c&aacute; ngừ kho dứa</span></b><span style="background-color:#ffffff;">&nbsp;th&agrave;nh c&ocirc;ng, thơm ngon đ&uacute;ng điệu nh&eacute;.</span></p>\r\n', '2014-04-13 00:00:00', 0);
INSERT INTO `nh_blog` (`id`, `title`, `img`, `summary`, `content`, `time`, `type`) VALUES
(4, 'Cách làm trứng cút xào nấm thơm ngon, hấp dẫn', '049b1-cach-nau-mon-trung-cut-xao-nam-300x224.jpg', 'Bữa ăn hàng ngày của gia đình bạn sẽ thêm phần hấp dẫn, kích thích khẩu vị nếu có thêm những món xào đa hương vị, đa màu sắc được chế biến từ những thực phẩm quen thuộc, sẵn có trải qua một vài biến tấu đơn giản. Cách làm trứng cút xào nấm thơm ngon, hấp dẫn dưới đây sẽ là một sự lựa chọn phù hợp để bữa cơm nhà bạn trở nên phong phú hơn, ngon miệng hơn.', '<h2 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 20px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Hướng dẫn l&agrave;m trứng c&uacute;t x&agrave;o nấm</h2>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Nguy&ecirc;n liệu l&agrave;m trứng c&uacute;t x&agrave;o nấm</h3>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- Trứng c&uacute;t: 15-20 quả;</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- Nấm rơm: 150g;</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- Nấm tr&acirc;m v&agrave;ng: 100g, bạn cũng c&oacute; thể thay thế bằng nấm b&agrave;o ngư nh&eacute;;</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- H&agrave;nh t&acirc;y: 1 củ nhỏ;</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- H&agrave;nh l&aacute;, rau m&ugrave;i: 100g;</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- Ớt sừng đỏ: 3 tr&aacute;i;</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<i>- Gia vị: H&agrave;nh kh&ocirc;, tỏi, dầu ăn, hạt n&ecirc;m, bột ngọt, muối, ti&ecirc;u.</i></address>\r\n<address style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	<img alt="Sơ chế nguyên liệu nấu trứng cút xào nấm, So che nguyen lieu nau trung cut xao nam" class="aligncenter size-full wp-image-537" height="300" src="http://monan.edu.vn/wp-content/uploads/2014/03/So-che-nguyen-lieu-nau-trung-cut-xao-nam.jpg" style="display: block; margin: 0px auto 10px; background-color: rgb(255, 255, 255); border: 4px solid rgb(238, 238, 238); padding: 1px; max-width: 570px;" width="450" /></address>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Sơ chế nguy&ecirc;n liệu</h3>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- H&agrave;nh kh&ocirc;, tỏi: L&agrave;m sạch, băm nhuyễn;</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	-&nbsp;<strong>Trứng c&uacute;t:</strong></p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	+ Rửa sạch, luộc ch&iacute;n, ng&acirc;m v&agrave;o nước lạnh, để r&aacute;o, b&oacute;c sạch vỏ, ng&acirc;m v&agrave;o b&aacute;t c&oacute; chứa dầu;</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	+ Cho v&agrave;o chảo một lượng dầu vừa đủ, khi dầu s&ocirc;i n&oacute;ng gi&agrave;, bạn vặn nhỏ lửa, đổ trứng c&uacute;t v&agrave;o chi&ecirc;n v&agrave;ng đều rồi vớt trứng ra đĩa c&oacute; giấy thấm dầu.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	-&nbsp;<strong>Nấm</strong>&nbsp;rơm: Gọt bỏ ch&acirc;n, rửa sạch, ng&acirc;m v&agrave;o nước vo gạo cho nấm trắng, nếu kh&ocirc;ng c&oacute; nước vo gạo bạn ng&acirc;m v&agrave;o nước muối lo&atilde;ng, khi gần nấu vớt ra, để r&aacute;o;</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	-&nbsp;<strong>Nấm</strong>&nbsp;tr&acirc;m v&agrave;ng: Gọt bỏ ch&acirc;n, rửa sạch, t&aacute;ch rời, để r&aacute;o.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- H&agrave;nh t&acirc;y: Lột vỏ, rửa sạch, th&aacute;i m&uacute;i cau, t&aacute;ch miếng;</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- H&agrave;nh l&aacute;, rau m&ugrave;i: Nhặt v&agrave; rửa sạch, th&aacute;i kh&uacute;c 3cm, để ri&ecirc;ng;</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- Ớt sừng: Bỏ cuống, rửa sạch, th&aacute;i l&aacute;t.</p>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Thực hiện l&agrave;m trứng c&uacute;t x&agrave;o nấm</h3>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	-Cho trứng c&uacute;t v&agrave;o đun với nước mắm pha th&ecirc;m nước s&ocirc;i theo tỉ lệ 1:1, cho th&ecirc;m m&igrave; ch&iacute;nh v&agrave; đun s&ocirc;i th&igrave; mở vung đảo đều cho trứng ngấm gia vị, tới khi gần cạn th&igrave; ngừng lại tắt bếp.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- Phi thơm 2 th&igrave;a dầu ăn với h&agrave;nh tỏi băm nhuyễn .</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- Cho&nbsp;<strong>nấm</strong>&nbsp;rơm,&nbsp;<strong>nấm</strong>&nbsp;tr&acirc;m v&agrave;ng v&agrave;o x&agrave;o nhanh tay với lửa vừa, n&ecirc;m th&ecirc;m 1 th&igrave;a hạt n&ecirc;m, &frac12; th&agrave;i bột ngọt v&agrave; cho th&ecirc;m 3 th&igrave;a nước để nấm ch&iacute;n đều m&agrave; kh&ocirc;ng bị ch&aacute;y nh&eacute;.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- Đảo đều tay đến khi nấm vừa ch&iacute;n tới, nước vừa cạn, bạn cho h&agrave;nh t&acirc;y, trứng đ&atilde; đun vừa xong v&agrave;o đảo đều, c&oacute; thể n&ecirc;m th&ecirc;m &frac12; th&igrave;a hạt n&ecirc;m, &frac12; th&igrave;a ti&ecirc;u nữa sao cho c&oacute; vị vừa ăn l&agrave; được.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- Cho h&agrave;nh l&aacute; th&aacute;i kh&uacute;c, &frac12; ớt th&aacute;i l&aacute;t v&agrave;o, đảo th&ecirc;m v&agrave;i lần nữa khi h&agrave;nh l&aacute; chuyển sang m&agrave;u xanh nuột th&igrave; tắt bếp.</p>\r\n<div class="ad" style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; background-color: rgb(189, 189, 189);">\r\n	&nbsp;</div>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189);">\r\n	&nbsp;</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- B&agrave;y m&oacute;n x&agrave;o ra đĩa, rắc rau m&ugrave;i, phần ớt th&aacute;i l&aacute;t c&ograve;n lại v&agrave; một &iacute;t ti&ecirc;u l&ecirc;n tr&ecirc;n để m&oacute;n t<strong>rứng c&uacute;t x&agrave;o nấm</strong>tr&ocirc;ng hấp dẫn hơn l&agrave; bạn đ&atilde; ho&agrave;n th&agrave;nh m&oacute;n x&agrave;o đơn giản m&agrave; thơm ngon n&agrave;y rồi đấy.</p>\r\n<h3 style="color: rgb(51, 51, 51); font-family: arial, serif; font-size: 16px; font-weight: normal; line-height: 22px; margin: 0px 0px 10px; padding: 0px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Y&ecirc;u cầu v&agrave; thưởng thức m&oacute;n trứng c&uacute;t x&agrave;o nấm</h3>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- M&oacute;n&nbsp;<strong>trứng c&uacute;t x&agrave;o nấm</strong>&nbsp;được tr&igrave;nh b&agrave;y bắt mắt, hấp dẫn, m&agrave;u sắc h&agrave;i h&ograve;a.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	-&nbsp;<strong>Trứng c&uacute;t</strong>&nbsp;được chi&ecirc;n v&agrave;ng đều, kh&ocirc;ng bị ch&aacute;y, kh&ocirc;ng bị vỡ.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	-&nbsp;<strong>Nấm</strong>&nbsp;trắng, kh&ocirc;ng bị th&acirc;m đen, ch&iacute;n đều, ngấm gia vị.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- H&agrave;nh l&aacute; c&oacute; m&agrave;u xanh nuột n&agrave; rất đẹp mắt.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	- M&oacute;n&nbsp;<strong>trứng c&uacute;t x&agrave;o nấm</strong>&nbsp;n&agrave;y bạn n&ecirc;n d&ugrave;ng ngay l&uacute;c n&oacute;ng với cơm trắng v&agrave; nước mắm trộn ớt th&aacute;i l&aacute;t cho th&ecirc;m phần đậm đ&agrave; nh&eacute;.</p>\r\n<p style="color: rgb(51, 51, 51); font-family: arial, sans-serif; font-size: 13px; line-height: 22px; margin: 0px; padding: 0px 0px 15px; background-color: rgb(189, 189, 189); text-align: justify;">\r\n	Với c&aacute;ch thức chế biến kh&aacute; đơn giản v&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian nhưng&nbsp;<b>c&aacute;ch l&agrave;m trứng c&uacute;t x&agrave;o nấm thơm ngon, hấp dẫn&nbsp;</b>tr&ecirc;n<b>&nbsp;</b>đ&acirc;y sẽ mang đến cho cả gia đ&igrave;nh bạn một m&oacute;n ăn vừa thơm ngon, hấp dẫn vừa k&iacute;ch th&iacute;ch khẩu vị rất hiệu quả, đặc biệt c&aacute;c b&eacute; y&ecirc;u nh&agrave; bạn sẽ v&ocirc; c&ugrave;ng th&iacute;ch th&uacute; đấy. Nếu chế biến cho c&aacute;c b&eacute; y&ecirc;u ăn bạn cần gia giảm lượng ti&ecirc;u, ớt sao cho ph&ugrave; hợp, ch&uacute;c bạn chế biến th&agrave;nh c&ocirc;ng v&agrave; ăn ngon miệng nh&eacute;.</p>\r\n', '2014-04-09 00:00:00', 0),
(5, 'Giảm giá 10% cho 100 bạn đặt hàng nhanh nhất vào tháng 10', '', 'Giảm giá 10% cho 100 bạn đặt hàng nhanh nhất vào tháng 10', '<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n<p>\r\n	Giảm gi&aacute; 10% cho 100 bạn đặt h&agrave;ng nhanh nhất v&agrave;o th&aacute;ng 10</p>\r\n', '2014-04-30 00:00:00', 1),
(6, 'Bán đồ ăn trưa ', '', 'Từ ngày 10/5 nhà hàng sẽ bán đồ ăn trưa', '<p>\r\n	Từ ng&agrave;y 10/5 nh&agrave; h&agrave;ng sẽ b&aacute;n&nbsp;đồ&nbsp;ăn trưa ... Thực&nbsp;đơn bao gồm c&aacute;c loại cơm như cơm sườn cơm tấm cơm chi&ecirc;n cơm&nbsp;</p>\r\n', '2014-05-04 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nh_category`
--

CREATE TABLE IF NOT EXISTS `nh_category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `viname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `order` int(2) NOT NULL DEFAULT '5'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_category`
--

INSERT INTO `nh_category` (`id`, `name`, `viname`, `parent_id`, `order`) VALUES
(18, 'Drinks', 'Nước Uống', 0, 4),
(19, 'Hot Pot', 'Lẩu', 0, 5),
(20, 'Noodles', 'Mì Udon,Soba', 0, 5),
(21, 'Beer', 'Bia', 18, 5),
(22, 'Soft Drink', 'Nước ngọt', 18, 5),
(23, 'Coffee/Tea', 'Cafe/Tra', 18, 5),
(24, 'Fresh Juice', 'Nước ép trái cây', 18, 5),
(25, 'Janpanese Sake', 'Rượu nhật', 18, 5),
(26, 'Rice in Bowl', 'Cơm Thố', 0, 5),
(27, 'Stir-fry', 'Món Xào', 0, 5),
(28, 'Curry Rice', 'Cơm Cari', 0, 5),
(29, 'Grilled', 'Món Nướng', 0, 5),
(30, 'Deep Fried', 'Chiên Bột Tempura', 0, 5),
(31, 'Hand Roll', 'Cuốn Tay Cầm', 0, 5),
(32, 'Roll Rice', 'Cơm Cuộn', 0, 5),
(33, 'Sushi', 'Cơm Nắm', 0, 5),
(34, 'Sashimi', 'Hài Sản Sống', 0, 5),
(35, 'Pickles', 'Đồ Chua', 0, 5),
(36, 'Salad', 'Salad', 0, 5),
(37, 'Stater', 'Khai Vị', 0, 0),
(38, 'Other', 'Gọi thêm đồ', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nh_cat_picture`
--

CREATE TABLE IF NOT EXISTS `nh_cat_picture` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `viname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_cat_picture`
--

INSERT INTO `nh_cat_picture` (`id`, `name`, `viname`, `is_public`) VALUES
(1, 'Our Staff', 'Đội ngũ nhà hàng', 1),
(2, 'Our landscape', 'Quang cảnh nhà hàng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nh_dish`
--

CREATE TABLE IF NOT EXISTS `nh_dish` (
  `id` int(11) NOT NULL,
  `japname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `enname` varchar(100) NOT NULL,
  `viname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `is_special` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(4) NOT NULL DEFAULT '10'
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_dish`
--

INSERT INTO `nh_dish` (`id`, `japname`, `enname`, `viname`, `img`, `price`, `cat_id`, `is_special`, `order`) VALUES
(74, 'Edamame', 'Boiled Green Beans', 'Đậu nành luộc', '9e109-images.jpg', 39000, 37, 0, 0),
(75, 'Hiya Yakko', 'Cold Bean Curd', 'Đậu hũ lạnh', '3eb2d-images--1-.jpg', 59000, 37, 1, 0),
(76, 'Age Dashi Toufu', 'Fried Bean & Sauce	', 'Đậu hũ chiên và sốt	', '4d95d-AGEDASHI-TOFU.jpg', 59000, 37, 0, 0),
(77, 'Toufu Goma Age', 'Fried Bean & Sauce', 'Đậu hũ chiên và sốt', 'ccb15-tofu_goma_steak.jpg', 69000, 37, 0, 0),
(78, 'Ikura Oroshi', 'Salmon Egg & Gratted Radish', 'Trứng cá hồi trộn củ cải mài', 'c56e5-res_78242.gif', 69000, 37, 0, 0),
(79, 'Nattou', 'Rermented Soyneans', 'Đậu tương nhật', 'a570a-images--2-.jpg', 39000, 37, 0, 0),
(80, 'Maguro Nattou', 'Rermented Soybeans & Tuna', 'Đậu tương với cá ngừ', 'b4d7c-5871540805_fa42fb681c.jpg', 69000, 37, 0, 0),
(81, 'Ika Nattou', 'Rermented Soybeans & Squid', 'Đậu tương với mực', 'e876e-thumb_600.jpg', 69000, 37, 0, 0),
(82, 'Ebi Gyoza', 'Shrimp Dumpling', 'Bánh xếp nhân tôm', 'dbbbd-gyoza.JPG', 79000, 37, 0, 0),
(83, 'Horenso Goma Age', 'Boiled Spinach & Sauce', 'Bó xôi luộc với sốt', '055bf-995148_10151515213752657_2134866835_n.jpg', 59000, 37, 0, 0),
(85, 'Kaisen Sarada', 'Seadfood Salad', 'Salad hải sản', 'c1d9d-Kaisen-Sarada.Salad-H---i-s---n.Mix-Seafood-Salad--99.000vnd.jpg', 89000, 36, 0, 0),
(86, 'Maguro Mayo Sarada', 'Tuna Mayone Salad', 'Salad cá ngừ', '9596f-tuna-sarada--2-.jpg', 69000, 36, 0, 0),
(87, 'Yasai Sarada', 'Vegetable Salad', 'Salad rau', 'a35a7-res_63477.jpg', 49000, 36, 0, 0),
(88, 'Alaska Sarada', 'Salmon Salad', 'Salad cá hồi', 'c6931-salmon-sarada.jpg', 69000, 36, 0, 0),
(89, 'EbiTem Sarada', 'Prawn Tempura Salad', 'Salad tôm chiên tem', '529bc-r748258_6181973.JPG', 69000, 36, 0, 0),
(90, 'Gyuniku Tataki', 'Beef  w/ Onion & Sauce', 'Thịt bò với sốt', '4b974-DSC_2253.JPG', 89000, 36, 0, 0),
(91, 'Maguro Tataki', 'Tuna w/ Onion & Sauce', 'Cá ngừ với sốt', 'd292e-images.jpg', 89000, 36, 0, 0),
(92, 'Maguro to Abogado', 'Tuna & Avocado', 'Cá ngừ & bơ', '2bb76-3.jpg', 89000, 36, 1, 0),
(93, 'Kimuchi', 'Japanese Pickkes', 'Kimchi', 'c713e-kimchi.jpg', 39000, 35, 0, 0),
(94, 'Wakame to Kyuri', 'Seaweed & Cucumber', 'Rong biển và dưa leo', '92556-wakame.jpg', 39000, 35, 0, 0),
(95, 'Sunomono Moriawase', 'Mixed seafood', 'Đồ chua tổng hợp', 'cbf61-sunomono.jpg', 68000, 35, 1, 0),
(96, 'Takuwan', 'Japanese Radish', 'Củ cải vàng', '9c5f4-takwan.jpg', 39000, 35, 0, 0),
(97, 'Kyuri Tsukemono', 'Japanese Cucumber', 'Dưa leo Nhật', 'ab03c-kyuri.jpg', 39000, 35, 0, 0),
(98, 'Tsukemono Moriawase', 'Japanese Pickles Set', 'Đồ chua thập cẩm', '01e0f-tsukemono.jpg', 59000, 35, 0, 0),
(100, 'Sashimi A', 'Assorted Raw Fish(3x3)', 'Cá sống tổng hợp', 'e8de3-669-1369714695.jpg', 140000, 34, 1, 0),
(101, 'Sashimi B', 'Assorted Raw Fish(3x6)', 'Cá sống tổng hợp', '1f218-images--1-.jpg', 289000, 34, 0, 0),
(102, 'Sake Sashimi', 'Salmon', 'Cá hồi', '99924-images.jpg', 89000, 34, 0, 0),
(103, 'Maguro Sashimi', 'Tuna', 'Cá ngừ', 'de3df-maguro-sashimi.ca-ngu-dai-duong.tuna-sashimi--79.000vnd.jpg', 79000, 34, 0, 0),
(104, 'Ikura Sashimi', 'Salmon Roe', 'Trứng cá hồi', '10da4-ikura-sashimi.tr---ng-c---h---i-sashimi.salmon-roe--119.000vnd.gif', 119000, 34, 0, 0),
(105, 'Tobiko Sashimi', 'Flying Fish Roe', 'Trứng cá chuồn', '629c1-201182_ebc3b7f6-0588-47f0-aa05-0c35cf8f1e38.jpg', 79000, 34, 0, 0),
(106, 'Hokkigai Sashimi', 'Red Clam', 'Sò đỏ', '4c964-38.jpg', 119000, 34, 0, 0),
(107, 'Hottate Sashimi', 'Scallop', 'Sò điệp', 'a70ce-Fat-Cow-Singapore-Hokkaido-Hotate-scallop----.jpg', 119000, 34, 0, 0),
(108, 'Nishin Sashimi', 'Roe Herring', 'Trứng cá trích', 'd3f9b-1052012-132313kazunoko.JPG', 119000, 34, 0, 0),
(109, 'Ika Sashimi', 'Squid', 'Mực lá', '848ab-ika-sashimi.-m---c-l---sashimi.squid--79.000vnd.jpg', 79000, 34, 0, 0),
(110, 'Tako Sashimi', 'Boiled Octopus', 'Bạch tuộc luộc', 'a6874-tako_sashimi.jpg', 79000, 34, 0, 0),
(111, 'Shime Saba Sashimi', 'Vinegar Mackerel', 'Cá saba ngâm giấm', 'f1044-images--2-.jpg', 79000, 34, 0, 0),
(112, 'Ebi Sashimi', 'Boiled Prawn', 'Tôm luộc', '06f15-Uminohana_Amaebi.jpg', 69000, 34, 0, 0),
(113, 'Suzuki Sashimi', 'White Meat Fish', 'Cá thịt trắng', '5b097-Kue-sashimi.Sea-bass-fish.c---ch---m-sashimi--79.000vnd.jpg', 79000, 34, 0, 0),
(114, 'Mamakari Sashimi', 'Loach', 'Cá trích', '0d790-photo37010.jpg', 59000, 34, 0, 0),
(115, 'Kani Sashimi', 'Crab Stick', 'Thanh cua', '1cbe4-kani-sashimi.jpg', 59000, 34, 0, 0),
(116, 'Tamago Sashimi', 'Omelet', 'Trứng chiên', 'ce3ca-IMG_7512.jpg', 59000, 34, 0, 0),
(117, 'Abogado Sashimi', 'Avocado', 'Bơ', '35dd1-Abogado-1.jpg', 59000, 34, 0, 0),
(118, 'Sushi A (12 Sushi + 1 Roll Rice)', 'Sushi Combination', 'Cơm nắm tổng hợp ', 'e2688-sushi-S-.sushi-combination-S-x12-1-roll--sushi-t---ng-h---p-C----nh---.gif', 159000, 33, 0, 0),
(119, 'Sushi B (16 Sushi + 1 Roll Rice)', 'Sushi Combination', 'Cơm nắm tổng hợp', '5a483-SUSHI-C-2-3.jpg', 229000, 33, 0, 0),
(120, 'Sake Sushi', 'Salmon', 'Cá hồi', 'dcfb5-SAKE-SUSHI-1-43607791.jpg', 49000, 33, 0, 0),
(121, 'Maguro Sushi', 'Tuna', 'Cá ngừ', '87435-maguro-sushi.tuna.c---ng---------i-d----ng-sushi-39.000vnd.jpg', 39000, 33, 0, 0),
(122, 'Suzuki Sushi', 'White Fish', 'Cá thịt trắng', 'c1da7-kue-sushi.-ca-trang.white-fish--35.000vnd.jpg', 39000, 33, 0, 0),
(123, 'Nishin Sushi', 'Roe Herring', 'Trứng cá trích', 'd86f3-19.jpg', 49000, 33, 0, 0),
(124, 'Mamakari Sushi', 'Loach', 'Cá trích', '26b27-mamakari-Sushi.sardin-mamakari.c---tr--ch--29.000vnd.png', 29000, 33, 0, 0),
(125, 'Shime Saba Sushi', 'Vinegar Mackerel', 'Cá saba ngâm dấm', '925cd-Saba.jpg', 39000, 33, 0, 0),
(126, 'Tako Sushi', 'Boiled Octopus', 'Bạch tuộc luộc', 'e79b8-Tako-sushi.Octopus.Sushi-b---ch-tu---t--39.000vnd.jpg', 39000, 33, 0, 0),
(127, 'Ebi Tempura Sushi', 'Prawn Tempura', 'Tôm chiên tem', '80585-Sashimi-Mini-Ebi-Tempura-Sushi.jpg', 49000, 33, 0, 0),
(128, 'Ebi Sushi', 'Boiled Prawn', 'Tôm luộc', 'dda5b-PFO10191.jpg', 39000, 33, 0, 0),
(129, 'Tobiko Sushi', 'Flying Fish Roe ', 'Trứng cá chuồn', 'c9805-TOBIKO-SUSHI.jpg', 39000, 33, 0, 0),
(130, 'Ika Sushi', 'Squid', 'Mực lá', '7bb50-ika-sushi.-m---c-l---sushi.squid--49.000vnd.jpg', 39000, 33, 0, 0),
(131, 'Inari Sushi', 'Japanese Fried Bean Curd', 'Đậu hũ kho', '35742-Inari-sushi.-----u-h----nh---t-chi--n-g--i-c--m-sushi.Tofu-pouch---49.000vnd.jpg', 39000, 33, 0, 0),
(132, 'Ikura Sushi', 'Salmon Roe', 'Trứng cá hồi', '1542a-images.jpg', 69000, 33, 0, 0),
(133, 'Tamago Sushi', 'Omelet', 'Trứng chiên', 'a2251-IMG_0879.jpg', 29000, 33, 0, 0),
(134, 'Unagi Sushi', 'Japanese Eel', 'Lươn nhật', '5447d-unagi-sushi.japanese-eel.l----n-nh---t-sushi--59.000vnd.jpg', 59000, 33, 0, 0),
(136, 'Abogado Sushi', 'Avocado', 'Bơ', '7032d-DSC_4007afk.jpg', 29000, 33, 0, 0),
(137, 'Hokkgai Sushi', 'Red Clam', 'Sò đỏ', '67eeb-hokkigai-sushi.s---------nh---t.red-clam--69.000vnd.jpg', 69000, 33, 0, 0),
(138, 'Hotate Sushi', 'Scallop', 'Sò điệp', '624a1-hotate.JPG', 69000, 33, 0, 0),
(139, 'Aburi Harasu Sake Sushi', 'Salmon Belly', 'Bụng cá hồi', 'b540d-009.jpg', 49000, 33, 0, 0),
(140, 'Kani Sushi', 'Crab Stick', 'Thanh cua', 'a81aa-IMG_6634a.jpg', 29000, 33, 0, 0),
(141, 'Kappa Maki', 'Cucumber', 'Cuốn dưa leo', 'def67-5877521244_fc65af2958_z.jpg', 35000, 32, 0, 0),
(142, 'Tamago Maki', 'Omelet', 'Cuốn trứng chiên', '97ca3-tamago.jpg', 39000, 32, 0, 0),
(143, 'Abogado Maki', 'Avocado', 'Cuốn bơ', '25f71-14.jpg', 39000, 32, 0, 0),
(144, 'Maguro Mayo Maki', 'Tuna Salad ', 'Cuốn cá ngừ salad', '3dff5-Tuna-mayo-maki.-C--m-cu---n-c---ng----salad.Tuna-salad-rolls-59.000vnd.jpg', 59000, 32, 0, 0),
(145, 'Sake Maki', 'Salmon', 'Cuốn cá hồi', '82c95-3053358718_3b06d2308e_z.jpg', 59000, 32, 0, 0),
(146, 'Maguro Maki', 'Tuna', 'Cuốn cá ngừ', 'd1d80-11950589-maguro-maki-sushi--roll-with-fresh-tuna-on-the-wood-plate.jpg', 49000, 32, 0, 0),
(147, 'Sake Abogado Maki', 'Salmon & Avocado', 'Cuốn cá hồi & bơ', '305fd-sake-maki600.jpg', 69000, 32, 0, 0),
(148, 'Maguro Abogado Maki', 'Tuna & Avocado', 'Cuốn cá ngừ & bơ', 'd4fc0-MAGURO-ABOGADO-MAKI.jpg', 59000, 32, 0, 0),
(150, 'Negi Maguro Maki', 'Tuna & Spring Onion', 'Cuốn cá ngừ & hành lá', 'a2690-negi_toro_maki1.jpg', 49000, 32, 0, 0),
(151, 'Nattou Maki', 'Fermented Soybeans', 'Cuốn đậu tương', 'ac814-l.jpg', 49000, 32, 0, 0),
(152, 'Ika Nattou Maki', 'Soybeans & Squid', 'Cuốn đậu tương & mực', 'b5347-ika.jpg', 59000, 32, 0, 0),
(153, 'Oshinko Maki', 'Pickles Radish', 'Cuốn củ cải chua', '4ce53-images.jpg', 39000, 32, 0, 0),
(154, 'Futo Maki', 'Big Roll', '', '178b8-Futo-maki.C--m-cu---n------c-bi---t.Special-rolls-89.000vnd.jpg', 89000, 32, 0, 0),
(155, 'Hotto Sake Maki', 'Spicy Salmon', 'Cuốn cá hồi sốt cay', 'd118d-hotto.jpg', 79000, 32, 0, 0),
(156, 'Hotto Maguro Maki', 'Spicy Tuna', 'Cuốn cá ngừ sốt cay', '3c59f-thumb_600.jpg', 79000, 32, 0, 0),
(157, 'Kani Sarada Maki', 'Crab Stick Salad', 'Cuốn thanh cua salad', 'f2482-Kani-salad-maki.c--m-cu---n-thanh-cua-salad.Japanese-crabs-meat-salad-roll--79.000vnd.jpg', 79000, 32, 0, 0),
(158, 'Philaden Pia Maki', 'Philadelphia', 'Cuốn kiểu philaden', '2cd4c-images--2-.jpg', 89000, 32, 0, 0),
(159, 'Ranbo Maki', 'Rain Bowl', 'Cuốn kiểu cầu vòng', '240cb-images--4-.jpg', 89000, 32, 0, 0),
(160, 'Kali Fornia Maki', 'Califonia', 'Cuốn kiểu cali', '6b47d-California-maki.-C--m-cu---n-ki---u-California.California-rolls--79.000vnd.jpg', 79000, 32, 0, 0),
(161, 'Unakyu Maki', 'Eel & Cucumber', 'Cuốn lươn & dưa leo', '6b883-1-IMG_9401.JPG', 89000, 32, 0, 0),
(162, 'Dragon Maki', 'Eel & Avocado', 'Cuốn lươn  & bơ', '52a11-Dragon-maki.C--m-cu---n-l----n-nh---t.-Eel--cucumber-rolls--99.000vnd.jpg', 99000, 32, 0, 0),
(164, 'Sake Kawa Maki', 'Skin Salmon', 'Cuốn da cá hồi', '7c4f6-l--1-.jpg', 79000, 32, 0, 0),
(165, 'Age Gyuniku Maki', 'Stir Beef', 'Cuốn thịt bò xào', '58cbe-IMG_0141-2.jpg', 89000, 32, 0, 0),
(166, 'Dainamaito Sake Maki', 'Dynamite Salmon', 'Cuốn cá hồi sốt dyna', 'e3783-Dainamaitto-maki.C--m-cu---n-c---h---i-Dynamite.Dinamite-salmon-rolls--89.000vnd.jpg', 89000, 32, 0, 0),
(167, 'Sake Sarada Maki', 'Salmon Salad', 'Cuốn cá hồi salad', '3eafd-Salmon-Tempura-Roll.jpg', 89000, 32, 0, 0),
(168, 'Negi Sake Ten Maki', 'Salmon Tempura', 'Cuốn cá hồi chiên tem', 'c496a-Las-Vegas-Roll.jpg', 69000, 32, 0, 0),
(169, 'Ebi Ten Maki', 'Prawn Tempura', 'Cuốn tôm chiên tem', '4f9c8-ebi.jpg', 79000, 32, 0, 0),
(170, 'SoftShell Carb Maki', 'SoftShell Tempura & Cucumber', 'Cuốn cua lột & dưa leo', 'edc68-3210767-softshell-crab-maki-traditional-japanese-rice-roll-with-seafood.jpg', 99000, 32, 0, 0),
(171, 'Negi Sake Maki', 'Salmon & Spring Onion', 'Cuốn cá hồi & hành lá', '86c7c-NEGI-SAKE-MAKI.jpg', 59000, 32, 0, 0),
(173, 'Sake Ikura Temaki', 'Salmon & Salmon Roe', 'Cuốn cá hồi & trứng cá hồi', '54c5e-dscf7718.jpg', 59000, 31, 0, 0),
(174, 'Kali Fornia Temaki', 'Califonia', 'Cuốn kiểu cali', '07bb6-temaki.jpg', 49000, 31, 0, 0),
(175, 'Hotate Tobiko Temaki', 'Scallop & Flying Fish Roe', 'Cuốn sò điệp & trứng cá chuồn', '62df1-526616890_dc3ec967b9_z.jpg', 69000, 31, 0, 0),
(176, 'Maguro Mayo Temaki', 'Tuna Salad', 'Cuốn cá ngừ salad', 'ae241-dsc02008.jpg', 38000, 31, 0, 0),
(177, 'Sake Kawa Temaki', 'Skin Salmon', 'Cuốn da cá hồi', 'c2f32-DSC_0016.jpg', 45000, 31, 0, 0),
(178, 'Tako Tempura', 'Octopus Temp', 'Bạch tuộc chiên tem', '3b70e-76608704.jpg', 89000, 30, 0, 0),
(179, 'Ika Geso Tempura', 'Squid Legs Temp', 'Râu mực chiên tem', 'd2e30-Hana-ika-tempura.JPG', 89000, 30, 0, 0),
(180, 'Ebi Tempura', 'Prawn Temp', 'Tôm chiên tem', 'af146-Ebi-Tempura-Multi-Location1.jpg', 89000, 30, 0, 0),
(181, 'Yasai Tempura', 'Mix Vegetable Temp', 'Các loại  rau củ chiên tem', 'f3834-DSC_8405.jpg', 79000, 30, 0, 0),
(182, 'Tempura Moriwase', 'Assorted Temp', 'Các loại tem', '94678-f9.JPG', 99000, 30, 0, 0),
(183, 'SoftShell Crab Tempura', 'SoftShell Crab Temp', 'Cua lột chiên tem', '2c7a6-im_softshell_crab.jpg', 109000, 30, 0, 0),
(184, 'Kaki Age', 'Mix Tempura', 'Rau củ hải sản cắt nhỏ chiên tem', '24a50-Fiona-s-Japanese-cooking---kaki-age-tempura---vegetable-fritter.jpg', 89000, 30, 0, 0),
(185, 'Okonomi', 'Japanese Pancake', 'Bánh xèo Nhật', 'e793e-okonomiyaki.jpg', 79000, 30, 0, 0),
(186, 'Tonkatsu', 'Deep Fried Pork', 'Thịt heo chiên bột xù', 'e38d8-tonkatsu-pork-cutlet-lean.jpg', 89000, 30, 0, 0),
(187, 'Ebi Furai', 'Deep Fried Prawn', 'Tôm chiên bột xù', '11e86-sakuEbi-Furai.jpg', 89000, 30, 0, 0),
(188, 'Tori Kare Age', 'Deep Fried Chicken', 'Gà chiên giòn', '5d6bd-tori-no-karaage.jpg', 89000, 30, 0, 0),
(190, 'Gyuniku (shio,teri) Yaki', 'Beef (salt,teri sauce)', 'Thịt bò (muối,sốt teri)', 'de169-IMG_9234.JPG', 119000, 29, 0, 0),
(191, 'Mix Kushi Teri Yaki', 'Beef,Pork,Chicken', 'Thịt bò,heo,gà sốt teri', '9b209-yakitori.jpg', 109000, 29, 0, 0),
(192, 'Sake (shio,teri) Yaki', 'Salmon (salt,teri sauce)', 'Cá hồi nướng(muối,sốt teri)', 'cf6ea-cc3a1-he1bb93i-nc6b0e1bb9bng-kie1bb83u-nhe1baadt.jpg', 109000, 29, 0, 0),
(193, 'Yaki Tori', 'Chicken Teri Sauce', 'Thịt gà sốt teri', '9195a-9639874111_9eaf52d3ce.jpg', 69000, 29, 0, 0),
(194, 'Sanma Shio Yaki', 'Grilled Pacific Saury & Salt', 'Cá thu nướng muối', 'da6d3-kura9.JPG', 69000, 29, 0, 0),
(195, 'Saba Shio Yaki', 'Grilled Saba & Salt', 'Cá saba nướng muối', '4c277-m_399162624_saba-shio-yaki.jpg', 69000, 29, 0, 0),
(196, 'Unagi Tamago Yaki', 'Broiled eel stuffed in egg omelet', 'Trứng cuộn lươn chiên', 'cf55c-3922688369_e23e461631_o.jpg', 69000, 29, 0, 0),
(197, 'Gyuniku Teppan Yaki', 'Grilled Beef & Teppan Sauce', 'Bò nướng với sốt Teppan', '21d32-Beef_Teppanyaki.jpg', 119000, 29, 0, 0),
(198, 'Tori Teri Yaki', 'Chicken & Teri Sauce', 'Thịt gà sốt teri', '39a23-DSC09594.JPG', 99000, 29, 0, 0),
(199, 'Ika (shio,teri) Yaki', 'Squid (Salt,teri sauce)', 'Mực nướng (muối,sốt teri)', 'b7ac5-_MG_7394.JPG', 99000, 29, 0, 0),
(200, 'Yasai Itame', 'Mixed Stir-fried vegetables', 'Rau xào thập cẩm', '7c3d9-yasaiitame.jpg', 59000, 27, 0, 0),
(201, 'Buta Kyabetsu Itame', 'Stir-fried  Cabbage & Pork', 'Bắp cải xào thịt heo', '38ec8-IMG_6467.jpg', 69000, 27, 0, 0),
(202, 'Buta Kimuchi Itame', 'Stir-fried Kimuchi & Pork', 'Kimchi xào thịt heo', 'bbd8b-buta-purukogi.jpg', 79000, 27, 0, 0),
(203, 'Bẽkon Hourenso Itame', 'Stir-fried Spinach & bacon', 'Cải bó xôi xào thịt heo xông khói', '59051-m_892934127_rau-bo-xoi-xao-thit-heo-xong-khoi.jpg', 69000, 27, 0, 0),
(204, 'Yaki Udon', 'Stir-fried Udon', 'Mì udon xào', '9e285-udon.jpg', 89000, 27, 0, 0),
(205, 'Ebi Bata Yaki', 'Stir-fry Prawn & Butter', 'Tôm xào bơ', 'dc36f-ebi-bata.jpg', 89000, 27, 0, 0),
(206, 'Katsu Karẽraisu', 'Pork Curry Rice', 'Cơm cà ri thịt heo', '22542-tetsu_09.jpg', 109000, 28, 0, 0),
(207, 'Tori Karẽraisu', 'Tori Curry Rice', 'Cơm cà ri thịt gà', '143cd-DSC08874-e.JPG', 109000, 28, 0, 0),
(208, 'Ebi Karẽraisu', 'Ebi Curry Rice', 'Cơm cà ri với tôm', 'f1fc5-thumb_600.jpg', 109000, 28, 0, 0),
(209, 'Gyuniku Karẽraisu', 'Beef Curry Rice', 'Cơm cà ri thịt bò', '23572-images.jpg', 109000, 28, 0, 0),
(210, 'Shĩfũdo Karẽraisu', 'Seafood Curry Rice', 'Cơm cà ri hải sản', '34fd4-IMG_3412.jpg', 109000, 28, 0, 0),
(211, 'Nabe Yaki Udon', 'Udon Noodle In Clay Pot', 'Mì udon & tôm,thịt gà', '83f0b-1334339623CZ090.jpg', 99000, 20, 0, 0),
(212, 'Kitsune (Udon,Soba)', 'Tofu Pouch & (Udon,Soba)', 'Mì (Udon,Soba) & đậu hủ kho', '5c367-KitsuneNoodle.jpg', 89000, 20, 0, 0),
(213, 'Gyuniku (Udon,Soba)', 'Beef & (Udon,Soba)', 'Mì thịt bò & (Udon,Soba)', '8be0f-P1060319.jpg', 99000, 20, 0, 0),
(214, 'Nabe Kimchi Udon', 'Udon & Kimchi', 'Mì udon với kimchi', 'c2619-kimchinabe.jpg', 99000, 20, 0, 0),
(215, 'Tempura (Udon,Soba)', 'Udon & Tempura', 'Mì udon với tempura', 'c3abf-TEMPURA-UDON.jpg', 99000, 20, 0, 0),
(216, 'Ten Zaru (Udon,Soba)', 'Cold (Udon.Soba) & Temp', 'Mì lạnh (udon,soba) & temp', 'f029e-takeya-8.jpg', 99000, 20, 0, 0),
(217, 'Sake (Negi) Don', 'Salmon (Onion) Sushi Rice', 'Cơm sushi (hành lá) cá hồi', 'bd11c-l.jpg', 99000, 26, 0, 0),
(218, 'Sake Ikura (Negi) Don', 'Salmon Roe (Onion) Sushi Rice', 'Cơm sushi (hành lá)trứng cá hồi', '97c50-sake-ikura-don.jpg', 119000, 26, 0, 0),
(219, 'Tekka (Negi) Don', 'Tuna & Sushi Rice', 'Cơm sushi với cá ngừ', '1cc91-t161900rc_4_2.jpg', 99000, 26, 0, 0),
(220, 'Sake Kawa Yaki Don', ' Skin Salmon & Sushi Rice', 'Cơm sushi với da cá hồi', '3929c-3936113646_99b073aa1f.jpg', 99000, 26, 0, 0),
(221, 'Chanko Nabe ', 'Seafood Hot Pot', 'Lẩu hải sản', 'd117d-5041168521_7e091acb80_z.jpg', 299000, 19, 0, 0),
(222, 'Kimuchi Nabe', 'Seafood Hot Pot', 'Lẩu hải sản kimchi', '6a5fb-------------.jpg', 299000, 19, 0, 0),
(223, 'Yasai', 'Vegetable Hot Pot', 'Rau lẩu thêm', '46183-IMG_4040.jpg', 69000, 38, 0, 0),
(224, 'Yasai to Shĩfũdo', 'Vegetable&Seafood Hot Pot', 'Rau và hải sản lẩu thêm', '90632-125863789440116128461_DPP_1908.JPG', 199000, 38, 0, 0),
(225, 'Chawan Mushi', 'Steamed Egg', 'Trứng hấp', '123e4-chawan-mushi-closer-view.jpg', 20000, 38, 0, 0),
(226, 'Miso Shiru', 'Miso Soup', 'Súp rong biển', '81253-Jagaimo-to-age-no-misoshiru_comp.jpg', 20000, 38, 0, 0),
(227, 'Gohan', 'Steamed Rice', 'Cơm trắng', '03bf6-27496_basic_steamed_rice_620.jpg', 15000, 38, 0, 0),
(228, 'Nori', 'Seaweed', 'Rong biển', '95cb3-nori-seaweed-superfood.jpg', 29000, 38, 0, 0),
(229, 'Tiger', '', 'Tiger', '7c79e-tiger--1-.jpg', 20000, 21, 0, 0),
(230, 'Asahi', '', '', 'e7b74-asahi.jpg', 35000, 21, 0, 0),
(231, 'Sapporo', '', 'Sapporo', 'c888a-tiger--2-.jpg', 24000, 21, 0, 0),
(232, 'Coke', '', 'Coke', '635b8-images--3-.jpg', 20000, 22, 0, 0),
(233, 'Diet', '', 'Diet', 'de825-t---i-xu---ng--1-.jpg', 20000, 22, 0, 0),
(234, 'Soda', '', 'Soda', '1acb8-t---i-xu---ng--2-.jpg', 20000, 22, 0, 0),
(235, 'Sprite', '', 'Sprite', 'c8b3e-t---i-xu---ng--3-.jpg', 20000, 22, 0, 0),
(236, 'Minerak Water', '', 'Nước suối', '70250-t---i-xu---ng--4-.jpg', 15000, 22, 0, 0),
(237, 'Vn Coffee', '', 'Vn Coffee', 'bff8a-images--4-.jpg', 25000, 23, 0, 0),
(238, 'Lipton Tea', '', 'Trà lipton canh', '8be3d-images--5-.jpg', 25000, 23, 0, 0),
(239, 'Janpanese Green Tea', '', 'Trà xanh Nhật', 'd8687-gt1.jpg', 25000, 23, 0, 0),
(240, 'Ginger Tea', '', 'Trà gừng', '8f077-7--1-.jpg', 25000, 23, 0, 0),
(241, 'Orange Juice', '', 'Nước cam ép', '9fb1a-5--1-.jpg', 35000, 24, 0, 0),
(243, 'Pineapple Juice', '', 'Nước thơm ép', 'a8faa-5--2-.jpg', 35000, 24, 0, 0),
(244, 'Tomato Juice', '', 'Nước cà chua ép', '3bbcc-images--9-.jpg', 35000, 24, 0, 0),
(245, 'Passion Juice', '', 'Nước chanh dây', '4d4f5-3--2-.jpg', 35000, 24, 0, 0),
(246, 'Lemon Juice', '', 'Nước chanh', '67c6c-1.jpg', 0, 24, 0, 0),
(247, 'Watermelon  Juice', '', 'Nước dưa hấu ép', 'a9c82-images--6-.jpg', 35000, 24, 0, 0),
(248, 'Apple Juice', '', 'Nước táo ép', 'e19de-images--7-.jpg', 35000, 24, 0, 0),
(249, 'Mango Juice', '', 'Nước ép xoài', '468ec-images--8-.jpg', 35000, 24, 0, 0),
(251, 'Guava Juice', '', 'Nước ổi ép', 'd4ea3-3--1-.jpg', 35000, 24, 0, 0),
(252, 'Carrot Juice', '', 'Nước cà rốt ép', '1cf18-7--2-.jpg', 35000, 24, 0, 0),
(253, 'Etsuno (200ml)', '', 'Etsuno (200ml)', 'ee406-t---i-xu---ng.jpg', 110000, 25, 0, 0),
(254, 'Nama Sake (300ml)', '', 'Nama Sake (300ml)', '51d18-images.jpg', 210000, 25, 0, 0),
(256, 'Ozeki (200ml)', '', 'Ozeki (200ml)', '54cfd-images--2-.jpg', 190000, 25, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nh_landscape`
--

CREATE TABLE IF NOT EXISTS `nh_landscape` (
  `id` int(11) NOT NULL,
  `img` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(300) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `order` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_landscape`
--

INSERT INTO `nh_landscape` (`id`, `img`, `caption`, `cat_id`, `order`) VALUES
(1, 'd569a-front.jpg', 'hot hot', 2, 0),
(2, '04585-5EA72527-3F74-4DA5-8D49-70111F716456.jpg', '123', 2, 0),
(3, '0e9d1-5E3CCA7C-B4D2-46E4-9F16-62B1002D8021.jpg', '321', 2, 0),
(4, '2ca50-7CB53103-99EC-40ED-A32B-3A58CCFFD7D1.jpg', '123', 2, 0),
(5, '56a3a-7F52B721-A520-490E-975D-23C2C5B327DB.jpg', 'fs? ', 2, 0),
(6, '8b9ee-698DA37F-780F-4DF6-B97B-C0857B3A028C.jpg', 'à ', 2, 0),
(8, 'ccd2f-898F690B-7921-4443-B518-6E9F030EC44B.jpg', 'á', 2, 0),
(9, 'e1d5d-67669DE7-0216-4C59-B4BC-67DF0E25FF52.jpg', 'ba ba', 2, 0),
(15, '00089-1235976_708384989178655_1279874291_n.jpg', 'Hoài', 1, 0),
(16, '3a4f7-215490_190373284426281_1390625093_n.jpg', 'See', 1, 0),
(17, '43199-533764_464028026981959_871797724_n.jpg', 'leoo', 1, 0),
(18, '3240d-480497_312265172214470_564201999_n.jpg', 'Trang', 1, 0),
(19, 'dbf48-1497667_624988850881596_1991794088_n.jpg', 'siêu nhân', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nh_message`
--

CREATE TABLE IF NOT EXISTS `nh_message` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_message`
--

INSERT INTO `nh_message` (`id`, `name`, `email`, `phone`, `content`, `time`, `status`) VALUES
(1, 'Khánh nè', 'thecallwild2@gmail.com', '0169105635', 'Không có j hết test thôi', '2014-04-16 20:40:34', 0),
(2, 'tèo', 'teo@yahoo.com', '01267350255', 'hí hí', '2014-04-16 20:41:34', 0),
(3, 'Dũng', 'sieunhangao@hotmail.com', '0123456789', 'What are your comments ?', '2014-04-16 20:42:34', 0),
(4, 'Tí chuột', 'tichuot@yahoo.com.vn', '', 'Tí chuột nè', '2014-04-16 20:45:34', 1),
(5, 'tung 123', 'tung@yahoo.com', '213213123', '21321 213 2132', '2014-04-18 03:01:41', 0),
(6, 'khanh', 'khank@gmail.com', '01267350255', 'không có gì hết chỉ là text và text hôi', '2014-04-23 06:46:13', 1),
(7, 'khanh', 'khanh@yahoo.colm', '213123123', 'khong co \\j het', '2014-04-24 08:47:22', 1),
(8, 'Hiroko Henderson', 'mavewyza@gmail.com', '9954911106', 'Do id, porro lorem rerum sint tempore, cum quasi illo.', '2014-04-30 00:18:51', 0),
(9, 'leo', 'leo@gmail.com', '123321123', 'khoong co j ngoai test', '2014-05-02 07:58:22', 0),
(10, 'leo', 'khanh@yahoo.com', '123321123', 'thanks', '2014-05-02 08:11:53', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nh_order`
--

CREATE TABLE IF NOT EXISTS `nh_order` (
  `id` int(11) NOT NULL,
  `customer` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `money` int(11) NOT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_order`
--

INSERT INTO `nh_order` (`id`, `customer`, `phone`, `address`, `time`, `money`, `note`, `status`) VALUES
(7, 'Vua', '112233445566', 'Hoàng hậu q1', '2014-04-21 00:45:46', 0, '', 0),
(8, 'bèo', '12345678', 'nhèo', '2014-04-21 01:07:49', 99000, '', 1),
(9, 'a123', '12345678', 'a321', '2014-04-24 08:49:27', 179000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nh_order_detail`
--

CREATE TABLE IF NOT EXISTS `nh_order_detail` (
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `quanity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_order_detail`
--

INSERT INTO `nh_order_detail` (`order_id`, `menu_id`, `quanity`) VALUES
(7, 16, 5),
(7, 17, 5),
(8, 58, 1),
(9, 57, 1),
(9, 58, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nh_slider`
--

CREATE TABLE IF NOT EXISTS `nh_slider` (
  `id` int(11) NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `caption` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_slider`
--

INSERT INTO `nh_slider` (`id`, `img`, `caption`, `order`) VALUES
(1, 'slide-1.png', 'Caption 1', 0),
(2, 'slide-2.png', '', 0),
(3, 'slide-3.png', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nh_user`
--

CREATE TABLE IF NOT EXISTS `nh_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nh_user`
--

INSERT INTO `nh_user` (`id`, `username`, `password`) VALUES
(1, 'leo', 'leo');

-- --------------------------------------------------------

--
-- Table structure for table `xyz_article`
--

CREATE TABLE IF NOT EXISTS `xyz_article` (
  `id` int(9) NOT NULL,
  `title` varchar(150) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `img` varchar(150) NOT NULL,
  `summary` varchar(1500) NOT NULL,
  `username` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(150) NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `allow_cm` tinyint(1) NOT NULL DEFAULT '1',
  `is_show` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xyz_article`
--

INSERT INTO `xyz_article` (`id`, `title`, `cat_id`, `img`, `summary`, `username`, `content`, `time`, `slug`, `is_hot`, `allow_cm`, `is_show`) VALUES
(7, 'Quality and Reliablility Engineering', 2, 'b3f8b-global3.png', 'Ensure products meet engineering quality requirements such as: Durability, reliability and performance specifications under various environmental conditions, loads, stresses and usage frequencies', 'bahai', '<h1>Quality and Reliablility Engineering</h1>\n<img alt="" class="imgr" src="http://www.azglobalengineeringresources.com/images/quality.jpg" style="border:3px solid rgb(255, 51, 51); clear:right; color:rgb(0, 0, 0); display:block; float:right; font-family:verdana,arial,helvetica,sans-serif; font-size:12px; line-height:16.799999237060547px; margin:0px 0px 8px 8px; padding:5px" />\n<ul>\n	<li>Ensure products meet engineering quality requirements such as:\n	<ul>\n		<li>Durability, reliability and performance specifications under various environmental conditions, loads, stresses and usage frequencies</li>\n		<li>Test up till failure to determine the weibull slope and the life of the product</li>\n		<li>Inspect components both during and at the end of test teardowns</li>\n		<li>Determine the weak link and to propose improvements</li>\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		&nbsp;\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n	</ul>\n	</li>\n	<li>Examine warranty concerns (IPTV, C/1000):\n	<ul>\n		<li>Analyze concern locations, cycles, environments, and stresses</li>\n		<li>Contact specialists to determine system affects, root causes and to submit both a temporary and a permanent solution</li>\n		<li>Create standards to eliminate future quality issues</li>\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		&nbsp;\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n	</ul>\n	</li>\n	<li>Plans and directs activities concerned with the development, application and maintenance of quality standards for industrial processes, materials and products.&nbsp;</li>\n	<br />\n	<li>Interface with customers&#39; internal manufacturing and suppliers team on quality related issues.</li>\n	<br />\n	<li>Ensure programs follow and meet the required APQP processes and have TS 16949 based quality systems.</li>\n	<br />\n	<li>Lead the problem solving sessions for both the internal and external (customer and supplier) related quality issues within the Business Operating Systems.</li>\n	<br />\n	<li>Establish and maintain PPAP/APQP documentation to ensure it meets customer and AIAG requirements and to ensure applicable team members are properly trained.</li>\n	<br />\n	<li>Review and maintain the Quality Open Desk Issues Book and address all issues with the core team for a timely resolution.</li>\n	<br />\n	<li>Address audits by working with the core team on daily audit findings and following up with a resolution for closures.</li>\n</ul>\n', '2014-06-14 06:32:13', 'Quality-and-Reliablility-Engineering', 1, 1, 1),
(8, 'Global Engineering RAP', 1, '34d57-global4.jpg', 'Welcome to our website and to the University of Colorado at Boulder''s many living and learning options.  ', '', '<div class="container" style="margin: 0px auto; padding: 0px; width: 960px; color: rgb(44, 87, 91); font-family: Arial, Tahoma, Helvetica, sans-serif; font-size: 14px; line-height: normal;">\n<div class="content" style="margin: 0px 0px 40px; padding: 0px; min-height: 600px;">\n<h3><span dir="ltr" style="background-color:transparent !important">Global Engineering RAP</span></h3>\n\n<div class="sites-canvas-main" id="sites-canvas-main" style="min-height: 150px; padding-bottom: 5px; padding-top: 15px; color: rgb(68, 68, 68); font-family: arial, sans-serif; line-height: 21.333332061767578px; background-image: none !important; background-color: transparent !important;">\n<div id="sites-canvas-main-content">\n<div class="sites-layout-name-one-column-hf sites-layout-vbox">\n<div class="sites-layout-tile sites-tile-name-header" style="padding: 10px 10px 0px;">\n<div dir="ltr">\n<p><strong><span style="font-size:12pt">Comunidad---Globalizaci&oacute;n---Tecnolog&iacute;a inform&aacute;tica</span></strong></p>\nWelcome to the Global Engineering Residential Academic Program</div>\n</div>\n\n<div class="sites-layout-tile sites-tile-name-content-1" style="padding: 10px;">\n<div dir="ltr">\n<div>\n<h2><a name="TOC-Welcome-to-our-website-and-to-the-University-of-Colorado-at-Boulder-s-many-living-and-learning-options.-"></a>W<span style="color:rgb(51, 51, 51); font-family:georgia,sans-serif; font-size:14px">elcome to our website and to the University of Colorado at Boulder&#39;s many living and learning options. &nbsp;</span></h2>\n\n<div class="sites-embed-align-right-wrapping-on" style="display: inline; float: right; margin: 5px 0px 5px 20px;">\n<div class="sites-embed-border-on sites-embed" style="margin: 0px 0px 6px; color: inherit; font-size: 12px; border: 1px solid rgb(204, 204, 204); padding-bottom: 0px; display: table-cell; width: 40px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\n<div class="sites-embed-content sites-embed-type-text" style="overflow: hidden;">\n<div class="sites-embed-content-textbox" style="padding: 5px;">\n<div dir="ltr">\n<div>&nbsp;</div>\n\n<div>\n<div><a href="https://sites.google.com/a/colorado.edu/global-engineering-rap/home/KittCentral-tower.jpg" rel="nofollow" style="border-bottom-style: none; color: rgb(0, 0, 0) !important; background: none;"><img alt="Kttredge Central main entrance" src="https://sites.google.com/a/colorado.edu/global-engineering-rap/home/KittCentral-tower.jpg" style="border:0px; height:179px; padding:0px; width:320px" /></a></div>\n<br />\nThe new&nbsp;<a href="http://housing.colorado.edu/residences/residence-halls/kittredge-central" rel="nofollow" style="color: rgb(0, 0, 0) !important;">Kittredge Central residence hall</a>--just 4 minutes&nbsp;<span style="background-color:transparent">on foot from the Engineering Center--opened in August 2013.&nbsp;</span><span style="background-color:transparent">Global Engineering RAP members and the Faculty Director and her family live here</span><span style="background-color:transparent">.</span></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div>&nbsp;\n<h2><a name="TOC-As-Faculty-Director-of-the-Global-Engineering-Residential-Academic-Program-CU-I-invite-you-to-consider-whether-living-in-a-community-which-helps-you-to-practice-and-improve-your-Spanish-language-skills-while-focusing-on-global-engineering-projects-and-IT-d"></a><span style="color:rgb(51, 51, 51); font-family:georgia,sans-serif; font-size:14px">As Faculty Director of the&nbsp;</span><span style="color:rgb(51, 51, 51); font-family:georgia,sans-serif; font-size:14px">Global Engineering Residential Academic Program CU, I invite you to consider whether living in a community which helps you to practice and improve your Spanish language skills while focusing on global engineering projects and IT-driven intercultural communication matches your life and career goals.&nbsp;&nbsp;</span><em>Esta comunidad nos proporciona la oportunidad de vivir la ingenier&iacute;a global, de aprender el vocabulario t&eacute;cnico de varios campos de especializaci&oacute;n y de aprender a comunicarnos con colaboradores internacionales en proyectos t&eacute;cnicos mediante tecnolog&iacute;as inform&aacute;ticas emergentes.</em></h2>\nThe type of community we are creating involves much more than just being good at science and math. Although that is clearly part of it,&nbsp;<em>we are also looking for students who:</em>\n\n<ul>\n	<li>want more from their education than technical skills</li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">are already or&nbsp;<em>want to become</em>&nbsp;fluent in Spanish&nbsp;</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">want to learn how to leverage the latest in international telecommunications tools for working on collaborative international development projects</span></li>\n	<li><span style="font-family:georgia,serif">want to be part of building a community that critically engages the needs of the world&nbsp;</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">want to be part of building a community in which students work together and support each other&nbsp; as well-rounded individuals</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">care more about having&nbsp;<em>real global impact</em>&nbsp;than meeting minimum requirements&nbsp;</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">want to have the type of&nbsp;<em>fun</em>&nbsp;that comes from collaborating using cool emerging technologies</span></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n', '2014-06-14 06:43:06', 'Global-Engineering-RAP', 0, 1, 1),
(9, 'Great opportunities for engineering students', 1, 'b4615-global22.jpg', 'There are several great opportunities for engineering students', 'leo', '<span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">There are several great opportunities for engineering students to study abroad this summer, but the deadline to apply is February 1. Make sure you submit your application now for these experiences, many of which are open to students beginn</span><span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">ing in their first year.<br />\n<br />\nChina: Impact of Culture on Engineering in China (Engineering students can use credits as GS/IL;<a href="http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10030" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10030</a>)<br />\n<br />\nEngineering Design: Nantes, France (<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgpglobalea.gp.psu.edu%2Findex.cfm%3FFuseAction%3DPrograms.ViewProgram%26Program_ID%3D10671&amp;h=VAQHJ9MOB&amp;s=1" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10671</a>)<br />\n<br />\nEngineering Design: Navarra, Spain (<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgpglobalea.gp.psu.edu%2Findex.cfm%3FFuseAction%3DPrograms.ViewProgram%26Program_ID%3D10667&amp;h=IAQEu7hhG&amp;s=1" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10667</a>)<br />\n<br />\nEngineering Design: Singapore (<a href="http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10556" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10556</a>)<br />\n<br />\nEngineers Made in Germany: Automotive Engineering in Pforzheim, Germany (Mechanical, Industrial, and Electrical engineering students can use the 6 credits of engineering coursework to meet degree requirements;<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgpglobalea.gp.psu.edu%2Findex.cfm%3FFuseAction%3DPrograms.ViewProgram%26Program_ID%3D10691&amp;h=HAQH3nixi&amp;s=1" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10691</a>)<br />\n<br />\nIf you have questions about these programs, stop by to meet with the international engineering envoys during their office hours.</span>', '2014-06-14 06:57:23', 'Great-opportunities-for-engineering-students', 0, 1, 1),
(10, 'Information Sessions - International Opportunities for Engineering Students', 2, '5f88e-global2.jpg', 'As part of International Education Week, we will be holding information sessions to inform engineering students about opportunities to gain international experience. These include semester study abroad, summer and short-term study abroad, work and research abroad, on-campus programs, and more! These sessions will include a presentation as well as opportunities to hear from past program participants and time to answer your questions.', 'bahai', '<span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">Information Sessions - International Opportunities for Engineering Students:&nbsp;</span><br />\n<span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">As part of International Education Week, we will be holding information sessions to inform engineering students about opportunities to gain international experience. These include semester study abroad, summer and short-term study abroad, work and research abroad, on-campus programs, and more! These sessions will include</span><span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">&nbsp;a presentation as well as opportunities to hear from past program participants and time to answer your questions.<br />\n<br />\nThe sessions will be held at the following times. All sessions will be the same, so you only need to attend one.&nbsp;<br />\n1) Monday, November 11, 10:10am-11:00am, 218 Hosler<br />\n2) Tuesday, November 12, 3:30pm-4:20pm, 107 EE West<br />\n3) Wednesday, November 13, 12:20pm-1:10pm, 117 EE West<br />\n4) Thursday, November 14, 5:40-6:30pm, 212 Hammond<br />\n5) Friday, November 15, 11:10am-12:00pm, 201 EE West<br />\n6) Monday, November 18, 1:20pm-2:10pm, 218 Hosler<br />\n7) Tuesday, November 19, 4:40pm-5:30pm, 212 Hammond<br />\n8) Wednesday, November 20, 2:30pm-3:20pm, 110 Sackett<br />\n<br />\nThere are opportunities for students in any major to go abroad, and opportunities for students from first-year through seniors. Attend one of these sessions to learn more!</span>', '2014-06-21 23:48:17', 'Information-Sessions-International-Opportunities-for-Engineering-Students', 1, 1, 0),
(11, 'Global Engineering Education', 2, 'eec10-global-engineer.jpg', 'Over the past decade or so educators and researchers have made an effort to transform engineering education in light of global trends in the profession. In 1985, the National Research Council issued a study that spotlighted the need for universities to graduate engineers with professional skills.[1] This message was reinforced through a 1994 joint report published by the Engineering Deans Council and ASEE[2] that stated, “Today, engineering colleges … must educate their students to work as part of teams, communicate well, and understand the economic, social, environmental and international context of their professional activities.”', '', '<p><strong>Global Engineering Education</strong>&nbsp;is a field of study that focuses on the impact of globalization on the engineering industry.</p>\n\n<h2>Impact</h2>\n\n<p>The number of engineers coming from outside the United States has risen significantly in recent years.&nbsp;2008 data shows that the number of engineers graduating from university in China and India has risen by 9.9 and 10.4 percent, respectively.</p>\n\n<h2>History</h2>\n\n<p>Over the past decade or so educators and researchers have made an effort to transform engineering education in light of global trends in the profession. In 1985, the National Research Council issued a study that spotlighted the need for universities to graduate engineers with professional skills.<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[1]</a></sup>&nbsp;This message was reinforced through a 1994 joint report published by the Engineering Deans Council and ASEE<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-2" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[2]</a></sup>&nbsp;that stated, &ldquo;Today, engineering colleges &hellip; must educate their students to work as part of teams, communicate well, and understand the economic, social, environmental and international context of their professional activities.&rdquo;</p>\n\n<h2>Definitions</h2>\n\n<h3>Global Competency</h3>\n\n<p>Global competency is essential for engineers from any country who now compete in an international market for engineering know-how. No longer is cultural sensitivity needed only for product design destined for diverse markets. Increasingly, successful entry into the engineering profession requires significant intercultural skills in order to join efficient and productive collaborations with diverse engineering colleagues. Those colleagues may be encountered &ldquo;virtually&rdquo; at a distance, in person at an international site, or next door in the office of a multinational corporation. Outsourcing is increasing, not only for products but also for processes, including highly technical engineering work. Projects are distributed across sites and effective collaboration requires professionals who can work productively with colleagues who are very different from themselves.<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-3" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[3]</a></sup></p>\n\n<h2>Resources</h2>\n\n<p>Global HUB is the world&#39;s first virtual organization dedicated to global engineering and global engineering education. Whether one is a student looking for a virtual team for a global service learning project, or a faculty member interested in integrating global engineering content into lecture courses, or a researcher studying cross-cultural teams,&nbsp;sponsored engineering virtual organization.</p>\n\n<p><a href="http://en.wikipedia.org/wiki/IEEE_Education_Society" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="IEEE Education Society">IEEE Education Society</a><sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-4" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[4]</a></sup>&nbsp;belongs to the IEEE&nbsp;(Institute of Electrical and Electronics Engineers) and its major objective is to strive a global leader in engineering education. The organization of education engineering worldwide conferences as they are the EDUCON&nbsp;and the FIE&nbsp;with an open view of all the publications included there as well the integration of engineering educator leaders along all the world in the Administration Committee allows a world integration of different views and perspectives. Newly publication IEEE-RITA&nbsp;(Revista Iberoamericana de Tecnolog&iacute;as del Aprendizaje - Revista Iberoamericana de Tecnolog&iacute;as de Aprendizagem - Latin-American Learning Technologies Journal) incorporates a new vision of technology and engineering education in Spanish and Portuguese languages.<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-5" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[5]</a></sup></p>\n\n<h2>Benchmark Organizations</h2>\n\n<p><strong>These are some higher education institutions around the world that focus on global engineering education</strong></p>\n\n<ul>\n	<li><a href="http://en.wikipedia.org/wiki/Purdue_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Purdue University">Purdue University</a>, USA</li>\n	<li><a href="http://en.wikipedia.org/wiki/RMIT_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="RMIT University">RMIT University</a>, Australia</li>\n	<li><a href="http://en.wikipedia.org/wiki/Shanghai_Jiao_Tong_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Shanghai Jiao Tong University">Shanghai Jiao Tong University</a>, China</li>\n	<li><a class="mw-redirect" href="http://en.wikipedia.org/wiki/Universit%C3%A4t_Karlsruhe" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Universität Karlsruhe">Universit&auml;t Karlsruhe</a>, Germany</li>\n	<li><a href="http://en.wikipedia.org/wiki/Worcester_Polytechnic_Institute" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Worcester Polytechnic Institute">Worcester Polytechnic Institute</a>, USA</li>\n	<li><a class="mw-redirect" href="http://en.wikipedia.org/wiki/Virginia_Polytechnic_Institute_and_State_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Virginia Polytechnic Institute and State University">Virginia Polytechnic Institute and State University</a>, USA</li>\n	<li>\n	<div><span style="font-family:arial,helvetica,sans-serif"><a href="http://www.engr.utexas.edu/academics/studyabroad" rel="nofollow" style="font-family: Tahoma; line-height: 20px; orphans: 2; text-align: -webkit-auto; widows: 2; color: rgb(102, 51, 102); text-decoration: none; padding-right: 13px;">University of Texas at Austin, Cockrell School of Engineering</a>, USA</span></div>\n	</li>\n	<li><a href="http://en.wikipedia.org/wiki/University_of_British_Columbia" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="University of British Columbia">University of British Columbia</a>, Canada</li>\n	<li><a href="http://en.wikipedia.org/wiki/Kogakuin_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Kogakuin University">Kogakuin University</a>, Tokyo, Japan</li>\n</ul>\n\n<h2>&nbsp;</h2>\n\n<h2>See also</h2>\n\n<ul>\n	<li><a href="http://en.wikipedia.org/wiki/Global_Education_Network_Europe" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Global Education Network Europe">Global Education Network Europe</a></li>\n</ul>\n<br />\nhttp://en.wikipedia.org/wiki/Global_Engineering_Education', '2014-06-23 17:00:00', 'Global-Engineering-Education', 1, 1, 1),
(12, 'What is Global Engineering Education For?', 2, '1d609-global-bus.jpg', 'Global engineering offers the seductive image of engineers figuring out how to optimize work through collaboration and mobility. Its biggest challenge to engineers, however, is more fundamental and difficult: to better understand what they know and value qua engineers and why. This volume reports an experimental effort to help sixteen engineering educators produce "personal geographies" describing what led them to make risky career commitments to international and global engineering education. The contents of their diverse trajectories stand out in extending far beyond the narrower image of producing globally-competent engineers. Their personal geographies repeatedly highlight experiences of incongruence beyond home countries that provoked them to see themselves and understand their knowledge differently. The experiences were sufficiently profound to motivate them to design educational experiences that could challenge engineering students in similar ways.', 'leo', '<table border="0" cellpadding="0" cellspacing="0" style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; line-height:normal; width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<h1>What is Global Engineering Education For? The Making of International Educators, Part I &amp; II</h1>\n\n			<h2><a href="http://www.morganclaypool.com/toc/ges/1/1" style="color: rgb(0, 103, 144);">Synthesis Lectures on Global Engineering</a></h2>\n\n			<div>November 2010, 264 pages, (doi:10.2200/S00302ED1V01Y201010GES001)</div>\n\n			<div class="Authors" style="font-size: 13pt; margin-top: 1em;">Gary Lee&nbsp;Downey\n			<div class="aff" style="margin-bottom: 1em; font-size: 10pt;">Virginia Tech</div>\n			Kacey&nbsp;Beddoes\n\n			<div class="aff" style="margin-bottom: 1em; font-size: 10pt;">Virginia Tech</div>\n			</div>\n\n			<p><strong>Abstract</strong></p>\n\n			<p>Global engineering offers the seductive image of engineers figuring out how to optimize work through collaboration and mobility. Its biggest challenge to engineers, however, is more fundamental and difficult: to better understand what they know and value&nbsp;<em>qua</em>&nbsp;engineers and why. This volume reports an experimental effort to help sixteen engineering educators produce &quot;personal geographies&quot; describing what led them to make risky career commitments to international and global engineering education. The contents of their diverse trajectories stand out in extending far beyond the narrower image of producing globally-competent engineers. Their personal geographies repeatedly highlight experiences of incongruence beyond home countries that provoked them to see themselves and understand their knowledge differently. The experiences were sufficiently profound to motivate them to design educational experiences that could challenge engineering students in similar ways.</p>\n\n			<p>For nine engineers, gaining new international knowledge challenged assumptions that engineering work and life are limited to purely technical practices, compelling explicit attention to broader value commitments. For five non-engineers and two hybrids, gaining new international knowledge fueled ambitions to help engineering students better recognize and critically examine the broader value commitments in their work.</p>\n\n			<p>A background chapter examines the historical emergence of international engineering education in the United States, and an epilogue explores what it might take to integrate practices of critical self-analysis more systematically in the education and training of engineers. Two appendices and two online supplements describe the unique research process that generated these personal geographies, especially the workshop at the U.S. National Academy of Engineering in which authors were prohibited from participating in discussions of their manuscripts.</p>\n\n			<p>Table of Contents: The Border Crossers: Personal Geographies of International and Global Engineering Educators (Gary Lee Downey) / From Diplomacy and Development to Competitiveness and Globalization: Historical Perspectives on the Internationalization of Engineering Education (Brent Jesiek and Kacey Beddoes) / Crossing Borders: My Journey at WPI (Rick Vaz) / Education of Global Engineers and Global Citizens (E. Dan Hirleman) / In Search of Something More: My Path Towards International Service-Learning in Engineering Education (Margaret F. Pinnell) / International Engineering Education: The Transition from Engineering Faculty Member to True Believer (D. Joseph Mook) / Finding and Educating Self and Others Across Multiple Domains: Crossing Cultures, Disciplines, Research Modalities, and Scales (Anu Ramaswami) / If You Don&#39;t Go, You Don&#39;t Know (Linda D. Phillips) / A Lifetime of Touches of an Elusive &quot;Virtual Elephant&quot;: Global Engineering Education (Lester A. Gerhardt) / Developing Global Awareness in a College of Engineering (Alan Parkinson) / The Right Thing to Do: Graduate Education and Research in a Global and Human Context (James R. Mihelcic) / Author Biographies</p>\n\n			<p><strong>Reviews</strong></p>\n\n			<p>&quot;This unique publication provides compelling evidence of the benefits, both personal and professional, of infusing engineering education with international perspectives and experience abroad. It combines a set of fascinating personal histories from leading engineering faculty members and international educators with a thoughtful analysis of why our country, and every country, needs to produce engineers with the critical knowledge and self-awareness required to work effectively in international environments. The contents will inspire future engineers to step outside their &#39;comfort zones&#39; early in their academic careers and should be required reading for every academic, industrial, and government leader.&quot;--Dr. Allan E Goodman, President and CEO, Institute of International Education</p>\n\n			<p>&quot;Through a series of engaging personal essays, this work challenges the reader to understand engineering as a discipline and a profession within a national context and then to broaden, or even re-cast, that understanding based on global commonalities and international distinctions. The reader is thereby provoked to use the personal journeys of self-discovery to help elucidate sign posts for the types of learning journeys we hope to motivate within our students. The end result may well be discovering how to guide the development of engineers in a world increasingly connected (and yet, separated) physically, socially, culturally, intellectually, emotionally, etc. and enhancing their ability to comfortably operate and thrive in such an environment.&quot;--Dr. Norman L. Fortenberry, Director, Center for the Advancement of Scholarship on Engineering Education, National Academy of Engineering</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '2014-06-22 14:21:05', 'What-is-Global-Engineering-Education-For', 1, 1, 1),
(13, 'FAQ', 0, 'ac978-faq_png.png', 'Find an answer to your question. We''re happy to help', 'vuson', '<h2><span style="font-size:24px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FFD700">General</span></strong></span></span></h2>\n\n<ol>\n	<li>\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><em>​What is The engineerXYZ?</em></span></span></p>\n\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">The EngineerXYZ is a website for Global Engineer Course at UTE.</span></span></p>\n	</li>\n	<li>\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:12px"><span style="font-size:14px"><em>​Do I have to pay to join the Engineerxyz?​</em><br />\n	No! The EngineerXYZ is sponsored by USAID,..</span></span></span></p>\n	</li>\n</ol>\n\n<p><span style="font-size:24px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(255, 215, 0)">On The Day</span></strong></span></span></p>\n\n<ol>\n	<li>\n	<h4><span style="font-size:14px"><em>What do i need to prepare for the course?</em></span></h4>\n\n	<h4><span style="color:rgb(51, 51, 51); font-size:14px">You just only need to bring along laptop and smartphone during the course.</span></h4>\n	</li>\n</ol>\n\n<h2><span style="font-size:24px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FFD700">How To Get There</span></strong></span></span></h2>\n\n<ol>\n	<li>\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><em>Where is the event?</em></span></span></p>\n\n	<p><span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:arial,helvetica,sans-serif; font-size:12.727272033691406px"><span style="font-size:14px">University of Technical Education &nbsp;Address:&nbsp;</span></span><span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:arial,helvetica,sans-serif; font-size:14px">1 Vo Van Ngan Street, Thu Duc District, Ho Chi Minh City, Viet Nam</span></p>\n	</li>\n</ol>\n\n<p style="margin-left:40px"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:rgba(0, 0, 0, 0.780392)">Please consult the&nbsp;</span><strong><a href="https://www.facebook.com/globalengineers" style="box-sizing: border-box; background: transparent;">Facebook Group</a></strong></span><span style="color:rgba(0, 0, 0, 0.780392); font-size:14px">&nbsp;or hotline </span><strong><span style="color:#0000CD"><span style="font-size:14px">0974 468 160 </span></span></strong><span style="color:rgba(0, 0, 0, 0.780392); font-size:14px">(Mr.Son) for directions and further event information</span></span></p>\n\n<div>&nbsp;</div>\n\n<h5><span style="color:#FFD700"><strong><span style="font-size:24px">Other question?</span></strong></span></h5>\n\n<div><span style="font-size:14px">We will be adding more information to our&nbsp;FAQ&nbsp;section periodically.&nbsp; Please visit back again often.&nbsp; For answers to questions not covered here, please reach out to us directly via our contact infomation.</span></div>\n\n<p>&nbsp;</p>\n', '2014-07-12 17:00:00', 'FAQ', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xyz_category`
--

CREATE TABLE IF NOT EXISTS `xyz_category` (
  `id` int(9) NOT NULL,
  `title` varchar(150) NOT NULL,
  `parent_id` int(9) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10',
  `num_post` int(11) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xyz_category`
--

INSERT INTO `xyz_category` (`id`, `title`, `parent_id`, `slug`, `order`, `num_post`, `is_show`) VALUES
(1, 'Events', 0, 'events', 10, 4, 1),
(2, 'News', 0, 'tin-tuc', 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xyz_config`
--

CREATE TABLE IF NOT EXISTS `xyz_config` (
  `id` int(11) NOT NULL,
  `group_key` varchar(20) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(3) NOT NULL,
  `meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_show` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xyz_config`
--

INSERT INTO `xyz_config` (`id`, `group_key`, `title`, `value`, `order`, `meta`, `is_show`) VALUES
(1, 'tools', 'Google', 'https://www.google.com.vn/', 0, '', 1),
(2, 'tools', 'IEEE', 'http://www.ieee.org/index.html', 0, '', 1),
(3, 'youtube', 'Global engineer?', 'RzJRhi-QdRk', 0, '', 1),
(4, 'youtube', 'The first challenge: What are the characteristics of a global engineer?', 'omlb0s2Ag6o', 0, '', 1),
(5, 'banner', 'Global engineering', '8e98a-5e104-globval.jpg', 0, '11', 1),
(7, 'banner', 'What is Global Engineer ?', '7eced-10d4a-globalbanneer.jpg', 0, '12', 1),
(8, 'info', 'Email', 'email', 0, 'contact@engineerxyz.com', 1),
(10, 'info', 'The EngineerXYZ(footer)', 'the_xyz', 0, '<span style="color:#FFFFFF"><span style="font-size:14px">University of Technical Education &nbsp;<br />\nAddress:&nbsp;1 Vo Van Ngan Street, Thu Duc District, Ho Chi Minh City, Viet Nam<br />\nEmail: contact@engineerxyz.com<br />\nHotline: 0974 468 160 (Mr. Vu Son)</span></span>', 0),
(11, 'info', 'What is EngineerXYZ', 'what_is', 0, 'EngineerXYZ is a website for Global Engineer Course at UTE.', 0),
(13, 'sponors', 'UTE', 'b8c4e-logo32.jpg', 1, '', 1),
(14, 'sponors', 'USAID', '04622-usaid.png', 10, 'http://www.usaid.gov/', 1),
(17, 'steps', 'STEP 2 - PROBLEM SOLVING', '88a06-1236274_10151818065711168_145568205_n.jpg', 2, 'To solve the defined problem, learners should be able to search knowledge, solutions and gather all information, and experiences, and resources from local and global networks/sources.<br />\nMembers should work in an international team, communicate in English and other languages, discuss, debate and propose various methods/approaches to solve the defined problems.<br />\nThe professors in this class only work as coaches to support and give guidelines when the teams go wrong.&nbsp;Tools (like management tools, working online in team, task tracking tool, mindmap,...) are listed and introduced to learners/teams.&nbsp;Equipments (measurement devices, meters, so on) are provided when teams need/ask for support.', 1),
(18, 'steps', 'STEP 1 - DEFINING A GLOBAL PROBLEM', '28a95-11158207_s.jpg', 1, 'One of the most critical skills for today engineers is to define problems. Problems are always challenges but looking problems at a positive point of view, problems can be also new potential opportunities. In our Global Engineer Course (GEC), defining problem is the FIRST step in problem solving.<br />\nAt the first days of GEC, there will be a BIG EVENT to meet a lot of people from students, engineers, experts from industry, professors and so on, to discuss/ignite initial ideas, various open problems (see menu Open Problems) from daily life to industrial application, from environment protection, energy, green technology, healthcare, business will be given to learners.', 1),
(19, 'steps', 'STEP 3 - WRITING AN EFFECTIVE PROPOSAL', '6ad14-luu-y-danh-cho-nhan-vien-van-phong.jpg', 3, 'Learners from various fields of study gather in teams to discuss, collect ideas and compose a proposal. Components of a proposal and rubrics for evaluating a proposal will be presented to give learners helpful guidelines.', 1),
(22, 'steps', 'STEP 4 - PRESENTATION AND CONTEST', 'ccdfd-10384285_708587369206760_9150956714430433962_n.jpg', 4, 'Give presentation to the experts from industry, university&#39;s professors and potential investors. Rubrics for best presentation will be set to rate the presentations. Project presentations and activities will be recorded share to community. Teams and investors/donators can can go further on turning ideas to a prototype of the proposed solutions/products. All successful team (good presentation and solution) will be invested by donors. In addition, the total of GEC entrance fee (Each learner pays only 1usd as GEC entrance fee) will be given to the top and second team.', 1),
(26, 'sponors', 'National Instruments', '649ce-ni-logo.png', 10, '', 1),
(27, 'sponors', 'ASU', '6b91f-asu.png', 10, '', 1),
(28, 'sponors', 'Danaher', '8e5a3-danaher-logo.png', 10, '', 1),
(29, 'sponors', 'Cadence', '7a817-cadence.png', 10, '', 1),
(30, 'sponors', 'Siemens', '640d9-siemens.png', 10, '', 1),
(31, 'sponors', 'SHTP', 'd86c3-1709f-logo-shtp-2.jpg', 10, '', 1),
(33, 'sponors', 'Pearson', '8e26a-pearson.png', 10, '', 1),
(34, 'sponors', 'Intel', 'ee48e-intel.png', 10, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xyz_course`
--

CREATE TABLE IF NOT EXISTS `xyz_course` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) NOT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xyz_course`
--

INSERT INTO `xyz_course` (`id`, `title`, `img`, `summary`, `order`) VALUES
(3, 'DAY 1 - BIG EVENT', 'c2868-big-event-logo-v1-cropped.jpg', '<p style="text-align:justify"><strong>8:30-9:30</strong>&nbsp;&nbsp; &nbsp;Registration desk.<br />\n<br />\n<strong>9:30-9:40</strong>&nbsp;&nbsp; &nbsp;Music.<br />\n<br />\n<strong>9:40-9:45</strong>&nbsp;&nbsp; &nbsp;MC introduces VIPs.<br />\n<br />\n<strong>9:45-9:50</strong>&nbsp;&nbsp; &nbsp;Openning speech&nbsp;(Board of Rectors).<br />\n<br />\n<strong>9:50-10:20</strong>&nbsp;&nbsp; &nbsp;Global Engineer Introduction: What, &nbsp;Why, How, When?.<br />\n<br />\n<strong>10:20-10:40</strong>&nbsp;&nbsp; &nbsp;Invited talks.<br />\n<br />\n<strong>10:40-11:15</strong>&nbsp;&nbsp; &nbsp;Tea break for networking.<br />\n<br />\n[Assignment 1 - &nbsp;Find your partners to form a team (male/female, year 1-4, &nbsp;5 members, various fields of study)].<br />\n<br />\n<strong>11:15-13:00</strong>&nbsp;&nbsp; &nbsp;Lunch at classroom.<br />\n<br />\n<strong>13:00-14:00&nbsp;</strong>&nbsp; &nbsp;Introduce your team (5min/each team).<br />\n<br />\n<strong>14:00-16:00&nbsp;</strong>&nbsp; &nbsp;Defining global problems.<br />\nPurposes &ndash; Steps (fill in forms and bring along everyday).<br />\n<br />\n[Assignment 2: Think/Propose/Invent ideas/products/services relating to technical or engineering areas under these requirements (as many as possible): Low-cost, using recycled materials, big impact to society, useful, health care, security, improve human safety, comfort, environment protection, alternative energy, smart systems].<br />\n<br />\nHomework &ndash; Flipped class.<br />\n(Watching additional&nbsp;video clips)</p>\n\n<p style="text-align:justify">&nbsp;</p>\n', 1),
(10, ' DAY 6 - PRESENTATION AND CONTEST', 'bcd9d-original.jpg', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00- 11:15 </strong>&nbsp;&nbsp; &nbsp;- Rubrics.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Evaluation committe.&nbsp;<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Report new findings and share/submit to stakeholders.<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp;&nbsp; &nbsp;LUNCH.<br />\n<br />\n<strong>12:30-16:30&nbsp;</strong>&nbsp; &nbsp;- Rubrics.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Evaluation committe.&nbsp;<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Report new findings and share/submit to stakeholders.</span></span></p>\n', 6),
(6, 'DAY 2 - ENGINEERING COMMUNICATION & DEFINING GLOBAL PROBLEMS', 'ce072-0136044204.jpg', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00-8:15</strong>&nbsp;&nbsp; &nbsp;Gameshow.<br />\n<br />\n<strong>8:15-9:30&nbsp;&nbsp;</strong> &nbsp;Engineering communication.<br />\n<br />\n<strong>9:30-9:45</strong>&nbsp; &nbsp; Tea break.<br />\n<br />\n<strong>9:45-11:15</strong>&nbsp; &nbsp;Engineering communication.<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp; LUNCH.<br />\n<br />\n<strong>12:30-13:40</strong>&nbsp; &nbsp;Engineering Design Process.<br />\n<br />\n<strong>13:40-14:00 &nbsp;&nbsp;</strong>Case study 1 &ndash; Drilling without dust.<br />\n<br />\n<strong>14:00-14:15</strong>&nbsp; &nbsp;Case study 2 &ndash; A haptic device for the blinds.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Health care/mechatronics, business.<br />\n<br />\n<strong>14:15-14:30</strong>&nbsp; &nbsp;Case study 3 &ndash; &nbsp;Waste water treatment.<br />\n<br />\n<strong>14:30-14:45</strong>&nbsp; &nbsp;Case study 4 &ndash; &nbsp;Japan &ndash;Vietnam Cooperation in Mechanical Engineering.<br />\n<br />\n<strong>14:45-15:00&nbsp;</strong>&nbsp; &nbsp;Tea break.<br />\n<br />\n<strong>15:00-15:15</strong> &nbsp; &nbsp;Reviewing introduction videoclips.<br />\n<br />\n<strong>15:15-18:00</strong>&nbsp;&nbsp; &nbsp;BBQ - Defining global problems/issues.</span></span>', 2),
(7, 'DAY 3 - FINDING AND LINKING YOUR PASSION TO YOUR STUDY', 'e05cd-bigstock-find-your-passion-44435605.jpg', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00-9:30 </strong>&nbsp; &nbsp; &nbsp; &nbsp;Finding my real passion.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[Assignment &ndash; Writing your own CV (4 samples)].&nbsp;&nbsp; &nbsp;<br />\n<br />\n<strong>9:30-9:45 &nbsp;</strong> &nbsp; &nbsp; &nbsp;Tea break. &nbsp; &nbsp;<br />\n<br />\n<strong>9:40-11:15 &nbsp;</strong> &nbsp; &nbsp;Linking your passion to real world problems. &nbsp; &nbsp;<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp;&nbsp; &nbsp;LUNCH.<br />\n<br />\n<strong>12:30-14:30&nbsp;</strong>&nbsp; &nbsp;How to write an effective proposal.<br />\n<br />\n<strong>14:30-15:15</strong>&nbsp;&nbsp; &nbsp;Tea break. &nbsp; &nbsp;<br />\n<br />\n<strong>15:15-15:45&nbsp;&nbsp;</strong> &nbsp;Proposal form preparation. &nbsp; &nbsp;<br />\n<br />\n<strong>15:45-18:00&nbsp;</strong>&nbsp; &nbsp;MOVIE TIME.</span></span></p>\n', 3),
(8, 'DAY 4 - PROBLEM SOLVING', '75ca0-becoming-your-own-business-consultant.jpg', '<p><strong>8:00 -10:00</strong>&nbsp;&nbsp; &nbsp;Working in teams with coaches.</p>\n\n<p style="margin-left:120px">-&nbsp;&nbsp; &nbsp;Data collection.<br />\n-&nbsp;&nbsp; &nbsp;Observation (Process, rules, safety, suggestions, etc...).<br />\n-&nbsp;&nbsp; &nbsp;Report.<br />\n-&nbsp;&nbsp; &nbsp;Industry visit (companies) &ndash; Viet Nhat Company, Thai Binh Automation Company (Thu Duc),...<br />\n-&nbsp;&nbsp; &nbsp;Lab visit (GE, Rockwell Automation, Energy, ).</p>\n\n<p><strong>13:30-16:00</strong>&nbsp;&nbsp; &nbsp;Proposal refining.</p>\n', 4),
(9, 'DAY 5 - PRESENTATION AND CONTEST PREPARATION', '92e70-group-presentation.png', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00-9:30</strong>&nbsp;&nbsp; &nbsp;- Presentation instruction.&nbsp;<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Presentation evaluation and rubrics.&nbsp;<br />\n<strong>9:30-9:45</strong> &nbsp; &nbsp; &nbsp;Tea break.<br />\n<br />\n<strong>9:45-11:15</strong> &nbsp; - Presentation instruction.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Presentation evaluation and rubrics.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Proposal finalization.<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp;&nbsp; &nbsp;LUNCH.<br />\n<br />\n<strong>12:30-16:00</strong>&nbsp;&nbsp; &nbsp;Presentation rehearsal.<br />\n<br />\n<strong>16:00-16:30</strong> &nbsp;&nbsp; &nbsp;Wrap-up.</span></span></p>\n', 5);

-- --------------------------------------------------------

--
-- Table structure for table `xyz_course_media`
--

CREATE TABLE IF NOT EXISTS `xyz_course_media` (
  `id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xyz_idea`
--

CREATE TABLE IF NOT EXISTS `xyz_idea` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `accepted` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xyz_idea`
--

INSERT INTO `xyz_idea` (`id`, `name`, `email`, `phone`, `content`, `accepted`) VALUES
(1, 'Nguyễn Khánh', 'nguyenkhank@yahoo.com', '01263535353', 'Thiết kế website nghe nhạc trực tuyến', 1),
(2, 'Tèo', 'teo@yahoo.com', '0836401636', 'Nh&acirc;n vi&ecirc;n tiếp tế', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xyz_problem`
--

CREATE TABLE IF NOT EXISTS `xyz_problem` (
  `id` int(9) NOT NULL,
  `title` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(150) NOT NULL,
  `summary` varchar(1500) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(150) NOT NULL,
  `allow_cm` tinyint(1) NOT NULL DEFAULT '1',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `star` int(1) NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xyz_problem`
--

INSERT INTO `xyz_problem` (`id`, `title`, `status`, `img`, `summary`, `content`, `time`, `slug`, `allow_cm`, `is_show`, `star`, `is_hot`) VALUES
(1, 'PRODUCT COUNTING SYSTEM USING IMAGE PROCESSING', 0, '8e1f6-varnishstripepapershoppingbags1.jpg', 'In our company, we have from 10 to 20 workers to count our final products to put in a plastic bag. Each bag contains 20 products. ', '<div><span style="font-size:20px"><strong>Product counting system using image processing</strong></span><br />\n<span style="font-family:arial,sans,sans-serif">In our company, we have from 10 to 20 workers to count our final products to put in a plastic bag. Each bag contains 20 products. We have to spend a significant amount of budget for paying salary for a group of 10 to 20 people every month. Each month we spend 60.000.000 to 120.000.000VNĐ for this task. We are looking for solutions from researchers (students and professors from universities) to solve this issue.</span><br />\n<br />\n<span style="font-family:arial,sans,sans-serif; font-size:13px">We can invite you to our company and we can discuss this topic. We can donate some budget for the initial ideas.</span></div>\n', '2014-07-11 17:00:00', 'Product-counting', 1, 1, 4, 1),
(3, 'REDUCING ENERGY WASTED, USING RENEWABLE ENERGY', 0, '93ef3-recycling-symbol-and-globe.jpg', 'Presently, Vietnam emissions approximately 150.9 million tons of carbon dioxide annually to the atmosphere each year....', '<span style="font-size:20px"><strong>REDUCING ENERGY&nbsp;WASTED, USING RENEWABLE ENERGY</strong></span><br />\n&nbsp;<br />\nTo engage students in&nbsp;devising innovative solutions in reducing energy&nbsp;wasted, using renewable energy in global design and manufacturing system and machine.<br />\n<strong>The Goal:</strong>&nbsp;Presently, Vietnam emissions approximately 150.9 million tons of carbon dioxide annually to the atmosphere each year. One goal of the UTE is to work with students, faculty and staff to make Vietnam carbon neutral in future.<br />\n<strong>The Challenge:&nbsp;</strong>To develop an implementable plan reducing energy consumption, using renewable energy as well as promoting awareness about smarter eco-friendly practices in machine and equipment.&nbsp; Students must demonstrate how energy can be conserved by creating innovative solutions to common energy expenditures.<br />\n<strong>Expected outcome:</strong> Submitted energy reduction plans selected to be the most innovative, Environmental, Renewable&nbsp;energy, Entrepreneur, Global.<br />\n<strong>Resources:</strong><br />\nUsing green energy<br />\nDesign new machine<br />\nMoving factory to another country', '2014-07-11 17:00:00', 'reducing-energy-wasted-using-renewable-energy', 1, 1, 3, 0),
(4, 'REDUCE TOXIC GAS IN HCM CITY', 0, 'd4eb5-1376678947_reduce-reuse-recycle.jpg', 'Presently, Hochiminh City emissions very high carbon dioxide by car and bus to the atmosphere each year. One goal of you is to design or make a machine to treat or reduce Hochiminh city carbon neutral in future.', '<span style="font-size:20px"><strong>REDUCE TOXIC GAS IN HCM CITY</strong></span><br />\n<strong>Goal:</strong> Presently, Hochiminh City emissions very high carbon dioxide by car and bus to the atmosphere each year. One goal of you is to design or make a machine to treat or reduce Hochiminh city carbon neutral in future.<br />\n<strong>Challenge</strong>: Students must demonstrate how carbon dioxide can be reduced by creating innovative solutions.<br />\n<strong>Expected outcome:</strong> To develop an implementable and submitted carbon dioxide reduction plans with some criteria as Innovative, environmental, Entrepreneur, and Global&nbsp;<br />\n<strong>Resources: </strong><br />\nGas treatment methods<br />\nUsing green car and Bus<br />\nNo car in city<br />\nUsing public traffic&nbsp;', '2014-07-11 17:00:00', 'reduce-toxic-gas-in-hochiminh-city', 1, 1, 4, 1),
(5, 'MAKING NEW DESIGN FOR OUR PRODUCT', 0, 'b084a-new_development_final_logo_by_pie89-d3h6rh8.jpg', 'We wish to have our new design which is compact and wearable for users. We have a R&D team in our company however, we are looking for more ideas from society. Our device can be', '<span style="font-family:arial,sans,sans-serif"><span style="font-size:20px"><strong>Making new design for our product</strong></span><br />\n<br />\nWe wish to have our new design which is compact and wearable for users. We have a R&amp;D team in our company however, we are looking for more ideas from society. Our device can be mounted on glasses frame, watches. Please contact us for more information about this.</span><br />\n<br />\n<strong>How/how much can you support/donate to our team to solve your problem</strong><br />\n<span style="font-family:arial,sans,sans-serif">We can take you to our R&amp;D team and work together. Food will be provided and equipment will be given without any fee.</span>', '2014-07-11 17:00:00', 'MAKING-NEW-DESIGN-FOR-OUR-PRODUCT', 1, 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `xyz_problem_rate`
--

CREATE TABLE IF NOT EXISTS `xyz_problem_rate` (
  `id` int(11) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `star` int(1) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xyz_problem_rate`
--

INSERT INTO `xyz_problem_rate` (`id`, `problem_id`, `star`, `IP`, `time`) VALUES
(1, 1, 4, '14.169.17.205', '2014-07-04 02:00:11'),
(2, 1, 5, '123.21.50.86', '2014-07-04 04:19:08'),
(3, 1, 3, '222.253.84.54', '2014-07-04 14:12:08'),
(4, 1, 4, '115.72.157.228', '2014-07-04 14:22:34'),
(5, 1, 5, '123.20.179.1', '2014-07-06 04:01:55'),
(6, 2, 4, '222.253.84.54', '2014-07-08 16:50:50'),
(7, 3, 4, '222.253.84.54', '2014-07-08 17:08:10'),
(8, 4, 3, '222.253.84.54', '2014-07-08 17:47:33'),
(9, 4, 5, '14.169.17.205', '2014-07-09 02:55:35'),
(10, 3, 5, '123.21.32.14', '2014-07-09 02:55:38'),
(11, 3, 1, '14.169.17.205', '2014-07-09 02:55:54'),
(12, 4, 2, '123.21.32.14', '2014-07-09 02:56:15'),
(13, 3, 1, '123.20.179.1', '2014-07-09 06:42:10'),
(14, 4, 5, '123.20.179.1', '2014-07-09 06:42:31'),
(15, 3, 5, '123.20.157.169', '2014-07-12 13:11:26'),
(16, 1, 5, '123.20.157.169', '2014-07-12 13:13:37'),
(17, 4, 3, '1.53.209.159', '2014-07-14 14:24:09'),
(18, 1, 5, '123.20.177.226', '2014-07-21 06:10:15');

-- --------------------------------------------------------

--
-- Table structure for table `xyz_slider`
--

CREATE TABLE IF NOT EXISTS `xyz_slider` (
  `id` int(9) NOT NULL,
  `img` varchar(150) NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `caption` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xyz_slider`
--

INSERT INTO `xyz_slider` (`id`, `img`, `order`, `is_show`, `caption`) VALUES
(1, 'dba34-banner03.jpg', 5, 1, '&Agrave; ha, pla pla pla'),
(2, '90b9a-1398739761theme-video.png', 5, 1, ''),
(3, 'f2951-2014-06-15_ht_comm_8410.jpg', 10, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `xyz_user`
--

CREATE TABLE IF NOT EXISTS `xyz_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xyz_user`
--

INSERT INTO `xyz_user` (`username`, `password`, `role`) VALUES
('bahai', 'bahai', 9),
('demo', 'tung', 3),
('leo', 'leo', 9),
('vuson', '199016', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f100_article`
--
ALTER TABLE `f100_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f100_category`
--
ALTER TABLE `f100_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f100_config`
--
ALTER TABLE `f100_config`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `f100_distribution`
--
ALTER TABLE `f100_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f100_product`
--
ALTER TABLE `f100_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f100_slider`
--
ALTER TABLE `f100_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f100_user`
--
ALTER TABLE `f100_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it24h_article`
--
ALTER TABLE `it24h_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it24h_category`
--
ALTER TABLE `it24h_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it24h_order`
--
ALTER TABLE `it24h_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it24h_order_detail`
--
ALTER TABLE `it24h_order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it24h_product`
--
ALTER TABLE `it24h_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `it24h_user`
--
ALTER TABLE `it24h_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_category`
--
ALTER TABLE `mb_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_category_content`
--
ALTER TABLE `mb_category_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_option`
--
ALTER TABLE `mb_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_order`
--
ALTER TABLE `mb_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_post`
--
ALTER TABLE `mb_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_product`
--
ALTER TABLE `mb_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_product_content`
--
ALTER TABLE `mb_product_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_user`
--
ALTER TABLE `mb_user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `mb_users`
--
ALTER TABLE `mb_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mb_user_meta`
--
ALTER TABLE `mb_user_meta`
  ADD PRIMARY KEY (`user_id`,`meta_key`);

--
-- Indexes for table `nh_blog`
--
ALTER TABLE `nh_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_category`
--
ALTER TABLE `nh_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_cat_picture`
--
ALTER TABLE `nh_cat_picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_dish`
--
ALTER TABLE `nh_dish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_landscape`
--
ALTER TABLE `nh_landscape`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_message`
--
ALTER TABLE `nh_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_order`
--
ALTER TABLE `nh_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_order_detail`
--
ALTER TABLE `nh_order_detail`
  ADD PRIMARY KEY (`order_id`,`menu_id`);

--
-- Indexes for table `nh_slider`
--
ALTER TABLE `nh_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nh_user`
--
ALTER TABLE `nh_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_article`
--
ALTER TABLE `xyz_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_category`
--
ALTER TABLE `xyz_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_config`
--
ALTER TABLE `xyz_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_course`
--
ALTER TABLE `xyz_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_course_media`
--
ALTER TABLE `xyz_course_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_idea`
--
ALTER TABLE `xyz_idea`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_problem`
--
ALTER TABLE `xyz_problem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_problem_rate`
--
ALTER TABLE `xyz_problem_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_slider`
--
ALTER TABLE `xyz_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xyz_user`
--
ALTER TABLE `xyz_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f100_article`
--
ALTER TABLE `f100_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `f100_category`
--
ALTER TABLE `f100_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `f100_distribution`
--
ALTER TABLE `f100_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `f100_product`
--
ALTER TABLE `f100_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `f100_slider`
--
ALTER TABLE `f100_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `f100_user`
--
ALTER TABLE `f100_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `it24h_article`
--
ALTER TABLE `it24h_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `it24h_category`
--
ALTER TABLE `it24h_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `it24h_order`
--
ALTER TABLE `it24h_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `it24h_order_detail`
--
ALTER TABLE `it24h_order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `it24h_product`
--
ALTER TABLE `it24h_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `it24h_user`
--
ALTER TABLE `it24h_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mb_category`
--
ALTER TABLE `mb_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `mb_category_content`
--
ALTER TABLE `mb_category_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_option`
--
ALTER TABLE `mb_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_order`
--
ALTER TABLE `mb_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_post`
--
ALTER TABLE `mb_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `mb_product`
--
ALTER TABLE `mb_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mb_product_content`
--
ALTER TABLE `mb_product_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mb_user`
--
ALTER TABLE `mb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `mb_users`
--
ALTER TABLE `mb_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nh_blog`
--
ALTER TABLE `nh_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nh_category`
--
ALTER TABLE `nh_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `nh_cat_picture`
--
ALTER TABLE `nh_cat_picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nh_dish`
--
ALTER TABLE `nh_dish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=257;
--
-- AUTO_INCREMENT for table `nh_landscape`
--
ALTER TABLE `nh_landscape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `nh_message`
--
ALTER TABLE `nh_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nh_order`
--
ALTER TABLE `nh_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nh_slider`
--
ALTER TABLE `nh_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nh_user`
--
ALTER TABLE `nh_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `xyz_article`
--
ALTER TABLE `xyz_article`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `xyz_category`
--
ALTER TABLE `xyz_category`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xyz_config`
--
ALTER TABLE `xyz_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `xyz_course`
--
ALTER TABLE `xyz_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `xyz_course_media`
--
ALTER TABLE `xyz_course_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xyz_idea`
--
ALTER TABLE `xyz_idea`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `xyz_problem`
--
ALTER TABLE `xyz_problem`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `xyz_problem_rate`
--
ALTER TABLE `xyz_problem_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `xyz_slider`
--
ALTER TABLE `xyz_slider`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

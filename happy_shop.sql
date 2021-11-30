-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2015 年 01 月 01 日 16:14
-- 伺服器版本： 10.3.29-MariaDB
-- PHP 版本： 7.3.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `happy_shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `advertisement`
--

CREATE TABLE `advertisement` (
  `id` int(11) NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `advertisement`
--

INSERT INTO `advertisement` (`id`, `image`) VALUES
(1, 'https://raw.githubusercontent.com/SiangTu/shoppingApp/thor/img/%E8%8C%B6%E8%91%89%E6%9E%95%E9%A0%AD%E5%B0%81%E9%9D%A2.jpg');

-- --------------------------------------------------------

--
-- 資料表結構 `cart_member_product`
--

CREATE TABLE `cart_member_product` (
  `id` int(11) NOT NULL,
  `member` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `cart_member_product`
--

INSERT INTO `cart_member_product` (`id`, `member`, `product`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, '天然鐵觀音寢具'),
(2, '天然除臭系列'),
(3, '天然鐵觀音車墊系列'),
(4, '天然鐵觀音抱枕系列'),
(5, '天然鐵觀音頭枕系列'),
(6, '天然鐵觀音茶葉系列'),
(7, '天然鐵觀音床墊系列'),
(8, '天然鐵觀音茶香燻香系列'),
(9, '天然鐵觀音茶香片系列'),
(10, '天然鐵觀音頸枕系列');

-- --------------------------------------------------------

--
-- 資料表結構 `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `category_product`
--

INSERT INTO `category_product` (`id`, `category`, `product`) VALUES
(1, 2, 3);

-- --------------------------------------------------------

--
-- 資料表結構 `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` int(11) NOT NULL,
  `birthday` varchar(22) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `buy_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `like_list` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `member`
--

INSERT INTO `member` (`member_id`, `name`, `gender`, `birthday`, `address`, `phone`, `buy_list`, `like_list`) VALUES
(1, '劉振隆', 1, '2000-01-01', '台北市德惠街173號五樓', 25961396, '[111111111,11111111]\r\n', '[22222,222222]'),
(2, '劉超', 1, '1220', '台北市大安區基隆路一號', 259612345, '[111111111,11111112]\r\n', '[22222,222223]'),
(3, '劉欣', 0, '1989', '台北市大安區基隆路2號', 25963455, '[111111111,11111113]\r\n', '[22222,222224]'),
(4, '劉超人', 0, '1989-2-12', '台北市大安區基隆路3號', 259631234, '[111111111,11111114]\r\n', '[22222,2222255]'),
(5, '林雨景', 0, '1990-03-19', '新北市土城區大道一號', 912345567, '[111111111,11111115]\r\n', '[22222,22222556]'),
(6, '李愛', 0, '1990-03-12', '新北市土城區大道4號', 912345678, '[111111111,11111116]\r\n', '[111111111,11111116]\r\n'),
(7, '李意珍', 0, '1990-01-12', '新北市土城區大道5號', 912345678, '[111111111,11111117]\r\n', '[111111111,11111117]\r\n'),
(8, '李麗珍', 0, '1990-01-12', '香港區九龍大道一號', 912345234, '[111111111,11111118]\r\n', '[111111111,11111118]\r\n'),
(9, '劉秋萍', 0, '1980-01-12', '美國洛杉磯34街一號', 912345290, '[111111111,11111119]\r\n', '[111111111,11111118]\r\n'),
(10, '林葦婷', 0, '1980-01-12', '台北林口長庚大道一號', 912342356, '[111111111,1111111912]\r\n', '[111111111,1111111812]\r\n');

-- --------------------------------------------------------

--
-- 資料表結構 `order_list`
--

CREATE TABLE `order_list` (
  `order_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `order_date` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_list` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `order_list`
--

INSERT INTO `order_list` (`order_id`, `price`, `member_id`, `address`, `phone`, `order_date`, `product_list`) VALUES
(1, 980, 1, '台北市德惠街173號五樓', 25961396, '2021-11-10', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}	'),
(2, 4300, 2, '台北市德惠街173號', 912123123, '2021-11-11', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}	'),
(3, 16000, 2, '台北市大安區基隆路2號', 912123123, '2021-11-17', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}'),
(4, 288, 3, '台北市興隆路123號', 91212346, '2021-11-17', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}	'),
(5, 1299, 5, '台北市興隆路1113號', 91212346, '2021-11-17', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}'),
(6, 1299, 5, '台北市興隆路1113號', 91212346, '2021-11-17', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}'),
(7, 3600, 7, '花蓮縣伯朗大道一號', 912123355, '2021-11-17', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}'),
(8, 240000, 8, '台北市信義區101 100號83樓', 912123329, '2022-11-18', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}'),
(9, 3600, 9, '花蓮縣伯朗大道三賀', 912123323, '2021-11-18', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}	'),
(10, 24000, 10, '台北市信義區101 100號87樓', 912123329, '2022-11-18', '{987654321: info [{name: “常香健茶葉枕頭”,price:980, quantity:3,media_info[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/9%E8%8C%B6%E8%91%89%E6%9E%95%E5%B0%BA%E5%AF%B8.jpg”]},{name: “常香健茶香包”, price: 288, quantity:5,media_info:[“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/%E8%8C%B6%E9%A6%99%E5%8C%85.jpg”,“https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%8A%B3%E9%A6%99%E8%A2%8B/IMG_0602.JPG”]}}]}	');

-- --------------------------------------------------------

--
-- 資料表結構 `popular_keyword`
--

CREATE TABLE `popular_keyword` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `popular_keyword`
--

INSERT INTO `popular_keyword` (`id`, `name`, `count`) VALUES
(1, '常相見', 988990),
(2, '常香健鐵觀音床墊雙人加大尺寸', 790534),
(3, '鐵觀音茶葉', 970000),
(4, '弘道實業', 888888),
(5, '常香健鐵觀音茶香包', 567856),
(7, '茶葉', 321234),
(8, '頭枕', 312222),
(9, '頭枕組合', 312222),
(10, '靠枕', 302222),
(11, '弘道', 299999),
(12, '弘道實業', 288888),
(13, '弘道實業有限公司', 277777),
(14, 'KA', 266666),
(15, 'MH', 255555),
(16, 'Meeting Health', 244444),
(17, '茶香健', 233333),
(18, '坐墊', 222222),
(19, '椅墊', 211111),
(20, '烏龍茶', 200000),
(21, '高山鐵觀音茶葉', 198349),
(22, '弘道實業', 888888),
(23, '高級健康', 188888),
(24, '睡眠', 177777),
(25, '失眠', 166666),
(26, '全球最大茶葉寢具製造商', 123456),
(27, '全球第一茶香', 133333),
(28, '全球唯一獨家專利', 122222),
(29, '茶葉國度', 111111),
(30, '茶香世界', 102222),
(31, '1987年創立', 98534),
(32, '全球最大魚池製造商', 97234),
(33, '茶葉用品帝國', 95678),
(34, '除臭天王', 93534),
(35, '除鞋臭無敵強', 93456),
(36, '完美無瑕車縫線', 92578),
(37, '堅持天然無毒', 91234),
(38, '通過SGS認證', 90356),
(39, '通過國家標準CNS認證', 90212),
(40, '無效三個月退費', 90123);

-- --------------------------------------------------------

--
-- 資料表結構 `product_info`
--

CREATE TABLE `product_info` (
  `item_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `detail` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `media_info` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `product_info`
--

INSERT INTO `product_info` (`item_id`, `name`, `price`, `quantity`, `detail`, `vendor_id`, `media_info`, `payment`, `delivery`) VALUES
(1, '常香健枕頭', 980, 999, '{\"說明\":\"枕頭\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]\r\n'),
(2, '常香健雙人加大床墊', 4300, 9999, '{\"說明\"：\"床墊\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E5%BA%8A%E5%A2%8A/%E8%8C%B6%E8%91%89%E5%BA%8A%E5%A2%8A.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(3, '常香健雙人床墊-弘道實業有限公司出品', 3600, 9999, '{\"說明\"：\"床墊\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E5%BA%8A%E5%A2%8A/%E8%8C%B6%E8%91%89%E5%BA%8A%E5%A2%8A.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]\r\n'),
(4, '常香健超強除鞋臭茶香包', 599, 99999999, '{\"說明\"：\"茶香包\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E5%BA%8A%E5%A2%8A/%E8%8C%B6%E8%91%89%E5%BA%8A%E5%A2%8A.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(5, '常香健鐵觀音抱枕', 288, 99999999, '{\"說明\":\"全球獨家茶葉抱枕\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%8A%B1%E6%9E%95/%E5%B0%81%E9%9D%A2.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(6, '常香健鐵觀音頭枕', 288, 99999999, '{\"說明\"：\"全球獨家茶葉頭枕\"}\r\n', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%8A%B1%E6%9E%95/%E5%B0%81%E9%9D%A2.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(7, '常香健鐵觀音頭枕', 288, 99999999, '{\"說明\":\"全球獨家茶葉頭枕\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%8A%B1%E6%9E%95/%E5%B0%81%E9%9D%A2.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(8, '常香健鐵觀音透氣座墊', 1299, 99999999, '{\"說明\":\"坐墊\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%BB%8A%E5%A2%8A/%E8%90%AC%E7%94%A8%E6%A4%85%E5%A2%8A.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(9, '常香健鐵觀音透氣沙發座墊-弘道實業有限公司出品', 1299, 99999999, '{\"說明\":\"坐墊\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%BB%8A%E5%A2%8A/%E8%90%AC%E7%94%A8%E6%A4%85%E5%A2%8A.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]'),
(10, '常香健鐵觀音超值11件車墊高級套裝組-弘道實業有限公司出品', 16000, 99999999, '{\"說明\":\"車墊\"}', 1, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E8%BB%8A%E5%A2%8A/Car1.jpg', '[\"Apple Pay\", \"Line Pay\", \"街口支付\", \"信用卡\"]', '[\"宅配\", \"超商自取\"]');

-- --------------------------------------------------------

--
-- 資料表結構 `vendor_info`
--

CREATE TABLE `vendor_info` (
  `vendor_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `logo` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `contact` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `payment` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 傾印資料表的資料 `vendor_info`
--

INSERT INTO `vendor_info` (`vendor_id`, `name`, `address`, `phone`, `logo`, `contact`, `payment`) VALUES
(1, '弘道實業有限公司', '台北市德惠街173號五樓', 25961396, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E5%B8%B8%E9%A6%99%E5%81%A5logo/3.jpg', '劉振隆', '月結30天'),
(2, '常香健有限公司', '台北市德惠街173號', 25961324, 'https://github.com/scott93723/happy_shop_api/blob/main/%E5%B8%B8%E9%A6%99%E5%81%A5logo/43201722_2264559010456023_549238261738897408_n.jpg?raw=true', '劉天', '月結60天'),
(3, '台灣積體電路有限公司', '高雄發大財一號', 7234567, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '劉德音', '月結60天'),
(4, '長榮航空公司', '桃園機場路一號', 25963455, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '劉冰', '月結60天'),
(5, '中華航空公司', '桃園機場路2號', 325962340, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '劉天仙', '月結60天'),
(6, '台灣三星電子分公司', '桃園亞洲矽谷領航北路二段一號', 352362340, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '戴天', '月結60天'),
(7, '亞洲矽谷寶哥集團', '桃園亞洲矽谷領航北路二段一號', 352362345, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '林雨璟', '月結60天'),
(8, '李愛花藝有限公司', '桃園亞洲矽谷領航南路三段124號', 352362323, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '李明潔', '月結60天'),
(9, '林神經外科診所', '桃園亞洲矽谷領航南路三段14號', 352362325, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '林葦婷', '月結60天'),
(10, '劉家生物科技有限公司', '桃園亞洲矽谷領航南路三段234號', 352362312, 'https://raw.githubusercontent.com/scott93723/happy_shop_api/main/%E6%9E%95%E9%A0%AD/8%E8%8C%B6%E8%91%89%E6%9E%95.jpg', '劉秋萍', '月結60天');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `cart_member_product`
--
ALTER TABLE `cart_member_product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- 資料表索引 `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`order_id`);

--
-- 資料表索引 `popular_keyword`
--
ALTER TABLE `popular_keyword`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`item_id`);

--
-- 資料表索引 `vendor_info`
--
ALTER TABLE `vendor_info`
  ADD PRIMARY KEY (`vendor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

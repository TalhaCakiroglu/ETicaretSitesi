-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 23 Oca 2019, 19:45:06
-- Sunucu sürümü: 10.1.36-MariaDB
-- PHP Sürümü: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `my-project`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`id`, `parentid`, `title`, `keywords`, `description`, `status`) VALUES
(26, 0, 'A sınıfı', ' a sınıfı', 'a sınıfı', 'True'),
(27, 0, 'B sınıfı', 'b sınıfı', 'b sınıfı', 'True'),
(28, 0, 'C sınıfı', 'c sınıfı', 'c sınıfı', 'True'),
(29, 0, 'D sınıfı', 'd sınıfı', 'd sınıfı', 'True'),
(30, 0, 'E sınıfı', 'e sınıfı', 'e sınıfı', 'True'),
(31, 0, 'F sınıfı', 'f sınıfı', 'f sınıfı', 'True'),
(38, 26, 'Peugeut 107', 'pegeut 107', 'peugeut 107', 'True'),
(39, 26, 'Fiat 500', 'fiat 500', 'fiat 500', 'True'),
(40, 27, 'Fiat Albea', 'fiat albea', 'fiat albea', 'True'),
(41, 27, 'Fiat Punto', 'fiat punto', 'fiat punto', 'True'),
(42, 28, 'Ford Focus', 'ford focus', 'ford focus', 'True'),
(43, 28, 'Toyata Corolla', 'toyata corolla', 'toyata corolla', 'True'),
(44, 28, 'Peugeut 206', 'peugeut 206', 'peugeut 206', 'True'),
(45, 29, 'Opel Vectra', 'opel vectra', 'opel vectra', 'True'),
(46, 29, 'Ford Mondeo', 'ford mondeo', 'ford mondeo', 'True'),
(47, 30, 'BMW 5', 'BMW 5', 'BMW 5', 'True'),
(48, 30, 'Audi A6', 'audi a6', 'audi a6', 'True'),
(49, 31, 'Audi A8', 'audi a8', 'audi a8', 'True'),
(50, 31, 'BMW 7', 'bmw 7', 'bmw 7', 'True'),
(51, 0, 'G sınıfı', 'G sınıfı', 'g sınıfı', 'True'),
(52, 51, 'Porsche 911', 'Porsche', 'Porsche 911', 'True'),
(53, 51, 'Audi R8', 'Audi', 'Audi r8', 'True'),
(54, 26, 'Sportif', 'sfjmk', 'sfödşbl', 'True'),
(55, 31, 'Sportifxx', '123', '123', 'False');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`product_id`, `image`, `id`) VALUES
(8, 'b03ed2dfcf4d468b153d3a3498687330.jpeg', 4),
(8, '53c869903c5691d401bbe50baddf534c.jpeg', 5),
(1, '5e41d32200791ef395893f5cadf80768.jpeg', 7),
(1, 'ce615e14cb932de52bc33315351283e4.jpeg', 8),
(1, '199900ff383073c06f3e91902e3f318a.jpeg', 9),
(1, 'dd066d3eac7ba7c5e3ac53268b6ff411.jpeg', 10),
(1, '6123cb49e9428c256b4df37600869a06.jpeg', 11),
(9, '58725338a2e6a7c48a6f203d41a412f8.jpeg', 12),
(9, '079a39d8edbf19c76a75bbe06269c397.jpeg', 14),
(9, 'e2e31f178bc89537abb1765f39408b6c.jpeg', 15),
(9, '91df90f1fae85cf13ef953d750624363.jpeg', 16),
(9, 'b98780c07e485dfd8c13a00eb22f4191.jpeg', 18),
(5, '32c739dc6ec9d1a535e43a57210cd623.jpeg', 19),
(5, 'b35fc7e79e97785938109109cb6eb0e5.jpeg', 21),
(5, '1a30bce11a9e2f583f02d59324c2ef3e.jpeg', 22),
(5, 'da2cdf24b8fa3a6c1a9f8fa14993ff9d.jpeg', 23),
(5, '4f23bb223bec61e3f90302f7b56bee59.jpeg', 24),
(3, '6829274b1116295282af03a667156ebf.jpeg', 25),
(3, '9130661c8db1a7e0a0ea697c4d166ab6.jpeg', 26),
(3, 'c30e9c7e1139e67b0f3d6451ee25ddb9.jpeg', 27),
(3, '11c5e2c61e3e74d90d5cdc1e024aa476.jpeg', 28),
(3, '03ac212ea4001021a551078b4a9a23ee.jpeg', 29),
(3, '208d41b8bd51c0c3aa8333162e8be649.jpeg', 30),
(10, 'c9e0db599c6e1799ff29ab98e861d10c.jpeg', 31),
(10, '56b777933afcbb03452031314556d8d8.jpeg', 32),
(10, '4a9a48aebf2259f0bd534eddcc180776.jpeg', 33),
(10, 'b6ef94c320fc20fd44613d118f8d4bbe.jpeg', 35),
(10, 'a19a3b7f1326a4c8026ac5157f87e2d6.jpeg', 36),
(10, '2fe3dd6cc80bbba40b6d069dd5a25f5c.jpeg', 37),
(11, '0b1ec25c817436a8953176fe81d0054b.jpeg', 38),
(11, 'adf9dd44ff96a2f12549954bff4f35fd.jpeg', 39),
(11, '7da9a459ea119db6ccd25661700b5151.jpeg', 40),
(11, '691f246a17d24410a90331fcd8c16488.jpeg', 41),
(11, '5f2d052de495804077319d77a5d36a1e.jpeg', 42),
(18, 'e2105a448a2ba1eaff1bee623e5c1988.jpeg', 43),
(18, '08b97b3ad8ae38746e6710d53d2ea6fa.jpeg', 44),
(18, '59fa26af63279b0e58a6a3b09789c9be.jpeg', 45),
(18, '0a66e6b095b105bcc943b274dc3e4cb9.jpeg', 46),
(18, '48b225f230267058735429c738f974d2.jpeg', 47),
(18, '81089c0dfa77772654f5c6e85fd4a516.jpeg', 48),
(12, '003adc405a80e21d28f277c8ecc1314b.jpeg', 49),
(12, '60aec67f28e1c0181a13baade5e13fba.jpeg', 50),
(12, 'adf6f42179f68f5a0d9795cdba73c6a6.jpeg', 51),
(12, 'a7e68f7eb110bdc3f05fe6615eb6331f.jpeg', 52),
(12, '994eb870bcc496f6f5915046c56ff7e0.jpeg', 53),
(12, '4df4f85660f5d7951e415fb400fe0b57.jpeg', 54),
(35, '1645a330a8802ef4e6ca82cd42f2fc94.jpeg', 55),
(35, '9116c0ef2115bcf71265be2037e94235.jpeg', 56),
(35, 'f62d6426954785f197577e5413ee0b4a.jpeg', 57),
(35, 'd24452d789cd11900222dcf7abe49d9f.jpeg', 58),
(35, '038d3758d441b27024f145d76b5edc56.jpeg', 59),
(36, 'b4a7d3594afc5fa00ab61580cc272040.jpeg', 60),
(36, 'ddab114ca27bd495fa1e32ba15f7dbb5.jpeg', 61),
(36, '834fbcc21d2fc43c88436aca6197361c.jpeg', 62),
(36, '8835d74381188edff9464fc76b6fe097.jpeg', 63),
(36, '3f6f9da14b33348941f8d08d08d79968.jpeg', 64),
(16, 'b97b4341013486ee96a21550be96b79d.jpeg', 65),
(16, 'bb6a018876d22087b10dce5be5919043.jpeg', 66),
(16, '84504727c343639b6993be86c7d0efa6.jpeg', 68),
(16, 'd2620f237c4aa31ef9350ed06f0e8f1c.jpeg', 69),
(16, 'f6bd89dad0e22f87530ca9d5d37bf5c9.jpeg', 70),
(4, 'e693008bc799db5b930a56b4ae857727.jpeg', 71),
(4, '42dd5bfa5ec27d1e427a2e9e2a233778.jpeg', 73),
(4, '98799253812ca6673912a8a262f80586.jpeg', 74),
(4, 'ed864e35f728d424ddec7627e133ea11.jpeg', 75),
(2, '549677612371b3ed2f2e868021476dcd.jpeg', 76),
(2, 'bca4483772907a65d5b68c71714b61c6.jpeg', 77),
(2, '12219b7017537a44a3b5e805b5d86131.jpeg', 78),
(2, '4fdada480e9ebc9e5976057b3995a5ce.jpeg', 79),
(2, '21ffd85ed5a08770ed9e7e3751a0497b.jpeg', 80),
(4, '9f606cc1ac66ddb59e0c0b2f69ff27bd.jpeg', 81),
(7, '32dff686970facdeaa56e1b33bffce08.jpeg', 82),
(7, '770b99889bba6e482e7ff9939d3183e7.jpeg', 83),
(7, '1d516902ec7de3c7d93166da6b7b5f9c.jpeg', 84),
(7, '2bc244b05c44e8ae91edab61774fe687.jpeg', 85),
(7, '22b6062fc1757fa382fd2d907e583f1a.jpeg', 86),
(14, '2431ff6b733f4d76387ca9689c4988bb.jpeg', 87),
(14, '050245de0dde191161443bac273cfad8.jpeg', 88),
(14, 'ca6e88567044fda580ea4b3f25b4d3c6.jpeg', 89),
(14, '768fab6ad78ab3d8cebf0ea53a00b4a8.jpeg', 90),
(14, '3522d6925dc41d696f05cda41921b47a.jpeg', 91),
(21, '97545750a0432dc1c83dd0511d0cfeac.jpeg', 92),
(21, 'c35f81e801ccfd559396a67d9ae86e01.jpeg', 93),
(21, '33344d3f534c6f48ccf3e89e101d0512.jpeg', 94),
(21, '5fca8c79d1b010422773fae622edc396.jpeg', 95),
(21, 'a310f945ed5d570defccffe7f19ecbe7.jpeg', 96),
(25, 'd053be50f643e250b3848f33ce8ca76a.jpeg', 97),
(25, '3400137709932e4a673451bdf124f970.jpeg', 98),
(25, 'bd5a7bce36500689c9e4dafd481e3a6c.jpeg', 99),
(25, 'd1655e1eeab3dc8ba6d2f58a3033ed32.jpeg', 100),
(25, '27bbe0fae4965e1cd5f6ea44f8262042.jpeg', 101),
(28, 'e0f2c9d543ea3fa27b9512de2c25e852.jpeg', 102),
(28, 'f02f5accd6e7c8c8c407800432353b78.jpeg', 103),
(28, '2f016d1d78ab3f54e97280bebb96e691.jpeg', 104),
(28, 'db5f80fe90b8472838073e8dd7207c61.jpeg', 105),
(28, '5a448b3232d424de0ceb9a5572cb05e8.jpeg', 106),
(32, '4f717c105b88e6d86aafe6d7bab1add2.jpeg', 107),
(32, 'e8d15795f09ecc8c7f5932feff89dc21.jpeg', 108),
(32, '09f7ad2487aed1f5287e015f08f1f314.jpeg', 109),
(37, '3ecb99e4a99e64d68c5ac30e008aba31.jpeg', 110),
(37, '047e229014e06a8edc46369114716298.jpeg', 111),
(37, '51e764fc9e80e88487f3a96b389fe3e6.jpeg', 112),
(39, '1acfb9913ca5525aebb8171155bb7fc9.jpeg', 113),
(39, '8aefb5e34665afd2f4fe1078e005c257.jpeg', 114),
(39, '5ac151e85938264ccf12fe8537ba8988.jpeg', 115),
(39, '5d5e7df206d291002ad03210735fcc07.jpeg', 116),
(41, '5df8c7fae4f06e1c716e8c747845cd55.jpeg', 117);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `subject`, `message`, `comment`, `status`) VALUES
(1, 'Ali Can', 'deneme@gmail.com', 'test mesajı', NULL, 'aaa', 'Okundu'),
(2, 'mert', 'mert@gmail.com', 'mert', 'mert', 'babaaa', 'Okundu'),
(3, 'ali', 'ali@gmail.com', 'alii', 'ali', '', 'new'),
(4, 'veli', 'veli@gmail.com', 'veli', 'velii', '', 'new');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181228124848'),
('20190112181029'),
('20190112182609');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipinfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `orders`
--

INSERT INTO `orders` (`id`, `userid`, `amount`, `name`, `address`, `city`, `phone`, `shipinfo`, `status`, `note`, `updated_at`, `created_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-14 09:13:23', '2019-01-13 10:14:15'),
(2, 1, 1148, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', NULL, 'New', NULL, '2019-01-13 10:27:39', '2019-01-13 10:27:39'),
(3, 1, 1148, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', ' Sayın müşterimiz siparişiniz Onaylandı ', 'Accepted', ' Sİpariş onaylandı ', '2019-01-14 10:20:39', '2019-01-13 10:29:53'),
(4, 1, 1148, 'Ali Can', 'Cumhuriyet Caddesi 688 sokak taksim 13', 'Ankara', '2352345234', '  Aras KARGO \r\nTakip Numarasi :16549864986419', 'Completed', '  Temamdır haa   ', '2019-01-13 21:04:19', '2019-01-13 17:52:06'),
(5, 1, 924, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', ' maşallahh', 'New', ' ', '2019-01-13 20:51:08', '2019-01-13 18:17:51'),
(6, 1, 924, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', '  kusura bakmayın lütfen', 'Canceled', '  Ürünler stokta kalmamış', '2019-01-13 21:12:02', '2019-01-13 18:18:54'),
(7, 1, 924, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', NULL, 'New', NULL, '2019-01-13 18:19:15', '2019-01-13 18:19:15'),
(8, 1, 924, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', NULL, 'New', NULL, '2019-01-13 18:21:43', '2019-01-13 18:21:43'),
(9, 1, 26, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', ' ', 'İnshiping', ' ', '2019-01-14 09:26:48', '2019-01-14 09:23:11'),
(10, 1, 0, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', ' ', 'Canceled', ' Kusura bakmayın stok boş', '2019-01-14 09:25:13', '2019-01-14 09:23:52'),
(11, 1, 2469000, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', ' asd', 'Accepted', ' sda', '2019-01-22 05:33:43', '2019-01-17 08:10:17'),
(12, 1, 2400000, 'Mert Faik Deli', 'Yüzünci Yıl', 'İzmir', '0232587958', NULL, 'New', NULL, '2019-01-17 08:28:21', '2019-01-17 08:28:21'),
(13, 1, 827000, 'Kasim Deli', 'kent Mahallesi', 'Bingol', '6554654853', NULL, 'New', NULL, '2019-01-17 08:53:16', '2019-01-17 08:53:16'),
(14, 2, 2355000, 'Ayşe Kara', 'Hürriyet Caddesi', 'İstanbul', '3453454234', '   ', 'İnshiping', ' sayın musteri ürün kargoda', '2019-01-17 09:24:05', '2019-01-17 09:18:14'),
(15, 2, 900000, 'Ayşe Kara', 'Hürriyet Caddesi', 'İstanbul', '3453454234', NULL, 'New', NULL, '2019-01-17 09:25:04', '2019-01-17 09:25:04'),
(16, 1, 450000, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', NULL, 'New', NULL, '2019-01-17 09:40:30', '2019-01-17 09:40:30'),
(17, 2, 150000, 'Ayşe Kara', 'Hürriyet Caddesi', 'İstanbul', '3453454234', ' ', 'Canceled', ' asrgthyju', '2019-01-17 10:03:11', '2019-01-17 09:43:30'),
(18, 1, 172000, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', ' asd', 'Completed', ' asd', '2019-01-22 05:37:42', '2019-01-17 09:44:37'),
(19, 1, 100000, 'Ali Can', 'Cumhuriyet Caddesi', 'Ankara', '2352345234', NULL, 'New', NULL, '2019-01-17 10:04:25', '2019-01-17 10:04:25'),
(20, 2, 1800000, 'Ayşe Çelik', 'Hürriyet Caddesi', 'Denizli', '3453454234', NULL, 'New', NULL, '2019-01-17 10:05:59', '2019-01-17 10:05:59'),
(21, 14, 172000, 'Mahmut Tuncer', 'Sakine Mahallesi', 'Urfa', '23548568564', ' ', 'Accepted', ' Sipariş Onaylanmıştır', '2019-01-17 14:49:40', '2019-01-17 14:48:14'),
(22, 2, 150000, 'Ayşe Karacaaalarrr', 'Hürriyet Caddesi', 'İstanbul', '3453454234', ' sipariş alındı ve kargoya göndeerildi sevgili müstericikk', 'İnshiping', 'YOLLANDI', '2019-01-22 07:12:51', '2019-01-22 07:11:12'),
(23, 2, 450000, 'Ayşe Kara', 'Hürriyet Caddesi', 'İstanbul', '3453454234', NULL, 'New', NULL, '2019-01-22 07:15:09', '2019-01-22 07:15:09'),
(24, 2, 2631000, 'Ayşe Kara', 'Hürriyet Caddesi Gediz Mahallesi no:3 Sokak:13', 'İstanbul', '3453454234', ' Sayın Ayşe Kara  vermiş oldugunuz Araba Siparişleriniz aldik ve ekledik', 'Accepted', 'Kabul edildi ', '2019-01-22 07:41:20', '2019-01-22 07:39:46'),
(25, 2, 5350000, 'Ayşe Kara', 'Hürriyet Caddesi', 'İstanbul', '3453454234', ' AOPEFARGETPJPJOP', 'Accepted', 'OPJRGAETTWOHJP ', '2019-01-22 08:02:54', '2019-01-22 08:01:59'),
(26, 2, 80000, 'Ayşe Kara', 'Hürriyet Caddesi', 'İstanbul', '3453454234', NULL, 'New', NULL, '2019-01-22 08:10:00', '2019-01-22 08:10:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `order_detail`
--

INSERT INTO `order_detail` (`id`, `orderid`, `userid`, `productid`, `price`, `quantity`, `amount`, `name`, `status`) VALUES
(1, 2, 1, 1, 10, 4, 40, 'Ford Focus 1', 'Ordered'),
(2, 2, 1, 2, 2, 5, 10, 'Ford Focus 2', 'Ordered'),
(3, 2, 1, 3, 3, 6, 18, 'Fiat Albea', 'Ordered'),
(4, 2, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(5, 2, 1, 5, 1, 2, 2, 'Fiat 500', 'Ordered'),
(6, 2, 1, 6, 35, 1, 35, 'Fiat Albea', 'Ordered'),
(7, 2, 1, 7, 50, 4, 200, 'Fiat Punto', 'Ordered'),
(8, 2, 1, 8, 33, 8, 264, 'Ford Focus', 'Ordered'),
(9, 2, 1, 9, 54, 7, 378, 'Toyata Corolla', 'Ordered'),
(10, 2, 1, 10, 21, 9, 189, 'Peugeut 206', 'Ordered'),
(11, 3, 1, 1, 10, 4, 40, 'Ford Focus 1', 'Ordered'),
(12, 3, 1, 2, 2, 5, 10, 'Ford Focus 2', 'Ordered'),
(13, 3, 1, 3, 3, 6, 18, 'Fiat Albea', 'Ordered'),
(14, 3, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(15, 3, 1, 5, 1, 2, 2, 'Fiat 500', 'Ordered'),
(16, 3, 1, 6, 35, 1, 35, 'Fiat Albea', 'Ordered'),
(17, 3, 1, 7, 50, 4, 200, 'Fiat Punto', 'Ordered'),
(18, 3, 1, 8, 33, 8, 264, 'Ford Focus', 'Ordered'),
(19, 3, 1, 9, 54, 7, 378, 'Toyata Corolla', 'Ordered'),
(20, 3, 1, 10, 21, 9, 189, 'Peugeut 206', 'Ordered'),
(21, 4, 1, 1, 10, 4, 40, 'Ford Focus 1', 'Ordered'),
(22, 4, 1, 2, 2, 5, 10, 'Ford Focus 2', 'Ordered'),
(23, 4, 1, 3, 3, 6, 18, 'Fiat Albea', 'Ordered'),
(24, 4, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(25, 4, 1, 5, 1, 2, 2, 'Fiat 500', 'Ordered'),
(26, 4, 1, 6, 35, 1, 35, 'Fiat Albea', 'Ordered'),
(27, 4, 1, 7, 50, 4, 200, 'Fiat Punto', 'Ordered'),
(28, 4, 1, 8, 33, 8, 264, 'Ford Focus', 'Ordered'),
(29, 4, 1, 9, 54, 7, 378, 'Toyata Corolla', 'Ordered'),
(30, 4, 1, 10, 21, 9, 189, 'Peugeut 206', 'Ordered'),
(31, 5, 1, 1, 10, 4, 40, 'Ford Focus 1', 'Ordered'),
(32, 5, 1, 2, 2, 5, 10, 'Ford Focus 2', 'Ordered'),
(33, 5, 1, 3, 3, 6, 18, 'Fiat Albea', 'Ordered'),
(34, 5, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(35, 5, 1, 5, 1, 2, 2, 'Fiat 500', 'Ordered'),
(36, 5, 1, 7, 50, 4, 200, 'Fiat Punto', 'Ordered'),
(37, 5, 1, 8, 33, 8, 264, 'Ford Focus', 'Ordered'),
(38, 5, 1, 9, 54, 7, 378, 'Toyata Corolla', 'Ordered'),
(39, 7, 1, 1, 10, 4, 40, 'Ford Focus 1', 'Ordered'),
(40, 7, 1, 2, 2, 5, 10, 'Ford Focus 2', 'Ordered'),
(41, 7, 1, 3, 3, 6, 18, 'Fiat Albea', 'Ordered'),
(42, 7, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(43, 7, 1, 5, 1, 2, 2, 'Fiat 500', 'Ordered'),
(44, 7, 1, 7, 50, 4, 200, 'Fiat Punto', 'Ordered'),
(45, 7, 1, 8, 33, 8, 264, 'Ford Focus', 'Ordered'),
(46, 7, 1, 9, 54, 7, 378, 'Toyata Corolla', 'Ordered'),
(47, 8, 1, 1, 10, 4, 40, 'Ford Focus 1', 'Ordered'),
(48, 8, 1, 2, 2, 5, 10, 'Ford Focus 2', 'Ordered'),
(49, 8, 1, 3, 3, 6, 18, 'Fiat Albea', 'Ordered'),
(50, 8, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(51, 8, 1, 5, 1, 2, 2, 'Fiat 500', 'Ordered'),
(52, 8, 1, 7, 50, 4, 200, 'Fiat Punto', 'Ordered'),
(53, 8, 1, 8, 33, 8, 264, 'Ford Focus', 'Ordered'),
(54, 8, 1, 9, 54, 7, 378, 'Toyata Corolla', 'Ordered'),
(55, 8, 1, 10, 21, NULL, NULL, 'Peugeut 206', 'Ordered'),
(56, 9, 1, 2, 2, 4, 8, 'Ford Focus 2', 'Ordered'),
(57, 9, 1, 3, 3, 2, 6, 'Fiat Albea', 'Ordered'),
(58, 9, 1, 4, 4, 3, 12, 'Peugout 107', 'Ordered'),
(59, 11, 1, 1, 33000, 5, 165000, 'Ford Focus 1', 'Ordered'),
(60, 11, 1, 2, 450000, 4, 1800000, 'Ford Focus 2', 'Ordered'),
(61, 11, 1, 3, 50000, 3, 150000, 'Fiat Albea', 'Ordered'),
(62, 11, 1, 13, 140000, 2, 280000, 'BMW 5', 'Ordered'),
(63, 11, 1, 5, 74000, 1, 74000, 'Fiat 500', 'Ordered'),
(64, 12, 1, 6, 800000, 3, 2400000, 'Fiat Albea', 'Ordered'),
(65, 13, 1, 12, 605000, 1, 605000, 'Ford Mondeo Gri', 'Ordered'),
(66, 13, 1, 5, 74000, 3, 222000, 'Fiat 500', 'Ordered'),
(67, 14, 2, 9, 785000, 3, 2355000, 'Toyata Corolla', 'Ordered'),
(68, 15, 2, 2, 450000, 2, 900000, 'Ford Focus 2', 'Ordered'),
(69, 16, 1, 2, 450000, 1, 450000, 'Ford Focus 2', 'Ordered'),
(70, 17, 2, 3, 50000, 3, 150000, 'Fiat Albea', 'Ordered'),
(71, 18, 1, 7, 43000, 4, 172000, 'Fiat Punto', 'Ordered'),
(72, 19, 1, 3, 50000, 2, 100000, 'Fiat Albea', 'Ordered'),
(73, 20, 2, 2, 450000, 4, 1800000, 'Ford Focus 2', 'Ordered'),
(74, 21, 14, 7, 43000, 4, 172000, 'Fiat Punto', 'Ordered'),
(75, 22, 2, 3, 50000, 3, 150000, 'Fiat Albea', 'Ordered'),
(76, 23, 2, 2, 450000, 1, 450000, 'Ford Focus 2', 'Ordered'),
(77, 24, 2, 3, 50000, 2, 100000, 'Fiat Albea', 'Ordered'),
(78, 24, 2, 6, 800000, 3, 2400000, 'Fiat Albea', 'Ordered'),
(79, 24, 2, 15, 9000, 6, 54000, 'Audi A8', 'Ordered'),
(80, 24, 2, 17, 11000, 7, 77000, 'BMW7 Beyaz', 'Ordered'),
(81, 25, 2, 2, 450000, 3, 1350000, 'Ford Focus 2', 'Ordered'),
(82, 25, 2, 6, 800000, 5, 4000000, 'Fiat Albea', 'Ordered'),
(83, 26, 2, 4, 80000, 1, 80000, 'Peugout 107', 'Ordered');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `marka_id` int(11) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `pprice` double DEFAULT NULL,
  `sprice` double DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `detail` longtext,
  `image` varchar(150) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`id`, `title`, `keywords`, `description`, `type`, `marka_id`, `model`, `amount`, `pprice`, `sprice`, `min`, `detail`, `image`, `category_id`, `user_id`, `status`) VALUES
(1, 'Ford Focus 1', 'focus 1', 'focus 1', NULL, NULL, NULL, 20, 45678, 33000, NULL, '<p><i><strong>guzelk arabadır ha</strong></i></p>', 'focus1.jpg', 42, NULL, 'True'),
(2, 'Ford Focus 2', 'focus 2', 'focus 2', NULL, NULL, NULL, 40, NULL, 450000, NULL, '<h2>n11.com</h2><ul><li><a href=\"https://www.n11.com/genel/hakkimizda-65207\"><strong>Hakkımızda</strong></a></li><li><a href=\"https://www.n11.com/genel/odeme-koruma-sistemi-61386\">Ödeme Koruma Sistemi</a></li><li><a href=\"https://www.n11.com/genel/insan-kaynaklari-96250\">İnsan Kaynakları</a></li><li><a href=\"https://ipr.n11.com/ipr/main.xhtml\">Marka Koruma Merkezi</a></li><li><a href=\"https://www.n11.com/destek-merkezi\">Yardım</a></li><li><a href=\"https://www.n11.com/genel/iletisim-61307\">İletişim</a></li></ul><p>Hakkımızda</p><h2>n11.com</h2><p>Doğuş Planet, e-ticaret sektöründe faaliyet göstermek üzere, Doğuş Grubu ile Güney Kore’nin en büyük gruplarından SK Group’un ortaklığında Haziran 2012’de kuruldu.</p><p>Doğuş Planet, SK Group’un teknoloji ve inovasyon konusundaki tecrübesini Doğuş Grubu’nun bilgi birikimi, bölgesel tecrübesi ve gücü ile birleştirmektedir.</p><p>Bu güçlü ortaklık çerçevesinde, Doğuş Planet e-ticaret yatırımı olarak, binlerce marka ve mağazayı milyonlarca müşteriyle buluşturan açık pazar platformu alışverişin uğurlu adresi “n11.com”u açtı.</p><p>n11.com; elektronikten tekstile, mutfak gereçlerinden Türkiye’nin nadide el sanatlarına kadar farklı ihtiyaç ve zevklere hitap eden milyonlarca ürün, alışveriş yaptıkça kazandıran yapısı ile üyelerine yeni bir alışveriş deneyimi sunuyor. n11.com, müşteriler tarafında güven ve kolaylık, mağazalar tarafında ise işbirliği ve e-ticareti geliştirme odaklı bir yaklaşım izlemektedir.</p><p>Siz de alışverişin uğurlu dünyasına katılabilir, milyonlarca ürün ve binlerce mağazanın olduğu n11.com’da, avantaj dolu alışverişin keyfini çıkartabilirsiniz.</p><p>Uğurlu alışverişler</p>', 'focus2.jpg', 42, NULL, 'True'),
(3, 'Fiat Albea', 'fiat  albea', 'fiat albea', NULL, NULL, 2000, 30, NULL, 50000, NULL, NULL, 'test.jpg', 40, NULL, 'True'),
(4, 'Peugout 107', 'peugout 107', 'Peugout 107', NULL, NULL, 2014, 60, NULL, 80000, NULL, NULL, '893a85d5d170091a68f177f69468eb5e.jpeg', 38, NULL, 'True'),
(5, 'Fiat 500', 'fiat 500', 'fiat 500', NULL, NULL, 1999, 80, NULL, 74000, NULL, NULL, 'fiat500.jpg', 39, NULL, 'True'),
(6, 'Fiat Albea', 'fiat albea', 'fiat albea', NULL, NULL, 2005, 70, NULL, 800000, NULL, NULL, '9c00bd1d767498b38954e42c40c1ad3c.jpeg', 40, NULL, 'True'),
(7, 'Fiat Punto', 'fiat punto', 'fiat punto', NULL, NULL, 2013, 22, NULL, 43000, NULL, NULL, 'fiatpunto.jpg', 41, NULL, 'True'),
(8, 'Ford Focus', 'ford focus', 'ford focus', NULL, NULL, 2009, 33, NULL, 550000, NULL, NULL, 'fordfocus.png', 42, NULL, 'True'),
(9, 'Toyata Corolla', 'toyata corolla', 'toyata corolla', NULL, NULL, 2014, 66, NULL, 785000, NULL, NULL, 'toyatacorolla.jpg', 43, NULL, 'True'),
(10, 'Peugeut 206', 'peugeut 206', 'peugeut 206', NULL, NULL, 2017, 77, NULL, 61500, NULL, NULL, '1ef9d34fba673cbf3af112242899e9db.jpeg', 44, NULL, 'True'),
(11, 'Opel Vectra', 'opel vectra', 'opel vectra', NULL, NULL, 2018, 88, NULL, 453000, NULL, NULL, 'e4ab03ef881da14cd828f23ea15a2c73.jpeg', 45, NULL, 'True'),
(12, 'Ford Mondeo ', 'ford mondeo beyaz', 'ford mondeo beyaz', NULL, NULL, 2012, 111, NULL, 605000, NULL, NULL, '25c6d51ae11d29b3d7871bf4d50237e8.jpeg', 46, NULL, 'True'),
(13, 'BMW 5', 'bmw 5', 'bmw 5', NULL, NULL, 2019, 26, NULL, 140000, NULL, NULL, 'bmw5.jpg', 45, NULL, 'True'),
(14, 'Audi A6', 'audi a6', 'audi a6', NULL, NULL, 2014, 72, NULL, 60000, NULL, NULL, 'audia6.jpg', 48, NULL, 'True'),
(15, 'Audi A8', 'audi a8', 'audi a8', NULL, NULL, 2018, 45, NULL, 9000, NULL, NULL, 'audia8.jpg', 49, NULL, 'True'),
(16, 'BMW 7 Siyah', 'bmw 7 siyah', 'bmw 7', NULL, NULL, 2017, 63, NULL, 61000, NULL, NULL, 'bmw7.jpg', 50, NULL, 'True'),
(17, 'BMW7 Beyaz', 'bmw 7 beyaz', 'bmw 7 beyaz', NULL, NULL, 2017, 78, NULL, 11000, NULL, NULL, 'bmw7beyaz.jpg', 50, NULL, 'True'),
(18, 'Ford Mondeo Beyaz', 'ford mondeo beyaz', 'ford mondeo beyaz', NULL, NULL, 2014, 65, NULL, 57000000, NULL, NULL, 'fordmondeobeyaz.jpg', 46, NULL, 'True'),
(19, 'Ford Focus 3', 'ford focus 3', 'ford focus 3', NULL, NULL, 2017, 80, NULL, 5500000, NULL, NULL, 'ford focus3.jpg', 42, NULL, 'True'),
(20, 'Ford Focus 4', 'ford focus 4', 'ford focus 4', NULL, NULL, 2018, 90, NULL, 8800000, NULL, NULL, 'ford focus4.jpg', 42, NULL, 'True'),
(21, 'Toyota Corolla 1', 'toyota corolla 1', 'toyota corolla 1', NULL, NULL, 2015, 87, NULL, 4700000, NULL, NULL, 'toyatacorolla1.jpg', 43, NULL, 'True'),
(22, 'Toyota Corolla 2', 'toyota corolla 2 ', 'toyatacorolla 2', NULL, NULL, 2019, 99, NULL, 7500000, NULL, NULL, 'toyatacorolla2.jpg', 43, NULL, 'True'),
(23, 'Toyata Corolla3', 'toyatacorolla 3', 'toyatacorolla 3', NULL, NULL, 2015, 74, NULL, 7400000, NULL, NULL, 'toyatacorolla3.jpg', 43, NULL, 'True'),
(24, 'Toyata Corolla6', 'Toyata Corolla6', 'toyatacorolla 6', NULL, NULL, 2014, 88, NULL, 880000, NULL, NULL, 'toyatacorolla6.jpg', 43, NULL, 'True'),
(25, 'Peugeut107', 'peugeut1071', 'peugeut1071', NULL, NULL, 2016, 16, NULL, 7400000, NULL, NULL, 'peugeut1073.jpg', 38, NULL, 'True'),
(26, 'Peugeut107', 'peugeut1071', 'peugeut1071', NULL, NULL, 2016, 17, NULL, 1700000, NULL, NULL, 'peugeut1072.jpg', 38, NULL, 'True'),
(27, 'Peugeut107', 'peugeut1071', 'peugeut1071', NULL, NULL, 2016, 40, NULL, 4600000, NULL, NULL, 'peugeut1074.jpg', 38, NULL, 'True'),
(28, 'Peugeut107', 'peugeut107', 'peugeut107', NULL, NULL, 2015, 46, NULL, 1800000, NULL, NULL, 'peugeut1075.jpg', 38, NULL, 'True'),
(29, 'Fiat 500 ', 'fiat5001', 'fiat5001', NULL, NULL, 2019, 46, NULL, 190000, NULL, NULL, 'fiat5001.jpg', 39, NULL, 'True'),
(30, 'Fiat 500', 'fiat5001', 'fiat5001', NULL, NULL, 2018, 84, NULL, 1300000, NULL, NULL, 'fiat5002.jpg', 39, NULL, 'True'),
(31, 'Fiat 500', 'fiat500', 'fiat500', NULL, NULL, 2017, 80, NULL, 450000, NULL, NULL, 'fiat5003.jpg', 39, NULL, 'True'),
(32, 'Fiat 500', 'fiat500', 'fiat500', NULL, NULL, 2016, 70, NULL, 700000, NULL, NULL, 'fiat5004.jpg', 39, NULL, 'True'),
(33, 'Fiat 500', 'fiat500', 'fiat5001', NULL, NULL, 2015, 60, NULL, 60000, NULL, NULL, 'fiat5005.jpg', 29, NULL, 'True'),
(34, 'Fiat500', 'fiat500', 'fiat500', NULL, NULL, 2014, 79, NULL, 500000, NULL, NULL, 'peugeut2064.jpg', 39, NULL, 'True'),
(35, 'Porsche 911', 'Porrche', 'porsche', NULL, NULL, 2019, 40, NULL, 99000000, NULL, NULL, 'peugeut2064.jpg', 51, NULL, 'True'),
(36, 'Audi R8', 'audi', 'audi', NULL, NULL, 2016, 74, NULL, 6800000, NULL, NULL, 'audir8.jpg', 49, NULL, 'True'),
(37, 'Skoda', 'kk', 'dd', NULL, NULL, NULL, 30, 4500000, 2, NULL, '<p>sad</p>', NULL, NULL, NULL, NULL),
(38, 'Ford Focus 4', 'kk', 'dd', NULL, NULL, NULL, 12, 4500000, 2, NULL, '32', '651331cfae134de89b787d5b555f9d70.jpeg', NULL, NULL, NULL),
(39, 'Nissan Kaşgayi', 'asfd', 'dsfdb', NULL, NULL, NULL, 456, 123, 455, NULL, '<p>d&lt;fsvdbgf</p>', 'deb2c32f777fd9e1199086477a2ce84b.jpeg', NULL, NULL, NULL),
(41, 'Ford Focus 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>&nbsp;</p>', '62b16d99e0920b96d61535033b567bf6.jpeg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `smtpserver` varchar(100) DEFAULT NULL,
  `smtpemail` varchar(50) DEFAULT NULL,
  `smptppass` varchar(20) DEFAULT NULL,
  `smtpport` int(11) DEFAULT NULL,
  `aboutus` text,
  `contact` varchar(255) DEFAULT NULL,
  `referances` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `setting`
--

INSERT INTO `setting` (`id`, `title`, `description`, `keywords`, `company`, `address`, `fax`, `phone`, `email`, `smtpserver`, `smtpemail`, `smptppass`, `smtpport`, `aboutus`, `contact`, `referances`, `status`) VALUES
(6, 'Test', 'Türkiyenini heryerine onl,ne her türlü otomobil satışı yapılan site', 'Kamyon,taksi,traktör,motosiklet', 'Kahtalı Miçe Otomobilcilik Şirketi', 'cumhuriyet', '28259655', NULL, NULL, 'smtp.gmail.com', 'deneme@gmail.com.com', '1234369999', 587, '<p>1998 yılında \"En yeni iletişim ve bilgisayar teknolojilerini kullanarak müşterilerine dünya standartlarında çözümler sunmak\" ilkesiyle yola çıkan isimtescil.net, geçen 16 yıllık süreçte Dünya ve Türkiye’ye, en büyük domain ve hosting firmalarından biri</p>', '<p>1998 yılında \"En yeni iletişim ve bilgisayar teknolojilerini kullanarak müşterilerine dünya standartlarında çözümler sunmak\" ilkesiyle yola çıkan isimtescil.net, geçen 16 yıllık süreçte Dünya ve Türkiye’ye, en büyük domain ve hosting firmalarından biri', '<figure class=\"image\"><img src=\"http://www.hedefepsikoloji.com/yonetim/images/referans/ref6_14_.jpg\" alt=\"\"></figure><p><a href=\"http://www.hedefepsikoloji.com/referanslar#\">DOĞUŞ</a></p>', 'False');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shopcart`
--

CREATE TABLE `shopcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `shopcart`
--

INSERT INTO `shopcart` (`id`, `userid`, `productid`, `quantity`) VALUES
(27, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`, `status`, `address`, `phone`, `city`) VALUES
(1, 'ali@mynet.com', 'ROLE_ADMIN', '$2y$12$DyBNWZ9IRZuy9y/HP/ZrqOwXgZNHIOZ0ZcAaDUqKVPkqhyQiWiJ2m', 'Ali Can', 'True', 'Cumhuriyet Caddesi', '2352345234', 'Ankara'),
(2, 'ayse@mynet.com', 'ROLE_USER', '$2y$12$DyBNWZ9IRZuy9y/HP/ZrqOwXgZNHIOZ0ZcAaDUqKVPkqhyQiWiJ2m', 'Ayşe Kara', 'True', 'Hürriyet Caddesi', '3453454234', 'İstanbul'),
(10, 'arzu@gmail.com', 'ROLE_USER', '$2y$10$dDY24GmNu0EivCB2/4QFBOvh0w5QnoGy17UCTf14l4DfroV7DlJfe', 'Arzu Çiçek', 'True', 'Yüzüncü yıl mahallesi', '23548568564', 'Aydın'),
(11, 'kasim@gmail.com', 'ROLE_USER', '$2y$10$ntzubJSPcTNlSpyc/A8wZ.p0MfxVswt8l9q59ulmaLWUmIp7m7js6', 'Kasım Deli', 'True', NULL, NULL, NULL),
(14, 'avb@mynet.com', 'ROLE_USER', '$2y$10$jUioy9UYb3uO/QzRCW5Y6OO/gUX9Zjxn76ihkoouY.1KBtU8BO9ua', 'msa', 'True', 'svfab', '23548568564', 'Balıkesir'),
(19, 'fatih@gmail.com', 'ROLE_USER', '$2y$10$gltTIrndxSaR/uu8lCxRu.VWDfkTFQHp0VcRH73rZmQJfTj2.2gnG', 'fatih', 'True', NULL, NULL, NULL),
(20, 'fatmax@gmail.com', 'ROLE_USER', '$2y$10$o0glNkHm7h/KuHHBkUG/UuJMOQuVHlztDFhQ0vJCynCtVsIpkR7pK', 'Fatma Göral', 'True', 'ewrf', '23548568564', 'Aksaray'),
(21, 'mertfaikdeli@gmail.com', 'ROLE_ADMIN', '$2y$10$4P/mkaRvfNg/Q6o78yOLq.JqnGiRqCp2lCorKDeshSm1fZbg6Lkra', 'Mert Faik Deli', 'True', 'Kars', '23548568564', 'Bartın'),
(22, 'kosovali@gmail.com', 'ROLE_USER', '$2y$10$eHBTbwjRpVyM2ReH42u8feuZ36S32DC.tU2B2f54OmSUEOVYA4ZQi', 'Kosovali', 'True', 'Gediz Mahallesi', '23548568564', 'İzmir'),
(23, 'mertfaikdeli@agmail.com', 'ROLE_ADMIN', '$2y$10$GdjAAI.diJUW9PBzJ/6reuhSDwtQ16rGbsWu7SEq5Ba9HrZui/Qcm', 'aasasd', 'True', NULL, NULL, NULL),
(25, 'recep@gmail.com', 'ROLE_USER', '$2y$10$gFnLU10rr9puk3NJkDlfqOFeyD7/76njm0..umK7AbBwmoY7CI7d2', 'recep', 'True', NULL, NULL, NULL),
(26, 'kamil@gmail.com', 'ROLE_USER', '$2y$10$KdS4f1quJSUac/Ilh4rtHOJfx9OdxHhF8sG3.rnO2Jt8rRE12K3xW', 'kamil deli', 'True', NULL, NULL, NULL);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Tablo için indeksler `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shopcart`
--
ALTER TABLE `shopcart`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- Tablo için AUTO_INCREMENT değeri `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Tablo için AUTO_INCREMENT değeri `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Tablo için AUTO_INCREMENT değeri `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `shopcart`
--
ALTER TABLE `shopcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

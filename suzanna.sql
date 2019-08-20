-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Agu 2019 pada 11.51
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suzanna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about_image`
--

CREATE TABLE `about_image` (
  `id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(25) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `address_1` varchar(100) NOT NULL,
  `address_2` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `prov` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lat` decimal(15,7) NOT NULL,
  `lng` decimal(15,7) NOT NULL,
  `link` text,
  `type` varchar(100) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `category_id`, `nama`, `address_1`, `address_2`, `telp`, `fax`, `image`, `prov`, `kota`, `email`, `lat`, `lng`, `link`, `type`, `sort`) VALUES
(1, 0, 'Suzanna Baby Shop Kertajaya', 'Jl. Kertajaya No. 163-165 Surabaya 60286,', 'Indonesia', '(6231) 503-7884', '', '', 'Jawa Timur', 'Surabaya', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(2, 0, 'Suzanna Baby Shop HR Muhammad', 'Jl. Hr. Muhammad No. 59 Surabaya 60189, ', 'Indonesia', '(6231) 739-2001', '', '', 'Jawa Timur', 'Surabaya', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(3, 0, 'Suzanna Baby Shop Kelapa Gading', 'Jl. Kelapa Gading Boulevard K4/7-10', 'Jakarta Utara 14240, Indonesia', '(6221) 453-0840', '', '', 'DKI Jakarta', 'Jakarta', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(4, 0, 'Suzanna Baby Shop Pondok Indah', 'Jl. Metro Pondok Indah No. 33', 'Jakarta Selatan 12310, Indonesia', '(6221) 7590-0826', '', '', 'DKI Jakarta', 'Jakarta', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(5, 0, 'Suzanna Baby Shop Serpong', 'Ruko Golden Boulevard 1 Blok N1-15 Jl. Pahlawan Seribu,', 'Serpong Tangerang 15322, Indonesia', '(6221) 5316-1301', '', '', 'DKI Jakarta', 'Jakarta', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(6, 0, 'Suzanna Baby Shop Puri', 'Ruko Puri Britania T7/B30-35, Puri Indah ', 'Jakarta Barat 11610, Indonesia', '(6221) 5830-4816', '', '', 'DKI Jakarta', 'Jakarta', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(7, 0, 'Suzanna Baby Shop Lembong', 'Jl. Lembong No. 12-18', 'Bandung 40111, Indonesia', '(6222) 423-7511', '', '', 'Jawa Barat', 'Bandung', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(8, 0, 'Suzanna Baby Shop Medan', 'Jl. Sultan Iskandar Muda No. 25-27', 'Medan 20154, Indonesia', '(6261) 450-3533', '', '', 'Sumatera', 'Medan', '', '0.0000000', '0.0000000', '', 'dealer', 100),
(9, 0, 'Suzanna Baby Shop Palembang', 'Jl. Diponegoro No. 19', 'Palembang 30135, Indonesia', '(62711) 573-2001', '', '', 'Sumatera', 'Palembang', '', '0.0000000', '0.0000000', '', 'dealer', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_big` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id`, `title`, `image`, `image_big`, `sort`) VALUES
(1, 'Creative Communication Division', '9f4df-Banner Career_CC.jpg', 'f451f-PopUp_Banner CC.jpg', 1),
(4, 'Public Relation & Sales', '60b6c-Banner Career_PR.jpg', '60b6c-PopUp_Banner PR.jpg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `province` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `postal_code` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `city`
--

INSERT INTO `city` (`id`, `province_id`, `province`, `type`, `city_name`, `postal_code`) VALUES
(1, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat', '23600'),
(2, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Barat Daya', '23700'),
(3, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Besar', '23000'),
(4, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Jaya', '23600'),
(5, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Selatan', '23700'),
(6, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Singkil', '24700'),
(7, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tamiang', '24400'),
(8, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tengah', '24500'),
(9, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Tenggara', '24600'),
(10, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Timur', '24400'),
(11, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Aceh Utara', '24300'),
(12, 32, 'Sumatera Barat', 'Kabupaten', 'Agam', '26000'),
(13, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Alor', '85800'),
(14, 19, 'Maluku', 'Kota', 'Ambon', '97000'),
(15, 34, 'Sumatera Utara', 'Kabupaten', 'Asahan', '21000'),
(16, 24, 'Papua', 'Kabupaten', 'Asmat', '99700'),
(17, 1, 'Bali', 'Kabupaten', 'Badung', '80361'),
(18, 13, 'Kalimantan Selatan', 'Kabupaten', 'Balangan', '71400'),
(19, 15, 'Kalimantan Timur', 'Kota', 'Balikpapan', '76100'),
(20, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Banda Aceh', '23000'),
(21, 18, 'Lampung', 'Kota', 'Bandar Lampung', '35000'),
(22, 9, 'Jawa Barat', 'Kabupaten', 'Bandung', '40000'),
(23, 9, 'Jawa Barat', 'Kota', 'Bandung', '40000'),
(24, 9, 'Jawa Barat', 'Kabupaten', 'Bandung Barat', '40000'),
(25, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai', '94791'),
(26, 29, 'Sulawesi Tengah', 'Kabupaten', 'Banggai Kepulauan', '94791'),
(27, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka', '33200'),
(28, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Barat', '33300'),
(29, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Selatan', '33700'),
(30, 2, 'Bangka Belitung', 'Kabupaten', 'Bangka Tengah', '33600'),
(31, 11, 'Jawa Timur', 'Kabupaten', 'Bangkalan', '69100'),
(32, 1, 'Bali', 'Kabupaten', 'Bangli', '80600'),
(33, 13, 'Kalimantan Selatan', 'Kabupaten', 'Banjar', '70600'),
(34, 9, 'Jawa Barat', 'Kota', 'Banjar', '46300'),
(35, 13, 'Kalimantan Selatan', 'Kota', 'Banjarbaru', '70700'),
(36, 13, 'Kalimantan Selatan', 'Kota', 'Banjarmasin', '70000'),
(37, 10, 'Jawa Tengah', 'Kabupaten', 'Banjarnegara', '53400'),
(38, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bantaeng', '92400'),
(39, 5, 'DI Yogyakarta', 'Kabupaten', 'Bantul', '55700'),
(40, 33, 'Sumatera Selatan', 'Kabupaten', 'Banyuasin', '30758'),
(41, 10, 'Jawa Tengah', 'Kabupaten', 'Banyumas', '53100'),
(42, 11, 'Jawa Timur', 'Kabupaten', 'Banyuwangi', '68400'),
(43, 13, 'Kalimantan Selatan', 'Kabupaten', 'Barito Kuala', '70500'),
(44, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Selatan', '73700'),
(45, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Timur', '73600'),
(46, 14, 'Kalimantan Tengah', 'Kabupaten', 'Barito Utara', '73800'),
(47, 28, 'Sulawesi Selatan', 'Kabupaten', 'Barru', '90700'),
(48, 17, 'Kepulauan Riau', 'Kota', 'Batam', '29400'),
(49, 10, 'Jawa Tengah', 'Kabupaten', 'Batang', '51200'),
(50, 8, 'Jambi', 'Kabupaten', 'Batang Hari', '36600'),
(51, 11, 'Jawa Timur', 'Kota', 'Batu', '65311'),
(52, 34, 'Sumatera Utara', 'Kabupaten', 'Batu Bara', '21200'),
(53, 30, 'Sulawesi Tenggara', 'Kota', 'Bau-Bau', '93700'),
(54, 9, 'Jawa Barat', 'Kabupaten', 'Bekasi', '17000'),
(55, 9, 'Jawa Barat', 'Kota', 'Bekasi', '17000'),
(56, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung', '33400'),
(57, 2, 'Bangka Belitung', 'Kabupaten', 'Belitung Timur', '33400'),
(58, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Belu', '85700'),
(59, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bener Meriah', '24500'),
(60, 26, 'Riau', 'Kabupaten', 'Bengkalis', '28700'),
(61, 12, 'Kalimantan Barat', 'Kabupaten', 'Bengkayang', '79200'),
(62, 4, 'Bengkulu', 'Kota', 'Bengkulu', '38000'),
(63, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Selatan', '38500'),
(64, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Tengah', '38000'),
(65, 4, 'Bengkulu', 'Kabupaten', 'Bengkulu Utara', '38600'),
(66, 15, 'Kalimantan Timur', 'Kabupaten', 'Berau', '77300'),
(67, 24, 'Papua', 'Kabupaten', 'Biak Numfor', '98100'),
(68, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Bima', '84100'),
(69, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Bima', '84100'),
(70, 34, 'Sumatera Utara', 'Kota', 'Binjai', '20700'),
(71, 17, 'Kepulauan Riau', 'Kabupaten', 'Bintan', '29100'),
(72, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Bireuen', '24200'),
(73, 31, 'Sulawesi Utara', 'Kota', 'Bitung', '95500'),
(74, 11, 'Jawa Timur', 'Kabupaten', 'Blitar', '66100'),
(75, 11, 'Jawa Timur', 'Kota', 'Blitar', '66100'),
(76, 10, 'Jawa Tengah', 'Kabupaten', 'Blora', '58200'),
(77, 7, 'Gorontalo', 'Kabupaten', 'Boalemo', '96200'),
(78, 9, 'Jawa Barat', 'Kabupaten', 'Bogor', '16000'),
(79, 9, 'Jawa Barat', 'Kota', 'Bogor', '16000'),
(80, 11, 'Jawa Timur', 'Kabupaten', 'Bojonegoro', '62100'),
(81, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow (Bolmong)', '95700'),
(82, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Selatan', '95700'),
(83, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Timur', '95700'),
(84, 31, 'Sulawesi Utara', 'Kabupaten', 'Bolaang Mongondow Utara', '95700'),
(85, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Bombana', '93700'),
(86, 11, 'Jawa Timur', 'Kabupaten', 'Bondowoso', '68200'),
(87, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bone', '92552'),
(88, 7, 'Gorontalo', 'Kabupaten', 'Bone Bolango', '96184'),
(89, 15, 'Kalimantan Timur', 'Kota', 'Bontang', '75300'),
(90, 24, 'Papua', 'Kabupaten', 'Boven Digoel', '99600'),
(91, 10, 'Jawa Tengah', 'Kabupaten', 'Boyolali', '57300'),
(92, 10, 'Jawa Tengah', 'Kabupaten', 'Brebes', '52200'),
(93, 32, 'Sumatera Barat', 'Kota', 'Bukittinggi', '26100'),
(94, 1, 'Bali', 'Kabupaten', 'Buleleng', '81100'),
(95, 28, 'Sulawesi Selatan', 'Kabupaten', 'Bulukumba', '92500'),
(96, 16, 'Kalimantan Utara', 'Kabupaten', 'Bulungan (Bulongan)', '77200'),
(97, 8, 'Jambi', 'Kabupaten', 'Bungo', '37200'),
(98, 29, 'Sulawesi Tengah', 'Kabupaten', 'Buol', '94500'),
(99, 19, 'Maluku', 'Kabupaten', 'Buru', '97500'),
(100, 19, 'Maluku', 'Kabupaten', 'Buru Selatan', '97500'),
(101, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton', '93700'),
(102, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Buton Utara', '93600'),
(103, 9, 'Jawa Barat', 'Kabupaten', 'Ciamis', '46200'),
(104, 9, 'Jawa Barat', 'Kabupaten', 'Cianjur', '43200'),
(105, 10, 'Jawa Tengah', 'Kabupaten', 'Cilacap', '53200'),
(106, 3, 'Banten', 'Kota', 'Cilegon', '42400'),
(107, 9, 'Jawa Barat', 'Kota', 'Cimahi', '40500'),
(108, 9, 'Jawa Barat', 'Kabupaten', 'Cirebon', '45100'),
(109, 9, 'Jawa Barat', 'Kota', 'Cirebon', '45100'),
(110, 34, 'Sumatera Utara', 'Kabupaten', 'Dairi', '22200'),
(111, 24, 'Papua', 'Kabupaten', 'Deiyai (Deliyai)', '98700'),
(112, 34, 'Sumatera Utara', 'Kabupaten', 'Deli Serdang', '20500'),
(113, 10, 'Jawa Tengah', 'Kabupaten', 'Demak', '59500'),
(114, 1, 'Bali', 'Kota', 'Denpasar', '80000'),
(115, 9, 'Jawa Barat', 'Kota', 'Depok', '16400'),
(116, 32, 'Sumatera Barat', 'Kabupaten', 'Dharmasraya', '27600'),
(117, 24, 'Papua', 'Kabupaten', 'Dogiyai', '98800'),
(118, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Dompu', '84200'),
(119, 29, 'Sulawesi Tengah', 'Kabupaten', 'Donggala', '94351'),
(120, 26, 'Riau', 'Kota', 'Dumai', '28800'),
(121, 33, 'Sumatera Selatan', 'Kabupaten', 'Empat Lawang', '31500'),
(122, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ende', '86300'),
(123, 28, 'Sulawesi Selatan', 'Kabupaten', 'Enrekang', '91700'),
(124, 25, 'Papua Barat', 'Kabupaten', 'Fakfak', '98600'),
(125, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Flores Timur', '86200'),
(126, 9, 'Jawa Barat', 'Kabupaten', 'Garut', '44100'),
(127, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Gayo Lues', '24600'),
(128, 1, 'Bali', 'Kabupaten', 'Gianyar', '80500'),
(129, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo', '96100'),
(130, 7, 'Gorontalo', 'Kota', 'Gorontalo', '96100'),
(131, 7, 'Gorontalo', 'Kabupaten', 'Gorontalo Utara', '96100'),
(132, 28, 'Sulawesi Selatan', 'Kabupaten', 'Gowa', '92100'),
(133, 11, 'Jawa Timur', 'Kabupaten', 'Gresik', '61100'),
(134, 10, 'Jawa Tengah', 'Kabupaten', 'Grobogan', '58152'),
(135, 5, 'DI Yogyakarta', 'Kabupaten', 'Gunung Kidul', '55800'),
(136, 14, 'Kalimantan Tengah', 'Kabupaten', 'Gunung Mas', '74500'),
(137, 34, 'Sumatera Utara', 'Kota', 'Gunungsitoli', '22800'),
(138, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Barat', '97700'),
(139, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Selatan', '97700'),
(140, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Tengah', '97800'),
(141, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Timur', '97800'),
(142, 20, 'Maluku Utara', 'Kabupaten', 'Halmahera Utara', '97700'),
(143, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Selatan', '71200'),
(144, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Tengah', '71300'),
(145, 13, 'Kalimantan Selatan', 'Kabupaten', 'Hulu Sungai Utara', '71400'),
(146, 34, 'Sumatera Utara', 'Kabupaten', 'Humbang Hasundutan', '22400'),
(147, 26, 'Riau', 'Kabupaten', 'Indragiri Hilir', '29200'),
(148, 26, 'Riau', 'Kabupaten', 'Indragiri Hulu', '29300'),
(149, 9, 'Jawa Barat', 'Kabupaten', 'Indramayu', '45200'),
(150, 24, 'Papua', 'Kabupaten', 'Intan Jaya', '98700'),
(151, 6, 'DKI Jakarta', 'Kota', 'Jakarta Barat', '11000'),
(152, 6, 'DKI Jakarta', 'Kota', 'Jakarta Pusat', '10000'),
(153, 6, 'DKI Jakarta', 'Kota', 'Jakarta Selatan', '12000'),
(154, 6, 'DKI Jakarta', 'Kota', 'Jakarta Timur', '13000'),
(155, 6, 'DKI Jakarta', 'Kota', 'Jakarta Utara', '14000'),
(156, 8, 'Jambi', 'Kota', 'Jambi', '36000'),
(157, 24, 'Papua', 'Kabupaten', 'Jayapura', '99000'),
(158, 24, 'Papua', 'Kota', 'Jayapura', '99000'),
(159, 24, 'Papua', 'Kabupaten', 'Jayawijaya', '99500'),
(160, 11, 'Jawa Timur', 'Kabupaten', 'Jember', '68100'),
(161, 1, 'Bali', 'Kabupaten', 'Jembrana', '82200'),
(162, 28, 'Sulawesi Selatan', 'Kabupaten', 'Jeneponto', '92300'),
(163, 10, 'Jawa Tengah', 'Kabupaten', 'Jepara', '59400'),
(164, 11, 'Jawa Timur', 'Kabupaten', 'Jombang', '61400'),
(165, 25, 'Papua Barat', 'Kabupaten', 'Kaimana', '98654'),
(166, 26, 'Riau', 'Kabupaten', 'Kampar', '28400'),
(167, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kapuas', '73500'),
(168, 12, 'Kalimantan Barat', 'Kabupaten', 'Kapuas Hulu', '78700'),
(169, 10, 'Jawa Tengah', 'Kabupaten', 'Karanganyar', '57700'),
(170, 1, 'Bali', 'Kabupaten', 'Karangasem', '80800'),
(171, 9, 'Jawa Barat', 'Kabupaten', 'Karawang', '41300'),
(172, 17, 'Kepulauan Riau', 'Kabupaten', 'Karimun', '29600'),
(173, 34, 'Sumatera Utara', 'Kabupaten', 'Karo', '22100'),
(174, 14, 'Kalimantan Tengah', 'Kabupaten', 'Katingan', '74400'),
(175, 4, 'Bengkulu', 'Kabupaten', 'Kaur', '38000'),
(176, 12, 'Kalimantan Barat', 'Kabupaten', 'Kayong Utara', '78800'),
(177, 10, 'Jawa Tengah', 'Kabupaten', 'Kebumen', '54300'),
(178, 11, 'Jawa Timur', 'Kabupaten', 'Kediri', '64100'),
(179, 11, 'Jawa Timur', 'Kota', 'Kediri', '64100'),
(180, 24, 'Papua', 'Kabupaten', 'Keerom', '99000'),
(181, 10, 'Jawa Tengah', 'Kabupaten', 'Kendal', '51300'),
(182, 30, 'Sulawesi Tenggara', 'Kota', 'Kendari', '93000'),
(183, 4, 'Bengkulu', 'Kabupaten', 'Kepahiang', '39172'),
(184, 17, 'Kepulauan Riau', 'Kabupaten', 'Kepulauan Anambas', '29700'),
(185, 19, 'Maluku', 'Kabupaten', 'Kepulauan Aru', '97600'),
(186, 32, 'Sumatera Barat', 'Kabupaten', 'Kepulauan Mentawai', '25391'),
(187, 26, 'Riau', 'Kabupaten', 'Kepulauan Meranti', '28700'),
(188, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Sangihe', '95800'),
(189, 6, 'DKI Jakarta', 'Kabupaten', 'Kepulauan Seribu', '14530'),
(190, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Siau Tagulandang Biaro (Sitaro)', '95800'),
(191, 20, 'Maluku Utara', 'Kabupaten', 'Kepulauan Sula', '97700'),
(192, 31, 'Sulawesi Utara', 'Kabupaten', 'Kepulauan Talaud', '95800'),
(193, 24, 'Papua', 'Kabupaten', 'Kepulauan Yapen (Yapen Waropen)', '98200'),
(194, 8, 'Jambi', 'Kabupaten', 'Kerinci', '37100'),
(195, 12, 'Kalimantan Barat', 'Kabupaten', 'Ketapang', '78800'),
(196, 10, 'Jawa Tengah', 'Kabupaten', 'Klaten', '57400'),
(197, 1, 'Bali', 'Kabupaten', 'Klungkung', '80700'),
(198, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka', '93500'),
(199, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Kolaka Utara', '93500'),
(200, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe', '93400'),
(201, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Selatan', '93000'),
(202, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Konawe Utara', '93000'),
(203, 13, 'Kalimantan Selatan', 'Kabupaten', 'Kotabaru', '72100'),
(204, 31, 'Sulawesi Utara', 'Kota', 'Kotamobagu', '95700'),
(205, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Barat', '74100'),
(206, 14, 'Kalimantan Tengah', 'Kabupaten', 'Kotawaringin Timur', '74300'),
(207, 26, 'Riau', 'Kabupaten', 'Kuantan Singingi', '29500'),
(208, 12, 'Kalimantan Barat', 'Kabupaten', 'Kubu Raya', '78000'),
(209, 10, 'Jawa Tengah', 'Kabupaten', 'Kudus', '59300'),
(210, 5, 'DI Yogyakarta', 'Kabupaten', 'Kulon Progo', '55600'),
(211, 9, 'Jawa Barat', 'Kabupaten', 'Kuningan', '45500'),
(212, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Kupang', '85000'),
(213, 23, 'Nusa Tenggara Timur (NTT)', 'Kota', 'Kupang', '85000'),
(214, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Barat', '75000'),
(215, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Kartanegara', '75500'),
(216, 15, 'Kalimantan Timur', 'Kabupaten', 'Kutai Timur', '75556'),
(217, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu', '21400'),
(218, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Selatan', '21400'),
(219, 34, 'Sumatera Utara', 'Kabupaten', 'Labuhan Batu Utara', '21400'),
(220, 33, 'Sumatera Selatan', 'Kabupaten', 'Lahat', '31400'),
(221, 14, 'Kalimantan Tengah', 'Kabupaten', 'Lamandau', '74100'),
(222, 11, 'Jawa Timur', 'Kabupaten', 'Lamongan', '62200'),
(223, 18, 'Lampung', 'Kabupaten', 'Lampung Barat', '35000'),
(224, 18, 'Lampung', 'Kabupaten', 'Lampung Selatan', '35000'),
(225, 18, 'Lampung', 'Kabupaten', 'Lampung Tengah', '34100'),
(226, 18, 'Lampung', 'Kabupaten', 'Lampung Timur', '34100'),
(227, 18, 'Lampung', 'Kabupaten', 'Lampung Utara', '34500'),
(228, 12, 'Kalimantan Barat', 'Kabupaten', 'Landak', '79357'),
(229, 34, 'Sumatera Utara', 'Kabupaten', 'Langkat', '20800'),
(230, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Langsa', '24400'),
(231, 24, 'Papua', 'Kabupaten', 'Lanny Jaya', '99500'),
(232, 3, 'Banten', 'Kabupaten', 'Lebak', '42300'),
(233, 4, 'Bengkulu', 'Kabupaten', 'Lebong', '39200'),
(234, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Lembata', '86600'),
(235, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Lhokseumawe', '24300'),
(236, 32, 'Sumatera Barat', 'Kabupaten', 'Lima Puluh Koto/Kota', '26200'),
(237, 17, 'Kepulauan Riau', 'Kabupaten', 'Lingga', '29800'),
(238, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Barat', '83363'),
(239, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Tengah', '83500'),
(240, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Timur', '83600'),
(241, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Lombok Utara', '83300'),
(242, 33, 'Sumatera Selatan', 'Kota', 'Lubuk Linggau', '31600'),
(243, 11, 'Jawa Timur', 'Kabupaten', 'Lumajang', '67300'),
(244, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu', '91900'),
(245, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Timur', '91900'),
(246, 28, 'Sulawesi Selatan', 'Kabupaten', 'Luwu Utara', '91900'),
(247, 11, 'Jawa Timur', 'Kabupaten', 'Madiun', '63100'),
(248, 11, 'Jawa Timur', 'Kota', 'Madiun', '63100'),
(249, 10, 'Jawa Tengah', 'Kabupaten', 'Magelang', '56100'),
(250, 10, 'Jawa Tengah', 'Kota', 'Magelang', '56100'),
(251, 11, 'Jawa Timur', 'Kabupaten', 'Magetan', '63300'),
(252, 9, 'Jawa Barat', 'Kabupaten', 'Majalengka', '45400'),
(253, 27, 'Sulawesi Barat', 'Kabupaten', 'Majene', '91400'),
(254, 28, 'Sulawesi Selatan', 'Kota', 'Makassar', '90000'),
(255, 11, 'Jawa Timur', 'Kabupaten', 'Malang', '65100'),
(256, 11, 'Jawa Timur', 'Kota', 'Malang', '65100'),
(257, 16, 'Kalimantan Utara', 'Kabupaten', 'Malinau', '77154'),
(258, 19, 'Maluku', 'Kabupaten', 'Maluku Barat Daya', '97000'),
(259, 19, 'Maluku', 'Kabupaten', 'Maluku Tengah', '97500'),
(260, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara', '97600'),
(261, 19, 'Maluku', 'Kabupaten', 'Maluku Tenggara Barat', '97600'),
(262, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamasa', '91363'),
(263, 24, 'Papua', 'Kabupaten', 'Mamberamo Raya', '99500'),
(264, 24, 'Papua', 'Kabupaten', 'Mamberamo Tengah', '99500'),
(265, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju', '91500'),
(266, 27, 'Sulawesi Barat', 'Kabupaten', 'Mamuju Utara', '91500'),
(267, 31, 'Sulawesi Utara', 'Kota', 'Manado', '95000'),
(268, 34, 'Sumatera Utara', 'Kabupaten', 'Mandailing Natal', '22919'),
(269, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai', '86500'),
(270, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Barat', '86753'),
(271, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Manggarai Timur', '86500'),
(272, 25, 'Papua Barat', 'Kabupaten', 'Manokwari', '98300'),
(273, 25, 'Papua Barat', 'Kabupaten', 'Manokwari Selatan', '98300'),
(274, 24, 'Papua', 'Kabupaten', 'Mappi', '99000'),
(275, 28, 'Sulawesi Selatan', 'Kabupaten', 'Maros', '90500'),
(276, 22, 'Nusa Tenggara Barat (NTB)', 'Kota', 'Mataram', '83000'),
(277, 25, 'Papua Barat', 'Kabupaten', 'Maybrat', '99000'),
(278, 34, 'Sumatera Utara', 'Kota', 'Medan', '20000'),
(279, 12, 'Kalimantan Barat', 'Kabupaten', 'Melawi', '78672'),
(280, 8, 'Jambi', 'Kabupaten', 'Merangin', '37300'),
(281, 24, 'Papua', 'Kabupaten', 'Merauke', '99600'),
(282, 18, 'Lampung', 'Kabupaten', 'Mesuji', '34500'),
(283, 18, 'Lampung', 'Kota', 'Metro', '34100'),
(284, 24, 'Papua', 'Kabupaten', 'Mimika', '99900'),
(285, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa', '95600'),
(286, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Selatan', '95000'),
(287, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Tenggara', '95000'),
(288, 31, 'Sulawesi Utara', 'Kabupaten', 'Minahasa Utara', '95000'),
(289, 11, 'Jawa Timur', 'Kabupaten', 'Mojokerto', '61300'),
(290, 11, 'Jawa Timur', 'Kota', 'Mojokerto', '61300'),
(291, 29, 'Sulawesi Tengah', 'Kabupaten', 'Morowali', '94000'),
(292, 33, 'Sumatera Selatan', 'Kabupaten', 'Muara Enim', '31300'),
(293, 8, 'Jambi', 'Kabupaten', 'Muaro Jambi', '36365'),
(294, 4, 'Bengkulu', 'Kabupaten', 'Muko Muko', '38365'),
(295, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Muna', '93600'),
(296, 14, 'Kalimantan Tengah', 'Kabupaten', 'Murung Raya', '73900'),
(297, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Banyuasin', '30700'),
(298, 33, 'Sumatera Selatan', 'Kabupaten', 'Musi Rawas', '31600'),
(299, 24, 'Papua', 'Kabupaten', 'Nabire', '98800'),
(300, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Nagan Raya', '23600'),
(301, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Nagekeo', '86400'),
(302, 17, 'Kepulauan Riau', 'Kabupaten', 'Natuna', '29700'),
(303, 24, 'Papua', 'Kabupaten', 'Nduga', '99500'),
(304, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Ngada', '86400'),
(305, 11, 'Jawa Timur', 'Kabupaten', 'Nganjuk', '64400'),
(306, 11, 'Jawa Timur', 'Kabupaten', 'Ngawi', '63200'),
(307, 34, 'Sumatera Utara', 'Kabupaten', 'Nias', '22800'),
(308, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Barat', '22800'),
(309, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Selatan', '22800'),
(310, 34, 'Sumatera Utara', 'Kabupaten', 'Nias Utara', '22800'),
(311, 16, 'Kalimantan Utara', 'Kabupaten', 'Nunukan', '77182'),
(312, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Ilir', '30600'),
(313, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ilir', '30600'),
(314, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu', '32100'),
(315, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Selatan', '32100'),
(316, 33, 'Sumatera Selatan', 'Kabupaten', 'Ogan Komering Ulu Timur', '32100'),
(317, 11, 'Jawa Timur', 'Kabupaten', 'Pacitan', '63500'),
(318, 32, 'Sumatera Barat', 'Kota', 'Padang', '25000'),
(319, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas', '22700'),
(320, 34, 'Sumatera Utara', 'Kabupaten', 'Padang Lawas Utara', '22700'),
(321, 32, 'Sumatera Barat', 'Kota', 'Padang Panjang', '27100'),
(322, 32, 'Sumatera Barat', 'Kabupaten', 'Padang Pariaman', '25500'),
(323, 34, 'Sumatera Utara', 'Kota', 'Padang Sidempuan', '22700'),
(324, 33, 'Sumatera Selatan', 'Kota', 'Pagar Alam', '31500'),
(325, 34, 'Sumatera Utara', 'Kabupaten', 'Pakpak Bharat', '22200'),
(326, 14, 'Kalimantan Tengah', 'Kota', 'Palangka Raya', '73000'),
(327, 33, 'Sumatera Selatan', 'Kota', 'Palembang', '30000'),
(328, 28, 'Sulawesi Selatan', 'Kota', 'Palopo', '91900'),
(329, 29, 'Sulawesi Tengah', 'Kota', 'Palu', '94000'),
(330, 11, 'Jawa Timur', 'Kabupaten', 'Pamekasan', '69300'),
(331, 3, 'Banten', 'Kabupaten', 'Pandeglang', '42200'),
(332, 9, 'Jawa Barat', 'Kabupaten', 'Pangandaran', '46396'),
(333, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pangkajene Kepulauan', '90600'),
(334, 2, 'Bangka Belitung', 'Kota', 'Pangkal Pinang', '33100'),
(335, 24, 'Papua', 'Kabupaten', 'Paniai', '98700'),
(336, 28, 'Sulawesi Selatan', 'Kota', 'Parepare', '91100'),
(337, 32, 'Sumatera Barat', 'Kota', 'Pariaman', '25500'),
(338, 29, 'Sulawesi Tengah', 'Kabupaten', 'Parigi Moutong', '94371'),
(339, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman', '26300'),
(340, 32, 'Sumatera Barat', 'Kabupaten', 'Pasaman Barat', '26300'),
(341, 15, 'Kalimantan Timur', 'Kabupaten', 'Paser', '76200'),
(342, 11, 'Jawa Timur', 'Kabupaten', 'Pasuruan', '67100'),
(343, 11, 'Jawa Timur', 'Kota', 'Pasuruan', '67100'),
(344, 10, 'Jawa Tengah', 'Kabupaten', 'Pati', '59100'),
(345, 32, 'Sumatera Barat', 'Kota', 'Payakumbuh', '26200'),
(346, 25, 'Papua Barat', 'Kabupaten', 'Pegunungan Arfak', '98300'),
(347, 24, 'Papua', 'Kabupaten', 'Pegunungan Bintang', '99500'),
(348, 10, 'Jawa Tengah', 'Kabupaten', 'Pekalongan', '51100'),
(349, 10, 'Jawa Tengah', 'Kota', 'Pekalongan', '51100'),
(350, 26, 'Riau', 'Kota', 'Pekanbaru', '28000'),
(351, 26, 'Riau', 'Kabupaten', 'Pelalawan', '28300'),
(352, 10, 'Jawa Tengah', 'Kabupaten', 'Pemalang', '52300'),
(353, 34, 'Sumatera Utara', 'Kota', 'Pematang Siantar', '21100'),
(354, 15, 'Kalimantan Timur', 'Kabupaten', 'Penajam Paser Utara', '76141'),
(355, 18, 'Lampung', 'Kabupaten', 'Pesawaran', '35000'),
(356, 18, 'Lampung', 'Kabupaten', 'Pesisir Barat', '34574'),
(357, 32, 'Sumatera Barat', 'Kabupaten', 'Pesisir Selatan', '25600'),
(358, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie', '24100'),
(359, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Pidie Jaya', '24100'),
(360, 28, 'Sulawesi Selatan', 'Kabupaten', 'Pinrang', '91200'),
(361, 7, 'Gorontalo', 'Kabupaten', 'Pohuwato', '96200'),
(362, 27, 'Sulawesi Barat', 'Kabupaten', 'Polewali Mandar', '91300'),
(363, 11, 'Jawa Timur', 'Kabupaten', 'Ponorogo', '63400'),
(364, 12, 'Kalimantan Barat', 'Kabupaten', 'Pontianak', '78000'),
(365, 12, 'Kalimantan Barat', 'Kota', 'Pontianak', '78000'),
(366, 29, 'Sulawesi Tengah', 'Kabupaten', 'Poso', '94600'),
(367, 33, 'Sumatera Selatan', 'Kota', 'Prabumulih', '31100'),
(368, 18, 'Lampung', 'Kabupaten', 'Pringsewu', '35373'),
(369, 11, 'Jawa Timur', 'Kabupaten', 'Probolinggo', '67200'),
(370, 11, 'Jawa Timur', 'Kota', 'Probolinggo', '67200'),
(371, 14, 'Kalimantan Tengah', 'Kabupaten', 'Pulang Pisau', '73561'),
(372, 20, 'Maluku Utara', 'Kabupaten', 'Pulau Morotai', '97771'),
(373, 24, 'Papua', 'Kabupaten', 'Puncak', '98900'),
(374, 24, 'Papua', 'Kabupaten', 'Puncak Jaya', '98900'),
(375, 10, 'Jawa Tengah', 'Kabupaten', 'Purbalingga', '53300'),
(376, 9, 'Jawa Barat', 'Kabupaten', 'Purwakarta', '41100'),
(377, 10, 'Jawa Tengah', 'Kabupaten', 'Purworejo', '54100'),
(378, 25, 'Papua Barat', 'Kabupaten', 'Raja Ampat', '98400'),
(379, 4, 'Bengkulu', 'Kabupaten', 'Rejang Lebong', '39100'),
(380, 10, 'Jawa Tengah', 'Kabupaten', 'Rembang', '59200'),
(381, 26, 'Riau', 'Kabupaten', 'Rokan Hilir', '28991'),
(382, 26, 'Riau', 'Kabupaten', 'Rokan Hulu', '28455'),
(383, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Rote Ndao', '85974'),
(384, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Sabang', '23500'),
(385, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sabu Raijua', '85391'),
(386, 10, 'Jawa Tengah', 'Kota', 'Salatiga', '50700'),
(387, 15, 'Kalimantan Timur', 'Kota', 'Samarinda', '75000'),
(388, 12, 'Kalimantan Barat', 'Kabupaten', 'Sambas', '79400'),
(389, 34, 'Sumatera Utara', 'Kabupaten', 'Samosir', '22300'),
(390, 11, 'Jawa Timur', 'Kabupaten', 'Sampang', '69200'),
(391, 12, 'Kalimantan Barat', 'Kabupaten', 'Sanggau', '78500'),
(392, 24, 'Papua', 'Kabupaten', 'Sarmi', '99373'),
(393, 8, 'Jambi', 'Kabupaten', 'Sarolangun', '37300'),
(394, 32, 'Sumatera Barat', 'Kota', 'Sawah Lunto', '27400'),
(395, 12, 'Kalimantan Barat', 'Kabupaten', 'Sekadau', '78582'),
(396, 28, 'Sulawesi Selatan', 'Kabupaten', 'Selayar (Kepulauan Selayar)', '92800'),
(397, 4, 'Bengkulu', 'Kabupaten', 'Seluma', '38000'),
(398, 10, 'Jawa Tengah', 'Kabupaten', 'Semarang', '50000'),
(399, 10, 'Jawa Tengah', 'Kota', 'Semarang', '50000'),
(400, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Barat', '97500'),
(401, 19, 'Maluku', 'Kabupaten', 'Seram Bagian Timur', '97500'),
(402, 3, 'Banten', 'Kabupaten', 'Serang', '42100'),
(403, 3, 'Banten', 'Kota', 'Serang', '42100'),
(404, 34, 'Sumatera Utara', 'Kabupaten', 'Serdang Bedagai', '20000'),
(405, 14, 'Kalimantan Tengah', 'Kabupaten', 'Seruyan', '74200'),
(406, 26, 'Riau', 'Kabupaten', 'Siak', '28686'),
(407, 34, 'Sumatera Utara', 'Kota', 'Sibolga', '22500'),
(408, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sidenreng Rappang/Rapang', '91600'),
(409, 11, 'Jawa Timur', 'Kabupaten', 'Sidoarjo', '61200'),
(410, 29, 'Sulawesi Tengah', 'Kabupaten', 'Sigi', '94000'),
(411, 32, 'Sumatera Barat', 'Kabupaten', 'Sijunjung (Sawah Lunto Sijunjung)', '27500'),
(412, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sikka', '86100'),
(413, 34, 'Sumatera Utara', 'Kabupaten', 'Simalungun', '21100'),
(414, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kabupaten', 'Simeulue', '23000'),
(415, 12, 'Kalimantan Barat', 'Kota', 'Singkawang', '79100'),
(416, 28, 'Sulawesi Selatan', 'Kabupaten', 'Sinjai', '92600'),
(417, 12, 'Kalimantan Barat', 'Kabupaten', 'Sintang', '78600'),
(418, 11, 'Jawa Timur', 'Kabupaten', 'Situbondo', '68300'),
(419, 5, 'DI Yogyakarta', 'Kabupaten', 'Sleman', '55500'),
(420, 32, 'Sumatera Barat', 'Kabupaten', 'Solok', '27300'),
(421, 32, 'Sumatera Barat', 'Kota', 'Solok', '27300'),
(422, 32, 'Sumatera Barat', 'Kabupaten', 'Solok Selatan', '27300'),
(423, 28, 'Sulawesi Selatan', 'Kabupaten', 'Soppeng', '90800'),
(424, 25, 'Papua Barat', 'Kabupaten', 'Sorong', '98400'),
(425, 25, 'Papua Barat', 'Kota', 'Sorong', '98400'),
(426, 25, 'Papua Barat', 'Kabupaten', 'Sorong Selatan', '98400'),
(427, 10, 'Jawa Tengah', 'Kabupaten', 'Sragen', '57200'),
(428, 9, 'Jawa Barat', 'Kabupaten', 'Subang', '41200'),
(429, 21, 'Nanggroe Aceh Darussalam (NAD)', 'Kota', 'Subulussalam', '23782'),
(430, 9, 'Jawa Barat', 'Kabupaten', 'Sukabumi', '43100'),
(431, 9, 'Jawa Barat', 'Kota', 'Sukabumi', '43100'),
(432, 14, 'Kalimantan Tengah', 'Kabupaten', 'Sukamara', '74172'),
(433, 10, 'Jawa Tengah', 'Kabupaten', 'Sukoharjo', '57500'),
(434, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat', '87200'),
(435, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Barat Daya', '87200'),
(436, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Tengah', '87200'),
(437, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Sumba Timur', '87100'),
(438, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa', '84300'),
(439, 22, 'Nusa Tenggara Barat (NTB)', 'Kabupaten', 'Sumbawa Barat', '84300'),
(440, 9, 'Jawa Barat', 'Kabupaten', 'Sumedang', '45300'),
(441, 11, 'Jawa Timur', 'Kabupaten', 'Sumenep', '69400'),
(442, 8, 'Jambi', 'Kota', 'Sungaipenuh', '37100'),
(443, 24, 'Papua', 'Kabupaten', 'Supiori', '98100'),
(444, 11, 'Jawa Timur', 'Kota', 'Surabaya', '60000'),
(445, 10, 'Jawa Tengah', 'Kota', 'Surakarta (Solo)', '57100'),
(446, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tabalong', '71500'),
(447, 1, 'Bali', 'Kabupaten', 'Tabanan', '82100'),
(448, 28, 'Sulawesi Selatan', 'Kabupaten', 'Takalar', '92200'),
(449, 25, 'Papua Barat', 'Kabupaten', 'Tambrauw', '98400'),
(450, 16, 'Kalimantan Utara', 'Kabupaten', 'Tana Tidung', '77152'),
(451, 28, 'Sulawesi Selatan', 'Kabupaten', 'Tana Toraja', '91800'),
(452, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Bumbu', '70000'),
(453, 32, 'Sumatera Barat', 'Kabupaten', 'Tanah Datar', '27200'),
(454, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tanah Laut', '70800'),
(455, 3, 'Banten', 'Kabupaten', 'Tangerang', '15000'),
(456, 3, 'Banten', 'Kota', 'Tangerang', '15000'),
(457, 3, 'Banten', 'Kota', 'Tangerang Selatan', '15000'),
(458, 18, 'Lampung', 'Kabupaten', 'Tanggamus', '35000'),
(459, 34, 'Sumatera Utara', 'Kota', 'Tanjung Balai', '21300'),
(460, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Barat', '36500'),
(461, 8, 'Jambi', 'Kabupaten', 'Tanjung Jabung Timur', '36500'),
(462, 17, 'Kepulauan Riau', 'Kota', 'Tanjung Pinang', '29100'),
(463, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Selatan', '22700'),
(464, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Tengah', '22500'),
(465, 34, 'Sumatera Utara', 'Kabupaten', 'Tapanuli Utara', '22400'),
(466, 13, 'Kalimantan Selatan', 'Kabupaten', 'Tapin', '71100'),
(467, 16, 'Kalimantan Utara', 'Kota', 'Tarakan', '77100'),
(468, 9, 'Jawa Barat', 'Kabupaten', 'Tasikmalaya', '46100'),
(469, 9, 'Jawa Barat', 'Kota', 'Tasikmalaya', '46100'),
(470, 34, 'Sumatera Utara', 'Kota', 'Tebing Tinggi', '20600'),
(471, 8, 'Jambi', 'Kabupaten', 'Tebo', '37200'),
(472, 10, 'Jawa Tengah', 'Kabupaten', 'Tegal', '52100'),
(473, 10, 'Jawa Tengah', 'Kota', 'Tegal', '52100'),
(474, 25, 'Papua Barat', 'Kabupaten', 'Teluk Bintuni', '98300'),
(475, 25, 'Papua Barat', 'Kabupaten', 'Teluk Wondama', '98300'),
(476, 10, 'Jawa Tengah', 'Kabupaten', 'Temanggung', '56200'),
(477, 20, 'Maluku Utara', 'Kota', 'Ternate', '97700'),
(478, 20, 'Maluku Utara', 'Kota', 'Tidore Kepulauan', '97800'),
(479, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Selatan', '85500'),
(480, 23, 'Nusa Tenggara Timur (NTT)', 'Kabupaten', 'Timor Tengah Utara', '85600'),
(481, 34, 'Sumatera Utara', 'Kabupaten', 'Toba Samosir', '22300'),
(482, 29, 'Sulawesi Tengah', 'Kabupaten', 'Tojo Una-Una', '94600'),
(483, 29, 'Sulawesi Tengah', 'Kabupaten', 'Toli-Toli', '94500'),
(484, 24, 'Papua', 'Kabupaten', 'Tolikara', '99562'),
(485, 31, 'Sulawesi Utara', 'Kota', 'Tomohon', '95362'),
(486, 28, 'Sulawesi Selatan', 'Kabupaten', 'Toraja Utara', '91890'),
(487, 11, 'Jawa Timur', 'Kabupaten', 'Trenggalek', '66300'),
(488, 19, 'Maluku', 'Kota', 'Tual', '97600'),
(489, 11, 'Jawa Timur', 'Kabupaten', 'Tuban', '62300'),
(490, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang', '34500'),
(491, 18, 'Lampung', 'Kabupaten', 'Tulang Bawang Barat', '34500'),
(492, 11, 'Jawa Timur', 'Kabupaten', 'Tulungagung', '66200'),
(493, 28, 'Sulawesi Selatan', 'Kabupaten', 'Wajo', '90900'),
(494, 30, 'Sulawesi Tenggara', 'Kabupaten', 'Wakatobi', '93700'),
(495, 24, 'Papua', 'Kabupaten', 'Waropen', '98200'),
(496, 18, 'Lampung', 'Kabupaten', 'Way Kanan', '35000'),
(497, 10, 'Jawa Tengah', 'Kabupaten', 'Wonogiri', '57600'),
(498, 10, 'Jawa Tengah', 'Kabupaten', 'Wonosobo', '56300'),
(499, 24, 'Papua', 'Kabupaten', 'Yahukimo', '99500'),
(500, 24, 'Papua', 'Kabupaten', 'Yalimo', '99500'),
(501, 5, 'DI Yogyakarta', 'Kota', 'Yogyakarta', '55000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer`
--

CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `date_join` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cs_customer_address`
--

CREATE TABLE `cs_customer_address` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `postal_code` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country_code` varchar(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `factory`
--

CREATE TABLE `factory` (
  `id` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `peta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `factory`
--

INSERT INTO `factory` (`id`, `nama`, `alamat`, `telp`, `email`, `peta`) VALUES
(3, 'FACTORY BOJONEGORO', 'Jl. Mahakam 225\r\nBojonegoro 20456\r\nEast Java', '+62 31 5015588', 'factory@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8424071457857!2d111.89208239273015!3d-7.144214893503072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7782210551c057%3A0x247ac1865eaf2a1a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Bojonegoro%2C+Bojonegoro%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1449301118786'),
(4, 'OFFICE SURABAYA', 'Jl. Ngagel Jaya 12\r\nSurabaya 60456\r\nEast Java', '+62 31 5015588', 'office@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3958.8424071457857!2d111.89208239273015!3d-7.144214893503072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7782210551c057%3A0x247ac1865eaf2a1a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Bojonegoro%2C+Bojonegoro%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1449301118786'),
(5, 'OFFICE JAKARTA', 'Jl. Mahakam 225\r\nSidoarjo 20456\r\nEast Java', '+62 31 5015588', 'realfood@realfood.id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1978.075813030622!2d112.71914446656403!3d-7.448471635049679!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7e6b5e9bccdbd%3A0xfb1776699d75a67a!2sJl.+Jaksa+Agung+Suprapto%2C+Kec.+Sidoarjo%2C+Sidoarjo%2C+Jawa+Timur!5e0!3m2!1sid!2sid!4v1450785636022');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `answer` text NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `sort`) VALUES
(4, 'Apa manfaat utama produk Xado Revitalizant?', 'Xado Revitalizant dapat memberikan perlindungan pada mesin agar terjaga dari keausan sehingga mempermudah anda dalam merawat mesin', 1),
(5, 'Apa yang membedakan produk Xado dengan produk – produk additive yang lain?', 'Xado bukanlah additive, namun merupakan produk revitalizant. Additive memperbaiki kulitas oli sedangkan Xado memperbaiki kualiatas mesin. Additive bercampur dengan oli sedangkan Xado hanya menggunakan oli sebagai media untuk bereaksi dengan lapisan mesin yang mengalami keausan', 2),
(6, 'Apakah produk Xado Revitalizant dapat digunakan untuk merek oli apa saja?', 'Bisa, karena Xado tidak bereaksi dengan oli sehingga tidak berpengaruh jika menggunakan merek oli apa saja selama oli yang digunakan masih baru', 3),
(7, 'Produk Xado dapat digunakan untuk mesin apa saja?', 'Xado dapat digunakan untuk mesin apa saja selama di dalam mesin tersebut terdapat komponen dua logam yang bergesekan dengan temperature yang tinggi serta menggunakan pelumasan. Misalnya : Mesin kendaraan bermotor, Genset, Kompresor, Hidrolis, Gearbox, Alat pemotong rumput dan lain – lain', 4),
(8, 'Apakah  setiap ganti oli saya harus memasukkan produk Xado kembali', 'Tidak perlu, karena produk Xado akan tetap melekat dalam permukaan mesin selama 100.000 km jika  setelah memasukkan produk Xado penggantian oli dilakukan setelah 4.000 km. Pada kilometer tersebut proses revitalisasi sudah sempurna sehingga produk Xado tidak akan ikut terbuang meskipun dilakukan pergantian oli yang berulang – ulang', 5),
(9, 'Apa yang membuat produk Xado tetap melekat pada permukaan mesin meskipun oli di buang?', 'Reviltalizant bekerja dengan prinsip nanopartikel. Pada saat temperatur dan tekanan tinggi produk Xado bereaksi dengan logam permukaan mesin membentuk karbida logam yang meresap ke permukaan logam dengan ukuran yang sangat kecil (nanometer)', 6),
(10, 'Apakah produk Xado Revitalizant bisa digunakan untuk bahan bakar solar?', 'Bisa, Xado memiliki berbagai macam produk yang digunakan untuk bahan bakar bensin, solar dan gas (BBG)', 7),
(11, 'Apakah produk Xado bisa menghemat bahan bakar?', 'Prinsip utama produk Xado adalah membentuk lapisan baru pada permukaan mesin sehingga dengan usaha yang sama dengan sebelumnya (putaran) mesin bekerja dengan tenaga yang lebih, maka terjadilah penghematan bahan bakar.', 8),
(12, 'Apa yang membedakan antara Xado One Stage dengan AMC New Car atau AMC Maximum?', 'Pada dasarnya Xado One Stage dan AMC memiliki kandungan Revitlaizant yang sama, yang menjadi perbedaan adalah dalam AMC terdapat dua zat lain yaitu metal conditioner dan sliding agent yang membuat proses revitalisasi jadi lebih cepat. Sedangkan untuk perbedaan AMC new Car dengan Maximum adalah jika New car digunakan untuk mesin mobil yang odometernya dibawah 20.000 km sedangkan Maximum digunakan untuk mobil dengan odometer lebih dari 20.000 km', 9),
(13, 'Odometer mobil saya adalah 150.000 km, apakah masih bisa menggunakan produk Xado Revitalizant?', 'Bisa, namun karena odometer telah mencapai 150.000 yang dapat digolongkan mesin yang lama maka sebelum dimasukkan produk AMC Maximum, sistem pelumasannya harus di bersihkan dengan produk Vitaflush demi menjamin keefektifan Revitalizant', 10),
(14, 'JIka saya sudah mengganti oli dan sudah berjalan 600 km apakah masih bisa dimasukkan produk Xado tanpa mengganti oli baru?', 'Bisa, selama odometer belum mencapai 1000 km maka bisa dimasukkan produk Xado Revitalizant tanpa mengganti oli', 11),
(15, 'Jika kendaran saya mengalami kebocoran oli apakah bisa bisa ditanggulangi oleh produk Xado?', 'Bisa, selama kebocoran oli tersebut tidak lebih dari 15% selama jarak tempuh 1000 km dan kebocoran tidak terjadi pada gasket atau seal – sealnya', 12),
(16, 'Jika asap putih sudah keluar dari saluran pembuangan apakah masih bisa ditanggulangi dengan produk Xado?', 'Biasanya jika sudah mengeluarkan asap berwarna putih pekat maka kebocoran telah lebih dari 15% maka produk Xado tidak dapat menganggulangi kebocoran mesin', 13),
(17, 'Mesin mobil saya mengalami “kepincangan”, apakah masih bisa digunakan produk Xado?', 'Produk Xado hanya dapat mengatasi problematika mesin yang sederhana, jika mesin sudah mengalami kepincangan disarankan untuk memeperbaiki sistem di dalam silinder terlebih dahulu, lalu setelah itu di masukkan produk Xado untuk menjaga mesin agar tidak terjadi kepincangan kembali', 14),
(18, 'Apakah petroltank dapat merubah premium yang kita pakai menjadi pertamax?', 'Prinsip utama petroltank adalah membersihkan zat pengotor pada bahan bakar dan saluran  bahan bakar sehingga dapat memperbaiki kualitas premium namun tidak untuk menaikkan nilai oktan. Jadi premium menjadi lebih bersih namun tidak berubah jadi pertamax', 15),
(19, 'Apakah ada produk Xado untuk menaikkan nilai oktan dan nilai cetan?', 'Ada, Octane Booster dapat menaikkan nilai oktan hingga 6 poin, sedangkan Cetane Booster dapat menaikkan nilai cetane hingga 7 poin', 16),
(20, 'Apakah terdapat produk Xado untuk sepeda motor dua tak? Dan bagaimana cara penggunaannya?', 'Produk Xado untuk motor adalah Small Engine, dapat digunakan baik untuk 4 tak ataupun dua tak. Cara penggunaannya adalah untuk 4 tak produk xado di masukkan pada tabung pengisian oli sedangkan untuk 2 tak produk Xado dimasukkan ke dalam tabung bahan bakar karena dalam 2 tak oli bercampur dengan bahan bakar', 17),
(21, 'Apakah perbedaan oli Xado dengan merek – merek oli yang lain?', 'Di dalam produk xado terdapat revitalizant, sehingga oli Xado tidak hanya berfungsi sebagai pelumas tapi juga berfungsi sebagai pelindung dari keausan. Oli Xado juga memiliki umur pakai yang lebih lama dibandingkan dengan oli yang lain', 18),
(22, 'Apakah saya hanya memasukkan produk Xado Revitalizant tanpa perlu menggunakan oli khusus Xado?', 'Karena pada dasarnya Xado Revitalizant dapat digunakan dapat digunakan untuk semua merek oli maka Xado revitalizant bisa digunakan tanpa perlu menggunakan oli khusus Xado, namun agar perlindungan kendaraan anda lebih maksimal maka kami merekomendasikan untuk menggunakan oli Xado juga', 19),
(23, 'Apakah Xado dapat di gunakan untuk mesin – mesin industri?', 'Kami memiliki produk untuk mesin – mesin industry seperti XGR for Compresor, XGR 3 Stage dan XGR 1 stage untuk genset dan alat – alat berat serta XGR for Hidrolics untuk mesin – mesin hidrolis', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery`
--

CREATE TABLE `gal_gallery` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `orientation` int(11) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `product_id` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery`
--

INSERT INTO `gal_gallery` (`id`, `topik_id`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `city`, `harga`, `orientation`, `color`, `image2`, `product_id`) VALUES
(1, 0, '7684a-1.jpg', 1, '2019-08-20 14:47:11', '2019-08-20 14:47:50', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '9'),
(2, 0, 'f2584-1.jpg', 1, '2019-08-20 14:47:57', '2019-08-20 14:48:30', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '6'),
(3, 0, '38b17-1.jpg', 1, '2019-08-20 14:48:32', '2019-08-20 14:48:56', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '8'),
(4, 0, '37481-1.jpg', 1, '2019-08-20 14:48:59', '2019-08-20 14:49:28', 'info@markdesign.net', 'info@markdesign.net', '', '', 0, 0, '', '', '7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_description`
--

CREATE TABLE `gal_gallery_description` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `sub_title_2` text NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery_description`
--

INSERT INTO `gal_gallery_description` (`id`, `gallery_id`, `language_id`, `title`, `sub_title`, `sub_title_2`, `content`) VALUES
(1, 1, 2, 'Galery Baby Gee', '', '', ''),
(2, 2, 2, 'Galery Brevi', '', '', ''),
(3, 3, 2, 'Galery Cam', '', '', ''),
(4, 4, 2, 'Galery Royal Baby', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gal_gallery_image`
--

CREATE TABLE `gal_gallery_image` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gal_gallery_image`
--

INSERT INTO `gal_gallery_image` (`id`, `gallery_id`, `image`) VALUES
(1, 1, '7684a-2.jpg'),
(2, 1, '7684a-3.jpg'),
(3, 1, '7684a-4.jpg'),
(4, 1, '7684a-5.jpg'),
(5, 2, 'f2584-2.jpg'),
(6, 2, 'f2584-3.jpg'),
(7, 2, 'f2584-4.jpg'),
(8, 2, 'f2584-5.jpg'),
(9, 3, '38b17-2.jpg'),
(10, 3, '38b17-3.jpg'),
(11, 3, '38b17-4.jpg'),
(12, 4, '37481-2.jpg'),
(13, 4, '37481-3.jpg'),
(14, 4, '37481-4.jpg'),
(15, 4, '37481-5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_product_spot`
--

CREATE TABLE `home_product_spot` (
  `id` int(20) NOT NULL,
  `nama` text NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home_product_spot`
--

INSERT INTO `home_product_spot` (`id`, `nama`, `product_id`) VALUES
(1, '<p><strong>DDN21 Collection</strong> - The Urban Hype\r\n</p>', 6),
(2, '<p><strong>DDN21 Collection</strong> - The Urban Type 2\r\n</p>', 2),
(3, '<p><strong>DDN21 Collection</strong> - The Urban Type 2\r\n</p>', 5),
(4, '<p>huji</p>', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `sort`, `status`) VALUES
(2, 'English', 'en', 1, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_product`
--

CREATE TABLE `list_product` (
  `a` int(3) DEFAULT NULL,
  `b` int(2) DEFAULT NULL,
  `c` varchar(54) DEFAULT NULL,
  `d` varchar(17) DEFAULT NULL,
  `e` varchar(20) DEFAULT NULL,
  `f` varchar(11) DEFAULT NULL,
  `g` varchar(42) DEFAULT NULL,
  `h` varchar(73) DEFAULT NULL,
  `i` varchar(12) DEFAULT NULL,
  `j` int(6) DEFAULT NULL,
  `k` varchar(245) DEFAULT NULL,
  `l` varchar(18) DEFAULT NULL,
  `m` int(4) DEFAULT NULL,
  `o` int(7) DEFAULT NULL,
  `p` varchar(40) DEFAULT NULL,
  `q` varchar(67) DEFAULT NULL,
  `r` int(2) DEFAULT NULL,
  `s` varchar(37) DEFAULT NULL,
  `t` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `username`, `activity`, `time`) VALUES
(1, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-28 04:01:45'),
(2, 'info@markdesign.net', 'PrdCategoryController Create 34', '2018-08-28 04:04:06'),
(3, 'info@markdesign.net', 'PrdProduct Controller Create 1', '2018-08-28 04:12:42'),
(4, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-08-30 07:35:35'),
(5, 'info@markdesign.net', 'SlideController Update 14', '2018-08-30 07:36:25'),
(6, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-05 08:26:17'),
(7, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-10 08:39:10'),
(8, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-17 08:33:45'),
(9, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-18 06:27:52'),
(10, 'info@markdesign.net', 'Setting Update', '2018-09-18 07:47:44'),
(11, 'info@markdesign.net', 'Setting Update', '2018-09-18 07:53:06'),
(12, 'info@markdesign.net', 'Promo Controller Create 14', '2018-09-18 07:55:03'),
(13, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-18 08:04:08'),
(14, 'info@markdesign.net', 'CustomerController Update 5', '2018-09-18 08:32:04'),
(15, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-18 08:38:26'),
(16, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-20 03:48:22'),
(17, 'info@markdesign.net', 'ProductController Update 6', '2018-09-20 07:53:19'),
(18, 'info@markdesign.net', 'ProductController Update 7', '2018-09-20 07:54:41'),
(19, 'info@markdesign.net', 'ProductController Update 5', '2018-09-20 07:54:56'),
(20, 'info@markdesign.net', 'ProductController Update 4', '2018-09-20 07:55:03'),
(21, 'info@markdesign.net', 'ProductController Update 3', '2018-09-20 07:55:11'),
(22, 'info@markdesign.net', 'Setting Update', '2018-09-20 08:41:12'),
(23, 'info@markdesign.net', 'SlideController Update 14', '2018-09-20 08:59:19'),
(24, 'info@markdesign.net', 'SlideController Update 14', '2018-09-20 09:06:31'),
(25, 'info@markdesign.net', 'SlideController Update 14', '2018-09-20 09:10:12'),
(26, 'info@markdesign.net', 'GalleryController Update 6', '2018-09-20 09:27:43'),
(27, 'info@markdesign.net', 'GalleryController Update 6', '2018-09-20 09:46:10'),
(28, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 20:47:41'),
(29, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 20:53:59'),
(30, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 21:05:27'),
(31, 'info@markdesign.net', 'ProductController Update 6', '2018-09-21 21:19:31'),
(32, 'info@markdesign.net', 'ProductController Update 6', '2018-09-21 21:22:59'),
(33, 'info@markdesign.net', 'PromoHightlightController Create 1', '2018-09-21 21:59:12'),
(34, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-21 13:06:54'),
(35, 'info@markdesign.net', 'SlideController Update 14', '2018-09-21 14:23:48'),
(36, 'info@markdesign.net', 'SlideController Update 14', '2018-09-21 14:24:04'),
(37, 'info@markdesign.net', 'SlideController Update 14', '2018-09-21 14:24:33'),
(38, 'info@markdesign.net', 'PromoHightlightController Create 2', '2018-09-21 16:43:25'),
(39, 'info@markdesign.net', 'ProductController Update 7', '2018-09-22 01:35:25'),
(40, 'info@markdesign.net', 'ProductController Update 6', '2018-09-22 01:35:32'),
(41, 'info@markdesign.net', 'ProductController Update 5', '2018-09-22 01:35:39'),
(42, 'info@markdesign.net', 'ProductController Update 4', '2018-09-22 01:36:14'),
(43, 'info@markdesign.net', 'ProductController Update 3', '2018-09-22 01:36:22'),
(44, 'info@markdesign.net', 'ProductController Update 2', '2018-09-22 01:36:34'),
(45, 'info@markdesign.net', 'ProductController Update 1', '2018-09-22 01:36:40'),
(46, 'info@markdesign.net', 'Gallery Controller Create 9', '2018-09-22 01:38:38'),
(47, 'info@markdesign.net', 'ProductController Update 2', '2018-09-22 01:39:17'),
(48, 'info@markdesign.net', 'ProductController Update 5', '2018-09-22 03:51:36'),
(49, 'info@markdesign.net', 'PromoHightlightController Create 3', '2018-09-22 03:52:02'),
(50, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-22 05:14:16'),
(51, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-22 12:33:44'),
(52, 'info@markdesign.net', 'BankController Create 3', '2018-09-22 12:35:08'),
(53, 'info@markdesign.net', 'Setting Update', '2018-09-22 13:30:28'),
(54, 'info@markdesign.net', 'Setting Update', '2018-09-22 13:31:17'),
(55, 'info@markdesign.net', 'Setting Update', '2018-09-22 13:31:26'),
(56, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-24 08:02:08'),
(57, 'info@markdesign.net', 'Setting Update', '2018-09-24 08:14:35'),
(58, 'info@markdesign.net', 'Setting Update', '2018-09-24 08:14:38'),
(59, 'info@markdesign.net', 'Blog Controller Create 1', '2018-09-24 08:26:31'),
(60, 'info@markdesign.net', 'BlogController Update 1', '2018-09-24 08:37:29'),
(61, 'info@markdesign.net', 'Blog Controller Create 2', '2018-09-24 08:38:06'),
(62, 'info@markdesign.net', 'BlogController Update 2', '2018-09-24 10:06:24'),
(63, 'info@markdesign.net', 'BlogController Update 1', '2018-09-24 10:06:32'),
(64, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:29:38'),
(65, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:33:15'),
(66, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:33:43'),
(67, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:33:49'),
(68, 'info@markdesign.net', 'Setting Update', '2018-09-24 10:34:37'),
(69, 'info@markdesign.net', 'Setting Update', '2018-09-25 03:03:41'),
(70, 'info@markdesign.net', 'Setting Update', '2018-09-25 03:07:29'),
(71, 'info@markdesign.net', 'Setting Update', '2018-09-25 07:54:13'),
(72, 'info@markdesign.net', 'Setting Update', '2018-09-25 07:54:40'),
(73, 'info@markdesign.net', 'Setting Update', '2018-09-25 07:54:52'),
(74, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 03:42:02'),
(75, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 03:56:28'),
(76, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 03:58:19'),
(77, 'info@markdesign.net', 'ProductController Update 6', '2018-09-28 04:13:16'),
(78, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 04:19:06'),
(79, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 04:19:18'),
(80, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 06:21:10'),
(81, 'info@markdesign.net', 'ProductController Update 4', '2018-09-28 06:24:52'),
(82, 'info@markdesign.net', 'ProductController Update 4', '2018-09-28 06:25:10'),
(83, 'info@markdesign.net', 'ProductController Update 3', '2018-09-28 06:28:45'),
(84, 'info@markdesign.net', 'ProductController Update 2', '2018-09-28 06:32:52'),
(85, 'info@markdesign.net', 'ProductController Update 1', '2018-09-28 06:37:17'),
(86, 'info@markdesign.net', 'PrdProduct Controller Create 8', '2018-09-28 06:47:44'),
(87, 'info@markdesign.net', 'PrdProduct Controller Create 9', '2018-09-28 06:51:29'),
(88, 'info@markdesign.net', 'PrdProduct Controller Create 10', '2018-09-28 07:02:00'),
(89, 'info@markdesign.net', 'PrdProduct Controller Create 11', '2018-09-28 07:07:20'),
(90, 'info@markdesign.net', 'PrdProduct Controller Create 12', '2018-09-28 07:10:21'),
(91, 'info@markdesign.net', 'PrdProduct Controller Create 13', '2018-09-28 07:17:49'),
(92, 'info@markdesign.net', 'PrdProduct Controller Create 14', '2018-09-28 07:22:30'),
(93, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:32:02'),
(94, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:32:22'),
(95, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:34:25'),
(96, 'info@markdesign.net', 'ProductController Update 14', '2018-09-28 07:34:32'),
(97, 'info@markdesign.net', 'PrdProduct Controller Create 15', '2018-09-28 07:37:40'),
(98, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 07:38:26'),
(99, 'info@markdesign.net', 'GalleryController Update 6', '2018-09-28 07:38:51'),
(100, 'info@markdesign.net', 'GalleryController Update 9', '2018-09-28 07:39:05'),
(101, 'info@markdesign.net', 'ProductController Update 13', '2018-09-28 07:39:59'),
(102, 'info@markdesign.net', 'ProductController Update 12', '2018-09-28 07:40:31'),
(103, 'info@markdesign.net', 'ProductController Update 12', '2018-09-28 07:40:38'),
(104, 'info@markdesign.net', 'ProductController Update 12', '2018-09-28 07:43:18'),
(105, 'info@markdesign.net', 'ProductController Update 11', '2018-09-28 07:44:04'),
(106, 'info@markdesign.net', 'ProductController Update 10', '2018-09-28 07:44:31'),
(107, 'info@markdesign.net', 'ProductController Update 9', '2018-09-28 07:45:15'),
(108, 'info@markdesign.net', 'ProductController Update 8', '2018-09-28 07:45:59'),
(109, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 07:46:43'),
(110, 'info@markdesign.net', 'ProductController Update 7', '2018-09-28 07:47:11'),
(111, 'info@markdesign.net', 'ProductController Update 6', '2018-09-28 07:47:56'),
(112, 'info@markdesign.net', 'ProductController Update 6', '2018-09-28 07:48:16'),
(113, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 07:49:16'),
(114, 'info@markdesign.net', 'ProductController Update 4', '2018-09-28 07:49:44'),
(115, 'info@markdesign.net', 'ProductController Update 3', '2018-09-28 07:50:19'),
(116, 'info@markdesign.net', 'ProductController Update 2', '2018-09-28 07:50:55'),
(117, 'info@markdesign.net', 'ProductController Update 1', '2018-09-28 07:51:11'),
(118, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 08:17:57'),
(119, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:26:50'),
(120, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:30:43'),
(121, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:50:37'),
(122, 'info@markdesign.net', 'ProductController Update 5', '2018-09-28 08:50:48'),
(123, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-09-28 10:06:26'),
(124, 'info@markdesign.net', 'Blog Controller Create 3', '2018-09-28 10:13:32'),
(125, 'info@markdesign.net', 'Blog Controller Create 4', '2018-09-28 10:17:19'),
(126, 'info@markdesign.net', 'Blog Controller Create 5', '2018-09-28 10:20:12'),
(127, 'info@markdesign.net', 'Blog Controller Create 6', '2018-09-28 10:23:27'),
(128, 'info@markdesign.net', 'BlogController Update 6', '2018-09-28 10:30:08'),
(129, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:30:21'),
(130, 'info@markdesign.net', 'BlogController Update 4', '2018-09-28 10:30:34'),
(131, 'info@markdesign.net', 'BlogController Update 3', '2018-09-28 10:30:46'),
(132, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:05'),
(133, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:19'),
(134, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:28'),
(135, 'info@markdesign.net', 'BlogController Update 5', '2018-09-28 10:32:38'),
(136, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-02 03:14:22'),
(137, 'info@markdesign.net', 'BlogController Update 3', '2018-10-02 03:27:03'),
(138, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 03:29:48'),
(139, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-02 04:58:55'),
(140, 'info@markdesign.net', 'Blog Controller Create 7', '2018-10-02 05:08:12'),
(141, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:08:31'),
(142, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:09:02'),
(143, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:09:32'),
(144, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:10:42'),
(145, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 05:10:53'),
(146, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:20:47'),
(147, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:22:36'),
(148, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:22'),
(149, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(150, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(151, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(152, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:23'),
(153, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 05:23:24'),
(154, 'info@markdesign.net', 'Blog Controller Create 8', '2018-10-02 05:59:58'),
(155, 'info@markdesign.net', 'BlogController Update 8', '2018-10-02 06:01:18'),
(156, 'info@markdesign.net', 'BlogController Update 8', '2018-10-02 06:04:33'),
(157, 'info@markdesign.net', 'BlogController Update 7', '2018-10-02 06:04:54'),
(158, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 06:05:24'),
(159, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 06:05:25'),
(160, 'info@markdesign.net', 'BlogController Update 6', '2018-10-02 06:05:25'),
(161, 'info@markdesign.net', 'Blog Controller Create 9', '2018-10-02 06:09:37'),
(162, 'info@markdesign.net', 'BlogController Update 9', '2018-10-02 06:10:02'),
(163, 'info@markdesign.net', 'Blog Controller Create 10', '2018-10-02 06:16:42'),
(164, 'info@markdesign.net', 'BlogController Update 10', '2018-10-02 06:18:11'),
(165, 'info@markdesign.net', 'Blog Controller Create 11', '2018-10-02 06:20:57'),
(166, 'info@markdesign.net', 'Blog Controller Create 12', '2018-10-02 06:24:38'),
(167, 'info@markdesign.net', 'Blog Controller Create 13', '2018-10-02 06:26:30'),
(168, 'info@markdesign.net', 'BlogController Update 13', '2018-10-02 06:26:54'),
(169, 'info@markdesign.net', 'BlogController Update 13', '2018-10-02 06:29:43'),
(170, 'info@markdesign.net', 'BlogController Update 13', '2018-10-02 06:30:04'),
(171, 'info@markdesign.net', 'Blog Controller Create 14', '2018-10-02 06:32:18'),
(172, 'info@markdesign.net', 'BlogController Update 14', '2018-10-02 06:34:54'),
(173, 'info@markdesign.net', 'Blog Controller Create 15', '2018-10-02 06:38:44'),
(174, 'info@markdesign.net', 'Blog Controller Create 16', '2018-10-02 06:41:56'),
(175, 'info@markdesign.net', 'Blog Controller Create 17', '2018-10-02 07:02:58'),
(176, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-02 08:06:39'),
(177, 'info@markdesign.net', 'Slide Controller Create 20', '2018-10-02 08:20:47'),
(178, 'info@markdesign.net', 'Slide Controller Create 21', '2018-10-02 08:21:52'),
(179, 'info@markdesign.net', 'SlideController Update 14', '2018-10-02 08:22:14'),
(180, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-08 15:19:30'),
(181, 'info@markdesign.net', 'SlideController Update 14', '2018-10-08 15:20:00'),
(182, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-17 06:28:13'),
(183, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-18 07:50:56'),
(184, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-18 07:55:08'),
(185, 'info@markdesign.net', 'SlideController Update 20', '2018-10-18 07:59:25'),
(186, 'info@markdesign.net', 'SlideController Update 21', '2018-10-18 07:59:33'),
(187, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-19 10:37:56'),
(188, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-10-26 04:55:51'),
(189, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-02 09:57:30'),
(190, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 02:59:46'),
(191, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 03:56:16'),
(192, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 04:07:52'),
(193, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:15:43'),
(194, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:17:51'),
(195, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:19:27'),
(196, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 05:24:51'),
(197, 'info@markdesign.net', 'PromoHightlightController Create 4', '2018-11-21 05:25:51'),
(198, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 06:38:21'),
(199, 'info@markdesign.net', 'ProductController Update 6', '2018-11-21 06:53:10'),
(200, 'info@markdesign.net', 'ProductController Update 6', '2018-11-21 06:53:30'),
(201, 'info@markdesign.net', 'ProductController Update 6', '2018-11-21 06:54:00'),
(202, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 07:52:58'),
(203, 'info@markdesign.net', 'GalleryController Update 9', '2018-11-21 07:53:38'),
(204, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-21 10:16:20'),
(205, 'info@markdesign.net', 'GalleryController Update 9', '2018-11-21 10:16:29'),
(206, 'info@markdesign.net', 'GalleryController Update 6', '2018-11-21 10:16:39'),
(207, 'info@markdesign.net', 'Gallery Controller Create 10', '2018-11-21 10:16:59'),
(208, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-22 05:13:18'),
(209, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-11-30 03:57:29'),
(210, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 02:50:25'),
(211, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 04:49:15'),
(212, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 05:12:50'),
(213, 'Info@markdesign.net', 'Login: Info@markdesign.net', '2018-12-07 05:30:44'),
(214, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 05:45:20'),
(215, 'info@markdesign.net', 'Login: info@markdesign.net', '2018-12-07 08:29:56'),
(216, 'info@markdesign.net', 'Gallery Controller Create 11', '2018-12-07 08:34:45'),
(217, 'info@markdesign.net', 'GalleryController Update 6', '2018-12-07 08:37:25'),
(218, 'deoryzpandu@gmail.com', 'Login: deoryzpandu@gmail.com', '2019-01-24 02:46:09'),
(219, 'deoryzpandu@gmail.com', 'Create Category 51', '2019-01-24 02:47:09'),
(220, 'deoryzpandu@gmail.com', 'Create Category 52', '2019-01-24 02:47:16'),
(221, 'deoryzpandu@gmail.com', 'Create Category 53', '2019-01-24 02:47:30'),
(222, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-01-24 03:10:03'),
(223, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-26 08:38:55'),
(224, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-26 09:44:07'),
(225, 'info@markdesign.net', 'PrdCategoryController Create 16', '2019-07-26 10:34:58'),
(226, 'info@markdesign.net', 'ProductController Update 32', '2019-07-26 10:39:41'),
(227, 'info@markdesign.net', 'BrandController Update 2', '2019-07-30 09:57:09'),
(228, 'info@markdesign.net', 'Setting Update', '2019-07-30 10:12:57'),
(229, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:19:23'),
(230, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:24:01'),
(231, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:27:29'),
(232, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:34:27'),
(233, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:34:33'),
(234, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:36:14'),
(235, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:36:52'),
(236, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:37:27'),
(237, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:37:30'),
(238, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:38:10'),
(239, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:38:33'),
(240, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:39:04'),
(241, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:40:28'),
(242, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:40:35'),
(243, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:40:55'),
(244, 'info@markdesign.net', 'SlideController Update 14', '2019-07-31 02:47:35'),
(245, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:48:18'),
(246, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-07-31 02:49:33'),
(247, 'info@markdesign.net', 'BrandController Update 2', '2019-07-31 02:51:27'),
(248, 'info@markdesign.net', 'Brand Controller Create 3', '2019-07-31 02:51:54'),
(249, 'info@markdesign.net', 'Brand Controller Create 4', '2019-07-31 02:52:19'),
(250, 'info@markdesign.net', 'Brand Controller Create 5', '2019-07-31 02:52:50'),
(251, 'info@markdesign.net', 'Brand Controller Create 6', '2019-07-31 02:53:16'),
(252, 'info@markdesign.net', 'Brand Controller Create 7', '2019-07-31 02:54:23'),
(253, 'info@markdesign.net', 'Brand Controller Create 8', '2019-07-31 02:54:46'),
(254, 'info@markdesign.net', 'Brand Controller Create 9', '2019-07-31 02:55:20'),
(255, 'info@markdesign.net', 'Brand Controller Create 10', '2019-07-31 02:55:54'),
(256, 'info@markdesign.net', 'Brand Controller Create 11', '2019-07-31 02:56:01'),
(257, 'info@markdesign.net', 'Brand Controller Create 12', '2019-07-31 02:56:13'),
(258, 'info@markdesign.net', 'Brand Controller Create 13', '2019-07-31 02:56:25'),
(259, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:56:37'),
(260, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:57:04'),
(261, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:57:52'),
(262, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:58:09'),
(263, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:59:01'),
(264, 'info@markdesign.net', 'Setting Update', '2019-07-31 02:59:03'),
(265, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:16:14'),
(266, 'info@markdesign.net', 'Blog Controller Create 1', '2019-07-31 03:16:58'),
(267, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:17:10'),
(268, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:17:25'),
(269, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:19:29'),
(270, 'info@markdesign.net', 'BlogController Update 1', '2019-07-31 03:26:52'),
(271, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:28:17'),
(272, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:34:32'),
(273, 'info@markdesign.net', 'BlogController Update 1', '2019-07-31 03:35:39'),
(274, 'info@markdesign.net', 'Setting Update', '2019-07-31 03:36:09'),
(275, 'info@markdesign.net', 'BlogController Update 1', '2019-07-31 03:37:30'),
(276, 'info@markdesign.net', 'Blog Controller Create 2', '2019-07-31 03:44:01'),
(277, 'info@markdesign.net', 'Blog Controller Create 3', '2019-07-31 04:01:05'),
(278, 'info@markdesign.net', 'Blog Controller Create 4', '2019-07-31 04:19:11'),
(279, 'info@markdesign.net', 'Blog Controller Create 5', '2019-07-31 04:29:16'),
(280, 'info@markdesign.net', 'Blog Controller Create 6', '2019-07-31 04:35:44'),
(281, 'info@markdesign.net', 'BlogController Update 5', '2019-07-31 04:37:18'),
(282, 'info@markdesign.net', 'BlogController Update 6', '2019-07-31 04:37:52'),
(283, 'info@markdesign.net', 'Blog Controller Create 7', '2019-07-31 04:45:58'),
(284, 'info@markdesign.net', 'Create Category 1', '2019-07-31 06:19:12'),
(285, 'info@markdesign.net', 'Blog Controller Create 8', '2019-07-31 06:20:52'),
(286, 'info@markdesign.net', 'Create Category 1', '2019-07-31 06:27:04'),
(287, 'info@markdesign.net', 'Create Category 3', '2019-07-31 06:31:02'),
(288, 'info@markdesign.net', 'Create Category 2', '2019-07-31 06:31:17'),
(289, 'info@markdesign.net', 'Blog Controller Create 9', '2019-07-31 06:34:20'),
(290, 'info@markdesign.net', 'Create Category 15', '2019-07-31 06:34:37'),
(291, 'info@markdesign.net', 'Create Category 13', '2019-07-31 06:39:49'),
(292, 'info@markdesign.net', 'Create Category 12', '2019-07-31 06:43:05'),
(293, 'info@markdesign.net', 'Blog Controller Create 10', '2019-07-31 06:45:55'),
(294, 'info@markdesign.net', 'Create Category 8', '2019-07-31 06:46:01'),
(295, 'info@markdesign.net', 'Create Category 7', '2019-07-31 06:47:30'),
(296, 'info@markdesign.net', 'Create Category 5', '2019-07-31 06:54:35'),
(297, 'info@markdesign.net', 'Blog Controller Create 11', '2019-07-31 06:55:26'),
(298, 'info@markdesign.net', 'BlogController Update 8', '2019-07-31 06:58:50'),
(299, 'info@markdesign.net', 'BlogController Update 10', '2019-07-31 06:59:08'),
(300, 'info@markdesign.net', 'Create Category 10', '2019-07-31 06:59:19'),
(301, 'info@markdesign.net', 'BlogController Update 11', '2019-07-31 06:59:43'),
(302, 'info@markdesign.net', 'Create Category 6', '2019-07-31 07:03:44'),
(303, 'info@markdesign.net', 'Blog Controller Create 12', '2019-07-31 07:05:17'),
(304, 'info@markdesign.net', 'Create Category 4', '2019-07-31 07:12:41'),
(305, 'info@markdesign.net', 'Create Category 9', '2019-07-31 07:22:34'),
(306, 'info@markdesign.net', 'Create Category 11', '2019-07-31 07:25:55'),
(307, 'info@markdesign.net', 'Create Category 14', '2019-07-31 07:37:59'),
(308, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-01 07:41:13'),
(309, 'info@markdesign.net', 'BlogController Update 12', '2019-08-01 08:11:07'),
(310, 'info@markdesign.net', 'BlogController Update 11', '2019-08-01 08:15:41'),
(311, 'info@markdesign.net', 'BlogController Update 10', '2019-08-01 08:18:24'),
(312, 'info@markdesign.net', 'BlogController Update 9', '2019-08-01 08:21:25'),
(313, 'info@markdesign.net', 'BlogController Update 8', '2019-08-01 08:24:34'),
(314, 'info@markdesign.net', 'BlogController Update 7', '2019-08-01 08:29:01'),
(315, 'info@markdesign.net', 'BlogController Update 6', '2019-08-01 08:32:01'),
(316, 'info@markdesign.net', 'BlogController Update 5', '2019-08-01 08:34:25'),
(317, 'info@markdesign.net', 'BlogController Update 3', '2019-08-01 08:37:20'),
(318, 'info@markdesign.net', 'BlogController Update 2', '2019-08-01 08:40:24'),
(319, 'info@markdesign.net', 'BlogController Update 1', '2019-08-01 08:42:38'),
(320, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-02 03:54:02'),
(321, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-02 03:56:26'),
(322, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-19 08:14:44'),
(323, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-19 09:58:33'),
(324, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-19 10:02:49'),
(325, 'info@markdesign.net', 'Setting Update', '2019-08-19 10:03:05'),
(326, 'info@markdesign.net', 'Setting Update', '2019-08-19 10:05:57'),
(327, 'info@markdesign.net', 'Setting Update', '2019-08-19 10:09:28'),
(328, 'info@markdesign.net', 'Setting Update', '2019-08-19 10:11:29'),
(329, 'info@markdesign.net', 'Setting Update', '2019-08-19 10:12:09'),
(330, 'info@markdesign.net', 'Setting Update', '2019-08-19 10:15:44'),
(331, 'info@markdesign.net', 'Create Category 1', '2019-08-19 10:16:23'),
(332, 'info@markdesign.net', 'Create Category 2', '2019-08-19 10:16:29'),
(333, 'info@markdesign.net', 'Create Category 3', '2019-08-19 10:16:37'),
(334, 'info@markdesign.net', 'Create Category 4', '2019-08-19 10:16:41'),
(335, 'info@markdesign.net', 'Create Category 5', '2019-08-19 10:18:45'),
(336, 'info@markdesign.net', 'Create Category 6', '2019-08-19 10:18:51'),
(337, 'info@markdesign.net', 'Create Category 7', '2019-08-19 10:18:58'),
(338, 'info@markdesign.net', 'Create Category 8', '2019-08-19 10:19:02'),
(339, 'info@markdesign.net', 'Create Category 9', '2019-08-19 10:19:05'),
(340, 'info@markdesign.net', 'Brand Controller Create 1', '2019-08-19 10:33:26'),
(341, 'info@markdesign.net', 'Brand Controller Create 2', '2019-08-19 10:33:48'),
(342, 'info@markdesign.net', 'Brand Controller Create 3', '2019-08-19 10:34:01'),
(343, 'info@markdesign.net', 'Brand Controller Create 4', '2019-08-19 10:34:17'),
(344, 'info@markdesign.net', 'Brand Controller Create 5', '2019-08-19 10:34:30'),
(345, 'info@markdesign.net', 'Brand Controller Create 6', '2019-08-19 10:34:44'),
(346, 'info@markdesign.net', 'Brand Controller Create 7', '2019-08-19 10:35:00'),
(347, 'info@markdesign.net', 'Brand Controller Create 8', '2019-08-19 10:35:15'),
(348, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-20 03:41:32'),
(349, 'info@markdesign.net', 'Login: info@markdesign.net', '2019-08-20 03:47:02'),
(350, 'info@markdesign.net', 'Slide Controller Create 1', '2019-08-20 03:48:43'),
(351, 'info@markdesign.net', 'Setting Update', '2019-08-20 04:59:15'),
(352, 'info@markdesign.net', 'Address Controller Create 1', '2019-08-20 05:07:25'),
(353, 'info@markdesign.net', 'Address Controller Create 2', '2019-08-20 05:08:07'),
(354, 'info@markdesign.net', 'Address Controller Create 3', '2019-08-20 07:37:57'),
(355, 'info@markdesign.net', 'Address Controller Create 4', '2019-08-20 07:42:34'),
(356, 'info@markdesign.net', 'Address Controller Create 5', '2019-08-20 07:43:21'),
(357, 'info@markdesign.net', 'Address Controller Create 6', '2019-08-20 07:44:08'),
(358, 'info@markdesign.net', 'Address Controller Create 7', '2019-08-20 07:44:43'),
(359, 'info@markdesign.net', 'Address Controller Create 8', '2019-08-20 07:45:28'),
(360, 'info@markdesign.net', 'Address Controller Create 9', '2019-08-20 07:46:06'),
(361, 'info@markdesign.net', 'Gallery Controller Create 1', '2019-08-20 07:47:50'),
(362, 'info@markdesign.net', 'Gallery Controller Create 2', '2019-08-20 07:48:30'),
(363, 'info@markdesign.net', 'Gallery Controller Create 3', '2019-08-20 07:48:56'),
(364, 'info@markdesign.net', 'Gallery Controller Create 4', '2019-08-20 07:49:28'),
(365, 'info@markdesign.net', 'Setting Update', '2019-08-20 08:01:36'),
(366, 'info@markdesign.net', 'Setting Update', '2019-08-20 08:02:18'),
(367, 'info@markdesign.net', 'Create Category 6', '2019-08-20 08:05:09'),
(368, 'info@markdesign.net', 'Create Category 7', '2019-08-20 08:05:42'),
(369, 'info@markdesign.net', 'Create Category 8', '2019-08-20 08:05:49'),
(370, 'info@markdesign.net', 'Create Category 9', '2019-08-20 08:06:01'),
(371, 'info@markdesign.net', 'Setting Update', '2019-08-20 08:42:07'),
(372, 'info@markdesign.net', 'Setting Update', '2019-08-20 08:45:16'),
(373, 'info@markdesign.net', 'Setting Update', '2019-08-20 08:55:04'),
(374, 'info@markdesign.net', 'Setting Update', '2019-08-20 09:04:58'),
(375, 'info@markdesign.net', 'Create Category 6', '2019-08-20 09:15:10'),
(376, 'info@markdesign.net', 'Create Category 7', '2019-08-20 09:15:16'),
(377, 'info@markdesign.net', 'Create Category 8', '2019-08-20 09:15:19'),
(378, 'info@markdesign.net', 'Create Category 9', '2019-08-20 09:15:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `me_member`
--

CREATE TABLE `me_member` (
  `id` int(11) NOT NULL,
  `acc_number` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `me_member`
--

INSERT INTO `me_member` (`id`, `acc_number`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `type`) VALUES
(5, '', 'ibnudrift@gmail.com', 'Ibnu', 'Fajar', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2016-03-28 04:16:03', 0, 1, '', '082218129895', 'jl. sawo 1a / 2 kel. bringin, kec. sambikerep, 60218', 'surabaya', 'Jawa Timur', '60218', ''),
(17, '', 'suwargo.nixon@gmail.com', 'nixon', '', 'f474c44d4b0b07d21a2dbf707a5ef619e1751992', '2018-10-11 08:16:45', 0, 1, '', '08133123123123', 'asdfkjnsdf', 'sdjfnsdjf', 'sdkfnsdjfn', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order`
--

CREATE TABLE `or_order` (
  `id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `invoice_prefix` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(128) NOT NULL,
  `payment_first_name` varchar(128) NOT NULL,
  `payment_last_name` varchar(128) NOT NULL,
  `payment_company` varchar(128) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(128) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `shipping_first_name` varchar(128) NOT NULL,
  `shipping_last_name` varchar(128) NOT NULL,
  `shipping_company` varchar(128) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(128) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_area` int(11) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `tax` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(100) NOT NULL,
  `currency_value` decimal(15,4) NOT NULL,
  `ip` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_modif` datetime NOT NULL,
  `delivery_from` varchar(100) NOT NULL,
  `delivery_to` varchar(100) NOT NULL,
  `delivery_package` varchar(100) NOT NULL,
  `delivery_price` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `delivery_weight` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `tracking_id` varchar(200) NOT NULL,
  `is_read` int(11) NOT NULL,
  `grand_total` decimal(13,2) NOT NULL,
  `promo_name` varchar(100) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `promo_kode` varchar(50) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount` decimal(13,2) NOT NULL,
  `discount_total` decimal(13,2) NOT NULL,
  `insertId` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_history`
--

CREATE TABLE `or_order_history` (
  `id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(4) NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_product`
--

CREATE TABLE `or_order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `name` varchar(256) NOT NULL,
  `kode` varchar(256) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `attributes_id` int(11) NOT NULL,
  `attributes_name` varchar(256) NOT NULL,
  `attributes_price` decimal(15,4) NOT NULL,
  `berat` int(11) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `or_order_status`
--

CREATE TABLE `or_order_status` (
  `order_status_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `or_order_status`
--

INSERT INTO `or_order_status` (`order_status_id`, `name`) VALUES
(2, 'Processing'),
(3, 'Shipped'),
(7, 'Canceled'),
(5, 'Complete'),
(8, 'Denied'),
(9, 'Canceled Reversal'),
(10, 'Failed'),
(11, 'Refunded'),
(12, 'Reversed'),
(13, 'Chargeback'),
(1, 'Pending'),
(16, 'Voided'),
(15, 'Processed'),
(14, 'Expired'),
(17, 'Paid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pdf`
--

CREATE TABLE `pdf` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `size` decimal(10,3) NOT NULL,
  `sort` int(11) NOT NULL,
  `date_input` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pdf`
--

INSERT INTO `pdf` (`id`, `category_id`, `nama`, `image`, `file`, `size`, `sort`, `date_input`) VALUES
(5, 0, 'Coba PDF', 'ef25b-per.jpg', 'Doc1 - Copy2.pdf', '78306.000', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_bank`
--

CREATE TABLE `pg_bank` (
  `id` int(25) NOT NULL,
  `id_bank` int(25) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `rekening` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_bank`
--

INSERT INTO `pg_bank` (`id`, `id_bank`, `nama`, `rekening`) VALUES
(3, 2, 'PT. Jackson Shoes Indonesia', 123456789);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog`
--

CREATE TABLE `pg_blog` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(225) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` int(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog`
--

INSERT INTO `pg_blog` (`id`, `topik_id`, `image`, `link`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`) VALUES
(1, 2, '28475-Untitled-2.jpg', NULL, 1, '2019-07-31 09:49:44', '2019-08-01 15:42:38', 'info@markdesign.net', 'info@markdesign.net', 0),
(2, 2, '6f50b-Untitled-1.jpg', NULL, 1, '2019-07-31 10:37:39', '2019-08-01 15:40:24', 'info@markdesign.net', 'info@markdesign.net', 0),
(3, 2, 'f650f-Untitled-3.jpg', NULL, 1, '2019-07-31 10:44:09', '2019-08-01 15:37:20', 'info@markdesign.net', 'info@markdesign.net', 0),
(4, 2, '0078b-Untitled-4.jpg', NULL, 1, '2019-07-31 11:02:29', '2019-07-31 11:19:11', 'info@markdesign.net', 'info@markdesign.net', 0),
(5, 2, '6dec7-curbed.jpg', NULL, 1, '2019-07-31 11:19:20', '2019-08-01 15:34:25', 'info@markdesign.net', 'info@markdesign.net', 0),
(6, 2, '10978-Untitled-6.jpg', NULL, 1, '2019-07-31 11:29:20', '2019-08-01 15:32:01', 'info@markdesign.net', 'info@markdesign.net', 0),
(7, 2, '17f3b-Untitled-7.jpg', NULL, 1, '2019-07-31 11:43:24', '2019-08-01 15:29:01', 'info@markdesign.net', 'info@markdesign.net', 0),
(8, 2, 'f6237-Untitled-8.jpg', NULL, 1, '2019-07-31 13:15:25', '2019-08-01 15:24:34', 'info@markdesign.net', 'info@markdesign.net', 0),
(9, 2, 'c2810-Untitled-9.jpg', NULL, 1, '2019-07-31 13:20:56', '2019-08-01 15:21:25', 'info@markdesign.net', 'info@markdesign.net', 0),
(10, 2, '0deaa-Untitled-10.jpg', NULL, 1, '2019-07-31 13:34:26', '2019-08-01 15:18:24', 'info@markdesign.net', 'info@markdesign.net', 0),
(11, 2, '2cc09-Untitled-11.jpg', NULL, 1, '2019-07-31 13:46:01', '2019-08-01 15:15:41', 'info@markdesign.net', 'info@markdesign.net', 0),
(12, 2, '05085-Untitled-12.jpg', NULL, 1, '2019-07-31 14:04:58', '2019-08-01 15:11:07', 'info@markdesign.net', 'info@markdesign.net', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_blog_description`
--

CREATE TABLE `pg_blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `quote` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_blog_description`
--

INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(31, 1, 2, '11 Material Bangunan Paling Penting yang Harus Kamu Tahu', '<p>Memiliki rumah sendiri adalah impian yang dimiliki oleh hampir semua orang. Harganya tidak murah dan butuh waktu lama untuk mewujudkan mimpi tersebut. Oleh karena itu kamu harus memperhatikan material bangunan yang digunakan untuk membangunnya. Pastikan semuanya berkualitas supaya rumah bisa bertahan dalam waktu yang lama.</p><p>Setidaknya ketahuilah 11 material bangunan yang paling penting berikut ini!</p><p>1. Material bangunan batu bata</p><p>Material bangunan yang pertama adalah batu bata merah. Harganya cukup mahal dibandingkan dengan bahan penggantinya seperti batako, namun untuk kekuatannya tidak perlu diragukan lagi. Ukurannya ada yang besar dan sedang supaya bisa disesuaikan dengan model rumah yang akan dibangun.</p><p>2. Jangan lupakan semen</p><p>Material bangunan semen berfungsi untuk merekatkan batu-bata sehingga bisa menjadi dinding yang kokoh. Semen juga digunakan untuk merekatkan lantai keramik. Untuk pencampuran semen, kamu perlu perbandingan antara air dan semen yang tepat supaya bisa merekat dengan baik.</p><p>3. Pasir juga penting</p><p>Material bangunan pasir berfungsi untuk campuran semen. Pasir yang baik biasanya memiliki bentuk butiran yang tajam karena lebih kuat untuk campuran perekat bata atau pun pondasi. Selagi memilih pasir, cobalah mengepalnya. Jika menggumpal, maka pasir tersebut kurang berkualitas. Hindari juga memilih pasir dengan kandungan lumpur lebih dari 5%</p><p>Dekoruma Cicilan Nol Persen</p><p>4. Material bangunan besi beton</p><p>Material bangunan berupa besi beton berfungsi sebagai rangka konstruksi rumah. Ukuran besi beton ini beragam mulai dari 10 mm hingga 12 m. Jenisnya ada yang permukaan polos, ulir, dan berbentuk kanal. Kerangka besi beton ini kemudian diisi dengan adonan semen dan pasir.</p><p>5. Kayu juga dipakai sebagai material bangunan</p><p>Material bangunan kayu hingga saat ini masih populer sebagai kerangka rumah. Ada banyak jenis kayu yang bisa digunakan untuk membangun rumah, namun yang terbaik biasanya berasal dari Kalimantan, seperti kayu kamper Rasamala dan kamper Samarinda.</p><p>Jika tidak menemukan kayu ini, pilihlah kayu lain yang kandungan airnya tidak lebih dari 20%. Bila perlu pastikan kayu tersebut sudah melewati proses pengovenan supaya kayu tidak mudah lapuk.</p><p>6. Material bangunan selanjutnya adalah genteng</p><p>Bangunan rumah yang kokoh tidak akan lengkap jika tidak ada material bangunan genteng yang berfungsi untuk melindungi para penghuni rumah dari panas matahari dan siraman hujan. Pada umumnya genteng dibuat dari tanah liat. Material bangunan yang satu ini daya tahannya sangat kuat dan tidak mudah lapuk karena perubahan cuaca sehingga tidak perlu diganti hingga belasan bahkan puluhan tahun ke depan.</p><p>7. Triplek juga sangat populer</p><p>Material bangunan berupa triplek biasanya digunakan sebagai penutup bagian langit-langit atau plafon rumah. Dengan demikian langit-langit terlihat lebih rapi, kabel-kabel yang berantakan dan kerangka atap tidak terlihat. Triplek pada langit-langit ini juga bisa didekorasi dengan cat atau ukiran cantik.</p><p>8. Peran paku yang nggak boleh dilupakan</p><p>Apalah artinya penggunaan kayu dan triplek tanpa adanya material bangunan paku. Paku ini berfungsi untuk menyambungkan kayu dan triplek sehingga bangunan rumah menjadi lebih kuat. Paku juga sering digunakan bersama tali sebagai alat pemandu pemasangan keramik.</p><p>9. Pipa-pipa juga harus ada</p><p>Material bangunan berupa pipa diperlukan untuk menyalurkan air ke seluruh bagian rumah. Misalnya saja di kamar mandi, wastafel, dapur, hingga rumah kebun.</p><p>10. Material bangunan penuh warna, cat</p><p>Material bangunan berikutnya adalah cat yang berperan sebagai finishing tampilan rumah baik interior maupun eksterior. Cat tersedia dalam aneka pilihan warna sehingga kamu bisa memilih sesuai dengan keinginan masing-masing.</p><p>11. Peran keramik dalam interior rumah</p><p>Material bangunan keramik digunakan untuk melapisi permukaan lantai. Terkadang digunakan sebagai pelapis backsplash di dapur.</p>', ''),
(30, 2, 2, '9 Jenis Bahan Bangunan yang Digunakan dalam Konstruksi', '<p>Sebelum merancang konstruksi sebuah bangunan, ada baiknya kita mengetahui terlebih dahulu bahan bangunan apa saja yang diperlukan. Tidak hanya bahan alami yang digunakan dalam konstruksi pembangunan, tetapi juga bahan yang berasal dari pabrik.</p><p>Bahan bangunan alami sedikit sekali mendapatkan campur tangan pabrik, misalnya kayu dan kaca. Sedangkan bahan bangunan pabrikan adalah kebanyakan diolah di dalam pabrik, misalnya pipa dan semen. Masing-masing jenis memiliki fungsinya sendiri.</p><p>Buat kamu yang sedang merencanakan pembangunan atau renovasi sebuah rumah, ada baiknya mengetahui tipe-tipe bahan bangunan. Selain menambah wawasan, kamu juga sedikitnya bisa mengetahui bahan bangunan yang mana yang cocok untuk rumahmu.</p><p>1. Batu Bata</p><p>Kita tentunya mengenal batu bata sebagai bahan bangunan penyusun dinding. Batu bata sendiri terbuat dari tanah liat yang dibakar hingga berwarna kemerah-merahan yang khas, atau biasa kita sebut merah bata. Selain itu, batu bata juga memiliki banyak jenis.</p><p>Seiring perkembangan teknologi, penggunaan batu bata sebagai bahan bangunan untuk dinding mulai menurun penggunaannya. Popularitasnya mulai tergantikan oleh gipsum dan bambu. Bambu dan gipsum sebagai bahan bangunan penyusun dinding relatif memiliki harga lebih murah ketimbang batu bata. Meski begitu, batu bata tetap jadi bahan bangunan yang paling umum digunakan, terutama karena kekokohannya.</p><p>2. Lumpur dan Tanah Liat</p><p>Penggunaan lumpur dan tanah liat, terutama jumlahnya, sangat bergantung pada bangunan seperti apa yang diinginkan. Hal ini juga berkaitan dengan kualitas tanah yang digunakan.</p><p>Campuran lumpur pada pasir dapat membuat kekuatan bangunan lebih lemah. Sebaiknya lumpur dan tanah liat menyatu lebih halus dengan bahan bangunan lainnya, seperti beton, supaya tidak menyisakan rongga yang dapat mengeroposkan bangunan.</p><p>Sebaliknya, tanah liat adalah bahan bangunan yang sangat baik dalam menjaga keseimbangan suhu pada ruangan. Maka ketika musim panas, rumah akan terasa sejuk dan pada musim dingin, rumah akan terasa hangat.</p><p>Lumpur dan tanah liat menahan panas untuk kemudian dilepaskan dari waktu ke waktu. Sehingga penghuni rumah tidak akan merasakan perubahan temperatur yang mendadak.</p><p>3. Batu</p><p>Batu adalah bahan bangunan yang paling lama digunakan sekaligus yang paling mudah ditemui. Ada banyak jenis batu yang bisa digunakan sebagai bahan bangunan, tentu baik atau tidaknya tergantung pada tujuan konstruksi.</p><p>Meski kaku dan berat, batu merupakan bahan bangunan yang sangat padat sehingga bisa memberikan perlindungan menyeluruh. Meski begitu, batu juga sulit memberikan temperatur yang hangat tanpa menggunakan penghangat ruangan yang memadai.</p><p>Sebagai bahan bangunan paling tua, dinding batu sudah ada sejak manusia mulai membangun. Namun kini, semen biasa digunakan untuk merekatkan batu satu sama lainnya.</p><p>4. Jerami</p><p>Seperti batu, jerami juga termasuk bahan bangunan paling tua. Selain itu, rumput adalah penahan panas yang baik dan mudah dipanen. Jerami adalah bahan bangunan yang terkenal pada sebagian besar kebudayaan di dunia.</p><p>Suku-suku di Afrika bahkan menggunakan jerami sebagai satu-satunya bahan bangunan untuk rumah mereka. Sedangkan di Eropa sendiri, atap jerami pada rumah-rumah sangat lazim digunakan meski ketika memasuki era industri jerami mulai ditinggalkan. Jerami saat ini popular kembali. di Belanda contohnya, atap jerami banyak ditemukan pada bangunan-bangunan baru.</p><p>5. Kayu</p><p>Kayu termasuk bahan bangunan yang paling umum digunakan. Berasal dari pohon atau terkadang dari tumbuhan-tumbuhan yang berserat, kayu diproduksi menjadi bahan bangunan, lemari, papan, juga furniture dan perabot lainnya.</p><p>Kayu memiliki berat yang bisa disesuaikan, tetap kuat meski dibengkokkan, dan semakin kokoh ketika dipadatkan secara vertikal. Kayu juga cocok di segala musim. Kayu sebagai bahan bangunan umumnya digunakan untuk menopang bagian atap.</p><p>Dahulu, kayu sebagai bahan bangunan langsung digunakan dalam bentuk gelondongan. Pohon-pohon hanya dipotong begitu saja ke dalam ukuran yang dibutuhkan. Namun setelah ditemukannya mesin pemotong, kayu dapat dibentuk ke dalam berbagai dimensi dan bentuk. Hal ini mempermudah dan mempercepat proses pembangunan.</p><p>6. Semen</p><p>Semen termasuk bahan bangunan paling penting. Tanpa semen, bahan bangunan lainnya seperti batu bata dan batako tidak bisa menyatu satu sama lain. Semen juga termasuk bahan bangunan paling vital dalam pembuatan fondasi yang sangat kokoh.</p><p>Semen sendiri terdiri dari 4 unsur pokok, yaitu; batu kapur sebagai komponen utama, tanah liat yang di dalamnya terkandung SiO2, Al2O3, dan Fe2O3, batu silika yang ditambahkan apabila tanah liat terdapat sedikit SiO2, dan yang terakhir adalah pasir besi, yang ditambahkan jika tanah liat mengandung sedikit Fe2O3.</p><p>7. Metal</p><p>Metal adalah salah satu bahan bangunan paling kuat. Metal biasanya digunakan sebagai kerangka konstruksi bangunan-bangunan besar seperti gedung pencakar langit, juga bisa sebagai pelapis permukaan gedung. Ada beragam jenis metal yang biasa digunakan sebagai bahan bangunan. Misalnya saja baja, yang merupakan campuran bahan lainnya dengan besi sebagai komponen utama, cocok sebagai struktur bangunan.</p><p>Baja adalah bahan bangunan yang kuat, fleksibel, serta tahan lama. Meski begitu, karat tetap menjadi tantangan paling besar. Campuran alumunium dan timah memiliki kepadatan yang rendah tetapi lebih baik dalam mencegah karat dibanding baja. Bahan metal lainnya yang digunakan sebagai bahan bangunan adalah titanium, krom, perak, dan emas.</p><p>Titanium bisa digunakan untuk struktur bangunan, tetapi harganya memang jauh lebih mahal daripada baja. Sedangkan emas, perak, dan krom adalah bahan bangunan yang tidak cocok untuk struktur bangunan, tetapi sangat indah dijadikan dekorasi.</p><p>8. Kaca</p><p>Kaca adalah bahan bangunan yang dapat digunakan sebagai jendela. Material bening dan tipis ini memang telah digunakan sebagai pelapis pada ventilasi rumah-rumah sejak pertama kali ditemukan.</p><p>Kaca memungkinkan penghuni rumah mendapatkan cahaya dari luar namun tetap terlindungi dari efek buruk cuaca. Kaca sendiri secara umum terbuat dari campuran pasir dan silika, sehingga begitu rapuh, atau mudah pecah.</p><p>Dengan kecanggihan teknologi, kaca kini bisa menjelma menjadi semacam tirai yang mampu menutupi permukaan bangunan. Kaca juga bisa digunakan pada atap untuk mendapatkan pemandangan langit yang cantik. Contohnya adalah skylight.</p><p>9. Pipa</p><p>Meski tidak termasuk bahan bangunan yang berguna dalam pembentukan atap, dinding, ataupun fondasi, namun pipa tetap memiliki peranan penting dalam sebuah konstruksi. Pipa digunakan untuk menghubungkan saluran air dan saluran pembuangan, misalnya pada kamar mandi.</p><p>Pipa terbuat dari bahan-bahan yang tahan terhadap suhu yang rendah maupun tinggi, sehingga dapat mengalirkan air dengan baik. Pipa seniri biasanya terbuat dari: carbon steel, carbon moly, ferro nikel, stainless steel, chrome moly, dan yang paling populer, PVC.</p>', ''),
(29, 3, 2, 'Hebat! Para Ilmuwan Menemukan Beton yang Bisa Memperbaiki Keretakannya Sendiri', '<p>Kualitas bahan bangunan jadi salah satu perhatian orang ketika akan membangun rumah atau gedung perkantoran. Kalau material bangunannya tidak bagus, bangunan bisa cepat retak dan bahkan ada yang ambruk sampai menyebabkan kecelakaan fatal. Kalaupun tidak terlihat retak di permukaan, material bangunan yang jelek dan penuh celah juga seringkali menimbulkan resapan air yang nantinya buat ruangan menjamur serta bau apek.</p><p>Kalau beton sudah retak, paling biasanya akan kembali ditambal dengan tambahan semen. Tapi ya itu tanda bangunanya sudah rapuh. Nah ini ada penemuan baru yang bisa mengakhiri semua keresahan itu. Seorang ilmuwan Belanda berhasil membuat beton yang bisa ‘menyembuhkan’ keretakannya sendiri. Tanpa perlu tambalan semen, beton yang mengalami keretakan bisa tumbuh sendiri mengisi celah yang kosong. </p><p>1. Penemuan beton ajaib ini berawal dari keresahan karena beton yang sering kali retak pada usia muda</p><p>Kalian mungkin sering kali resah melihat beton yang mulai retak, bahkan hampir ambruk. Mungkin keresahan itu pula yang dirasakan oleh beberapa peneliti dari Delft University of Technology di Belanda. Seorang profesor bernama Henk Jonkers menemukan bahwa ada materi yang bisa digunakan untuk menanggulangi masalah keretakan ini.</p><p>Kerusakan beton ini selain membahayakan juga seringkali jadi sumber pengeluaran paling besar dari biaya perawatan gedung. Makanya jika penemuan Jonkers ini sudah tersebar luas, bakal banyak banget orang yang bisa memanfaatkan teknologi ini. Tak perlu lagi ada kekhawatiran gedung bakal retak atau ambruk jika teknologi self-healing concrete atau beton yang bisa ‘menyembuhkan’ diri ini benar-benar bisa disempurnakan.</p><p>2. Beton ini adalah hasil dari penggabungan unsur alam dan material bangunan, komposisinya pun sangat beraneka ragam</p><p>Sebagaimana dilansir dari CNN, Jonkers dan tim penelitiannya menemukan bahwa ada sebuah materi alam berbentuk bakteri yang bisa dengan alami mengisi keretakan dalam material beton. Jonkers memilih bakteri baccilus untuk menghasilkan spora karena bakteri tersebut bisa tahan lama tanpa makanan atau oksigen. Supaya bakteri tersebut terus bisa tumbuh dalam beton, para peneliti memasukkan suplai makanan berupa kalsium laktat dalam bentuk kapsul-kapsul kecil. Kapsul tersebut nantinya dicampurkan dalam adonan beton basah. Tidak cukup hanya dengan mencampurkan bakteri dalam campuran beton, Jonkers juga perlu menambahkan unsur perekat seperti batuan kapur.</p><p>3. Komposisi yang terkandung dalam beton ini bereaksi ketika terkena air, reaksinya pun mirip jamur-jamur yang berkembang pada tempe</p><p>Cara kerjanya pun cukup simpel. Jika kamu pernah liat proses pembuatan tempe, ya ini mirip-mirip lah. Ketika beton mulai retak, maka air akan masuk memenuhi sela-sela retakan. Aliran air itu akan mendorong kapsul-kapsul yang tercampur di dalamnya pecah dan mengeluarkan bakteri serta kalsium laktat. Bakteri yang keluar dari dalam kapsul pun mulai berkecambah. Dicampur dengan kalsium laktat sebagai sumber makanan, bakteri akan terus tumbuh menutup retakan dengan konsistensi semacam batu gamping yang mengeras.</p><p>4. Selain beton, ternyata ada aspal yang tahan dari keretakan dengan konsep yang sama</p><p>Nggak cuma beton, seorang profesor lain dari Delft University of Technology juga berhasil mengembangkan metode ‘self-healing‘ pada aspal. Profesor Erik mengembangkan metode penyembuhan diri pada aspal dengan mengadaptasi cara kerja pemanasan induksi. Hanya dengan penambahan material serat baja, ternyata aspal bisa ‘menyembuhkan’ diri sendiri. Melalui panas dari aspal, serat baja tersebut akan meleleh dan menempati ruang kosong seperti keretakan pada aspal jalan. Aspal karya Erik bahkan sudah diujicobakan untuk beberapa meter jalan di Belanda dan hasilnya pun nggak mengecewakan.</p><p>Indonesia ternyata bukan hanya jadi penonton saja lho. Sejak tahun 2015 Kelompok Penelitian (Keltian) Rekayasa Biokomposit dan Ekostruktur (RBE) – Pusat Penelitian Biomaterial LIPI sudah meneliti bakteri apa di Indonesia yang cocok menambal dan merekatkan keretakan beton. Ya lumayan lah kalau bisa mengembangkan beton ajaib seperti para peneliti Belanda ini, biaya maintanance gedung bisa turun…</p>', ''),
(7, 4, 2, 'For Dak Beton, Choose the Right Leak-Proof Coating with 5 Tips', '<p>For Dak Beton, Choose the Right Leak-Proof Coating with 5 Tips</p><p>Dak is a part of construction that is at the very top of the building and often functions as an additional area, such as a washing room. Although not concrete is a favorite because of superior durability and the ability to reduce the heat of the sun, using leak-proof coating paint is mandatory.</p><p>Given that Indonesia is a tropical country with increasingly erratic rainfall, there is no harm in ensuring that residential with concrete is more weather resistant with leak-proof coating paint. Armed with the following tips, choose the leakproof coating paint that is right for no concrete.</p><p>1. Choose Leakproof Coating that Is Resistant To Sunlight</p><p>If the concrete in your dak is only made of one layer, make sure you choose a leak-proof coating that is resistant to sun exposure. This is due to the absence of heat blocking space between the roof and the ceiling so that the use of poor quality coatings can accelerate the risk of leakage.</p><p>2. Select Leakproof Coating with Anti-fungal Formula</p><p>In addition to strength, the cleanliness factor is also a major consideration when choosing leak-proof coatings. For that, make sure you choose coating paint with an antifungal, dust and bacterial formulation to make it easier to clean and not cause weathering to occur.</p><p>3. Pay attention to how to use leak-proof coating paint</p><p>When patching leaky parts, you must pay attention to how to use leak-proof coating paint because each product requires a different use step. However, whatever type of coating paint you are using, make sure you have cleaned the roof first by removing mold and dust so that the adhesive strength of the coating is even better.</p><p>4. Note the Large Concrete Dak Cracks</p><p>In choosing the right anti-leak coating paint, you can adjust it to the amount of cracks not concrete in your dwelling. If the damage is large, ideally you will also add other elements such as high-strength cement and use a layer of additive bonding agent. Do not forget, do the leaking part of the leak on the concrete first so that the fillings look neater.</p><p>5. Select the Leakproof Coating according to the type</p><p>At present, there are various types of leakproof coatings. Apart from being in the form of leak-proof paint, know the three types of coatings that are commonly found on the market to overcome the leakage in the following concrete:</p><ul><li>. Styrene Acrylic Leak Coating</li></ul><p>If you prioritize strength, please choose a leakproof coating with a coating made of styrene acrylic because it has excellent durability than other types of coatings. Even so, unfortunately this type of coating is sold at a fairly expensive price.</p><ul><li>. Membrane Anti Leak Coating</li></ul><p>If the previous type is considered too expensive, you can choose a leak-proof coating made from oil from asphalt-like raw materials at a more economical price. The difference from coating paint is that it is sold in sheet form, which contains reinforcement and polyester material.</p><ul><li>. Coating Anti Leak Cementius</li></ul><p>Alternatively, you can use cementius leak-proof paint, which consists of two components, namely cement and addictive substances to bind concrete. In the application, you should coat the concrete more than once so that the adhesive strength is better with different sweeping techniques.</p><p>Of course, you should choose a leak-proof coating with excellent strength and antifungal and anti-dust content so that it lasts longer. Immediately resolve the leak without concrete by choosing the right leak proof coating!</p>', ''),
(28, 5, 2, 'Sayang Bumi, Bangun Rumah dengan 6 Material Ramah Lingkungan Ini', '<p>Kondisi bumi yang semakin mengenaskan setiap harinya mengingatkan kita akan bahaya pemanasan global dan kontribusi manusia terhadap perubahan cuaca yang drastis ini. Beralih ke material ramah lingkungan, misalkan kantong belanja dari kain perca, sedotan bambu, atau peralatan makan kayu, bisa menjadi salah satu cara untuk menunjukkan rasa sayang kita kepada bumi tempat kita tinggal.</p><p>Tak hanya untuk keperluan sehari-hari, material ramah lingkungan juga dapat digunakan untuk membangun rumah. Selain membantu mengurangi kontribusi terhadap pemanasan global, hunian juga terasa lebih sejuk dan alami.</p><p>Penasaran dengan material ramah lingkungan yang dapat kamu gunakan untuk hunian natural? Yuk, simak daftarnya berikut ini.</p><p>1. Jerami, perlindungan dari panas dan bising</p><p>Walaupun jerami sebenarnya sudah cukup lama digunakan untuk menutup bagian atap rumah, akhir-akhir ini jerami semakin populer sebagai material ramah lingkungan, khususnya untuk dinding. Dengan harga yang murah dan mudah ditemukan di pasaran, jerami diletakkan pada ruang antara kolom dan kerangka balok.</p><p>Material ramah lingkungan ini merupakan isolator panas yang baik dan juga berfungsi sebagai peredam suara. Dengan demikian, pemilik hunian tidak akan mudah merasa panas di siang hari dan bisa bersantai tanpa suara bising dari luar.</p><p>2. Baja ringan, material antirayap yang tangguh</p><p>Pada zaman dulu, orang-orang membangun rumah menggunakan kayu sebagai kerangka atap dan kusen jendela. Namun, kayu tidak dapat dianggap sebagai material ramah lingkungan karena meningkatnya permintaan atas kayu mengakibatkan penggundulan hutan secara massal.</p><p>Sebagai alternatif, kamu bisa memanfaatkan rangka atap baja ringan yang tidak kalah kuat dari kayu. Sebagai material ramah lingkungan, baja ringan juga dapat didaur ulang berkali-kali, dan akan menghemat biaya perawatan karena tidak membutuhkan obat antirayap.</p><p>3. Bambu, tampil kukuh dan estetik</p><p>Selain baja ringan, ada juga material bambu sebagai material ramah lingkungan pengganti kayu. Salah satu material ramah lingkungan yang kian populer, bambu sendiri sudah dikenal sejak zaman dulu dan sering digunakan karena sangat kuat dalam menopang beban berat, meski bobot bambunya ringan.</p><p>Tanaman kesukaan panda ini juga tumbuh dengan cepat di alam bebas sehingga tidak ada kekhawatiran akan berkurangnya stok bambu. Tidak hanya menjadi material ramah lingkungan, tanaman bambu juga bisa meningkatkan nilai estetik pada sebuah bangunan.</p><p>4. Tanah yang dipadatkan, teknik dari nenek moyang</p><p>Pernahkah terpikir untuk memanfaatkan tanah yang dipadatkan sebagai material ramah lingkungan untuk membangun rumah? Faktanya teknik ini sudah diterapkan oleh nenek moyang kita sejak ribuan tahun lalu dan terbukti kalau material ini tahan lama.</p><p>Tanah yang dipadatkan ini dijadikan sebagai material ramah lingkungan pengganti beton yang kualitas dan kekuatannya tidak kalah saing. Rumah akan terasa lebih sejuk dan alami.</p><p>5. Material ramah lingkungan hempcrete</p><p>Dianggap sebagai material ramah lingkungan, hempcrete adalah beton modern yang dibuat menggunakan serat tanaman hemp. Serat tanaman itu dicampur dengan kapur sehingga bentuk adonannya menyerupai beton biasa.</p><p>Bobotnya lebih ringan, namun kuat menahan beban berat. Hempcrete ini disebut sebagai material ramah lingkungan karena persediaan tanaman hemp di alam bebas sangat banyak, disebabkan oleh proses pertumbuhan tanaman hemp yang begitu cepat dan berkelanjutan.</p><p>6. Material ramah lingkungan ashcrete</p><p>Selanjutnya ada inovasi material ramah lingkungan yang diberi nama ashcrete. Sesuai dengan namanya, ashcrete ini dibuat menggunakan abu terbang yang merupakan produk hasil pembakaran batu bara. Kehadiran ashcrete ini disebut-sebut mampu menggantikan penggunaan semen tradisional dan daya rekatnya sangat kuat.</p><p>Silakan mempertimbangkan sejumlah material ramah lingkungan tadi sebelum kamu membangun rumah, demi keasrian lingkungan dan juga kenyamanan saat tinggal di properti rumah.</p>', ''),
(27, 6, 2, 'Material Favorit, Ketahui Prakiraan Harga 6 Papan Kayu Terpopuler di Indonesia', '<p>Material kayu menjadi favorit banyak orang karena dapat memberikan aksen natural di hunian. Umumnya, papan kayu digunakan untuk struktur bangunan seperti plafon, dudukan genteng, kusen, hingga untuk interior hunian seperti furnitur dan dekorasi.</p><p>Khusus untuk penggunaan lisplang, furnitur, dekorasi maupun bekisting cor, penggunaan papan kayu adalah pilihan yang pas. Di Indonesia sendiri, kayu yang dipotong dalam bentuk papan hadir dari olahan berbagai jenis kayu yang masing-masingnya dijual dengan harga berbeda dengan kekurangan dan kelebihannya tersendiri.</p><p>Jika saat ini sedang berencana membangun hunian atau membuat furnitur dan dekorasi DIY menggunakan kayu dalam bentuk papan, berikut informasi terkait prakiraan harga papan kayu saat ini untuk memudahkan pemilihan papan kayu berdasarkan kualitas dan anggaran yang dimiliki. </p><p>1. Papan Kayu Punak</p><p>Papan kayu punak cukup populer di Indonesia karena memiliki karakteristik yang padat, tahan air dan cuaca, serta mempunyai kualitas setara kayu ulin. Berasal dari pohon punak yang banyak tumbuh di kawasan Jambi dan Palembang, ia dijual dengan harga yang cukup ekonomis jika dibandingkan dengan papan dari jenis kayu solid lainnya. Terkait harga, kayu punak dalam bentuk papan dengan ukuran 2 cm x 20 cm x 400 cm saat ini bisa kamu beli dengan kisaran harga Rp70.000,00.</p><p>2. Papan Kayu Meranti</p><p>Selanjutnya adalah papan kayu meranti yang memiliki karakteristik keras dengan bobot ringan hingga berat-sedang. Dengan ciri warna merah muda, merah tua, hingga merah tua kecokelatan tergantung usia kayu, papan dari jenis kayu meranti juga memiliki durabilitas yang baik untuk diolah menjadi berbagai macam benda. Soal harga, papan kayu meranti dengan ukuran 2 cm x 20 cm x 400 cm bisa kamu beli dengan kisaran harga Rp80.000,00.</p><p>3. Papan Kayu Kamper</p><p>Ada pula papan kayu kamper yang terkenal awet dan tahan rayap. Banyak ditemukan di hutan kawasan Kalimantan, keunggulan lain dari kayu kamper adalah tekstur yang kasar sehingga memberikan ciri khas tersendiri saat dipakai untuk furnitur. Untuk harganya, kayu kamper dalam bentuk papan berukuran 3 cm x 20 cm x 400 cm bisa kamu beli dengan kisaran harga Rp260.000,00.</p><p>4. Papan Kayu Borneo</p><p>Sesuai namanya, papan kayu ini dihasilkan dari pohon perkebunan yang ada di kawasan Kalimantan dan termasuk didalamnya adalah kayu karet, kayu albasia dan kayu afrika. Dengan ciri khas warna putih kekuningan, kayu Borneo juga memiliki ciri lunak-keras dan digolongkan sebagai kayu yang berat. Terkait harganya, saat ini kamu bisa membeli kayu Borneo dalam bentuk papan ukuran 3 cm x 20 cm x 400 cm dengan kisaran harga Rp90.000,00.</p><p>5. Papan Kayu Jati Belanda</p><p>Disebut juga dengan nama kayu pinus, papan kayu jati Belanda seringkali digunakan untuk furnitur karena bobotnya yang ringan, memiliki warna cerah yang cantik, memiliki serat halus sehingga mudah untuk diolah, serta memiliki keawetan yang sangat prima. Untuk kayu jati Belanda dalam bentuk papan yang sudah dipernis, kamu bisa membelinya dengan kisaran harga Rp170.000,00 untuk ukuran 100 cm x 60 cm x 2 cm.</p><p>6. Papan Kayu MDF</p><p>Meskipun berupa olahan, namun papan kayu MDF (Medium Density Fiber) sangat populer digunakan untuk pembuatan furnitur. Alasannya, kayu MDF mempunyai permukaan yang halus, ikatan partikel kuat, namun bobotnya yang cukup ringan sehingga memudahkan pengolahan. Sementara untuk harganya, kayu MDF dalam bentuk papan dengan ketebalan 15 mm bisa kamu beli dengan kisaran harga Rp179.000,00 per lembar.</p><p>Melalui informasi harga papan kayu di atas, diharapkan kamu bisa menyusun anggaran dengan tepat, baik untuk membangun rumah atau menghias interior ruangan dengan membuat furnitur custom.</p>', ''),
(26, 7, 2, 'Ingin Memasang Lantai Teraso untuk Hunian? Ketahui Plus Minus-nya Berikut!', '<p>Dalam dunia bangunan, terdapat berbagai jenis lantai yang kerap digunakan pada hunian, masing-masing dengan kelebihan dan kekurangannya. Ambil contoh lantai teraso, jenis lantai yang sempat populer di masa lampau ini kembali menjadi tren untuk melengkapi desain hunian.</p><p>Lantai teraso terbuat dari campuran semen dan pasir, di mana bagian atasnya dilapisi dengan bahan keras seperti pecahan marmer. Lantas, apa saja kelebihan dan kekurangan lantai teraso untuk hunian? Ketahui lebih lanjut agar kamu bisa menyesuaikan penggunaan lantai teraso dengan kebutuhan hunian.</p><p>1. Lantai teraso ‘kasar’ cocok untuk lantai eksterior</p><p>Mungkin belum banyak yang mengetahui bahwa lantai teraso mempunyai dua variasi permukaan: polos mengilap dan kasar. Jika variasi teraso yang polos dan mengilap cenderung licin, material teraso yang kasar terbilang cocok digunakan sebagai lantai untuk eksterior hunian.</p><p>Tak hanya akan meminimalisasi risiko tergelincir, saat turun hujan pun akan relatif lebih aman untuk berpijak di lantai teraso yang kasar walaupun ada genangan air. Terpaan sinar matahari juga akan membuat permukaan teraso lebih menonjol sehingga lantai terlihat lebih estetik.</p><p>2. Permukaan lantai teraso antigores</p><p>Baik lantai teraso dengan permukaan mengilap atau kasar, keduanya sama-sama memiliki permukaan yang antigores. Kamu pun tak perlu khawatir jika perlu memindahkan atau menggeser aneka furniture dengan bobot berat ataupun sudut tajam pada kakinya. Terlebih bagi kaum hawa, menginjak lantai saat memakai sepatu hak tinggi pun tidak akan menimbulkan masalah besar.</p><p>3. Lebih awet daripada lantai keramik</p><p>Dibandingkan dengan lantai keramik, kekuatan lantai teraso jauh lebih besar. Tak hanya mampu menopang beban yang cukup berat dalam waktu yang cukup lama, lantai ini tetap terlihat apik pada rumah-rumah lama berusia puluhan tahun. Kekuatan dari material inilah yang mendorong beberapa pabrik dengan alat berat untuk beralih menggunakan lantai teraso.</p><p>4. Ragam corak yang sangat menawan</p><p>Sama seperti keindahan karya seni mozaik, lantai teraso memiliki beragam corak yang sangat menawan berkat tambahan pecahan marmer dalamnya. Tak heran, hunian yang menggunakan teraso sebagai material lantai pun terlihat lebih mewah. Teraso pun menjadi material favorit untuk lantai dari hunian mewah di Indonesia asal Belanda di masa lampau.</p><p>5. Perawatan lantai teraso tergolong mudah</p><p>Memiliki lantai marmer berarti kamu harus siap merogoh kocek lebih dalam untuk membeli cairan pembersih khusus dan memoles permukaannya secara rutin. Lain cerita dengan lantai teraso yang perawatannya sangat mudah.</p><p>Cukup gunakan kain pel, serta sabun dicampur dengan air hangat. Pel lantai, lalu segera keringkan dengan kain lap. Jangan lupa, sapulah lantai setiap hari supaya debu tidak bersarang di segala sudut permukaannya. Mudah, bukan?</p><p>6. Sayangnya, harga lantai teraso cukup mahal</p><p>Walaupun lantai teraso dianggap sebagai alternatif lantai marmer yang terlampau mahal, harga material teraso untuk lantai masih tergolong mahal jika dibandingkan dengan sejumlah jenis lantai lainnya seperti ubin keramik. Hal inilah yang membuat sejumlah orang akhirnya beralih ke lantai keramik untuk memangkas pengeluaran saat membangun rumah.</p><p>7. Proses pemasangan lantai teraso cukup rumit</p><p>Proses pemasangan lantai teraso tergolong cukup rumit, tidak seperti pemasangan ubin keramik yang cukup direkatkan dengan semen dan diatur ke posisi yang tepat. Untuk mendapatkan permukaan mengilap pada teraso, kamu perlu mencari tenaga profesional untuk menggunakan alat khusus pemoles teraso.</p><p>Di balik segala kekurangan yang dimiliki, lantai teraso ini bisa dibilang merupakan pilihan tepat untuk kamu yang mengutamakan kualitas, kekuatan, dan kilap lantai. Proses pemasangan yang rumit dan harga jualnya hanya perlu kamu hadapi di awal. Selanjutnya, kamu bisa menikmati kualitas dan kilap lantai tanpa perlu melakukan perawatan ekstra.</p>', ''),
(25, 8, 2, '7 Kombinasi Warna Cat Dapur Sempit, Terlihat Lebih Luas!', '<p>Siapa sangka cat dapur ternyata berperan penting dalam mempercantik dapur? Tak hanya itu, pemilihan kombinasi warna yang tepat dapat menciptakan ilusi ruangan yang luas untuk dapur mungil.</p><p>Selain warna cat dapur pada dinding, setiap detail dalam interior dapur termasuk kitchen setberpengaruh pada suasana ruangan secara keseluruhan. Sebagai jantung rumah, suasana dapur perlu dipastikan agar terasa nyaman bagi setiap orang yang menggunakannya.</p><p>Walaupun dapur tergolong mungil, coba salah satu kombinasi warna cat dapur berikut agar ruangan terasa jauh lebih luas dan nyaman.</p><p>1. Aplikasi Putih dengan Penampilan Berbeda</p><p>Bukan rahasia lagi kalau warna putih diandalkan untuk memberikan kesan luas pada ruangan yang mungil. Sepanjang cat dapur diaplikasikan secara cermat, sesungguhnya rata-rata warna netral yang lembut selain putih pun cocok digunakan untuk dapur mungil.</p><p>Agar ruangan terkesan estetik dan luas, aplikasikan cat dapur warna putih dan manfaatkan tampilan ubin keramik putih glossy sebagai backsplash dapur. Walaupun warna putih dapat membuat dapur terlihat terlalu monoton, variasi aplikasi melalui turunan warna putih seperti putih krem atau putih gading dapat memberikan tampilan dapur yang berbeda tanpa terlihat membosankan.</p><p>2. Hitam Putih Serba Elegan</p><p>Kombinasi warna cat dapur ini boleh terbilang klasik, memanfaatkan warna hitam pada kitchen set dapur dan putih pada dinding dan countertop agar menciptakan dapur mungil dengan tema monokrom.</p><p>Walaupun dapur terbilang mungil, poin penting yang perlu diperhatikan saat mengaplikasikan kombinasi warna cat dapur ini adalah pencahayaan ruangan yang memadaidari jendela dan lighting ruangan itu sendiri. Berkat terangnya cahaya pada dapur setiap saat, warna cat dapur hitam pada kitchen set tak akan terkesan terlalu kelam sehingga ruangan terkesan lebih luas.</p><p>3. Sentuhan Alami Hijau & Kayu</p><p>Ingin mendekatkan diri dengan alam? Kombinasi warna cat dapur ini dapat menjadi pilihan. Dapur mungil yang menerapkan konsep natural dapat terwujud melalui pemilihan materialdan warna alam dengan kesejukan yang menenangkan.</p><p>Cukup kombinasikan kitchen set dari kayu dengan warna cat dapur hijau tua yang selaras dengan tekstur kayu. Pilih backsplash dapur dengan warna netral seperti putih dan abu-abu agar dapat menyatukan kedua elemen dapur sehingga tercipta ruangan yang terasa lebih hidup dan jauh dari kesan sesak.</p><p>4. Perpaduan Warna Retro</p><p>Skema warna cat dapur yang memikat terletak pada pemilihan tema dapur yang tepat. Walaupun warna putih terlihat mendominasi dapur sebagai warna utama, namun aksen desain retro dalam pilihan palet warna ruangan mencuri perhatian dengan efektif.</p><p>Mulai dari kontras hijau untuk kesan vintage atau shabby chic yang hangat, aksesoris antik, hingga pintu pembatas dengan ukiran klasik, presentasi dapur yang kreatif dengan skema warna cat dapur yang tepat adalah kunci utama agar dapur mungil terlihat menarik.</p><p>5. Dominasi Turquoise dan Merah Menyala</p><p>Dapur mungil dijamin terlihat ceria ketika memadukan warna primer sebagai fokus utama ruangan. Contoh saja inspirasi di atas yang memadukan warna biru hijau atau turquoise pada kitchen set dan kabinet dapur dengan cat dapur merah jingga pada dinding dan perlengkapan dapur.</p><p>Jangan lupa, aplikasikan warna netral sebagai transisi antar warna primer pada area dapur lainnya. Dengan begitu, warna cat dapur secara keseluruhan akan terlihat seimbang dan harmonis, kamu pun akan lebih semangat memasak di rumah.</p><p>6. Kombinasi Cat Dapur Hangat & Sejuk</p><p>Saat sulit menentukan warna cat dapur, coba perpaduan rona warna hangat (warm) dan sejuk (cool). Kontras antara kedua rona warna tersebut dapat memperjelas ilusi ruangan yang lebih luas sehingga dapur tidak terasa mungil.</p><p>Pilihan cat dapur yang hangat bisa berupa warna jingga lembut seperti pada dinding di atas ataupun warna bumi lainnya seperti terakota, kuning, atau merah. Sementara itu, pilihan cat dapur yang sejuk bisa berupa warna hijau, biru, ataupun ungu. Untuk menyeimbangkan kedua jenis warna tersebut, pilih warna netral seperti putih atau abu-abu untuk mengikatnya dengan harmonis.</p><p>7. Dapur Kecil Modis dengan Pastel Lembut</p><p>Aksen pastel yang lembut bisa menjadi andalan ketika memilih warna cat dapur mungil. Selain sentuhan pastel pada dinding atau panel jendela, warna cat dapur yang serasi ialah dominasi putih pada furniture lainnya.</p><p>Cat dapur warna pastel merupakan pilihan yang anti-mainstream dibanding warna umum seperti putih atau abu-abu, namun ia tetap mudah dipadukan dengan material kayu muda untuk kesan dapur yang lebih asri. Selain itu, warna cat dapur pastel cocok untuk dapur mungil karena punya dasar terang agar ruangan terkesan lebih terbuka.</p><p>Tak hanya sebatas memilih warna cat dapur yang membuat ruangan terkesan lebih luas, kombinasi warna cat dapur yang dipadukan dengan tampilan perabotan ruangan dapat menjauhkan perhatian dari sempitnya ruangan dan memusatkan perhatian kepada nilai estetik dari dapur mungil.</p>', ''),
(24, 9, 2, 'Bata Merah, Batako Press, dan Bata Ringan, Apa Bedanya?', '<p>Batu bata merupakan salah satu material bangunan yang sangat populer. Biasanya, batu bata merah yang ikonik ini sering ditemukan sebagai bahan konstruksi tembok, pagar ataupun elemen rumah lain karena sangat mudah ditemukan dan harganya yang cukup ekonomis.</p><p>Seiring perkembangan teknologi, saat ini tak hanya batu bata merah saja yang bisa kamu gunakan. Saat ini, terdapat variasi lain dari batu bata yang bisa kamu sesuaikan menurut kebutuhan kamu saat membangun rumah.</p><p>Melalui artikel ini, Kania akan mengajak kamu memahami perbedaan antara bata merah, batako press dan bata ringan berikut kekurangan dan kelebihannya sehingga tak salah memilih.</p><p>1. Bata Merah</p><p>Batu bata merah merupakan material bangunan paling umum karena sangat mudah ditemukan di pasaran. Bata merah terbuat dari tanah liat yang melewati proses pembakaran dengan suhu tinggi hingga keras dan mengering dalam bentuk balok persegi panjang. </p><p>Memiliki identitas warna kemerah-merahan, alasan lain bata merah begitu populer adalah ketahanan yang sudah sangat teruji. Di luar dari itu, bata merah memiliki keunggulan dan kekurangan yang tentunya bisa kamu pertimbangkan supaya proses pembangunan rumah berjalan lebih efisien.</p><p>2. Kekurangan Bata Merah</p><p>Dalam pemasangannya, bata merah terlihat sulit tertata rapi sehingga memakan waktu lebih lama dalam pengerjaan. Tak hanya itu, membangun dinding bata merah memerlukan material perekat yang banyak sehingga membuat pengeluaran lebih boros.</p><p>Jika ingin bangunan tahan cuaca, sebaiknya hindari menggunakan material bata merah karena dapat membuat suhu ruangan tidak stabil. Tak hanya mudah menyerap panas saat musim panas, ia juga mudah menyerap dingin saat musim dingin.</p><p>3. Kelebihan Bata Merah</p><p>Alasan utama dari kepopuleran bata merah terletak pada harganya yang sangat ekonomis. Ia pun hanya memerlukan bahan perekat yang simpel, seperti pasir dan semen instan.</p><p>Ukuran bata merah yang kecil membuatnya mudah diangkut atau dianggap lebih portabel. Tak perlu tukang khusus, jasa kontraktor umum juga sudah memadai untuk menyusun bata merah dengan baik.</p><p>4. Batako Press</p><p>Selain bata merah, bahan bangunan lain yang saat ini sedang populer adalah batako press. Umumnya, batako press dibuat menggunakan campuran pasir kasar dan semen yang dicetak padat, namun ada pula produsen yang memakai campuran kapur, batu bara, semen hingga batu tras.</p><p>Adapun, kekurangan dan kelebihan dari batako press bisa kamu lihat di bawah ini:</p><p>5. Kekurangan Batako Press</p><p>Tak seperti bata merah, batako press memiliki rongga di tengah balok sehingga mudah retak. Ia pun mudah menyerap panas sehingga kurang cocok untuk digunakan dalam interior hunian tropis.</p><p>6. Kelebihan Batako Press</p><p>Tak perlu cat anti bocor lagi, batako press tahan air. Walaupun memiliki ukuran lebih besar dibanding bata merah, ukuran setiap batako seragam sehingga tampak rapi saat ditumpuk menjadi dinding.</p><p>Ukuran batako yang lebih besar dari bata merah berarti ia memerlukan material perekat yang lebih sedikit dan dapat menghemat waktu saat pembangunan. </p><p>7. Bata Ringan </p><p>Salah satu variasi batu bata selain bata merah adalah bata ringan. Bahan bangunan yang satu ini kerap dipakai untuk meringankan struktur bangunan.</p><p>Diproduksi menggunakan mesin dengan karakter material yang halus, bata ringan memiliki tingkat kerataan lebih baik jika dibandingkan dengan bata merah dan batako press. Terbuat dari kombinasi material seperti semen, kapur, pasir kuarsa, alumunium, gipsum dan air, bata ringan juga memiliki kelebihan dan kekurangan yang perlu kamu pertimbangkan.</p><p>8. Kekurangan Bata Ringan</p><p>Bata ringan memerlukan ahli khusus yang teliti agar bisa memasangnya dengan tepat dan rapi. Selain itu, harganya pun lebih mahal dibanding material bata lainnya seperti bata merah dan batako press.</p><p>9. Kelebihan Bata Ringan</p><p>Memiliki kualitas dan ukuran seragam, hasil dari penataan batu ringan terlihat lebih rapi. Ia pun tidak memerlukan material perekat yang banyak sehingga menghemat anggaran.</p><p>Tak hanya tahan air, dinding dari bata ringan juga cocok dijadikan peredam suara. Ia pun memiliki durabilitas yang baik sehingga tahan lama. Berukuran sangat ringan, waktu yang diperlukan untuk menata bata ringan pun lebih singkat.</p><p>Masing-masing variasi batu bata di atas memiliki kelebihan dan kekurangan tersendiri untuk disesuaikan menurut kebutuhan kamu. Jangan lupa, pahami dengan matang perbedaan dari variasi batu bata di atas agar dapat mempunyai rumah impian yang estetik dan fungsional.</p>', ''),
(23, 10, 2, 'Pentingnya Desain Eksterior Rumah Bagi Hunian Sehat!', '<p>Pola hidup sehat sangatlah penting untuk dilakukan oleh semua orang. Selain rutin berolahraga dan konsumsi makanan sehat, desain interior dan eksterior hunian pun harus mampu mengoptimalkan pola hidup sehat yang kamu terapkan.</p><p>Bicara hunian sehat, ada banyak sekali elemen yang harus kamu perhatikan. Terlebih, Indonesia merupakan negara beriklim tropis dengan kondisi tingkat kelembapan yang tinggi sehingga kamu harus memaksimalkan potensi lingkungan dan eksterior rumah agar selalu nyaman dan tidak memengaruhi kesehatan.</p><p>Berikut ini, Kania akan membagikan elemen-elemen penting pada desain eksterior yang bisa kamu optimalkan demi menciptakan rumah sehat.</p><p>1. Jumlah Bukaan Memadai untuk Kelancaran Sirkulasi Udara</p><p>Jendela merupakan elemen eksterior penting karena berperan sebagai jalur keluar udara kotor dari rumah yang digantikan dengan masuknya udara bersih ke dalam rumah. Dalam merancang hunian, idealnya setiap ruangan seperti ruang tamu, dapur, hingga kamar tidur dilengkapi dengan jendela supaya sirkulasi udara berjalan lancar.</p><p>Mengingat banyak sekali jenis penyakit yang ditularkan secara mudah lewat udara, tentunya ketersediaan jumlah jendela yang memadai pada eksterior rumah bisa menghindarkan penghuni rumah terserang dari penyakit. Jangan lupa, usahakan juga untuk merancang jendela rumah agar terkena cahaya matahari secara langsung.</p><p>2. Optimalkan Sirkulasi dengan Roster yang Menawan</p><p>Supaya sirkulasi udara dan cahaya lebih optimal, kamu bisa memasang lubang angin atau roster pada bagian eksterior rumah, seperti pada fasad ataupun pagar. Tak sekadar berperan sebagai dekorasi yang estetik, roster pada eksterior dapat membuat hunian terhindar dari lembap dan pengap.</p><p>Agar tampilan eksterior hunianmu tampil menawan, kamu bisa memilih roster dengan bentuk yang disesuaikan menurut konsep eksterior yang ingin kamu tonjolkan. Bahkan, dinding roster pun tersedia dari berbagai material yang bisa kamu pilih sesuai selera dan anggaran, mulai dari roster beton, batako, tanah liat, keramik, kayu, hingga GRC.</p><p>3. Penggunaan Plafon dengan Tinggi Ideal</p><p>Selain jumlah bukaan yang memadai, plafon juga harus dirancang secara cermat karena memengaruhi penyebaran udara. Idealnya, plafon pada bagian eksterior rumah dibuat tinggi agar sirkulasi udara bisa tersebar secara optimal. Selain itu, plafon yang tinggi pun dapat menghambat panas dari sinar matahari sehingga rumah tetap sejuk dan nyaman.</p><p>4. Penggunaan Material Ramah Lingkungan</p><p>Tak hanya pada bagian eksterior, penggunaan material ramah lingkungan berlaku pada semua elemen rumah. Nah, ada banyak sekali variasi material ramah lingkungan yang bisa kamu aplikasikan pada eksterior rumah, seperti kayu ataupun batu bata yang efektif menahan panas matahari sehingga meminimalisir penggunaan AC.</p><p>Sementara pada bagian eksterior lain seperti atap, hindari penggunaan material asbes yang berpotensi menimbulkan masalah penyakit dan menggantinya dengan atap eksterior ramah lingkungan dengan formulasi baja ringan yang jauh lebih kukuh dan aman terhadap lingkungan.</p><p>5. Rumah Nyaman dengan Area Hijau</p><p>Selain membuat tampilan eksterior rumah tampak sejuk, keberadaan tanaman dapat memberikan kesegaran bagi penghuni rumah. Terdapat banyak sekali variasi tanaman hijau tropis yang bisa kamu rawat pada bagian eksterior rumah, mulai dari cemara kipas, morning glory, tanduk rusa, hingga tanaman bunga seperti kamboja dan kembang sepatu.</p><p>Jika area eksterior hunianmu sempit, kamu juga bisa membuat taman vertikal pada dinding, serta menyimpan pot mini berisi kaktus yang selain cantik juga berperan sebagai pengusir bakteri alami. Namun, apapun jenis tanaman yang kamu tempatkan di eksterior rumah, pastikan kamu merawatnya secara rutin!</p><p>Elemen eksterior rumah di atas sangat penting untuk diaplikasikan karena dapat menunjang pola hidup sehat bagi semua penghuni rumah. Yuk, ciptakan hunian sehat sekarang juga</p>', ''),
(22, 11, 2, '7 Kreasi Tampak Depan Rumah Minimalis, Tampil Beda dari yang Lain!', '<p>7 Kreasi Tampak Depan Rumah Minimalis, Tampil Beda dari yang Lain!</p><p>Merancang rumah impian berarti memikirkan kenyamanan saat tinggal di dalam rumah tersebut. Namun, terlalu fokus pada penampilan dalam membuat kebanyakan orang menerapkan tampak depan rumah minimalis dengan keindahan yang terjamin.</p><p>Memiliki tampak depan rumah minimalis bukan berarti membatasi diri dalam mengeksplorasi dan merancang sesuai kreativitas. Justru penampilan rumah dengan desain minimalis dapat menjadi menarik dan membuat rumah tampil memukau dibandingkan rumah lainnya.</p><p>Jika kamu bingung bagaimana cara mendapatkan tampak depan rumah minimalis terbaik, intip dahulu beberapa inspirasi berikut dengan tampak depan rumah minimalis yang memikat sekaligus unik!</p><p>1. Permainan Level dan Komposisi Warna</p><p>Pemilihan warna menjadi salah satu aspek penting dalam merancang tampak depan rumah minimalis. Untuk menghindari berkurangnya citra minimalis, penting untuk memilih skema warna yang pas bagi tampilan depan rumah.</p><p>Gunakanlah komposisi warna senada dengan turunan warna yang selaras. Memilih satu warna kontras bisa membantu memberikan point of interest pada tampak depan rumah minimalis. Cara lainnya bisa kamu lakukan dengan bermain dengan leveling gubahan massa bangunan pada desain depan rumah minimalis agar tampilan rumah terkesan lebih dinamis juga.</p><p>2. Karakter Material yang Kuat</p><p>Selain dengan warna dan komposisi level, tampak depan rumah minimalis bisa kamu perkuat karakternya dengan penggunaan material bangunan tertentu yang kontras dari material utama eksterior rumah.</p><p>Aplikasi material ini dapat berupa suatu panel yang menutupi sebagian rumah ataupun sekat berongga agar pencahayaan alami dapat masuk ke ruangan. Beberapa material yang bisa kamu gunakan pada tampak depan rumah minimalis adalah baja, beton ekspos, hingga bahan natural seperti kayu ataupun batu alam.</p><p>3. Sentuhan Elemen Kayu untuk Berikan Kehangatan</p><p>Menghasilkan tampak depan rumah minimalis yang hangat tidaklah sulit, asalkan menggabungkan elemen kayu pada desain eksterior rumah. Elemen alami seperti papan kayu menjadi material andalan saat ingin membawa suasana yang lebih mengundang dari tampilan depan rumah.</p><p>4. Tampak Depan Rumah Minimalis dengan Komposisi Bentuk</p><p>Banyak juga alternatif fasad rumah minimalis yang sederhana seperti melalui pengaturan komposisi gubahan massa bangunan yang memiliki ketinggian, lebar, hingga panjang yang berbeda-beda. Walau hanya mengandalkan satu warna cat, variasi bentuk bangunan yang berbeda-beda akan terlihat sebagai tampak depan rumah minimalis yang estetik.</p><p>5. Elegan dengan Dominasi Warna Hitam</p><p>Aplikasi satu warna cat pada fasad rumah dapat menjadikan tampak depan rumah minimalis lebih berkarakter tanpa perlu bingung memikirkan desain rumah yang terlampau rumit. Namun, jika kamu ingin rumah minimalis tetap terlihat elegan dan tentunya tampil menonjol, warna hitam mungkin bisa jadi bahan pertimbanganmu.</p><p>6. Modern dengan Tema Monokrom</p><p>Tampak depan rumah minimalis sebenarnya bisa simpel dan tetap menawan melalui penerapan tema yang menawan seperti tema monokrom pada rumah ini. Dibalut dengan warna putih dan hitam, gubahan bangunan menjadi lebih menonjol sehingga patut dijadikan contoh untuk menghadirkan fasad minimalis yang menarik pada hunian.</p><p>7. Permainan Bayangan untuk Tampilan Rumah Dinamis</p><p>Meskipun hadir dengan bentuk yang sederhana, bukan berarti tampak depan rumah minimalis selalu membosankan. Cahaya sinar matahari berperan penting dalam bayangan yang tercipta dari bangunan rumah.</p><p>Permainan level seperti terlihat pada taman vertikal, serta sekar berjarak dari kayu pada depan jendela kaca menghasilkan tampak depan rumah minimalis yang mengutamakan permainan bayangan untuk menghidupkan wajah dari rumah. Efek bayangan yang berubah seiring berjalannya hari memberikan tampak depan rumah minimalis yang silih berganti, sehingga tentu tidak akan pernah terlihat sama.</p><p>Sudah temukan konsep untuk tampak depan rumah minimalis paling tepat untuk properti hunianmu? Yuk, jangan batasi kreativitasmu dan mulai ciptakan tampak depan rumah minimalis yang menarik.</p>', '');
INSERT INTO `pg_blog_description` (`id`, `blog_id`, `language_id`, `title`, `content`, `quote`) VALUES
(21, 12, 2, 'Sebelum Menyewa Kontraktor untuk Bangun Rumah, Tanyakan 6 Hal Ini!', '<p>Sebelum Menyewa Kontraktor untuk Bangun Rumah, Tanyakan 6 Hal Ini!</p><p>Adanya pengerjaan konstruksi yang rumit mengharuskan kamu—yang merenovasi atau membangun rumah—untuk memakai jasa kontraktor. Kendati kontraktor lebih dikenal menangani proyek properti berskala besar seperti apartemen dan perkantoran, jasa profesional ini dapat lebih dipercaya dibandingkan jasa pemborong karena telah memiliki sertifikasi resmi.</p><p>Lantas, bagaimana cara memilih kontraktor yang tepat?</p><p>Kontraktor yang kamu pilih tidak hanya menentukan biaya pembangunan rumah nantinya, namun juga hasil akhir dari pengerjaannya. Sekalipun kamu telah mendapatkan rekomendasi dari orang-orang yang kamu percaya, belum tentu cara kerja, sistem pembayaran, dan sistem pelaksaanaan proyeknya sesuai dengan apa yang telah kamu rencanakan.</p><p>Untuk itu, ada baiknya melangsungkan sesi interview dengan para calon kontraktor dan menanyakan beberapa hal berikut supaya tidak menyesal di kemudian hari.</p><p>1. Jenis proyek yang telah ditangani</p><p>Jasa kontraktor memang telah terverifikasi secara resmi, para pekerjanya pun merupakan tenaga ahli yang sudah pasti mumpuni di bidangnya. Namun, kamu tetap harus menyesuaikan profil proyek yang sudah ditangani oleh calon kontraktor dengan konsep rumah impian.</p><p>Jika memang sesuai, perhatikan bagaimana kualitas dari hasil kerja kontraktor. Jangan ragu untuk bertanya pada klien sebelumnya untuk memverifikasi kredibilitas dan kualitas hasil akhir dari pengerjaannya.</p><p>2. Lama pengerjaan setiap proyek</p><p>Selain menelusuri rekam jejak proyek kontraktor tersebut, pastikan juga apakah mereka menyelesaikan proyek secara tepat waktu, sesuai periode dalam perjanjian di kontrak kerja.</p><p>Sekalipun terdapat perpanjangan waktu, ketahui penyebabnya lebih jelas, apakah dikarenakan kendala di lapangan, kondisi cuaca, atau minimnya ketersediaan material. Permasalahan seperti ini masih dapat dimengerti, namun hindari kontraktor yang kerap memperpanjang waktu pelaksanaan proyek akibat efisiensi kerja yang kurang maksimal.</p><p>3. Sistem perjanjian pelaksanaan proyek</p><p>Sebelum pelaksanaan proyek dilangsungkan, kesepakatan perlu dilakukan antara penyedia jasa kontraktor dan penggunanya melalui perjanjian kerja atau kontrak kerja. Hal-hal yang disepakati di antaranya adalah: lingkup pengerjaan proyek, jangka waktu proyek, harga, sistem pembayaran, dan konsekuensi pelanggaran perjanjian.</p><p>Pastikan kamu telah memahami kontrak kerja dengan kontraktor dengan baik. Jika terdapat kausal yang dianggap membingungkan atau malah merugikan pihak pengguna jasa, jangan ragu bertanya dan menuntut renovasi. Dalam perjanjian ini juga, sebaiknya kamu mengetahui dengan jelas apa saja yang menjadi hak dan kewajiban kedua belah pihak.</p><p>4. Sistem pembayaran proyek</p><p>Terdapat dua jenis sistem pembayaran jasa kontraktor, yaitu pembayaran bertahap atau termin dan sistem cost and fee. Perbedaan kedua sistem pembayaran ini terletak pada siapa yang berperan sebagai pengelola proyek dan masa pembayarannya.</p><p>Dalam sistem pembayaran termin, terdapat empat tahapan pembayaran kontraktor. Mulai dari down payment (DP) senilai 20-30 persen dari total biaya, pembayaran tahap kedua saat proyek telah 50 persen selesai hingga ke pelunasan akhir saat proyek telah sepenuhnya selesai. Sedangkan, kontraktor mengendalikan secara penuh pengelolaan keuangan proyek untuk sistem cost and fee, kamu sebagai pengguna jasa hanya perlu membayar anggaran yang ditetapkan setiap bulannya.</p><p>5. Siapa penanggung jawab proyek</p><p>Tim kontraktor biasanya akan melaporkan perkembangan proyek melalui penanggung jawab proyek. Oleh karena itu, penting bagi kamu untuk aktif berkomunikasi dengan penanggung jawab proyek.</p><p>Jika terjadi kendala dalam pelaksanaan proyek, penanggung jawab proyeklah yang akan menyampaikan langsung kondisi yang terjadi di lapangan. Solusi dari permasalahan tersebut juga bisa langsung dikonsultasikan bersama penanggung jawab proyek.</p><p>6. Bentuk garansi yang diberikan</p><p>Penyedia jasa kontraktor profesional umumnya menyertakan garansi dalam perjanjian kerja. Garansi dapat digunakan ketika terdapat kerusakan pada bangunan setelah proyek dirampungkan oleh kontraktor. Namun setiap kontraktor menyediakan bentuk garansi yang berbeda-beda, dan ini berhubungan dengan cakupan kerusakan yang akan ditangani nantinya.</p><p>Sudah seharusnya kamu melakukan pertimbangan mendalam sebelum memilih kontraktor mana yang tepat untuk membangun rumah impian. Pasalnya, pemakaian jasa mereka memang memerlukan anggaran yang lebih besar ketimbang menggunakan jasa pemborong.</p><p>Selama pelaksanaan proyek berlangsung, usahakan untuk selalu memantau pengerjaan kontraktor dan menjaga komunikasi dengan baik agar keberlangsungan proyek berjalan dengan lancar.</p>', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_faq`
--

CREATE TABLE `pg_faq` (
  `id` int(20) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_faq`
--

INSERT INTO `pg_faq` (`id`, `status`) VALUES
(1, 1),
(2, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_faq_description`
--

CREATE TABLE `pg_faq_description` (
  `id` int(11) NOT NULL,
  `faq_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_faq_description`
--

INSERT INTO `pg_faq_description` (`id`, `faq_id`, `language_id`, `question`, `answer`) VALUES
(1, 1, 1, 'test tanya indo', '<p>\r\n	test jawab indo\r\n</p>'),
(2, 1, 2, 'test tanya?', '<p>\r\n	test jawab 1\r\n</p>'),
(3, 2, 2, 'test question 1', '<p>\r\n	test answer 1\r\n</p>');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_list_bank`
--

CREATE TABLE `pg_list_bank` (
  `id` int(50) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `label` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_list_bank`
--

INSERT INTO `pg_list_bank` (`id`, `nama`, `label`) VALUES
(1, 'bank_mega', 'Bank Mega'),
(2, 'bca', 'BCA'),
(3, 'bca_syariah', 'BCA Syariah'),
(4, 'bii', 'BII'),
(5, 'bni', 'BNI'),
(6, 'bni_syariah', 'BNI Syariah'),
(7, 'bri', 'BRI'),
(8, 'bri_syariah', 'BRI Syariah'),
(9, 'cimb_niaga', 'CIMB Niaga'),
(10, 'cimb_niaga_syariah', 'CIMB Niaga Syariah'),
(11, 'citibank', 'Citibank'),
(12, 'danamon', 'Danamon'),
(13, 'hsbc', 'HSBC'),
(14, 'mandiri', 'Mandiri'),
(15, 'mandiri_syariah', 'Mandiri Syariah'),
(16, 'money_gram', 'Money Gram'),
(17, 'muamalat', 'Muamalat'),
(18, 'paypal', 'Paypal'),
(19, 'permata', 'Permata'),
(20, 'visa', 'Visa'),
(21, 'western_union', 'Western Union');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages`
--

CREATE TABLE `pg_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `type` int(1) NOT NULL DEFAULT '1',
  `group` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages`
--

INSERT INTO `pg_pages` (`id`, `name`, `type`, `group`) VALUES
(1, 'testimonial', 0, 'testimonial'),
(2, 'articles', 0, 'blog'),
(3, 'about', 0, 'static'),
(4, 'contact', 0, 'static'),
(5, 'faq', 0, 'faq'),
(6, 'how_to_shop', 0, 'static'),
(7, 'payment_confirmation', 0, 'static'),
(8, 'bank', 0, 'bank');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_pages_description`
--

CREATE TABLE `pg_pages_description` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_pages_description`
--

INSERT INTO `pg_pages_description` (`id`, `page_id`, `language_id`, `page_name`, `content`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(11, 4, 1, 'Kontak Kami', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Kontak Kami', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(12, 4, 2, 'Contact', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Contact\r\n</p>\r\n<p>\r\n	  CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Contact', 'edit di admin panel -> Pages -> Contact', 'edit di admin panel -> Pages -> Contact'),
(13, 6, 1, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(14, 6, 2, 'How To Shop', '<p>\r\n	Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; How To Shop\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'How To Shop', 'Edit di admin panel -> Pages -> How To Shop', 'Edit di admin panel -> Pages -> How To Shop'),
(15, 7, 1, 'Konfirmasi Pembayaran', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Konfirmasi Pembayaran', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(16, 7, 2, 'Payment Confirmation', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; Payment Confirmation\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa  lain di website anda di admin panel -&gt; General Setting -&gt;  Language(Bahasa)\r\n</p>', 'Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation', 'Edit di admin panel -> Pages -> Payment Confirmation'),
(17, 3, 2, 'About', '<p>\r\n	     Untuk mengedit halaman ini anda bisa melakukannya dengan masuk ke admin panel -&gt; Pages -&gt; About\r\n</p>\r\n<p>\r\n	   CMS Ini juga support dalam dual bahasa, anda bisa menambahkan bahasa lain di website anda di admin panel -&gt; General Setting -&gt; Language(Bahasa)\r\n</p>', 'About', 'edit di admin panel -> Pages -> About', 'edit di admin panel -> Pages -> About');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial`
--

CREATE TABLE `pg_testimonial` (
  `id` int(25) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `testimonial` longtext NOT NULL,
  `status` int(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_testimonial`
--

INSERT INTO `pg_testimonial` (`id`, `name`, `email`, `testimonial`, `status`, `date`) VALUES
(1, 'Ibnu', 'ibnu@markdesign.net', '', 1, '2014-07-14 09:51:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_testimonial_description`
--

CREATE TABLE `pg_testimonial_description` (
  `id` int(11) NOT NULL,
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_testimonial_description`
--

INSERT INTO `pg_testimonial_description` (`id`, `testimonial_id`, `language_id`, `content`) VALUES
(8, 1, 2, 'test'),
(7, 1, 1, 'test');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pg_type_letak`
--

CREATE TABLE `pg_type_letak` (
  `id` int(11) NOT NULL,
  `letak` varchar(225) NOT NULL,
  `page_id` int(11) NOT NULL,
  `tampil` int(11) NOT NULL,
  `sort` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pg_type_letak`
--

INSERT INTO `pg_type_letak` (`id`, `letak`, `page_id`, `tampil`, `sort`) VALUES
(177, 'header', 2, 1, 1),
(178, 'header', 6, 1, 2),
(179, 'header', 4, 1, 3),
(180, 'header', 1, 0, 4),
(181, 'header', 3, 0, 5),
(182, 'header', 5, 0, 6),
(183, 'header', 7, 0, 7),
(184, 'header', 8, 0, 8),
(185, 'footer', 3, 1, 1),
(186, 'footer', 6, 1, 2),
(187, 'footer', 4, 1, 3),
(188, 'footer', 1, 0, 4),
(189, 'footer', 2, 0, 5),
(190, 'footer', 5, 0, 6),
(191, 'footer', 7, 0, 7),
(192, 'footer', 8, 0, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand`
--

CREATE TABLE `prd_brand` (
  `id` int(11) NOT NULL,
  `kode` varchar(225) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_brand`
--

INSERT INTO `prd_brand` (`id`, `kode`, `image`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`) VALUES
(1, '', 'fffea-nuby.jpg', 1, '2019-08-19 17:33:26', '2019-08-19 17:33:26', 'info@markdesign.net', 'info@markdesign.net'),
(2, '', 'ad1e9-johnsons.jpg', 1, '2019-08-19 17:33:48', '2019-08-19 17:33:48', 'info@markdesign.net', 'info@markdesign.net'),
(3, '', 'a7619-elegance.jpg', 1, '2019-08-19 17:34:01', '2019-08-19 17:34:01', 'info@markdesign.net', 'info@markdesign.net'),
(4, '', 'e10f0-kuku.jpg', 1, '2019-08-19 17:34:17', '2019-08-19 17:34:17', 'info@markdesign.net', 'info@markdesign.net'),
(5, '', 'bb417-dialogue.jpg', 1, '2019-08-19 17:34:30', '2019-08-19 17:34:30', 'info@markdesign.net', 'info@markdesign.net'),
(6, '', 'dfde3-nepia.jpg', 1, '2019-08-19 17:34:44', '2019-08-19 17:34:44', 'info@markdesign.net', 'info@markdesign.net'),
(7, '', '1d662-scots.jpg', 1, '2019-08-19 17:35:00', '2019-08-19 17:35:00', 'info@markdesign.net', 'info@markdesign.net'),
(8, '', 'ac7eb-keaide.jpg', 1, '2019-08-19 17:35:15', '2019-08-19 17:35:15', 'info@markdesign.net', 'info@markdesign.net');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_brand_description`
--

CREATE TABLE `prd_brand_description` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_brand_description`
--

INSERT INTO `prd_brand_description` (`id`, `brand_id`, `language_id`, `title`, `content`) VALUES
(1, 1, 2, 'NUBY', ''),
(2, 2, 2, 'JOHNSONS', ''),
(3, 3, 2, 'ELEGANCE', ''),
(4, 4, 2, 'KUKU DUCKBILL', ''),
(5, 5, 2, 'DIALOGUE', ''),
(6, 6, 2, 'NEPIA', ''),
(7, 7, 2, 'BABY SCOTS', ''),
(8, 8, 2, 'KEAIDE BIDDY', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category`
--

CREATE TABLE `prd_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category`
--

INSERT INTO `prd_category` (`id`, `parent_id`, `sort`, `image`, `image2`, `image3`, `type`, `data`) VALUES
(9, 0, 4, 'f0f18-gee.png', '', '', 'category', ''),
(8, 0, 3, '35403-cam.png', '', '', 'category', ''),
(7, 0, 2, 'ad1cc-royal.png', '', '', 'category', ''),
(6, 0, 1, '12ed2-brevi.png', '', '', 'category', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_description`
--

CREATE TABLE `prd_category_description` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `data` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prd_category_description`
--

INSERT INTO `prd_category_description` (`id`, `category_id`, `language_id`, `name`, `desc`, `data`) VALUES
(1, 1, 2, 'Brevi', '', ''),
(2, 2, 2, 'Royal Baby', '', ''),
(3, 3, 2, 'Cam', '', ''),
(4, 4, 2, 'Baby Gee', '', ''),
(5, 5, 2, 'brevi', '', ''),
(14, 6, 2, 'Brevi', 'Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally.', ''),
(15, 7, 2, 'Royal Baby', 'Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally.', ''),
(16, 8, 2, 'Cam', 'Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally.', ''),
(17, 9, 2, 'Baby Gee', 'Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally.', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_category_product`
--

CREATE TABLE `prd_category_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_excel`
--

CREATE TABLE `prd_excel` (
  `id` bigint(20) NOT NULL,
  `nama_produk` varchar(225) DEFAULT NULL,
  `kategori` varchar(225) DEFAULT NULL,
  `file_gambar` varchar(225) DEFAULT NULL,
  `harga` varchar(225) NOT NULL,
  `label_warna` varchar(225) NOT NULL,
  `label_kemasan` varchar(225) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `status` int(2) NOT NULL,
  `onsale` int(2) NOT NULL,
  `trending` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_gallery_highlight`
--

CREATE TABLE `prd_gallery_highlight` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product`
--

CREATE TABLE `prd_product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image2` varchar(225) DEFAULT NULL,
  `kode` varchar(50) NOT NULL,
  `harga` decimal(11,2) NOT NULL,
  `harga_coret` decimal(11,2) NOT NULL,
  `harga_retail` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `terbaru` int(11) NOT NULL,
  `terlaris` int(11) NOT NULL,
  `out_stock` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `data` text NOT NULL,
  `tag` text NOT NULL,
  `filter` text NOT NULL,
  `onsale` int(11) NOT NULL,
  `rekomendasi` int(11) NOT NULL,
  `turun_harga` int(11) NOT NULL,
  `urutan` int(100) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_attributes`
--

CREATE TABLE `prd_product_attributes` (
  `id` int(11) NOT NULL,
  `id_str` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `attribute` varchar(200) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(225) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_color`
--

CREATE TABLE `prd_product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `image_color` varchar(200) NOT NULL,
  `label` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_description`
--

CREATE TABLE `prd_product_description` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `subtitle` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_desc` text NOT NULL,
  `meta_key` text NOT NULL,
  `note` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prd_product_image`
--

CREATE TABLE `prd_product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `min_pembelian` int(11) NOT NULL,
  `type_potongan` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `aktif_dari` date NOT NULL,
  `aktif_sampai` date NOT NULL,
  `aktif` int(11) NOT NULL,
  `reusable` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `nama`, `kode`, `min_pembelian`, `type_potongan`, `potongan`, `aktif_dari`, `aktif_sampai`, `aktif`, `reusable`) VALUES
(14, 'test voucher', 'code-123456789', 500000, 0, 50000, '2018-09-17', '2018-09-30', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo_list`
--

CREATE TABLE `promo_list` (
  `id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `terpakai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `promo_list`
--

INSERT INTO `promo_list` (`id`, `promo_id`, `kode`, `terpakai`) VALUES
(1, 14, 'CODE-12345678993181C6790', 0),
(2, 14, 'CODE-123456789DDA806F7E2', 0),
(3, 14, 'CODE-123456789AE7B4B79BB', 0),
(4, 14, 'CODE-1234567897CE32D7CD7', 0),
(5, 14, 'CODE-123456789BEE1BCCFE8', 0),
(6, 14, 'CODE-1234567894601670650', 0),
(7, 14, 'CODE-123456789E2BAEA3685', 0),
(8, 14, 'CODE-12345678955B7D4037D', 0),
(9, 14, 'CODE-123456789AA3463C2A4', 0),
(10, 14, 'CODE-1234567898F3BAEA264', 0),
(11, 14, 'CODE-12345678914A13A85A4', 0),
(12, 14, 'CODE-1234567898113831FD1', 0),
(13, 14, 'CODE-123456789D836419029', 0),
(14, 14, 'CODE-123456789CFACF6AD68', 0),
(15, 14, 'CODE-123456789FCB58719A6', 0),
(16, 14, 'CODE-12345678961073AEF80', 0),
(17, 14, 'CODE-12345678994417CEF27', 0),
(18, 14, 'CODE-123456789B27D827C3B', 0),
(19, 14, 'CODE-12345678912CD5A1AC6', 0),
(20, 14, 'CODE-1234567894A1C32719B', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sertifikasi`
--

CREATE TABLE `sertifikasi` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` text NOT NULL,
  `images_icon` varchar(225) NOT NULL,
  `images_big` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sertifikasi`
--

INSERT INTO `sertifikasi` (`id`, `name`, `description`, `images_icon`, `images_big`) VALUES
(2, 'Agen tunggal resmi di Indonesia', '', 'edf8c-XADO-certificate-thumbc0cdba.jpg', 'edf8c-XADO-certificate-10bef2.jpg'),
(3, 'Technischer Uberwachungs-Verein', 'The certificate states the efficiency and certifies the XADO gel-revitalizant for gasoline engines effect', '63a71-XADO-certificate-thumb6f863e.jpg', '1af50-XADO-certificate-d20515.jpg'),
(4, 'Kristen Petra University Surabaya Certificate', 'XADO Gel For Diesel Engine', '97272-XADO-certificate-thumb0c1964.jpg', '4c78b-XADO-certificate-efb9bb.jpg'),
(6, 'API certificate', 'API - American Petroleum Institute', 'b1712-XADO-certificate-thumbf05da4.jpg', 'b1712-XADO-certificate-0444a4.jpg'),
(7, 'MAN Certificate', 'Approval For Engine Oil XADO 80W-90 GL-3/4/5', 'f28aa-XADO-certificate-thumbbb60d6.gif', 'f28aa-XADO-certificate-a0d9dd.jpg'),
(8, 'MAN Certificate', 'Approval For Engine Oil XADO 10W-40 Diesel Truck', 'a23f8-XADO-certificate-thumbbb60d6.gif', 'a23f8-XADO-certificate-fecbed.jpg'),
(9, 'VOLVO Certificate', 'Approval For Engine Oil XADO 15W-40 SL/CI-4 & XADO 10W-40 SL/CI-4', '2942f-XADO-certificate-thumbd89b2a.jpg', '2942f-XADO-certificate-db514b.jpg'),
(10, 'VOLVO Certificate', 'Approval For Engine Oil XADO 15W-40 CI-4 Diesel', '931e7-XADO-certificate-thumbd89b2a.jpg', '931e7-XADO-certificate-e931a6.jpg'),
(11, 'VOLVO Certificate', 'Approval For Engine Oil XADO Atomic Oil 15W-40 SM/CJ-4', 'b80dc-XADO-certificate-thumbd89b2a.jpg', 'b80dc-XADO-certificate-120754.jpg'),
(12, 'Daimler-Benz Certificate', 'Approval For Engine Oil XADO 5W-40 SM/CF', 'ab745-XADO-certificate-thumba2f7af.jpg', 'ab745-XADO-certificate-f97b75.jpg'),
(13, 'General Motor Certificate', 'Approval For Engine Oil XADO 5W-40 City Line SL/CF', 'fdfc0-XADO-certificate-thumb109fe4.jpg', 'fdfc0-XADO-certificate-a26364.jpg'),
(14, 'BMW certificate', 'Approval for Engine Oil \"XADO 5W-40 SM/CF\"', '90b56-XADO-certificate-thumbc23299.jpg', '90b56-XADO-certificate-1a4bd9.jpg'),
(15, 'VolksWagen Certificate', 'Approval For Engine Oil XADO SL/CF SAE 5W-40', 'cfe0e-XADO-certificate-thumbc44858.jpg', 'cfe0e-XADO-certificate-09c146.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `label` varchar(200) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `hide` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `dual_language` enum('n','y') NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `name`, `label`, `value`, `type`, `hide`, `group`, `dual_language`, `sort`) VALUES
(1, 'default_meta_title', 'Title', '', 'text', 0, 'default_meta', 'y', 1),
(2, 'default_meta_keywords', 'Keywords', '', 'textarea', 0, 'default_meta', 'y', 2),
(3, 'default_meta_description', 'Description', '', 'textarea', 0, 'default_meta', 'y', 3),
(4, 'google_tools_webmaster', 'Google Webmaster Code', '', 'textarea', 0, 'google_tools', 'n', 4),
(5, 'google_tools_analytic', 'Google Analytic Code', '', 'textarea', 0, 'google_tools', 'n', 5),
(6, 'purechat_status', 'Show Hide Widget', '', 'select', 0, 'purechat', 'n', 1),
(7, 'purechat_code', 'PureChat Code', '', 'textarea', 0, 'purechat', 'n', 1),
(8, 'invoice_start_number', 'Invoice Start Number', '1000', 'text', 0, 'invoice', 'n', 0),
(9, 'invoice_increment', 'Invoice Increment', '5', 'text', 0, 'invoice', 'n', 0),
(10, 'invoice_auto_cancel_after', 'Invoice Auto Cancel After', '72', 'text', 0, 'invoice', 'n', 0),
(11, 'lang_deff', 'Language Default', 'en', 'text', 0, 'data', 'n', 0),
(12, 'email', 'Email Form', 'info@arsimetrisdjaja.com', 'text', 0, 'data', 'n', 1),
(13, 'tax', 'Tax', '11', 'text', 0, 'data', 'n', 1),
(60, 'home_sect1_titles', 'Titles', '', 'text', 0, 'data', 'y', 0),
(61, 'home_sect1_desc', 'Content', '', 'text', 0, 'data', 'y', 0),
(62, 'home_sect1_textlinks_banner', 'Text Link Banner', '', 'text', 0, 'data', 'y', 0),
(63, 'home_sect1_links_banner', 'Links Banner', 'http://192.168.1.2/suzanna/home/product_exclusive', 'text', 0, 'data', 'n', 0),
(64, 'home_sect1_pictures', 'Picture', '6541d5ba15Layer-10.png', 'image', 0, 'data', 'n', 0),
(65, 'home_sect2_pictures', 'Picture', '6958309e97Ellipse-3-copy.png', 'image', 0, 'data', 'n', 0),
(66, 'home_sect2_textlinks_banner', 'Text Link Banner', '', 'text', 0, 'data', 'y', 0),
(67, 'home_sect2_links_banner', 'Links Banner', 'http://192.168.1.2/suzanna/home/about', 'text', 0, 'data', 'n', 0),
(68, 'home_sect2_titles', 'Titles', '', 'text', 0, 'data', 'y', 0),
(69, 'home_sect2_desc', 'Content', '', 'text', 0, 'data', 'y', 0),
(74, 'home_sect3_store_value', 'Store Values', '10', 'text', 0, 'data', 'n', 0),
(75, 'home_sect3_human_value', 'Human Values', '250', 'text', 0, 'data', 'n', 0),
(76, 'home_sect3_brands_value', 'Brands Values', '750', 'text', 0, 'data', 'n', 0),
(77, 'home_sect3_productSku_value', 'Products SKU Values', '35000', 'text', 0, 'data', 'n', 0),
(78, 'about_hero_image', 'Image', '58c7981f7eLayer-37.jpg', 'image', 0, 'data', 'n', 0),
(79, 'about_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(80, 'about_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(81, 'about1_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(82, 'about2_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(83, 'about2_pictures_banner', 'Picture Banner', '4a5bb3aa75about.png', 'image', 0, 'data', 'n', 0),
(84, 'about3_vision_content', 'Content Top Vision', '', 'text', 0, 'data', 'y', 0),
(85, 'about3_visi', 'Content Vision', '', 'text', 0, 'data', 'y', 0),
(86, 'about3_misi', 'Content Mission', '', 'text', 0, 'data', 'y', 0),
(87, 'about3_pictures_banner_middle', 'Picture Banner', 'aab7022b87vission.png', 'image', 0, 'data', 'n', 0),
(88, 'merek_hero_image', 'Image', '', 'image', 0, 'data', 'n', 0),
(89, 'merek_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(90, 'merek_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(91, 'merk1_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(92, 'merk2_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(93, 'merk3_picture', 'Picture', '', 'image', 0, 'data', 'n', 0),
(94, 'merk3_sub_title', 'Content', '', 'text', 0, 'data', 'y', 0),
(95, 'merk3_sub_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(96, 'product_hero_image', 'Image', '48bc025802Layer-37.jpg', 'image', 0, 'data', 'n', 0),
(97, 'product_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(98, 'product_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(99, 'products_brand_ncontent', 'Content', '', 'text', 0, 'data', 'y', 0),
(100, 'products_topbrand_ncontent', 'Content Brands', '', 'text', 0, 'data', 'y', 0),
(101, 'partner_hero_image', 'Image', '44aaf05a34Layer-37.jpg', 'image', 0, 'data', 'n', 0),
(102, 'partner_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(103, 'partner_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(104, 'partner_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(105, 'partner_principals_title', 'Titles Principal', '', 'text', 0, 'data', 'y', 0),
(106, 'partner_principals_content', 'Content Principal', '', 'text', 0, 'data', 'y', 0),
(107, 'partner_agents_title', 'Titles Agents', '', 'text', 0, 'data', 'y', 0),
(108, 'partner_agents_content', 'Content Agents', '', 'text', 0, 'data', 'y', 0),
(109, 'partners2_picture_banners', 'Picture Banner', '40ed2b25c6partnership.png', 'image', 0, 'data', 'n', 0),
(110, 'store_hero_image', 'Image', '08fd7823cbLayer-37.jpg', 'image', 0, 'data', 'n', 0),
(111, 'store_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(112, 'store_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(113, 'store_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(114, 'contact_hero_image', 'Image', 'd9cf3a5218Layer-37.jpg', 'image', 0, 'data', 'n', 0),
(115, 'contact_hero_title', 'Title', '', 'text', 0, 'data', 'y', 0),
(116, 'contact_hero_subtitle', 'Sub Title', '', 'text', 0, 'data', 'y', 0),
(117, 'contact_content', 'Content', '', 'text', 0, 'data', 'y', 0),
(118, 'contact_address', 'Content Address', '', 'text', 0, 'data', 'y', 0),
(119, 'contact_topcontacts', 'Content Top Contacts', '', 'text', 0, 'data', 'y', 0),
(120, 'contact_phone', 'Phone', '081 650 3636', 'text', 0, 'data', 'n', 0),
(121, 'contact_wa', 'Whatsapp', '081 650 3636', 'text', 0, 'data', 'n', 0),
(122, 'contact_email', 'Form Email', 'info@suzannababyshop.com', 'text', 0, 'data', 'n', 0),
(123, 'url_facebook', 'URL Facebook', 'http://192.168.1.2/suzanna/home/contact#', 'text', 0, 'data', 'n', 0),
(124, 'url_instagram', 'URL Instagram', 'http://192.168.1.2/suzanna/home/contact#', 'text', 0, 'data', 'n', 0),
(125, 'contact_top_form_titles', 'Contact Titles Form', '', 'text', 0, 'data', 'y', 0),
(126, 'contact_top_form_subtitles', 'Contact Info Form', '', 'text', 0, 'data', 'y', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting_description`
--

CREATE TABLE `setting_description` (
  `id` int(11) NOT NULL,
  `setting_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting_description`
--

INSERT INTO `setting_description` (`id`, `setting_id`, `language_id`, `value`) VALUES
(1, 60, 2, 'Never Stop Caring For The Mother & Baby\r\nIn Indonesia'),
(2, 61, 2, '<p>At Suzanna baby shop, we offer range of quality exclusive products to help mothers finding the right and the best mother & baby products as well as and mothers & babies fashion products. We\'re committed to provide the most safe, innovative and stylish products available.\r\n</p>'),
(3, 62, 2, 'Our Product'),
(4, 66, 2, 'More About Us'),
(5, 68, 2, 'The Suzanna Story'),
(6, 69, 2, '<p>Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally. With over 10 branch of our store in Indonesia, we are a trusted partner to both the families in Indonesia as well as the mother and baby products manufacturer from all over the world.\r\n</p>'),
(7, 79, 2, 'About Us'),
(8, 80, 2, 'Our Background'),
(9, 81, 2, '<h3>Suzanna Baby Shop is first established in 1999 in city of Surabaya, Indonesia. This establishment as the result of an initiative to create chain retail stores that really focus on selling products for baby, toddler and kid. Running as a family business for 20 years, at the moment Suzanna Baby Shop is one of the Indonesia’s leading chain retail stores in baby and kid industry.</h3><p>Widespread in 5 major cities in Indonesia, the country that has 250 million people, Suzanna Baby Shop has consolidated its presence and position, with the total of 9 branches across the country. Each branch has significatly large area of approximately around 1,000 square metres with a considerably clean and comfortable environment with safe location.</p><p>Selling with a range of over thousands of products from birth to 10 years of age, surely makes us to be able to fulfill the baby and kid needs, and not forgetting the complete needs of mothers. We also try at best to provide both domestic and international brands, prioritizing on quality, comfort and safety for each brand.</p><p>Accompanied with courtesy, warmth and product knowledge by our dedicated employees, we are confident that each product can represent its attractiveness, uniqueness and features. At last, we always strive to be the best in the retail store industry for baby and kid, encompassing primarily on the products’ variety, quality, competitive price and the most convenience way to shop for our customers.</p>'),
(10, 82, 2, '<h3>Corporate Growth Highlights & Facts</h3><p>Suzanna Baby Shop is a chained-retail baby store that sells goods for babies and kids. It operates mostly in the prime cities of Indonesia. Each and every branch of Suzanna Baby Shop has a quite large area of approximately around 1000 square metres or 10,763 square feet, with a considerably clean, comfortably environment with safe location.</p><p>The first and second stores openend in Surabaya in 1999 and 2001. Thereafter, we expanded our chain stores into the capital city of Indonesia, Jakarta. Our first store in Jakarta opened in 2003, followed with the second-third-and fourth stores opened in 2005, 2007 and 2008 respectively.</p><p>We are still confident that our expansion should be continued on another island, besides Java, which indeed its society has slightly differentiation in terms of taste and buying power. This is well said because we sell variety products that have high quality that can be reached by all social levels. Therefore we opened other 2 chain stores in Sumatera island, which are the city of Medan and Palembang.</p><p>Suzanna Baby Shops sell both domestic and international products, prioritizing on the good quality, product safety and competitive pricing. We sell not only goods, but we sell products with good service accompanied with courtesy, warmth and product knowledge. At last, we always strive to be the best in the retail store industry for babies and kids, encompassing primarily on the products variety, price and convenience in customers’ shopping.</p>'),
(11, 84, 2, '<h3>It has been our culture of caring and loving that motivates all our actions, but our corporate focus is guided by its Vision and Mission which direct the business operational that we perform every day on behalf of our country and its residents.</h3>'),
(12, 85, 2, '<ul>\r\n	<li>Keeping our minds open for creative discoveries and innovations, regarding to updated products and service methods to our customers</li>\r\n	<li>Trying the best to provide the complete and good quality products with excellent services and hospitality, in tidy and cozy shopping environment for our customers</li>\r\n	<li>Consistently creating a growth number of loyal customers, created by our overall store’s quality that makes our stores different and better compared to our competitors</li>\r\n</ul>'),
(13, 86, 2, '<ul><li>Creating a clean, pleasantly tidy and cozy shopping environment for the customers</li><li>Trying the best to make customers coming back to our stores because of overall store’s quality that makes us different</li><li>Ensurinng updated availabilities, especially the latest trends on fashion and toys</li></ul>'),
(14, 97, 2, 'Products'),
(15, 98, 2, 'Exclusive Brands'),
(16, 99, 2, '<h3>Suzanna Baby Shop’s exclusive brands are a reputable and well knowned products that appoints our company as a principal distributor and brand representative in Indonesia.</h3>'),
(17, 100, 2, '<h3>Suzanna Baby Shop’s supporting brands are a qualified and favorite products we proud to offer to our customers.</h3>'),
(18, 102, 2, 'Partnership'),
(19, 103, 2, 'Partnership'),
(20, 104, 2, '<h3>Indonesia is one of the most populated country in the world. As long as the population grow, we’ll keep on growing in paralel.</h3><p>As our growth continues unstoppable, we are seeking to align with partners that want to seize the opportunity together. We’re open for a straightforward discussion regarding any possibility of partnerships.\r\n</p><h5>How Can Suzanna Baby Shop Bring Value To You:</h5>'),
(21, 105, 2, 'For Brand Principals'),
(22, 106, 2, '<ul><li>Suzanna baby shop has roots everywhere and the as an icon of trust, the brand has embedded in the hearts of modern society at strategic locations in Indonesia.</li><li>Suzanna has very adequate human resources and infrastructure to develop a non stop and consistent growing business.</li><li>Suzanna Baby Shop has a very strong segmentation at the middle and upper segmentation, this is evidenced from the trust given by some international brands that have entrusted their sales in Indonesia to Suzanna Baby Shop for decades.</li></ul>'),
(23, 107, 2, 'For Agents / Distributors'),
(24, 108, 2, '<ul><li>Our name and brand has become an icon of trust to the public since 1999 - we have a proud reputation on sales and service.</li><li>Suzanna Baby Shop has been trusted for years by various international products to be the sole holder of their brand in Indonesia.</li><li>Thanks to the high quality product collections from various international qualified brand, we almost never get complaints on the products we sell.</li><li>The large quantity demands from regions outside Java proves that the opportunity for penetration outside Java is very promising.</li></ul>'),
(25, 111, 2, 'Store Location'),
(26, 112, 2, 'Store Location'),
(27, 113, 2, '<h3>Please feel free to find and contact the nearest Suzanna Baby Shop to your location</h3>'),
(28, 115, 2, 'Contact Us'),
(29, 116, 2, 'Contact Us'),
(30, 117, 2, '<h4>Need help regarding our baby shop products? You can ask us anything...</h4>'),
(31, 118, 2, 'Jl. Hr. Muhammad No. 59, Surabaya 60189, Indonesia'),
(32, 119, 2, 'For any other inquiries, you can drop us a message below and we’ll respond to you shortly.'),
(33, 125, 2, 'Get In Touch With Suzanna Babyshop'),
(34, 126, 2, 'Our resourceful team will get in touch with you, please leave your contact detail below.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shp_shipping_price`
--

CREATE TABLE `shp_shipping_price` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `shp_shipping_price`
--

INSERT INTO `shp_shipping_price` (`id`, `type`, `weight`, `price`) VALUES
(1, 1, 1, '20.0000'),
(2, 1, 2, '20.0000'),
(3, 1, 0, '20.0000'),
(4, 1, 3, '20.0000'),
(5, 1, 4, '20.0000'),
(6, 1, 5, '20.0000'),
(7, 1, 6, '20.0000'),
(8, 1, 7, '20.0000'),
(9, 1, 8, '20.0000'),
(10, 1, 9, '20.0000'),
(11, 1, 10, '20.0000'),
(12, 1, 11, '20.0000'),
(13, 1, 12, '20.0000'),
(14, 1, 13, '20.0000'),
(15, 1, 14, '20.0000'),
(16, 1, 15, '20.0000'),
(17, 1, 16, '20.0000'),
(18, 1, 17, '20.0000'),
(19, 1, 18, '20.0000'),
(20, 1, 19, '20.0000'),
(21, 1, 20, '40.0000'),
(22, 1, 21, '40.0000'),
(23, 1, 22, '40.0000'),
(24, 1, 23, '40.0000'),
(25, 1, 24, '40.0000'),
(26, 1, 25, '40.0000'),
(27, 1, 26, '40.0000'),
(28, 1, 27, '40.0000'),
(29, 1, 28, '40.0000'),
(30, 1, 29, '40.0000'),
(31, 1, 30, '40.0000'),
(32, 1, 31, '40.0000'),
(33, 1, 32, '40.0000'),
(34, 1, 33, '40.0000'),
(35, 1, 34, '40.0000'),
(36, 1, 35, '40.0000'),
(37, 1, 36, '40.0000'),
(38, 1, 37, '40.0000'),
(39, 1, 38, '40.0000'),
(40, 1, 39, '40.0000'),
(41, 1, 40, '60.0000'),
(42, 1, 41, '60.0000'),
(43, 1, 42, '60.0000'),
(44, 1, 43, '60.0000'),
(45, 1, 44, '60.0000'),
(46, 1, 45, '60.0000'),
(47, 1, 46, '60.0000'),
(48, 1, 47, '60.0000'),
(49, 1, 48, '60.0000'),
(50, 1, 49, '60.0000'),
(51, 1, 50, '60.0000'),
(52, 1, 51, '60.0000'),
(53, 1, 52, '60.0000'),
(54, 1, 53, '60.0000'),
(55, 1, 54, '60.0000'),
(56, 1, 55, '60.0000'),
(57, 1, 56, '60.0000'),
(58, 1, 57, '60.0000'),
(59, 1, 58, '60.0000'),
(60, 1, 59, '60.0000'),
(61, 1, 60, '80.0000'),
(62, 1, 61, '80.0000'),
(63, 1, 62, '80.0000'),
(64, 1, 63, '80.0000'),
(65, 1, 64, '80.0000'),
(66, 1, 65, '80.0000'),
(67, 1, 66, '80.0000'),
(68, 1, 67, '80.0000'),
(69, 1, 68, '80.0000'),
(70, 1, 69, '80.0000'),
(71, 1, 70, '80.0000'),
(72, 1, 71, '80.0000'),
(73, 1, 72, '80.0000'),
(74, 1, 73, '80.0000'),
(75, 1, 74, '80.0000'),
(76, 1, 75, '80.0000'),
(77, 1, 76, '80.0000'),
(78, 1, 77, '80.0000'),
(79, 1, 78, '80.0000'),
(80, 1, 79, '80.0000'),
(81, 1, 80, '100.0000'),
(82, 1, 81, '100.0000'),
(83, 1, 82, '100.0000'),
(84, 1, 83, '100.0000'),
(85, 1, 84, '100.0000'),
(86, 1, 85, '100.0000'),
(87, 1, 86, '100.0000'),
(88, 1, 87, '100.0000'),
(89, 1, 88, '100.0000'),
(90, 1, 89, '100.0000'),
(91, 1, 90, '100.0000'),
(92, 1, 91, '100.0000'),
(93, 1, 92, '100.0000'),
(94, 1, 93, '100.0000'),
(95, 1, 94, '100.0000'),
(96, 1, 95, '100.0000'),
(97, 1, 96, '100.0000'),
(98, 1, 97, '100.0000'),
(99, 1, 98, '100.0000'),
(100, 1, 99, '100.0000'),
(101, 2, 0, '12.0000'),
(102, 2, 1, '12.0000'),
(103, 2, 2, '12.0000'),
(104, 2, 3, '12.0000'),
(105, 2, 4, '12.0000'),
(106, 2, 5, '12.0000'),
(107, 2, 6, '12.0000'),
(108, 2, 7, '12.0000'),
(109, 2, 8, '12.0000'),
(110, 2, 9, '12.0000'),
(111, 2, 10, '12.0000'),
(112, 2, 11, '12.0000'),
(113, 2, 12, '12.0000'),
(114, 2, 13, '12.0000'),
(115, 2, 14, '12.0000'),
(116, 2, 15, '12.0000'),
(117, 2, 16, '12.0000'),
(118, 2, 17, '12.0000'),
(119, 2, 18, '12.0000'),
(120, 2, 19, '12.0000'),
(121, 2, 20, '24.0000'),
(122, 2, 21, '24.0000'),
(123, 2, 22, '24.0000'),
(124, 2, 23, '24.0000'),
(125, 2, 24, '24.0000'),
(126, 2, 25, '24.0000'),
(127, 2, 26, '24.0000'),
(128, 2, 27, '24.0000'),
(129, 2, 28, '24.0000'),
(130, 2, 29, '24.0000'),
(131, 2, 30, '24.0000'),
(132, 2, 31, '24.0000'),
(133, 2, 32, '24.0000'),
(134, 2, 33, '24.0000'),
(135, 2, 34, '24.0000'),
(136, 2, 35, '24.0000'),
(137, 2, 36, '24.0000'),
(138, 2, 37, '24.0000'),
(139, 2, 38, '24.0000'),
(140, 2, 39, '24.0000'),
(141, 2, 40, '48.0000'),
(142, 2, 41, '48.0000'),
(143, 2, 42, '48.0000'),
(144, 2, 43, '48.0000'),
(145, 2, 44, '48.0000'),
(146, 2, 45, '48.0000'),
(147, 2, 46, '48.0000'),
(148, 2, 47, '48.0000'),
(149, 2, 48, '48.0000'),
(150, 2, 49, '48.0000'),
(151, 2, 50, '48.0000'),
(152, 2, 51, '48.0000'),
(153, 2, 52, '48.0000'),
(154, 2, 53, '48.0000'),
(155, 2, 54, '48.0000'),
(156, 2, 55, '48.0000'),
(157, 2, 56, '48.0000'),
(158, 2, 57, '48.0000'),
(159, 2, 58, '48.0000'),
(160, 2, 59, '48.0000'),
(161, 2, 60, '60.0000'),
(162, 2, 61, '60.0000'),
(163, 2, 62, '60.0000'),
(164, 2, 63, '60.0000'),
(165, 2, 64, '60.0000'),
(166, 2, 65, '60.0000'),
(167, 2, 66, '60.0000'),
(168, 2, 67, '60.0000'),
(169, 2, 68, '60.0000'),
(170, 2, 69, '60.0000'),
(171, 2, 70, '60.0000'),
(172, 2, 71, '60.0000'),
(173, 2, 72, '60.0000'),
(174, 2, 73, '60.0000'),
(175, 2, 74, '60.0000'),
(176, 2, 75, '60.0000'),
(177, 2, 76, '60.0000'),
(178, 2, 77, '60.0000'),
(179, 2, 78, '60.0000'),
(180, 2, 79, '60.0000'),
(181, 2, 80, '72.0000'),
(182, 2, 81, '72.0000'),
(183, 2, 82, '72.0000'),
(184, 2, 83, '72.0000'),
(185, 2, 84, '72.0000'),
(186, 2, 85, '72.0000'),
(187, 2, 86, '72.0000'),
(188, 2, 87, '72.0000'),
(189, 2, 88, '72.0000'),
(190, 2, 89, '72.0000'),
(191, 2, 90, '72.0000'),
(192, 2, 91, '72.0000'),
(193, 2, 92, '72.0000'),
(194, 2, 93, '72.0000'),
(195, 2, 94, '72.0000'),
(196, 2, 95, '72.0000'),
(197, 2, 96, '72.0000'),
(198, 2, 97, '72.0000'),
(199, 2, 98, '72.0000'),
(200, 2, 99, '72.0000'),
(201, 3, 0, '25.0000'),
(202, 3, 1, '25.0000'),
(203, 3, 2, '25.0000'),
(204, 3, 3, '25.0000'),
(205, 3, 4, '25.0000'),
(206, 3, 5, '25.0000'),
(207, 3, 6, '25.0000'),
(208, 3, 7, '25.0000'),
(209, 3, 8, '25.0000'),
(210, 3, 9, '25.0000'),
(211, 3, 10, '25.0000'),
(212, 3, 11, '25.0000'),
(213, 3, 12, '25.0000'),
(214, 3, 13, '25.0000'),
(215, 3, 14, '25.0000'),
(216, 3, 15, '25.0000'),
(217, 3, 16, '25.0000'),
(218, 3, 17, '25.0000'),
(219, 3, 18, '25.0000'),
(220, 3, 19, '25.0000'),
(221, 3, 20, '50.0000'),
(222, 3, 21, '50.0000'),
(223, 3, 22, '50.0000'),
(224, 3, 23, '50.0000'),
(225, 3, 24, '50.0000'),
(226, 3, 25, '50.0000'),
(227, 3, 26, '50.0000'),
(228, 3, 27, '50.0000'),
(229, 3, 28, '50.0000'),
(230, 3, 29, '50.0000'),
(231, 3, 30, '50.0000'),
(232, 3, 31, '50.0000'),
(233, 3, 32, '50.0000'),
(234, 3, 33, '50.0000'),
(235, 3, 34, '50.0000'),
(236, 3, 35, '50.0000'),
(237, 3, 36, '50.0000'),
(238, 3, 37, '50.0000'),
(239, 3, 38, '50.0000'),
(240, 3, 39, '50.0000'),
(241, 3, 40, '75.0000'),
(242, 3, 41, '75.0000'),
(243, 3, 42, '75.0000'),
(244, 3, 43, '75.0000'),
(245, 3, 44, '75.0000'),
(246, 3, 45, '75.0000'),
(247, 3, 46, '75.0000'),
(248, 3, 47, '75.0000'),
(249, 3, 48, '75.0000'),
(250, 3, 49, '75.0000'),
(251, 3, 50, '75.0000'),
(252, 3, 51, '75.0000'),
(253, 3, 52, '75.0000'),
(254, 3, 53, '75.0000'),
(255, 3, 54, '75.0000'),
(256, 3, 55, '75.0000'),
(257, 3, 56, '75.0000'),
(258, 3, 57, '75.0000'),
(259, 3, 58, '75.0000'),
(260, 3, 59, '75.0000'),
(261, 3, 60, '100.0000'),
(262, 3, 61, '100.0000'),
(263, 3, 62, '100.0000'),
(264, 3, 63, '100.0000'),
(265, 3, 64, '100.0000'),
(266, 3, 65, '100.0000'),
(267, 3, 66, '100.0000'),
(268, 3, 67, '100.0000'),
(269, 3, 68, '100.0000'),
(270, 3, 69, '100.0000'),
(271, 3, 70, '100.0000'),
(272, 3, 71, '100.0000'),
(273, 3, 72, '100.0000'),
(274, 3, 73, '100.0000'),
(275, 3, 74, '100.0000'),
(276, 3, 75, '100.0000'),
(277, 3, 76, '100.0000'),
(278, 3, 77, '100.0000'),
(279, 3, 78, '100.0000'),
(280, 3, 79, '100.0000'),
(281, 3, 80, '125.0000'),
(282, 3, 81, '125.0000'),
(283, 3, 82, '125.0000'),
(284, 3, 83, '125.0000'),
(285, 3, 84, '125.0000'),
(286, 3, 85, '125.0000'),
(287, 3, 86, '125.0000'),
(288, 3, 87, '125.0000'),
(289, 3, 88, '125.0000'),
(290, 3, 89, '125.0000'),
(291, 3, 90, '125.0000'),
(292, 3, 91, '125.0000'),
(293, 3, 92, '125.0000'),
(294, 3, 93, '125.0000'),
(295, 3, 94, '125.0000'),
(296, 3, 95, '125.0000'),
(297, 3, 96, '125.0000'),
(298, 3, 97, '125.0000'),
(299, 3, 98, '125.0000'),
(300, 3, 99, '125.0000'),
(301, 4, 1, '29.0000'),
(302, 4, 2, '29.0000'),
(303, 4, 0, '29.0000'),
(304, 4, 3, '29.0000'),
(305, 4, 4, '29.0000'),
(306, 4, 5, '29.0000'),
(307, 4, 6, '29.0000'),
(308, 4, 7, '29.0000'),
(309, 4, 8, '29.0000'),
(310, 4, 9, '29.0000'),
(311, 4, 10, '29.0000'),
(312, 4, 11, '29.0000'),
(313, 4, 12, '29.0000'),
(314, 4, 13, '29.0000'),
(315, 4, 14, '29.0000'),
(316, 4, 15, '29.0000'),
(317, 4, 16, '29.0000'),
(318, 4, 17, '29.0000'),
(319, 4, 18, '29.0000'),
(320, 4, 19, '29.0000'),
(321, 4, 20, '58.0000'),
(322, 4, 21, '58.0000'),
(323, 4, 22, '58.0000'),
(324, 4, 23, '58.0000'),
(325, 4, 24, '58.0000'),
(326, 4, 25, '58.0000'),
(327, 4, 26, '58.0000'),
(328, 4, 27, '58.0000'),
(329, 4, 28, '58.0000'),
(330, 4, 29, '58.0000'),
(331, 4, 30, '58.0000'),
(332, 4, 31, '58.0000'),
(333, 4, 32, '58.0000'),
(334, 4, 33, '58.0000'),
(335, 4, 34, '58.0000'),
(336, 4, 35, '58.0000'),
(337, 4, 36, '58.0000'),
(338, 4, 37, '58.0000'),
(339, 4, 38, '58.0000'),
(340, 4, 39, '58.0000'),
(341, 4, 40, '87.0000'),
(342, 4, 41, '87.0000'),
(343, 4, 42, '87.0000'),
(344, 4, 43, '87.0000'),
(345, 4, 44, '87.0000'),
(346, 4, 45, '87.0000'),
(347, 4, 46, '87.0000'),
(348, 4, 47, '87.0000'),
(349, 4, 48, '87.0000'),
(350, 4, 49, '87.0000'),
(351, 4, 50, '87.0000'),
(352, 4, 51, '87.0000'),
(353, 4, 52, '87.0000'),
(354, 4, 53, '87.0000'),
(355, 4, 54, '87.0000'),
(356, 4, 55, '87.0000'),
(357, 4, 56, '87.0000'),
(358, 4, 57, '87.0000'),
(359, 4, 58, '87.0000'),
(360, 4, 59, '87.0000'),
(361, 4, 60, '116.0000'),
(362, 4, 61, '116.0000'),
(363, 4, 62, '116.0000'),
(364, 4, 63, '116.0000'),
(365, 4, 64, '116.0000'),
(366, 4, 65, '116.0000'),
(367, 4, 66, '116.0000'),
(368, 4, 67, '116.0000'),
(369, 4, 68, '116.0000'),
(370, 4, 69, '116.0000'),
(371, 4, 70, '116.0000'),
(372, 4, 71, '116.0000'),
(373, 4, 72, '116.0000'),
(374, 4, 73, '116.0000'),
(375, 4, 74, '116.0000'),
(376, 4, 75, '116.0000'),
(377, 4, 76, '116.0000'),
(378, 4, 77, '116.0000'),
(379, 4, 78, '116.0000'),
(380, 4, 79, '116.0000'),
(381, 4, 80, '145.0000'),
(382, 4, 81, '145.0000'),
(383, 4, 82, '145.0000'),
(384, 4, 83, '145.0000'),
(385, 4, 84, '145.0000'),
(386, 4, 85, '145.0000'),
(387, 4, 86, '145.0000'),
(388, 4, 87, '145.0000'),
(389, 4, 88, '145.0000'),
(390, 4, 89, '145.0000'),
(391, 4, 90, '145.0000'),
(392, 4, 91, '145.0000'),
(393, 4, 92, '145.0000'),
(394, 4, 93, '145.0000'),
(395, 4, 94, '145.0000'),
(396, 4, 95, '145.0000'),
(397, 4, 96, '145.0000'),
(398, 4, 97, '145.0000'),
(399, 4, 98, '145.0000'),
(400, 4, 99, '145.0000'),
(401, 5, 0, '21.0000'),
(402, 5, 1, '21.0000'),
(403, 5, 2, '21.0000'),
(404, 5, 3, '21.0000'),
(405, 5, 4, '21.0000'),
(406, 5, 5, '21.0000'),
(407, 5, 6, '21.0000'),
(408, 5, 7, '21.0000'),
(409, 5, 8, '21.0000'),
(410, 5, 9, '21.0000'),
(411, 5, 10, '21.0000'),
(412, 5, 11, '21.0000'),
(413, 5, 12, '21.0000'),
(414, 5, 13, '21.0000'),
(415, 5, 14, '21.0000'),
(416, 5, 15, '21.0000'),
(417, 5, 16, '21.0000'),
(418, 5, 17, '21.0000'),
(419, 5, 18, '21.0000'),
(420, 5, 19, '21.0000'),
(421, 5, 20, '42.0000'),
(422, 5, 21, '42.0000'),
(423, 5, 22, '42.0000'),
(424, 5, 23, '42.0000'),
(425, 5, 24, '42.0000'),
(426, 5, 25, '42.0000'),
(427, 5, 26, '42.0000'),
(428, 5, 27, '42.0000'),
(429, 5, 28, '42.0000'),
(430, 5, 29, '42.0000'),
(431, 5, 30, '42.0000'),
(432, 5, 31, '42.0000'),
(433, 5, 32, '42.0000'),
(434, 5, 33, '42.0000'),
(435, 5, 34, '42.0000'),
(436, 5, 35, '42.0000'),
(437, 5, 36, '42.0000'),
(438, 5, 37, '42.0000'),
(439, 5, 38, '42.0000'),
(440, 5, 39, '42.0000'),
(441, 5, 40, '75.0000'),
(442, 5, 41, '75.0000'),
(443, 5, 42, '75.0000'),
(444, 5, 43, '75.0000'),
(445, 5, 44, '75.0000'),
(446, 5, 45, '75.0000'),
(447, 5, 46, '75.0000'),
(448, 5, 47, '75.0000'),
(449, 5, 48, '75.0000'),
(450, 5, 49, '75.0000'),
(451, 5, 50, '75.0000'),
(452, 5, 51, '75.0000'),
(453, 5, 52, '75.0000'),
(454, 5, 53, '75.0000'),
(455, 5, 54, '75.0000'),
(456, 5, 55, '75.0000'),
(457, 5, 56, '75.0000'),
(458, 5, 57, '75.0000'),
(459, 5, 58, '75.0000'),
(460, 5, 59, '75.0000'),
(461, 5, 60, '96.0000'),
(462, 5, 61, '96.0000'),
(463, 5, 62, '96.0000'),
(464, 5, 63, '96.0000'),
(465, 5, 64, '96.0000'),
(466, 5, 65, '96.0000'),
(467, 5, 66, '96.0000'),
(468, 5, 67, '96.0000'),
(469, 5, 68, '96.0000'),
(470, 5, 69, '96.0000'),
(471, 5, 70, '96.0000'),
(472, 5, 71, '96.0000'),
(473, 5, 72, '96.0000'),
(474, 5, 73, '96.0000'),
(475, 5, 74, '96.0000'),
(476, 5, 75, '96.0000'),
(477, 5, 76, '96.0000'),
(478, 5, 77, '96.0000'),
(479, 5, 78, '96.0000'),
(480, 5, 79, '96.0000'),
(481, 5, 80, '117.0000'),
(482, 5, 81, '117.0000'),
(483, 5, 82, '117.0000'),
(484, 5, 83, '117.0000'),
(485, 5, 84, '117.0000'),
(486, 5, 85, '117.0000'),
(487, 5, 86, '117.0000'),
(488, 5, 87, '117.0000'),
(489, 5, 88, '117.0000'),
(490, 5, 89, '117.0000'),
(491, 5, 90, '117.0000'),
(492, 5, 91, '117.0000'),
(493, 5, 92, '117.0000'),
(494, 5, 93, '117.0000'),
(495, 5, 94, '117.0000'),
(496, 5, 95, '117.0000'),
(497, 5, 96, '117.0000'),
(498, 5, 97, '117.0000'),
(499, 5, 98, '117.0000'),
(500, 5, 99, '117.0000'),
(501, 6, 0, '34.0000'),
(502, 6, 1, '34.0000'),
(503, 6, 2, '34.0000'),
(504, 6, 3, '34.0000'),
(505, 6, 4, '34.0000'),
(506, 6, 5, '34.0000'),
(507, 6, 6, '34.0000'),
(508, 6, 7, '34.0000'),
(509, 6, 8, '34.0000'),
(510, 6, 9, '34.0000'),
(511, 6, 10, '34.0000'),
(512, 6, 11, '34.0000'),
(513, 6, 12, '34.0000'),
(514, 6, 13, '34.0000'),
(515, 6, 14, '34.0000'),
(516, 6, 15, '34.0000'),
(517, 6, 16, '34.0000'),
(518, 6, 17, '34.0000'),
(519, 6, 18, '34.0000'),
(520, 6, 19, '34.0000'),
(521, 6, 20, '68.0000'),
(522, 6, 21, '68.0000'),
(523, 6, 22, '68.0000'),
(524, 6, 23, '68.0000'),
(525, 6, 24, '68.0000'),
(526, 6, 25, '68.0000'),
(527, 6, 26, '68.0000'),
(528, 6, 27, '68.0000'),
(529, 6, 28, '68.0000'),
(530, 6, 29, '68.0000'),
(531, 6, 30, '68.0000'),
(532, 6, 31, '68.0000'),
(533, 6, 32, '68.0000'),
(534, 6, 33, '68.0000'),
(535, 6, 34, '68.0000'),
(536, 6, 35, '68.0000'),
(537, 6, 36, '68.0000'),
(538, 6, 37, '68.0000'),
(539, 6, 38, '68.0000'),
(540, 6, 39, '68.0000'),
(541, 6, 40, '102.0000'),
(542, 6, 41, '102.0000'),
(543, 6, 42, '102.0000'),
(544, 6, 43, '102.0000'),
(545, 6, 44, '102.0000'),
(546, 6, 45, '102.0000'),
(547, 6, 46, '102.0000'),
(548, 6, 47, '102.0000'),
(549, 6, 48, '102.0000'),
(550, 6, 49, '102.0000'),
(551, 6, 50, '102.0000'),
(552, 6, 51, '102.0000'),
(553, 6, 52, '102.0000'),
(554, 6, 53, '102.0000'),
(555, 6, 54, '102.0000'),
(556, 6, 55, '102.0000'),
(557, 6, 56, '102.0000'),
(558, 6, 57, '102.0000'),
(559, 6, 58, '102.0000'),
(560, 6, 59, '102.0000'),
(561, 6, 60, '136.0000'),
(562, 6, 61, '136.0000'),
(563, 6, 62, '136.0000'),
(564, 6, 63, '136.0000'),
(565, 6, 64, '136.0000'),
(566, 6, 65, '136.0000'),
(567, 6, 66, '136.0000'),
(568, 6, 67, '136.0000'),
(569, 6, 68, '136.0000'),
(570, 6, 69, '136.0000'),
(571, 6, 70, '136.0000'),
(572, 6, 71, '136.0000'),
(573, 6, 72, '136.0000'),
(574, 6, 73, '136.0000'),
(575, 6, 74, '136.0000'),
(576, 6, 75, '136.0000'),
(577, 6, 76, '136.0000'),
(578, 6, 77, '136.0000'),
(579, 6, 78, '136.0000'),
(580, 6, 79, '136.0000'),
(581, 6, 80, '170.0000'),
(582, 6, 81, '170.0000'),
(583, 6, 82, '170.0000'),
(584, 6, 83, '170.0000'),
(585, 6, 84, '170.0000'),
(586, 6, 85, '170.0000'),
(587, 6, 86, '170.0000'),
(588, 6, 87, '170.0000'),
(589, 6, 88, '170.0000'),
(590, 6, 89, '170.0000'),
(591, 6, 90, '170.0000'),
(592, 6, 91, '170.0000'),
(593, 6, 92, '170.0000'),
(594, 6, 93, '170.0000'),
(595, 6, 94, '170.0000'),
(596, 6, 95, '170.0000'),
(597, 6, 96, '170.0000'),
(598, 6, 97, '170.0000'),
(599, 6, 98, '170.0000'),
(600, 6, 99, '170.0000'),
(601, 7, 1, '0.0000'),
(602, 7, 2, '0.0000'),
(603, 7, 0, '0.0000'),
(604, 7, 3, '0.0000'),
(605, 7, 4, '0.0000'),
(606, 7, 5, '0.0000'),
(607, 7, 6, '0.0000'),
(608, 7, 7, '0.0000'),
(609, 7, 8, '0.0000'),
(610, 7, 9, '0.0000'),
(611, 7, 10, '0.0000'),
(612, 7, 11, '0.0000'),
(613, 7, 12, '0.0000'),
(614, 7, 13, '0.0000'),
(615, 7, 14, '0.0000'),
(616, 7, 15, '0.0000'),
(617, 7, 16, '0.0000'),
(618, 7, 17, '0.0000'),
(619, 7, 18, '0.0000'),
(620, 7, 19, '0.0000'),
(621, 7, 20, '0.0000'),
(622, 7, 21, '0.0000'),
(623, 7, 22, '0.0000'),
(624, 7, 23, '0.0000'),
(625, 7, 24, '0.0000'),
(626, 7, 25, '0.0000'),
(627, 7, 26, '0.0000'),
(628, 7, 27, '0.0000'),
(629, 7, 28, '0.0000'),
(630, 7, 29, '0.0000'),
(631, 7, 30, '0.0000'),
(632, 7, 31, '0.0000'),
(633, 7, 32, '0.0000'),
(634, 7, 33, '0.0000'),
(635, 7, 34, '0.0000'),
(636, 7, 35, '0.0000'),
(637, 7, 36, '0.0000'),
(638, 7, 37, '0.0000'),
(639, 7, 38, '0.0000'),
(640, 7, 39, '0.0000'),
(641, 7, 40, '0.0000'),
(642, 7, 41, '0.0000'),
(643, 7, 42, '0.0000'),
(644, 7, 43, '0.0000'),
(645, 7, 44, '0.0000'),
(646, 7, 45, '0.0000'),
(647, 7, 46, '0.0000'),
(648, 7, 47, '0.0000'),
(649, 7, 48, '0.0000'),
(650, 7, 49, '0.0000'),
(651, 7, 50, '0.0000'),
(652, 7, 51, '0.0000'),
(653, 7, 52, '0.0000'),
(654, 7, 53, '0.0000'),
(655, 7, 54, '0.0000'),
(656, 7, 55, '0.0000'),
(657, 7, 56, '0.0000'),
(658, 7, 57, '0.0000'),
(659, 7, 58, '0.0000'),
(660, 7, 59, '0.0000'),
(661, 7, 60, '0.0000'),
(662, 7, 61, '0.0000'),
(663, 7, 62, '0.0000'),
(664, 7, 63, '0.0000'),
(665, 7, 64, '0.0000'),
(666, 7, 65, '0.0000'),
(667, 7, 66, '0.0000'),
(668, 7, 67, '0.0000'),
(669, 7, 68, '0.0000'),
(670, 7, 69, '0.0000'),
(671, 7, 70, '0.0000'),
(672, 7, 71, '0.0000'),
(673, 7, 72, '0.0000'),
(674, 7, 73, '0.0000'),
(675, 7, 74, '0.0000'),
(676, 7, 75, '0.0000'),
(677, 7, 76, '0.0000'),
(678, 7, 77, '0.0000'),
(679, 7, 78, '0.0000'),
(680, 7, 79, '0.0000'),
(681, 7, 80, '0.0000'),
(682, 7, 81, '0.0000'),
(683, 7, 82, '0.0000'),
(684, 7, 83, '0.0000'),
(685, 7, 84, '0.0000'),
(686, 7, 85, '0.0000'),
(687, 7, 86, '0.0000'),
(688, 7, 87, '0.0000'),
(689, 7, 88, '0.0000'),
(690, 7, 89, '0.0000'),
(691, 7, 90, '0.0000'),
(692, 7, 91, '0.0000'),
(693, 7, 92, '0.0000'),
(694, 7, 93, '0.0000'),
(695, 7, 94, '0.0000'),
(696, 7, 95, '0.0000'),
(697, 7, 96, '0.0000'),
(698, 7, 97, '0.0000'),
(699, 7, 98, '0.0000'),
(700, 7, 99, '0.0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide`
--

CREATE TABLE `sl_slide` (
  `id` int(11) NOT NULL,
  `topik_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(225) DEFAULT NULL,
  `active` int(11) NOT NULL,
  `date_input` datetime NOT NULL,
  `date_update` datetime NOT NULL,
  `insert_by` varchar(255) NOT NULL,
  `last_update_by` varchar(255) NOT NULL,
  `writer` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide`
--

INSERT INTO `sl_slide` (`id`, `topik_id`, `image`, `url`, `active`, `date_input`, `date_update`, `insert_by`, `last_update_by`, `writer`, `sort`) VALUES
(1, 0, '2d8d9-slider_03.jpg', NULL, 1, '2019-08-20 10:48:43', '2019-08-20 10:48:43', 'info@markdesign.net', 'info@markdesign.net', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sl_slide_description`
--

CREATE TABLE `sl_slide_description` (
  `id` int(11) NOT NULL,
  `slide_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `periode` varchar(100) NOT NULL,
  `url_teks` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sl_slide_description`
--

INSERT INTO `sl_slide_description` (`id`, `slide_id`, `language_id`, `title`, `subtitle`, `content`, `periode`, `url_teks`, `url`) VALUES
(1, 1, 2, 'Our Exclusive Brand:', 'The RoyalBaby bicycle products features a series of unique design bikes with the advantage of very l', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_group`
--

CREATE TABLE `tb_group` (
  `id` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `aktif` int(11) NOT NULL,
  `akses` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_group`
--

INSERT INTO `tb_group` (`id`, `group`, `aktif`, `akses`) VALUES
(8, 'Administrator', 1, 0x613a33373a7b693a303b733a31363a2261646d696e2e757365722e696e646578223b693a313b733a31373a2261646d696e2e757365722e637265617465223b693a323b733a31373a2261646d696e2e757365722e757064617465223b693a333b733a31373a2261646d696e2e757365722e64656c657465223b693a343b733a31373a2261646d696e2e736c6964652e696e646578223b693a353b733a31383a2261646d696e2e736c6964652e637265617465223b693a363b733a31383a2261646d696e2e736c6964652e757064617465223b693a373b733a31383a2261646d696e2e736c6964652e64656c657465223b693a383b733a31363a2261646d696e2e62616e6b2e696e646578223b693a393b733a31373a2261646d696e2e62616e6b2e637265617465223b693a31303b733a31373a2261646d696e2e62616e6b2e757064617465223b693a31313b733a31373a2261646d696e2e62616e6b2e64656c657465223b693a31323b733a31393a2261646d696e2e73657474696e672e696e646578223b693a31333b733a31383a2261646d696e2e6d656d6265722e696e646578223b693a31343b733a31393a2261646d696e2e6d656d6265722e637265617465223b693a31353b733a31393a2261646d696e2e6d656d6265722e757064617465223b693a31363b733a31393a2261646d696e2e6d656d6265722e64656c657465223b693a31373b733a31373a2261646d696e2e6f726465722e696e646578223b693a31383b733a31383a2261646d696e2e6f726465722e637265617465223b693a31393b733a31383a2261646d696e2e6f726465722e757064617465223b693a32303b733a31383a2261646d696e2e6f726465722e64656c657465223b693a32313b733a31373a2261646d696e2e6f726465722e7072696e74223b693a32323b733a32313a2261646d696e2e73657474696e672e636f6e74616374223b693a32333b733a31393a2261646d696e2e73657474696e672e61626f7574223b693a32343b733a32303a2261646d696e2e63617465676f72792e696e646578223b693a32353b733a32313a2261646d696e2e63617465676f72792e637265617465223b693a32363b733a32313a2261646d696e2e63617465676f72792e757064617465223b693a32373b733a32313a2261646d696e2e63617465676f72792e64656c657465223b693a32383b733a31393a2261646d696e2e73657474696e672e686f77746f223b693a32393b733a31393a2261646d696e2e70726f647563742e696e646578223b693a33303b733a32303a2261646d696e2e70726f647563742e637265617465223b693a33313b733a32303a2261646d696e2e70726f647563742e757064617465223b693a33323b733a32303a2261646d696e2e70726f647563742e64656c657465223b693a33333b733a32303a2261646d696e2e64656c69766572792e696e646578223b693a33343b733a32313a2261646d696e2e64656c69766572792e637265617465223b693a33353b733a32313a2261646d696e2e64656c69766572792e757064617465223b693a33363b733a32313a2261646d696e2e64656c69766572792e64656c657465223b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu_akses`
--

CREATE TABLE `tb_menu_akses` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `action` blob NOT NULL,
  `sub_action` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu_akses`
--

INSERT INTO `tb_menu_akses` (`id`, `type`, `name`, `controller`, `action`, `sub_action`) VALUES
(22, 'admin', 'User', 'user', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(21, 'admin', 'Slide', 'slide', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(40, 'admin', 'Bank', 'bank', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(18, 'admin', 'Setting', 'setting', 0x613a313a7b733a353a22696e646578223b733a31373a22456469742053657474696e6720556d756d223b7d, 0x613a303a7b7d),
(39, 'admin', 'Member', 'member', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(38, 'admin', 'Order', 'order', 0x613a353a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b733a353a227072696e74223b733a353a225072696e74223b7d, 0x613a303a7b7d),
(32, 'admin', 'Contact Us', 'setting', 0x613a313a7b733a373a22636f6e74616374223b733a32323a2245646974205061676520487562756e6769204b616d69223b7d, 0x613a303a7b7d),
(13, 'admin', 'About Us', 'setting', 0x613a313a7b733a353a2261626f7574223b733a31303a22456469742041626f7574223b7d, 0x613a303a7b7d),
(37, 'admin', 'Category', 'category', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(36, 'admin', 'How To Order', 'setting', 0x613a313a7b733a353a22686f77746f223b733a31323a22486f7720546f204f72646572223b7d, 0x613a303a7b7d),
(30, 'admin', 'Products', 'product', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d),
(41, 'admin', 'Delivery Price', 'delivery', 0x613a343a7b733a353a22696e646578223b733a393a224c6973742044617461223b733a363a22637265617465223b733a31313a224372656174652044617461223b733a363a22757064617465223b733a31313a225570646174652044617461223b733a363a2264656c657465223b733a31313a2244656c6574652044617461223b7d, 0x613a303a7b7d);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `user_input` varchar(200) NOT NULL,
  `tanggal_input` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `initial` varchar(255) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `email`, `nama`, `pass`, `type`, `group_id`, `login_terakhir`, `aktivasi`, `aktif`, `user_input`, `tanggal_input`, `initial`, `image`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory Pandu', '564fda17f517ae04a86734c2b2341327ed4fd565', 'root', 0, '2015-12-30 08:16:30', 0, 1, '', '2014-02-10 03:17:36', 'deory', ''),
(30, 'info@markdesign.net', 'info markdesign', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'root', 8, '2015-12-30 08:17:01', 0, 1, '', '0000-00-00 00:00:00', 'Admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko`
--

CREATE TABLE `to_toko` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `aktivasi` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `nama_toko` varchar(200) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko`
--

INSERT INTO `to_toko` (`id`, `email`, `first_name`, `last_name`, `pass`, `login_terakhir`, `aktivasi`, `aktif`, `image`, `hp`, `address`, `city`, `province`, `postcode`, `nama_toko`, `lokasi`) VALUES
(1, 'deoryzpandu@gmail.com', 'Deory', 'Pandu', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2014-11-07 15:32:14', 0, 1, 'a448d-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'JewelryShop', 'surabaya'),
(4, 'ibnu@markdesign.net', 'Ibnu', 'Fajar', '564fda17f517ae04a86734c2b2341327ed4fd565', '2014-11-07 15:32:25', 0, 1, '3e491-calourette-woodland-creature-jewelry-1.jpg', 'HP', 'Address', 'City', 'Province', 'PostCode', 'Toko Handoko', 'surabaya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `to_toko_product`
--

CREATE TABLE `to_toko_product` (
  `id` int(11) NOT NULL,
  `toko_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `to_toko_product`
--

INSERT INTO `to_toko_product` (`id`, `toko_id`, `product_id`) VALUES
(8, 1, 960),
(7, 1, 105),
(6, 1, 719),
(5, 1, 264),
(9, 1, 223),
(10, 1, 930),
(11, 1, 475),
(12, 1, 732),
(13, 4, 264),
(14, 4, 560),
(15, 4, 960),
(16, 4, 505),
(17, 4, 719),
(18, 4, 678),
(19, 4, 475),
(20, 4, 277);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trips`
--

CREATE TABLE `trips` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `awal` int(11) NOT NULL,
  `akhir` int(11) NOT NULL,
  `trip` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `trips`
--

INSERT INTO `trips` (`id`, `year`, `month`, `awal`, `akhir`, `trip`) VALUES
(1, 2016, 1, 1, 3, 'Surabaya'),
(4, 2016, 2, 8, 10, 'Singapore'),
(3, 2016, 2, 7, 10, 'Malaysia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tt_text`
--

CREATE TABLE `tt_text` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tt_text`
--

INSERT INTO `tt_text` (`id`, `category`, `message`) VALUES
(1, 'admin', 'Produk'),
(2, 'admin', 'Pages'),
(3, 'admin', 'Orders'),
(4, 'admin', 'Customers'),
(5, 'admin', 'Promotions'),
(6, 'admin', 'Reports'),
(7, 'admin', 'General Setting'),
(8, 'admin', 'Data Edited'),
(9, 'admin', 'New Orders'),
(10, 'admin', 'New Customers'),
(11, 'admin', 'Payment Confirmation'),
(12, 'admin', 'Edit Profile'),
(13, 'admin', 'Change Password'),
(14, 'admin', 'Sign Out'),
(15, 'admin', 'Gallery'),
(16, 'admin', 'Slide Home'),
(17, 'admin', 'Toko'),
(18, 'admin', 'Slides'),
(19, 'admin', 'Product'),
(20, 'admin', 'Products'),
(21, 'admin', 'About Us'),
(22, 'admin', 'Contact Us'),
(23, 'admin', 'Trip'),
(24, 'admin', 'Trips'),
(25, 'admin', 'Slide'),
(26, 'admin', 'Healty'),
(27, 'admin', 'ge-ma'),
(28, 'admin', 'Blog/Artikel'),
(29, 'admin', 'Career'),
(30, 'admin', 'Home'),
(31, 'admin', 'Factory'),
(32, 'admin', 'News & Article'),
(33, 'admin', 'Lokasi Penjualan'),
(34, 'admin', 'Jadi Agen'),
(35, 'admin', 'Cara Membeli'),
(36, 'admin', 'PDF'),
(37, 'admin', 'Cara Belanja'),
(38, 'admin', 'Info Pengiriman'),
(39, 'admin', 'FAQ'),
(40, 'admin', 'Syarat & Ketentuan'),
(41, 'admin', 'How To Order'),
(42, 'admin', 'Event'),
(43, 'admin', 'Wholeseler'),
(44, 'admin', 'Wholesale'),
(45, 'admin', 'Lokasi Toko'),
(46, 'admin', 'Home Page'),
(47, 'admin', 'About'),
(48, 'admin', 'Tips/Artikel'),
(49, 'admin', 'Slides/Promo'),
(50, 'admin', 'Promotion'),
(51, 'admin', 'Customer'),
(52, 'admin', 'Promotion/Slide'),
(53, 'admin', 'Homepage'),
(54, 'admin', 'Voucher'),
(55, 'admin', 'Faq Content'),
(56, 'admin', 'Shop Dealer'),
(57, 'admin', 'Voucher Discount'),
(58, 'admin', 'Gallery Spotlight'),
(59, 'admin', 'Home Spotlight'),
(60, 'admin', 'Store Locator'),
(61, 'admin', 'Merchant Partner'),
(62, 'admin', 'Seen On'),
(63, 'admin', 'Static Page'),
(64, 'admin', 'Blog');

-- --------------------------------------------------------

--
-- Struktur untuk view `view_blog`
--
DROP TABLE IF EXISTS `view_blog`;

CREATE VIEW `view_blog`  AS  select `pg_blog`.`id` AS `id`,`pg_blog`.`topik_id` AS `topik_id`,`pg_blog`.`image` AS `image`,`pg_blog`.`active` AS `active`,`pg_blog`.`date_input` AS `date_input`,`pg_blog`.`date_update` AS `date_update`,`pg_blog`.`insert_by` AS `insert_by`,`pg_blog`.`last_update_by` AS `last_update_by`,`pg_blog`.`writer` AS `writer`,`pg_blog_description`.`id` AS `id2`,`pg_blog_description`.`blog_id` AS `blog_id`,`pg_blog_description`.`language_id` AS `language_id`,`pg_blog_description`.`title` AS `title`,`pg_blog_description`.`content` AS `content`,`pg_blog_description`.`quote` AS `quote` from (`pg_blog` join `pg_blog_description` on((`pg_blog`.`id` = `pg_blog_description`.`blog_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_category`
--
DROP TABLE IF EXISTS `view_category`;

CREATE VIEW `view_category`  AS  select `prd_category`.`id` AS `id`,`prd_category`.`parent_id` AS `parent_id`,`prd_category`.`sort` AS `sort`,`prd_category`.`image` AS `image`,`prd_category`.`type` AS `type`,`prd_category`.`data` AS `data`,`prd_category_description`.`id` AS `id2`,`prd_category_description`.`category_id` AS `category_id`,`prd_category_description`.`language_id` AS `language_id`,`prd_category_description`.`name` AS `name`,`prd_category_description`.`data` AS `data2` from (`prd_category` join `prd_category_description` on((`prd_category`.`id` = `prd_category_description`.`category_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_gallery`
--
DROP TABLE IF EXISTS `view_gallery`;

CREATE VIEW `view_gallery`  AS  select `gal_gallery`.`id` AS `id`,`gal_gallery`.`topik_id` AS `topik_id`,`gal_gallery`.`image` AS `image`,`gal_gallery`.`image2` AS `image2`,`gal_gallery`.`active` AS `active`,`gal_gallery`.`date_input` AS `date_input`,`gal_gallery`.`date_update` AS `date_update`,`gal_gallery`.`insert_by` AS `insert_by`,`gal_gallery`.`last_update_by` AS `last_update_by`,`gal_gallery`.`writer` AS `writer`,`gal_gallery`.`city` AS `city`,`gal_gallery`.`harga` AS `harga`,`gal_gallery`.`color` AS `color`,`gal_gallery`.`orientation` AS `orientation`,`gal_gallery_description`.`id` AS `id2`,`gal_gallery_description`.`gallery_id` AS `gallery_id`,`gal_gallery_description`.`language_id` AS `language_id`,`gal_gallery_description`.`title` AS `title`,`gal_gallery_description`.`sub_title` AS `sub_title`,`gal_gallery_description`.`sub_title_2` AS `sub_title_2`,`gal_gallery_description`.`content` AS `content` from (`gal_gallery` join `gal_gallery_description` on((`gal_gallery`.`id` = `gal_gallery_description`.`gallery_id`))) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_slide`
--
DROP TABLE IF EXISTS `view_slide`;

CREATE VIEW `view_slide`  AS  select `sl_slide`.`id` AS `id`,`sl_slide`.`topik_id` AS `topik_id`,`sl_slide`.`image` AS `image`,`sl_slide`.`active` AS `active`,`sl_slide`.`date_input` AS `date_input`,`sl_slide`.`date_update` AS `date_update`,`sl_slide`.`insert_by` AS `insert_by`,`sl_slide`.`last_update_by` AS `last_update_by`,`sl_slide`.`writer` AS `writer`,`sl_slide_description`.`id` AS `id2`,`sl_slide_description`.`slide_id` AS `slide_id`,`sl_slide_description`.`language_id` AS `language_id`,`sl_slide_description`.`title` AS `title`,`sl_slide_description`.`content` AS `content`,`sl_slide_description`.`url` AS `url`,`sl_slide`.`sort` AS `sort` from (`sl_slide` join `sl_slide_description` on((`sl_slide_description`.`slide_id` = `sl_slide`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about_image`
--
ALTER TABLE `about_image`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indeks untuk tabel `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`gallery_id`);

--
-- Indeks untuk tabel `home_product_spot`
--
ALTER TABLE `home_product_spot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `me_member`
--
ALTER TABLE `me_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `or_order`
--
ALTER TABLE `or_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  ADD PRIMARY KEY (`order_status_id`);

--
-- Indeks untuk tabel `pdf`
--
ALTER TABLE `pdf`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_faq`
--
ALTER TABLE `pg_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `type` (`type`);

--
-- Indeks untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`,`language_id`);

--
-- Indeks untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_excel`
--
ALTER TABLE `prd_excel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_gallery_highlight`
--
ALTER TABLE `prd_gallery_highlight`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`,`language_id`);

--
-- Indeks untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `promo_list`
--
ALTER TABLE `promo_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_id` (`promo_id`);

--
-- Indeks untuk tabel `sertifikasi`
--
ALTER TABLE `sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language_id` (`language_id`);

--
-- Indeks untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indeks untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about_image`
--
ALTER TABLE `about_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `address`
--
ALTER TABLE `address`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=502;

--
-- AUTO_INCREMENT untuk tabel `cs_customer`
--
ALTER TABLE `cs_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cs_customer_address`
--
ALTER TABLE `cs_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `factory`
--
ALTER TABLE `factory`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery`
--
ALTER TABLE `gal_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_description`
--
ALTER TABLE `gal_gallery_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `gal_gallery_image`
--
ALTER TABLE `gal_gallery_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `home_product_spot`
--
ALTER TABLE `home_product_spot`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT untuk tabel `me_member`
--
ALTER TABLE `me_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `or_order`
--
ALTER TABLE `or_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_history`
--
ALTER TABLE `or_order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_product`
--
ALTER TABLE `or_order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `or_order_status`
--
ALTER TABLE `or_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pdf`
--
ALTER TABLE `pdf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pg_bank`
--
ALTER TABLE `pg_bank`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pg_blog`
--
ALTER TABLE `pg_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pg_blog_description`
--
ALTER TABLE `pg_blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pg_faq`
--
ALTER TABLE `pg_faq`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pg_faq_description`
--
ALTER TABLE `pg_faq_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pg_list_bank`
--
ALTER TABLE `pg_list_bank`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `pg_pages`
--
ALTER TABLE `pg_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pg_pages_description`
--
ALTER TABLE `pg_pages_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial`
--
ALTER TABLE `pg_testimonial`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pg_testimonial_description`
--
ALTER TABLE `pg_testimonial_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pg_type_letak`
--
ALTER TABLE `pg_type_letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT untuk tabel `prd_brand`
--
ALTER TABLE `prd_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prd_brand_description`
--
ALTER TABLE `prd_brand_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `prd_category`
--
ALTER TABLE `prd_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `prd_category_description`
--
ALTER TABLE `prd_category_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `prd_category_product`
--
ALTER TABLE `prd_category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_excel`
--
ALTER TABLE `prd_excel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_gallery_highlight`
--
ALTER TABLE `prd_gallery_highlight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product`
--
ALTER TABLE `prd_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_attributes`
--
ALTER TABLE `prd_product_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_color`
--
ALTER TABLE `prd_product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_description`
--
ALTER TABLE `prd_product_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prd_product_image`
--
ALTER TABLE `prd_product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `promo_list`
--
ALTER TABLE `promo_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `sertifikasi`
--
ALTER TABLE `sertifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `setting_description`
--
ALTER TABLE `setting_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `shp_shipping_price`
--
ALTER TABLE `shp_shipping_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT untuk tabel `sl_slide`
--
ALTER TABLE `sl_slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sl_slide_description`
--
ALTER TABLE `sl_slide_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_group`
--
ALTER TABLE `tb_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_menu_akses`
--
ALTER TABLE `tb_menu_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `to_toko`
--
ALTER TABLE `to_toko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `to_toko_product`
--
ALTER TABLE `to_toko_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `trips`
--
ALTER TABLE `trips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tt_text`
--
ALTER TABLE `tt_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2026 at 01:42 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('ims-cache-dashboard_cashflow_today_20260809_20260809', 'a:3:{s:6:\"income\";d:0;s:7:\"expense\";d:0;s:13:\"net_cash_flow\";d:0;}', 1786276458),
('ims-cache-dashboard_cashflow_trend_20260809_20260809', 'a:2:{s:6:\"income\";a:1:{s:10:\"2026-08-09\";d:0;}s:7:\"expense\";a:1:{s:10:\"2026-08-09\";d:0;}}', 1786277359),
('ims-cache-dashboard_expense_breakdown_20260809_20260809', 'a:0:{}', 1786277359),
('ims-cache-dashboard_low_stock', 'a:0:{}', 1786275859),
('ims-cache-dashboard_recent_sales', 'a:0:{}', 1786275619),
('ims-cache-dashboard_sales_today_20260809_20260809', 'a:3:{s:13:\"total_revenue\";d:0;s:5:\"count\";i:0;s:12:\"gross_profit\";d:0;}', 1786276458),
('ims-cache-dashboard_sales_trend_20260809_20260809', 'a:1:{s:10:\"2026-08-09\";i:0;}', 1786277359),
('ims-cache-dashboard_top_customers_20260809_20260809', 'a:0:{}', 1786277359),
('ims-cache-dashboard_top_products_20260809_20260809', 'a:0:{}', 1786277359),
('ims-cache-settings.currency_decimal_separator', 's:1:\",\";', 2101612175),
('ims-cache-settings.currency_fraction_digits', 's:1:\"0\";', 2101612175),
('ims-cache-settings.currency_position', 's:4:\"left\";', 2101612175),
('ims-cache-settings.currency_symbol', 's:2:\"Rp\";', 2101612175),
('ims-cache-settings.currency_thousand_separator', 's:1:\".\";', 2101612175);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Material Dasar', 'material-dasar', 'Bahan bangunan utama seperti pasir, semen, batu, bata, hebel, dan besi beton.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(2, 'Kayu & Atap', 'kayu-atap', 'Material kayu, triplek, kaso, serta penutup atap seperti genteng, asbes, seng, dan terpal.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(3, 'Cat & Finishing', 'cat-finishing', 'Segala jenis cat (tembok/kayu/besi), thinner, pelapis anti bocor (no drop), dan lem.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(4, 'Lantai & Dinding', 'lantai-dinding', 'Penutup lantai dan dinding termasuk keramik, granit, plint, dan lis profil (kuku macan).', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(5, 'Pipa & Listrik', 'pipa-listrik', 'Instalasi air (pipa PVC, kran, toren) dan instalasi listrik (kabel, lampu, saklar).', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(6, 'Paku & Alat', 'paku-alat', 'Barang kecil/receh seperti paku, baut, sekrup, engsel, gembok, dan peralatan tukang.', '2026-08-08 22:05:38', '2026-08-08 22:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Maia Strosin', 'lazaro31@example.net', '1-845-643-9184', '27828 Deborah Glen Suite 967\nGuyland, TN 22152', 'Qui minus qui occaecati minima eum.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(2, 'Dejah Kub', 'mborer@example.com', '1-775-860-4569', '642 Taylor Way\nRosaliaview, AK 78505', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(3, 'Lowell Stracke', 'mitchell.leila@example.net', '479.931.0813', '3087 Streich Prairie Apt. 977\nBradtkeville, AZ 88719', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(4, 'Dr. Meta Barrows II', 'itremblay@example.net', '(417) 668-2220', '93180 Delia Villages Suite 777\nLake Devyn, MS 17421', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(5, 'Orval Schimmel Jr.', 'corine.brakus@example.org', '858-876-8479', '934 Alexandrea Roads\nDesmondbury, KY 66201-1855', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(6, 'Mr. Marcus Klein II', 'cgerlach@example.net', '937-615-3288', '37354 Jacobi Island Suite 872\nEnochfurt, OR 54089', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(7, 'Keyshawn Kirlin', 'schristiansen@example.com', '+15739706167', '702 Tiara Extension\nOdellview, CA 45576', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(8, 'Devon Crist', 'blanda.michel@example.com', '865.949.6048', '92438 Olen Lights\nWisokyview, RI 69953', 'Magnam et maiores deleniti quis ab dicta eius.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(9, 'Dr. Hiram Schuppe', 'claudie35@example.com', '+1-272-919-1554', '21558 Shields Mountains\nGleichnermouth, DC 13236-7101', 'Sunt aut consequatur et voluptatem.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(10, 'Lucio Kuhlman', 'grady.nyasia@example.org', '+1-320-979-2002', '32224 Sincere Crossing\nSouth Lysanne, DC 17702', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(11, 'Osvaldo Bosco I', 'streich.arlie@example.org', '765-697-2121', '974 Block Port\nNorth Ayana, GA 94875', 'Eum quia voluptates asperiores molestiae.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(12, 'Jorge McLaughlin Jr.', 'pwest@example.com', '678-679-9458', '22563 Deshaun Mews Suite 419\nNew Jackson, MD 99826', 'Voluptatum velit quam dolore repudiandae rerum enim magnam.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(13, 'Amelie Ziemann', 'dameon12@example.com', '+1.682.558.6961', '394 Giovani Extension Suite 873\nVictoriahaven, GA 35247', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(14, 'Donato Corkery', 'jan.dubuque@example.com', '725-977-9030', '257 Mraz Place\nZaneshire, MD 32252-3497', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(15, 'Elbert Marks', 'natalia06@example.org', '1-313-624-9290', '909 Wilkinson Junctions\nEast Moniqueport, VT 06192-6346', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(16, 'Miss Sydnee Veum V', 'lueilwitz.aiden@example.org', '325.679.3374', '773 Champlin Spur Suite 209\nWaelchifort, TX 03770-1431', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(17, 'Saige Kuvalis IV', 'malachi67@example.net', '+1-364-660-8239', '115 Ryan Stravenue\nKesslerview, KY 08342-9513', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(18, 'Fidel Rosenbaum', 'oyundt@example.org', '253.854.6746', '21407 Hermann Village Suite 228\nWest Nicola, ND 00493', 'Quo cumque consequatur molestias.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(19, 'Esteban Dicki', 'kiehn.sheridan@example.com', '+1-317-984-7782', '78740 Hyatt Cape Apt. 032\nPacochaland, MT 77145', 'Sint ea cupiditate atque atque.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(20, 'Russell Dooley Sr.', 'cydney.pacocha@example.org', '859.864.0748', '62430 Kunze Turnpike\nRansomhaven, NV 98638', 'Perspiciatis dolores quia quam similique corporis sunt.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(21, 'Mrs. Amira Murazik III', 'qschamberger@example.org', '251.994.6271', '8461 Mante Loaf Apt. 595\nPort Arlenechester, NJ 30651', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(22, 'Mrs. Marge Abshire', 'hauck.evie@example.com', '+1.917.656.6071', '97121 Bins Neck\nKunzefurt, FL 02707', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(23, 'Edwardo Roob', 'jordon.buckridge@example.com', '854-624-7935', '461 Curt Overpass\nThompsonhaven, ID 58493', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(24, 'Florine Glover', 'deon63@example.net', '(540) 453-9929', '7857 Bayer Radial Apt. 547\nWest Alisha, OK 75629', 'Ipsa est repudiandae tenetur nisi sed.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(25, 'Stefan Brakus MD', 'ruby41@example.org', '+1-704-807-8137', '8309 Hirthe Extensions\nEast Leashire, ID 70258', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finance_categories`
--

CREATE TABLE `finance_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'expense',
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_categories`
--

INSERT INTO `finance_categories` (`id`, `name`, `slug`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Penjualan Produk', 'penjualan-produk', 'income', 'Pendapatan langsung dari penjualan produk toko.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(2, 'Layanan Jasa', 'layanan-jasa', 'income', 'Pendapatan dari layanan jasa service atau konsultasi.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(3, 'Investasi', 'investasi', 'income', 'Dividen atau bunga dari investasi modal.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(4, 'Pendapatan Lain-lain', 'pendapatan-lain-lain', 'income', 'Pendapatan di luar operasional utama.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(5, 'Gaji Karyawan', 'gaji-karyawan', 'expense', 'Biaya gaji bulanan dan tunjangan karyawan.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(6, 'Sewa Gedung', 'sewa-gedung', 'expense', 'Biaya sewa toko atau gudang operasional.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(7, 'Listrik & Air', 'listrik-air', 'expense', 'Tagihan utilitas bulanan.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(8, 'Internet & Telepon', 'internet-telepon', 'expense', 'Biaya komunikasi dan koneksi internet.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(9, 'Pemasaran & Iklan', 'pemasaran-iklan', 'expense', 'Biaya promosi, iklan sosial media, dan cetak.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(10, 'Perawatan & Perbaikan', 'perawatan-perbaikan', 'expense', 'Biaya maintenance aset dan peralatan.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(11, 'Transportasi & Logistik', 'transportasi-logistik', 'expense', 'Biaya bensin, pengiriman, dan perjalanan dinas.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(12, 'Pembelian Stok', 'pembelian-stok', 'expense', 'Biaya pembelian barang dagangan (HPP).', '2026-08-08 22:05:38', '2026-08-08 22:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `finance_transactions`
--

CREATE TABLE `finance_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `finance_category_id` bigint(20) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `external_reference` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_01_06_142223_create_customers_table', 1),
(5, '2026_01_07_023726_create_suppliers_table', 1),
(6, '2026_01_07_043653_create_units_table', 1),
(7, '2026_01_07_055728_create_categories_table', 1),
(8, '2026_01_07_062203_create_products_table', 1),
(9, '2026_01_07_081258_create_purchases_table', 1),
(10, '2026_01_07_081259_create_purchase_items_table', 1),
(11, '2026_01_08_030943_create_sales_table', 1),
(12, '2026_01_08_030944_create_sale_items_table', 1),
(13, '2026_02_02_072243_create_finance_categories_table', 1),
(14, '2026_02_02_102421_create_finance_transactions_table', 1),
(15, '2026_02_03_033839_create_settings_table', 1),
(16, '2026_02_03_124644_add_polymorphic_reference_to_finance_transactions_table', 1),
(17, '2026_02_19_064807_add_global_discount_to_sales_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `purchase_price` bigint(20) NOT NULL,
  `selling_price` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `min_stock` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `unit_id`, `sku`, `name`, `purchase_price`, `selling_price`, `quantity`, `min_stock`, `is_active`, `description`, `notes`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 'P.260809.ICMW', 'Semen Tiga Roda (50kg)', 59500, 70000, 48, 5, 1, 'Stok tersedia untuk Semen Tiga Roda (50kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(2, 1, 6, 'P.260809.NPP4', 'Semen Dynamix (50kg)', 55250, 65000, 57, 5, 1, 'Stok tersedia untuk Semen Dynamix (50kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(3, 1, 6, 'P.260809.VOS9', 'Semen Rajawali (50kg)', 50150, 59000, 63, 5, 1, 'Stok tersedia untuk Semen Rajawali (50kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(4, 1, 6, 'P.260809.KEJ5', 'Semen Merdeka (50kg)', 45475, 53500, 36, 5, 1, 'Stok tersedia untuk Semen Merdeka (50kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(5, 1, 6, 'P.260809.VEQM', 'Semen Best (50kg)', 44200, 52000, 37, 5, 1, 'Stok tersedia untuk Semen Best (50kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(6, 1, 6, 'P.260809.LXOG', 'Acian TR-30 Tiga Roda (40kg)', 93500, 110000, 43, 5, 1, 'Stok tersedia untuk Acian TR-30 Tiga Roda (40kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(7, 1, 6, 'P.260809.FGXW', 'Semen Putih Tiga Roda (40kg)', 93500, 110000, 35, 5, 1, 'Stok tersedia untuk Semen Putih Tiga Roda (40kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(8, 1, 6, 'P.260809.GERN', 'Semen Hebel SCG (40kg)', 55250, 65000, 46, 5, 1, 'Stok tersedia untuk Semen Hebel SCG (40kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(9, 1, 6, 'P.260809.6YAO', 'Acian Plester Putih Maxson MC-270', 53125, 62500, 64, 5, 1, 'Stok tersedia untuk Acian Plester Putih Maxson MC-270', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(10, 1, 6, 'P.260809.3918', 'Casting / Tepung Gipsum (20kg)', 31450, 37000, 72, 5, 1, 'Stok tersedia untuk Casting / Tepung Gipsum (20kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(11, 1, 6, 'P.260809.8XO3', 'Kapur Mill (20kg)', 15300, 18000, 30, 5, 1, 'Stok tersedia untuk Kapur Mill (20kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(12, 1, 6, 'P.260809.QUK7', 'Kompon A+ (20kg)', 51000, 60000, 80, 5, 1, 'Stok tersedia untuk Kompon A+ (20kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(13, 1, 6, 'P.260809.9TPX', 'TR-15 Tiga Roda Perekat Hebel (40kg)', 68000, 80000, 47, 5, 1, 'Stok tersedia untuk TR-15 Tiga Roda Perekat Hebel (40kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(14, 1, 6, 'P.260809.II1K', 'TR-20 Tiga Roda Plester Hebel (40kg)', 68000, 80000, 13, 5, 1, 'Stok tersedia untuk TR-20 Tiga Roda Plester Hebel (40kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(15, 1, 6, 'P.260809.DDEE', 'MU-301 Tiga Roda Plester Hebel (40kg)', 82450, 97000, 20, 5, 1, 'Stok tersedia untuk MU-301 Tiga Roda Plester Hebel (40kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(16, 1, 9, 'P.260809.VENU', 'Pasir Jumbo (1 Truk)', 935000, 1100000, 64, 5, 1, 'Stok tersedia untuk Pasir Jumbo (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(17, 1, 9, 'P.260809.8WOP', 'Pasir Cor (1 Truk)', 1147500, 1350000, 79, 5, 1, 'Stok tersedia untuk Pasir Cor (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(18, 1, 9, 'P.260809.7D1P', 'Pasir Cuci (1 Truk)', 1275000, 1500000, 37, 5, 1, 'Stok tersedia untuk Pasir Cuci (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(19, 1, 9, 'P.260809.ALYP', 'Batu Pondasi Hitam (1 Truk)', 1020000, 1200000, 23, 5, 1, 'Stok tersedia untuk Batu Pondasi Hitam (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(20, 1, 9, 'P.260809.8YEI', 'Batu Pondasi Putih (1 Truk)', 765000, 900000, 90, 5, 1, 'Stok tersedia untuk Batu Pondasi Putih (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(21, 1, 9, 'P.260809.TWQW', 'Batu Split - Rata Bak', 1530000, 1800000, 18, 5, 1, 'Stok tersedia untuk Batu Split - Rata Bak', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(22, 1, 9, 'P.260809.EZIU', 'Batu Split - Full Bak', 1700000, 2000000, 30, 5, 1, 'Stok tersedia untuk Batu Split - Full Bak', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(23, 1, 9, 'P.260809.C37V', 'Sirtu Urug (1 Truk)', 595000, 700000, 41, 5, 1, 'Stok tersedia untuk Sirtu Urug (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(24, 1, 9, 'P.260809.EAUI', 'Tanah Urug (1 Truk)', 467500, 550000, 87, 5, 1, 'Stok tersedia untuk Tanah Urug (1 Truk)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(25, 1, 1, 'P.260809.LJ95', 'Bata (K) - Kecil', 638, 750, 39, 5, 1, 'Stok tersedia untuk Bata (K) - Kecil', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(26, 1, 1, 'P.260809.VU80', 'Bata (S) - Sedang', 808, 950, 33, 5, 1, 'Stok tersedia untuk Bata (S) - Sedang', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(27, 1, 1, 'P.260809.PRGZ', 'Bata (B) - Besar', 850, 1000, 82, 5, 1, 'Stok tersedia untuk Bata (B) - Besar', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(28, 2, 5, 'P.260809.ITQP', 'Triplek 3mm Tunas', 39100, 46000, 42, 5, 1, 'Stok tersedia untuk Triplek 3mm Tunas', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(29, 2, 5, 'P.260809.AUNZ', 'Triplek 4mm Tunas', 45475, 53500, 64, 5, 1, 'Stok tersedia untuk Triplek 4mm Tunas', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(30, 2, 5, 'P.260809.9H1X', 'Triplek 6mm Tunas', 57375, 67500, 59, 5, 1, 'Stok tersedia untuk Triplek 6mm Tunas', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(31, 2, 5, 'P.260809.5NXA', 'Triplek 6mm MC', 80750, 95000, 58, 5, 1, 'Stok tersedia untuk Triplek 6mm MC', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(32, 2, 5, 'P.260809.UNEL', 'Triplek 8mm MC', 69700, 82000, 93, 5, 1, 'Stok tersedia untuk Triplek 8mm MC', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(33, 2, 5, 'P.260809.GI3Z', 'Triplek 12mm MC', 114750, 135000, 10, 5, 1, 'Stok tersedia untuk Triplek 12mm MC', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(34, 2, 5, 'P.260809.UMK6', 'Triplek 18mm MC', 178500, 210000, 58, 5, 1, 'Stok tersedia untuk Triplek 18mm MC', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(35, 2, 5, 'P.260809.AAFU', 'Triplek 9mm UT Better', 111350, 131000, 13, 5, 1, 'Stok tersedia untuk Triplek 9mm UT Better', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(36, 2, 5, 'P.260809.2FPZ', 'Triplek 12mm UT Better', 136000, 160000, 72, 5, 1, 'Stok tersedia untuk Triplek 12mm UT Better', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(37, 2, 5, 'P.260809.BODS', 'Triplek 15mm UT Better', 158950, 187000, 84, 5, 1, 'Stok tersedia untuk Triplek 15mm UT Better', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(38, 2, 5, 'P.260809.GIRX', 'Triplek 18mm UT Better', 195500, 230000, 28, 5, 1, 'Stok tersedia untuk Triplek 18mm UT Better', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(39, 2, 5, 'P.260809.0LCS', 'Triplek 3mm Alba', 36125, 42500, 38, 5, 1, 'Stok tersedia untuk Triplek 3mm Alba', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(40, 2, 5, 'P.260809.7PLD', 'Triplek 4mm Alba', 44625, 52500, 44, 5, 1, 'Stok tersedia untuk Triplek 4mm Alba', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(41, 2, 5, 'P.260809.P6N4', 'Triplek Melaminto Putih 3mm', 108375, 127500, 74, 5, 1, 'Stok tersedia untuk Triplek Melaminto Putih 3mm', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(42, 2, 5, 'P.260809.WK4I', 'Triplek 15mm X Brasi', 174250, 205000, 61, 5, 1, 'Stok tersedia untuk Triplek 15mm X Brasi', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(43, 2, 1, 'P.260809.LKYF', 'Terpal 2x3', 34000, 40000, 78, 5, 1, 'Stok tersedia untuk Terpal 2x3', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(44, 2, 1, 'P.260809.UMLX', 'Terpal 3x3', 51000, 60000, 16, 5, 1, 'Stok tersedia untuk Terpal 3x3', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(45, 2, 1, 'P.260809.IJRU', 'Terpal 4x4', 79900, 94000, 72, 5, 1, 'Stok tersedia untuk Terpal 4x4', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(46, 2, 1, 'P.260809.0QHO', 'Terpal 4x6', 116875, 137500, 14, 5, 1, 'Stok tersedia untuk Terpal 4x6', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(47, 2, 1, 'P.260809.2JMF', 'Terpal 5x7', 165750, 195000, 12, 5, 1, 'Stok tersedia untuk Terpal 5x7', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(48, 2, 1, 'P.260809.MAEN', 'Terpal 5x6', 178500, 210000, 16, 5, 1, 'Stok tersedia untuk Terpal 5x6', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(49, 4, 7, 'P.260809.UXUU', 'Kuku Macan Fujimi (Dus)', 106250, 125000, 14, 5, 1, 'Stok tersedia untuk Kuku Macan Fujimi (Dus)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(50, 4, 3, 'P.260809.5RPE', 'Kuku Macan Fujimi (Meter)', 6375, 7500, 16, 5, 1, 'Stok tersedia untuk Kuku Macan Fujimi (Meter)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(51, 4, 7, 'P.260809.7GNX', 'Kuku Macan Viva (Dus)', 63750, 75000, 38, 5, 1, 'Stok tersedia untuk Kuku Macan Viva (Dus)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(52, 4, 3, 'P.260809.YITD', 'Kuku Macan Viva (Meter)', 4250, 5000, 76, 5, 1, 'Stok tersedia untuk Kuku Macan Viva (Meter)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(53, 4, 7, 'P.260809.9J5Z', 'Kuku Macan Marbel KW (Dus)', 140250, 165000, 49, 5, 1, 'Stok tersedia untuk Kuku Macan Marbel KW (Dus)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(54, 4, 3, 'P.260809.NSVN', 'Kuku Macan Marbel KW (Meter)', 8500, 10000, 54, 5, 1, 'Stok tersedia untuk Kuku Macan Marbel KW (Meter)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(55, 4, 7, 'P.260809.CYB6', 'Kuku Macan Silver/Gold (Dus)', 140250, 165000, 66, 5, 1, 'Stok tersedia untuk Kuku Macan Silver/Gold (Dus)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(56, 4, 3, 'P.260809.SROL', 'Kuku Macan Silver/Gold (Meter)', 8500, 10000, 58, 5, 1, 'Stok tersedia untuk Kuku Macan Silver/Gold (Meter)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(57, 3, 6, 'P.260809.M7IW', 'Lemkra 5kg 101 (Pasang Kramik)', 34000, 40000, 21, 5, 1, 'Stok tersedia untuk Lemkra 5kg 101 (Pasang Kramik)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(58, 3, 6, 'P.260809.TBY1', 'Lemkra 5kg 111 (Dinding)', 38250, 45000, 15, 5, 1, 'Stok tersedia untuk Lemkra 5kg 111 (Dinding)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(59, 3, 6, 'P.260809.EOCC', 'Lemkra 5kg 105 (Beton)', 59500, 70000, 61, 5, 1, 'Stok tersedia untuk Lemkra 5kg 105 (Beton)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(60, 2, 4, 'P.260809.YUXW', 'Lis Gipsum 13cm - Mata Sapi', 14025, 16500, 92, 5, 1, 'Stok tersedia untuk Lis Gipsum 13cm - Mata Sapi', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(61, 2, 4, 'P.260809.SDPS', 'Lis Gipsum 13cm - Mawar Besar', 14025, 16500, 59, 5, 1, 'Stok tersedia untuk Lis Gipsum 13cm - Mawar Besar', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(62, 2, 4, 'P.260809.SBKC', 'Lis Gipsum 13cm - Tombak Besar', 14025, 16500, 39, 5, 1, 'Stok tersedia untuk Lis Gipsum 13cm - Tombak Besar', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(63, 2, 4, 'P.260809.95T4', 'Lis Gipsum 12cm - Minimalis Besar', 12750, 15000, 78, 5, 1, 'Stok tersedia untuk Lis Gipsum 12cm - Minimalis Besar', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(64, 2, 4, 'P.260809.RVER', 'Lis Gipsum 12cm - Kangkung', 12750, 15000, 83, 5, 1, 'Stok tersedia untuk Lis Gipsum 12cm - Kangkung', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(65, 2, 4, 'P.260809.5SY0', 'Lis Gipsum 12cm - Kupat', 12750, 15000, 61, 5, 1, 'Stok tersedia untuk Lis Gipsum 12cm - Kupat', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(66, 2, 4, 'P.260809.PHNG', 'Lis Gipsum 12cm - Bendera', 12750, 15000, 50, 5, 1, 'Stok tersedia untuk Lis Gipsum 12cm - Bendera', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(67, 2, 4, 'P.260809.NZHQ', 'Lis Gipsum 8cm - Minimalis Kecil', 11050, 13000, 20, 5, 1, 'Stok tersedia untuk Lis Gipsum 8cm - Minimalis Kecil', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(68, 2, 4, 'P.260809.5KSL', 'Lis Gipsum 8cm - Renda', 11050, 13000, 66, 5, 1, 'Stok tersedia untuk Lis Gipsum 8cm - Renda', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(69, 2, 4, 'P.260809.MBOF', 'Lis Gipsum 8cm - Piano', 11050, 13000, 82, 5, 1, 'Stok tersedia untuk Lis Gipsum 8cm - Piano', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(70, 2, 4, 'P.260809.UEU6', 'Lis Biding 5cm - Polos Kecil', 11050, 13000, 48, 5, 1, 'Stok tersedia untuk Lis Biding 5cm - Polos Kecil', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(71, 2, 4, 'P.260809.YX5N', 'Lis Biding 5cm - Tambang', 11050, 13000, 70, 5, 1, 'Stok tersedia untuk Lis Biding 5cm - Tambang', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(72, 2, 4, 'P.260809.OVCA', 'Lis Biding 5cm - Melati', 11050, 13000, 72, 5, 1, 'Stok tersedia untuk Lis Biding 5cm - Melati', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(73, 2, 1, 'P.260809.88RR', 'Tabok Lampu - Bulat Kecil', 34000, 40000, 80, 5, 1, 'Stok tersedia untuk Tabok Lampu - Bulat Kecil', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(74, 2, 1, 'P.260809.GJMS', 'Tabok Lampu - Sawi Bintang', 42500, 50000, 54, 5, 1, 'Stok tersedia untuk Tabok Lampu - Sawi Bintang', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(75, 2, 1, 'P.260809.FDZV', 'Tabok Lampu - Sarang Tawon', 42500, 50000, 61, 5, 1, 'Stok tersedia untuk Tabok Lampu - Sarang Tawon', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(76, 2, 1, 'P.260809.DGDD', 'Tabok Lampu - Oreo/Kotak', 42500, 50000, 66, 5, 1, 'Stok tersedia untuk Tabok Lampu - Oreo/Kotak', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(77, 2, 1, 'P.260809.GDPS', 'Tabok Lampu - Oval Kupu', 42500, 50000, 18, 5, 1, 'Stok tersedia untuk Tabok Lampu - Oval Kupu', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(78, 2, 1, 'P.260809.K9NS', 'Tabok Lampu - Oval Batik', 59500, 70000, 29, 5, 1, 'Stok tersedia untuk Tabok Lampu - Oval Batik', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(79, 2, 1, 'P.260809.XIOC', 'Tabok Lampu - Batik Besar', 68000, 80000, 50, 5, 1, 'Stok tersedia untuk Tabok Lampu - Batik Besar', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(80, 2, 1, 'P.260809.7JNW', 'Tabok Lampu - Segi 8 Besar', 68000, 80000, 43, 5, 1, 'Stok tersedia untuk Tabok Lampu - Segi 8 Besar', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(81, 6, 2, 'P.260809.RD6H', 'Paku Kayu Ukuran 3/4 inch', 21250, 25000, 43, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 3/4 inch', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(82, 6, 2, 'P.260809.RFQX', 'Paku Kayu Ukuran 1 inch', 20400, 24000, 56, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 1 inch', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(83, 6, 2, 'P.260809.ZVOH', 'Paku Kayu Ukuran 1-1/4 inch', 19550, 23000, 82, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 1-1/4 inch', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(84, 6, 2, 'P.260809.V67F', 'Paku Kayu Ukuran 1-1/2 inch (4cm)', 17850, 21000, 79, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 1-1/2 inch (4cm)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(85, 6, 2, 'P.260809.XRBA', 'Paku Kayu Ukuran 5cm', 17000, 20000, 96, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 5cm', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(86, 6, 2, 'P.260809.WC6I', 'Paku Kayu Ukuran 7cm', 17000, 20000, 97, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 7cm', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(87, 6, 2, 'P.260809.N60O', 'Paku Kayu Ukuran 10cm', 17000, 20000, 14, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 10cm', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(88, 6, 2, 'P.260809.WCIP', 'Paku Kayu Ukuran 12cm', 17000, 20000, 25, 5, 1, 'Stok tersedia untuk Paku Kayu Ukuran 12cm', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(89, 6, 2, 'P.260809.LUF5', 'Paku GRC / Jalusi', 21250, 25000, 15, 5, 1, 'Stok tersedia untuk Paku GRC / Jalusi', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(90, 6, 7, 'P.260809.TNAU', 'Paku Kayu 1 Dus (Isi 30kg)', 312800, 368000, 84, 5, 1, 'Stok tersedia untuk Paku Kayu 1 Dus (Isi 30kg)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(91, 6, 8, 'P.260809.GSGL', 'Kawat Tali / Bendrat (PT Family)', 255000, 300000, 77, 5, 1, 'Stok tersedia untuk Kawat Tali / Bendrat (PT Family)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(92, 6, 8, 'P.260809.QUXC', 'Kawat Tali / Bendrat (Biasa)', 221000, 260000, 99, 5, 1, 'Stok tersedia untuk Kawat Tali / Bendrat (Biasa)', NULL, '2026-08-08 22:05:38', '2026-08-08 22:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `total` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `notes` text DEFAULT NULL,
  `proof_image` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` bigint(20) NOT NULL,
  `selling_price` bigint(20) DEFAULT NULL,
  `subtotal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `subtotal` bigint(20) NOT NULL DEFAULT 0,
  `global_discount` bigint(20) NOT NULL DEFAULT 0,
  `total_discount` bigint(20) NOT NULL DEFAULT 0,
  `total` bigint(20) NOT NULL DEFAULT 0,
  `cash_received` bigint(20) NOT NULL DEFAULT 0,
  `change` bigint(20) NOT NULL DEFAULT 0,
  `payment_method` varchar(255) NOT NULL DEFAULT 'cash',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost_price` bigint(20) NOT NULL,
  `unit_price` bigint(20) NOT NULL,
  `discount` bigint(20) NOT NULL DEFAULT 0,
  `final_price` bigint(20) NOT NULL,
  `subtotal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fRUCWNOXOHOhEB6D9wGuV1NZVhFZPQZVuQURxtgJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVEJtWlkwbFdIM3BQMmlvQWxZeFlCYXFJSUc1dllMdkFwS0xVTUEwdCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbWFzdGVyL2N1c3RvbWVycyI7czo1OiJyb3V0ZSI7czoxNToiY3VzdG9tZXJzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1786275696),
('XBHv9pmiXuTnIhCy0rKoWWtUzrifpTjEwa2fWvFR', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiM1JZajVLemhod3Z0OXZTMHNnbTJLcm5SS04zMlNiSFpUc0RzM0ZCTyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvdXNlcnMiO3M6NToicm91dGUiO3M6MTE6InVzZXJzLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIyOiJQSFBERUJVR0JBUl9TVEFDS19EQVRBIjthOjA6e319', 1786252503);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`key`, `value`, `created_at`, `updated_at`) VALUES
('currency_decimal_separator', ',', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('currency_fraction_digits', '0', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('currency_position', 'left', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('currency_symbol', 'Rp', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('currency_thousand_separator', '.', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('opening_balance_amount', '10000000', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('opening_balance_date', '2026-01-01', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('store_address', 'Pamijahan, Kec. Plumbon, Kabupaten Cirebon, Jawa Barat 45155', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('store_name', 'TB. Kencana Pamijahan', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
('store_phone', '081234567890', '2026-08-08 22:05:38', '2026-08-08 22:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `contact_person`, `email`, `phone`, `address`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Schaden-Hagenes', 'Gwendolyn Walter', 'gutkowski.javier@mclaughlin.com', '(878) 662-5562', '101 Toby Trail\nCasperton, TX 19662-3914', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(2, 'Farrell PLC', 'Lourdes Williamson', 'dane83@bednar.biz', '1-283-790-4808', '581 Parisian Lodge Suite 798\nSouth Myriam, NV 99552-3488', 'Sit unde consequuntur et omnis.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(3, 'O\'Connell-Wilderman', 'Douglas Leuschke', 'reba.spinka@heathcote.info', '724-603-1520', '494 Leannon Vista Apt. 689\nJohnniebury, SC 31467', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(4, 'Bayer-Padberg', 'Alexandrea Runte', 'rolfson.whitney@pacocha.com', '518-387-1322', '37401 Dina Lodge Apt. 079\nPort Magnusview, OK 25923-9149', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(5, 'Reynolds Ltd', 'Lionel Nienow', 'seth52@reilly.org', '626.815.1587', '99133 Kutch Brook\nAmericafort, WI 64135', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(6, 'Kerluke LLC', 'Garnett Auer', 'lang.magnolia@feil.com', '(610) 319-8885', '978 Kautzer Islands Apt. 529\nNorth Marlin, NE 14214-4525', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(7, 'Crona-Davis', 'Florine McDermott', 'parisian.ashtyn@yundt.com', '+1.906.601.2356', '29947 Schoen Mountain\nRodriguezmouth, CT 53508-4609', 'Sint odio porro architecto harum et consequatur ut.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(8, 'Stiedemann-Schulist', 'Russel Nader', 'qdicki@padberg.com', '(872) 302-7055', '57642 Caleigh Springs Suite 737\nWest Jeremyville, MN 22767-9027', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(9, 'Wyman, Larson and Kessler', 'Geraldine Johnson', 'katarina.olson@feeney.info', '401.577.2145', '48487 Bosco Flats\nLake Daronshire, AR 22525', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(10, 'Fadel PLC', 'Dayana Raynor', 'ova55@gleason.com', '+1.678.834.3894', '38783 Adriel Expressway\nSouth Adele, IN 85494', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(11, 'Ankunding, Kuhic and Schultz', 'Therese Harber', 'stacey.weissnat@farrell.org', '(270) 870-9766', '89907 Dooley Harbors\nLake Micaela, NJ 31523', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(12, 'Kshlerin-King', 'Mariam Yost', 'kamille.gutmann@pollich.com', '+1-361-378-5947', '7204 Erdman Junction Apt. 086\nDaremouth, CA 08493', 'Autem velit voluptatem et sint praesentium.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(13, 'Anderson, Dickens and Rolfson', 'Ramona Cummerata', 'mcdermott.clifford@kris.com', '+14254803477', '588 Orpha Valleys Apt. 225\nRatkemouth, NV 08191-0177', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(14, 'Dare-Gibson', 'Amy Donnelly', 'imelda90@bogan.com', '+1.229.254.2555', '750 DuBuque Keys\nBatzburgh, KY 45514-7244', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(15, 'Schiller, Wilkinson and Spencer', 'Lexie Kohler', 'guadalupe.fisher@romaguera.com', '423.694.5499', '9539 Ned Trafficway Apt. 408\nNew Prudence, HI 70898', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(16, 'Cruickshank-Bechtelar', 'Jaiden Brown DVM', 'vkris@douglas.com', '+1-857-263-4352', '254 Lyric Ranch Apt. 046\nEast Keyshawnstad, OK 46016', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(17, 'Emard Ltd', 'Prof. Patricia Herman', 'gaylord.hegmann@bosco.com', '+17252625200', '80474 Ondricka Radial\nPort Catharinemouth, AK 86790-3082', 'Velit explicabo sit molestiae ut ut.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(18, 'Wisoky, Nitzsche and Murazik', 'Noel Pollich', 'rick08@dickinson.com', '(631) 450-7416', '6756 Stroman Avenue Suite 397\nPort Amaliaport, HI 17002', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(19, 'Auer, Kassulke and Hauck', 'Norris Bednar II', 'gcarter@mclaughlin.com', '+1-551-802-3726', '58264 Parker Gardens\nJohathanmouth, MO 27953', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(20, 'Wisoky and Sons', 'Annetta Funk IV', 'lizeth.conn@hermann.com', '(308) 837-1403', '232 Chandler Brooks Suite 911\nMiracleville, VT 44909-0796', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(21, 'Fisher, Corwin and Erdman', 'Miss Bianka Ferry MD', 'arnulfo62@brown.com', '305-618-6725', '549 Emilio Locks Suite 092\nLake Carolmouth, NM 35012-2107', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(22, 'Hessel-Bernhard', 'Nichole Homenick', 'conner.brakus@vonrueden.com', '936-987-0280', '167 Lueilwitz Plain Suite 209\nEast Odie, CT 90785-1607', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(23, 'Jerde, Farrell and Carroll', 'Ms. Carli O\'Connell', 'mcorkery@botsford.org', '+1-845-821-3132', '751 Nolan Ports Suite 330\nNorth Gabriellefort, MS 33827', 'Aut aliquam enim rerum deleniti.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(24, 'Hayes, Conn and Stroman', 'Albert Doyle', 'mccullough.dayna@torphy.com', '1-314-540-6048', '49651 Adrain Flat\nKassulkechester, FL 58085', 'Rem dolor molestiae eaque cumque.', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(25, 'Halvorson, Klein and Turner', 'Roscoe Farrell Jr.', 'hhand@rempel.com', '214.682.8541', '52735 April Club\nCordellfort, WY 24218', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Pcs', 'pcs', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(2, 'Kilogram', 'kg', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(3, 'Meter', 'm', '2026-08-08 22:05:37', '2026-08-08 22:05:37'),
(4, 'Batang', 'btg', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(5, 'Lembar', 'lbr', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(6, 'Sak', 'sak', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(7, 'Dus', 'dus', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(8, 'Roll', 'roll', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(9, 'Rit', 'rit', '2026-08-08 22:05:38', '2026-08-08 22:05:38'),
(10, 'Liter', 'ltr', '2026-08-08 22:05:38', '2026-08-08 22:05:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', NULL, '$2y$12$KtHz41dfMSuFq0jEPAkRX.GB5KgfwpgoQEIgoaTG1MbumlnEp4skK', NULL, '2026-08-08 22:05:37', '2026-08-08 22:05:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_name_index` (`name`),
  ADD KEY `customers_email_index` (`email`),
  ADD KEY `customers_phone_index` (`phone`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finance_categories`
--
ALTER TABLE `finance_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `finance_categories_slug_unique` (`slug`);

--
-- Indexes for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `finance_transactions_code_unique` (`code`),
  ADD KEY `finance_transactions_finance_category_id_foreign` (`finance_category_id`),
  ADD KEY `finance_transactions_created_by_foreign` (`created_by`),
  ADD KEY `finance_transactions_reference_type_reference_id_index` (`reference_type`,`reference_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_name_index` (`name`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchases_invoice_number_unique` (`invoice_number`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`),
  ADD KEY `purchases_created_by_foreign` (`created_by`),
  ADD KEY `purchases_purchase_date_index` (`purchase_date`),
  ADD KEY `purchases_status_index` (`status`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`),
  ADD KEY `purchase_items_purchase_id_product_id_index` (`purchase_id`,`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_invoice_number_unique` (`invoice_number`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_created_by_foreign` (`created_by`),
  ADD KEY `sales_sale_date_index` (`sale_date`),
  ADD KEY `sales_status_index` (`status`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_name_index` (`name`),
  ADD KEY `suppliers_contact_person_index` (`contact_person`),
  ADD KEY `suppliers_email_index` (`email`),
  ADD KEY `suppliers_phone_index` (`phone`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_symbol_unique` (`symbol`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finance_categories`
--
ALTER TABLE `finance_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  ADD CONSTRAINT `finance_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `finance_transactions_finance_category_id_foreign` FOREIGN KEY (`finance_category_id`) REFERENCES `finance_categories` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

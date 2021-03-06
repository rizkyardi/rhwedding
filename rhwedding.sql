-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Mar 2021 pada 11.40
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rhwedding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', '2498ea16045c5d612b6a5d8cc570644c', '2021-02-09 04:17:55'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36', 'b44b37d6b6189a8e8ecc3d22ad749e0d', '2021-02-09 04:40:04'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'd8c70315ef7869c070d837b71b0e6243', '2021-02-09 08:01:53'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '7cc1e3dbd514daaa56f34e158417c4f0', '2021-02-09 08:55:59'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', '7cc1e3dbd514daaa56f34e158417c4f0', '2021-02-09 08:56:14'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', '38104d53defd216884c16e28f09915ee', '2021-03-04 01:19:14'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', '73a17ad45c0cea060980456036622cc3', '2021-03-04 01:22:34'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', '76d396e5c10d7f9519d548ec0777a6fc', '2021-03-04 01:27:00'),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', 'b28e656a31a38f442edaf201ad6b1a3c', '2021-03-04 01:30:14'),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', '73a17ad45c0cea060980456036622cc3', '2021-03-04 01:30:46'),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.72 Safari/537.36', '9a01a96cb28f2220231d066aae13503c', '2021-03-04 01:47:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`, `active`) VALUES
(1, 'Admin', 'Administrator', 1),
(2, 'Vendor', 'vendor partners', 1),
(3, 'User', 'Regular user', 1),
(4, 'Cashier', 'RH Wedding Planner Cashier', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(1, 5),
(3, 4),
(3, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 08:06:43', 1),
(2, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 08:28:10', 1),
(3, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 08:44:51', 1),
(4, '::1', 'muhamadarsal71@gmail.com', 6, '2021-02-09 08:56:14', 1),
(5, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:12:51', 1),
(6, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:17:34', 1),
(7, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:18:08', 1),
(8, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:18:40', 1),
(9, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:19:00', 1),
(10, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:20:32', 1),
(11, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 09:35:00', 1),
(12, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 10:02:25', 1),
(13, '::1', 'muhamadarsal71@gmail.com', 6, '2021-02-09 11:44:24', 1),
(14, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-09 11:45:03', 1),
(15, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-11 01:19:02', 1),
(16, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-13 01:26:06', 1),
(17, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-16 07:28:52', 1),
(18, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-19 08:59:14', 1),
(19, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-20 10:49:47', 1),
(20, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-20 22:39:52', 1),
(21, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-21 00:19:23', 1),
(22, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-21 01:32:53', 1),
(23, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-21 07:39:00', 1),
(24, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-24 00:33:46', 1),
(25, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-24 06:45:23', 1),
(26, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-24 10:26:47', 1),
(27, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-25 09:04:16', 1),
(28, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-02-28 08:01:50', 1),
(29, '::1', 'muhamadarsal71@gmail.com', 6, '2021-03-03 06:42:00', 1),
(30, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-03-03 06:42:55', 1),
(31, '::1', 'muhamadarsal71@gmail.com', 8, '2021-03-04 01:19:31', 1),
(32, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-03-04 01:20:21', 1),
(33, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-03-04 01:30:46', 1),
(34, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-03-04 01:48:03', 1),
(35, '::1', 'muhamadarsaludin71@gmail.com', 5, '2021-03-04 04:10:38', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1612863292, 1),
(2, '2021-02-14-180156', 'App\\Database\\Migrations\\Vendors', 'default', 'App', 1613361171, 2),
(3, '2021-02-14-181713', 'App\\Database\\Migrations\\VendorsServices', 'default', 'App', 1613361171, 2),
(4, '2021-02-14-182221', 'App\\Database\\Migrations\\VendorsLevel', 'default', 'App', 1613361171, 2),
(5, '2021-02-14-182655', 'App\\Database\\Migrations\\Services', 'default', 'App', 1613361171, 2),
(6, '2021-02-15-030514', 'App\\Database\\Migrations\\Products', 'default', 'App', 1613361171, 2),
(7, '2021-02-15-031357', 'App\\Database\\Migrations\\ProductsCategory', 'default', 'App', 1613361171, 2),
(8, '2021-02-15-031539', 'App\\Database\\Migrations\\Category', 'default', 'App', 1613361171, 2),
(9, '2021-02-15-031922', 'App\\Database\\Migrations\\ProductsImages', 'default', 'App', 1613361171, 2),
(10, '2021-02-15-032238', 'App\\Database\\Migrations\\ProductsReview', 'default', 'App', 1613361171, 2),
(11, '2021-02-15-033131', 'App\\Database\\Migrations\\Address', 'default', 'App', 1613361172, 2),
(12, '2021-02-16-151144', 'App\\Database\\Migrations\\UsersProfile', 'default', 'App', 1613488765, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `product_service_id` int(11) UNSIGNED NOT NULL,
  `product_code` varchar(20) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_main_image` varchar(255) NOT NULL,
  `product_video` varchar(255) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_sold` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `total_review` int(11) NOT NULL,
  `active` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_category`
--

CREATE TABLE `products_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_images`
--

CREATE TABLE `products_images` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_review`
--

CREATE TABLE `products_review` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `rating` int(1) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) DEFAULT 1,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `name`, `active`, `description`) VALUES
(1, 'Venue', 1, NULL),
(4, 'Decoration', 1, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'rizkyardi.ilhami06@gmail.com', 'rizkyardi', '$2y$10$G5j5k7jijPQRT344Lrt6Qukr8M.KhzktVz9R6Sg.2lPMRHDQjxDLy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-09 04:16:46', '2021-02-09 04:17:59', NULL),
(4, 'rizky.mahasiswa@stmik-tasikmalaya.ac.id', 'rizkymhs', '$2y$10$o1VNfJulkKi79N8alnbUau.4hN8BU0CK4jj7L7h/hjfc83nkBuC52', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-09 04:38:59', '2021-02-09 04:40:05', NULL),
(5, 'muhamadarsaludin71@gmail.com', 'arsal', '$2y$10$jrA4SNtwP2SWzc6mGhup6.9mXkG1HH1n5q3CZL0EclnEoGKoJDxBi', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-02-09 08:00:49', '2021-02-09 08:01:53', NULL),
(12, 'muhamadarsal71@gmail.com', 'arsal71', '$2y$10$jD9H/47/Nn1QdyTnH6EfW.3yaD928XZo19B1E2Ae82QDvEmr0DZZK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-04 01:47:11', '2021-03-04 01:47:29', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `full_name` varchar(128) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT 'default.svg',
  `contact` varchar(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `postal_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users_profile`
--

INSERT INTO `users_profile` (`id`, `user_id`, `full_name`, `user_image`, `contact`, `address`, `city`, `province`, `postal_code`) VALUES
(1, 5, 'Muhamad Arsaludin', 'default.svg', NULL, NULL, NULL, NULL, NULL),
(4, 12, 'arsal71', 'default.svg', NULL, NULL, NULL, NULL, NULL),
(5, 4, 'rizkymhs', 'default.svg', NULL, NULL, NULL, NULL, NULL),
(6, 1, 'rizkyardi', 'default.svg', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `vendor_code` varchar(20) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_logo` varchar(255) NOT NULL DEFAULT 'default.svg',
  `vendor_billboard` varchar(255) NOT NULL DEFAULT 'default.png',
  `vendor_level_id` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `vendor_description` text DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `vendor_code`, `vendor_name`, `vendor_logo`, `vendor_billboard`, `vendor_level_id`, `vendor_description`, `active`, `created_at`, `updated_at`) VALUES
(2, 1, 'VND_0220210001', 'Grand Aston Bali', 'logo1.png', 'default.png', 4, NULL, 1, '2021-02-24 14:48:01', '2021-02-24 14:48:01'),
(3, 4, 'VND_0220210002', 'Sarovar', 'logo2.png', 'default.png', 1, NULL, 1, '2021-02-24 14:50:28', '2021-02-24 14:50:28'),
(4, 5, 'VND_0220210001', 'RH', 'default.svg', 'rhvideo.mp4', 4, 'Official vendor from RH Wedding Planner', 1, '2021-03-03 19:45:09', '2021-03-03 19:45:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors_level`
--

CREATE TABLE `vendors_level` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `vendors_level`
--

INSERT INTO `vendors_level` (`id`, `name`, `description`) VALUES
(1, 'Classic', NULL),
(2, 'Silver', NULL),
(3, 'Gold', ''),
(4, 'Platinum', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `vendors_services`
--

CREATE TABLE `vendors_services` (
  `id` int(11) UNSIGNED NOT NULL,
  `vendor_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `vendors_services`
--

INSERT INTO `vendors_services` (`id`, `vendor_id`, `service_id`) VALUES
(1, 2, 1),
(2, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `product_service_id` (`product_service_id`);

--
-- Indeks untuk tabel `products_category`
--
ALTER TABLE `products_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `products_images`
--
ALTER TABLE `products_images`
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `products_review`
--
ALTER TABLE `products_review`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transaction_id` (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `vendor_level_id` (`vendor_level_id`);

--
-- Indeks untuk tabel `vendors_level`
--
ALTER TABLE `vendors_level`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `vendors_services`
--
ALTER TABLE `vendors_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `service_id` (`service_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products_category`
--
ALTER TABLE `products_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products_review`
--
ALTER TABLE `products_review`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `vendors_level`
--
ALTER TABLE `vendors_level`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `vendors_services`
--
ALTER TABLE `vendors_services`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_service_id`) REFERENCES `vendors_services` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products_category`
--
ALTER TABLE `products_category`
  ADD CONSTRAINT `products_category_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products_images`
--
ALTER TABLE `products_images`
  ADD CONSTRAINT `products_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products_review`
--
ALTER TABLE `products_review`
  ADD CONSTRAINT `products_review_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vendors`
--
ALTER TABLE `vendors`
  ADD CONSTRAINT `vendors_ibfk_1` FOREIGN KEY (`vendor_level_id`) REFERENCES `vendors_level` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vendors_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `vendors_services`
--
ALTER TABLE `vendors_services`
  ADD CONSTRAINT `vendors_services_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `vendors_services_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

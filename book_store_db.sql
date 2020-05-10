-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2020 at 06:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `supplier_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `created_at`, `updated_at`, `category_id`, `code`, `description`, `image`, `name`, `price`, `supplier_id`) VALUES
(16, '2020-05-10 08:13:35', '2020-05-10 08:14:26', 1, '01', 'Sách dạy tiếng nhật cơ bản', '1589123614.jpg', 'Minano Nihongo Kanji', 56000, 3),
(17, '2020-05-10 08:15:13', '2020-05-10 08:15:13', 1, '02', 'Sách dạy tiếng nhật cơ bản', '1589123713.jpg', 'Minano Nihongo Cơ Bản', 50000, 3),
(18, '2020-05-10 08:16:08', '2020-05-10 08:18:01', 1, '03', 'Luyện Thi Toeic cấp tốc', '1589123768.jpg', 'Luyện Thi Toeic Cấp Tốc', 46000, 4),
(19, '2020-05-10 08:17:48', '2020-05-10 08:17:48', 1, '04', 'Ôn tập, nắm bắt ngữ pháp luyện thi Toeic', '1589123868.png', 'Ngữ Pháp Toeic', 34000, 4),
(20, '2020-05-10 08:19:31', '2020-05-10 08:19:31', 1, '05', 'Ôn tập, nắm bắt Từ mới luyện thi Toeic', '1589123971.jpg', '800 Từ Mới Luyện Thi Toeic', 47000, 3),
(21, '2020-05-10 08:21:48', '2020-05-10 08:21:48', 2, '06', 'Tiểu thuyết ngôn tình hay', '1589124108.jpg', 'Bên Nhau Trọn Đời', 86000, 5),
(22, '2020-05-10 08:22:56', '2020-05-10 08:22:56', 2, '07', 'Tiểu thuyết chiến tranh', '1589124176.jpg', 'Cuộc Chiến Đầu Tiên', 65000, 4),
(23, '2020-05-10 08:25:08', '2020-05-10 08:25:08', 2, '08', 'Tiểu thuyết khoa học viễn tưởng, thần thoại', '1589124308.png', 'Tây Du Kí', 110000, 6),
(24, '2020-05-10 08:29:54', '2020-05-10 08:29:54', 3, '09', 'Sách khoa học công nghệ', '1589124594.jpg', 'Ánh Sáng Khoa Khọc Kỹ Thuật', 140000, 6),
(25, '2020-05-10 08:45:30', '2020-05-10 08:45:30', 3, '10', 'Sách Khoa Học Công Nghệ', '1589125530.jpg', 'Doanh Nghiệp Với Khoa Học Và Công Nghệ', 150000, 6),
(26, '2020-05-10 08:47:22', '2020-05-10 08:47:22', 3, '11', 'Sách khoa học công nghệ', '1589125642.jpg', 'Giáo trìnhquản lý doanh nghiệp và công nghệ', 149000, 5),
(27, '2020-05-10 08:49:43', '2020-05-10 08:51:13', 4, '12', 'sách văn hóa nghệ thuật', '1589125783.jpg', 'Nghệ thuật xin lỗi của người Nhật', 74000, 6),
(28, '2020-05-10 08:50:58', '2020-05-10 08:50:58', 4, '13', 'sách văn hóa nghệ thuật', '1589125858.jpg', 'Ký Ức Nghệ Thuật Sân Khấu Truyền Thống', 46000, 6),
(29, '2020-05-10 08:52:09', '2020-05-10 08:52:09', 4, '14', 'sách văn hóa nghệ thuật', '1589125929.jpg', 'Đặc Trưng Văn Hóa 54 Dân Tộc', 50000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `code`, `name`) VALUES
(1, '2019-11-10 22:09:02', '2020-05-10 07:37:46', 1, 'Sách Ngoại Ngữ'),
(2, '2019-11-10 22:09:02', '2020-05-10 07:38:08', 2, 'Tiểu Thuyết'),
(3, '2019-11-10 22:09:02', '2020-05-10 07:39:25', 3, 'Khoa Học Công Nghệ – Kinh Tế'),
(4, '2019-11-10 22:09:02', '2020-05-10 07:39:38', 4, 'Văn Học Nghệ Thuật');

-- --------------------------------------------------------

--
-- Table structure for table `caterogies`
--

CREATE TABLE `caterogies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(149, '2014_10_12_000000_create_users_table', 1),
(150, '2014_10_12_100000_create_password_resets_table', 1),
(151, '2019_08_19_000000_create_failed_jobs_table', 1),
(152, '2019_10_25_104911_create_tags_table', 1),
(153, '2019_10_25_105122_create_posts_table', 1),
(154, '2019_10_25_113244_create_books_table', 1),
(155, '2019_10_26_113309_create_caterogies_table', 1),
(156, '2019_10_26_114029_create_suppliers_table', 1),
(157, '2019_11_10_105143_create_orders_table', 1),
(158, '2019_11_11_024329_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `created_at`, `updated_at`, `book_id`, `order_id`, `quantity`, `unitPrice`) VALUES
(1, '2019-11-11 21:53:50', '2019-11-11 21:53:50', 2, 1, 1, 4),
(2, '2019-11-11 21:53:50', '2019-11-11 21:53:50', 4, 1, 1, 4),
(3, '2019-11-12 18:24:59', '2019-11-12 18:24:59', 2, 2, 1, 4),
(4, '2019-11-12 18:28:58', '2019-11-12 18:28:58', 1, 3, 1, 4),
(5, '2019-11-12 18:28:58', '2019-11-12 18:28:58', 4, 3, 1, 4),
(6, '2019-11-12 18:28:58', '2019-11-12 18:28:58', 3, 3, 1, 2),
(7, '2019-11-14 13:26:18', '2019-11-14 13:26:18', 1, 4, 1, 4),
(8, '2019-11-14 13:26:18', '2019-11-14 13:26:18', 2, 4, 1, 4),
(9, '2019-11-23 21:25:32', '2019-11-23 21:25:32', 10, 5, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `created_at`, `updated_at`, `address`, `email`, `name`, `phoneNumber`) VALUES
(3, '2019-11-23 20:44:53', '2020-05-10 07:35:42', 'Quận Hoàng Mai, Thành Phố Hà Nội', 'nxbhn1@gmail.com', 'Nhà Xuất Bản Hà Nội', '111222333'),
(4, '2020-05-10 07:37:09', '2020-05-10 07:37:09', 'Quận 1, Thành Phố Hồ Chí Minh', 'nxbtphcm@gmail.com', 'Nhà Xuất Bản Tp.HCM', '123456789'),
(5, '2020-05-10 08:20:28', '2020-05-10 08:20:28', 'Quận Thanh Xuân, Thành Phố Hà Nội', 'nxbbk@gmail.com', 'Nhà xuất bản Bách Khoa', '147852369'),
(6, '2020-05-10 08:24:02', '2020-05-10 08:24:02', 'Quận Hà Đông, Thành Phố Hà Nội', 'nxbkhxh@gmail.com', 'Nhà xuất bản Khoa Học Xã Hội', '369852147');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$J2VCQIPg9PYn9avpSHHhc.MpqFOH4IlkK2APUZqd0Jjr5Re2q4vMG', 1, 'FgksdLuVW38IOjG3vxSMT5omkolgx4jzEU3YxoPbg9EAS7VI5o63wRtT7ARl', '2019-11-10 22:09:02', '2019-11-10 22:09:02'),
(11, 'HaQuangJr', 'haquangjr@gmail.com', NULL, '$2y$10$urH9uepE4fFNC/awQGn7D.UNgABTnYnlx8Zwz4/4APsATyvWh.rJ6', 0, NULL, '2020-05-10 08:53:49', '2020-05-10 08:53:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caterogies`
--
ALTER TABLE `caterogies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `caterogies`
--
ALTER TABLE `caterogies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

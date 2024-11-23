-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 23, 2024 lúc 07:51 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `book_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_form`
--

CREATE TABLE `book_form` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(100) NOT NULL,
  `guests` int(11) NOT NULL,
  `arrivals` date NOT NULL,
  `leaving` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `book_form`
--

INSERT INTO `book_form` (`id`, `name`, `email`, `phone`, `address`, `location`, `guests`, `arrivals`, `leaving`) VALUES
(1, 'John Doe', 'john.doe@example.com', '1234567890', '123 Elm Street', 'New York', 13, '2024-11-10', '2024-11-15'),
(2, 'Jane Smith', 'jane.smith@example.com', '0987654321', '456 Maple Avenue', 'Los Angeles', 40, '2024-12-01', '2024-12-05'),
(3, 'Alice Johnson', 'alice.j@example.com', '5551234567', '789 Oak Lane', 'Chicago', 1, '2024-11-20', '2024-11-22'),
(4, 'Bob Brown', 'bob.brown@example.com', '4443210987', '321 Pine Road', 'Houston', 3, '2024-12-10', '2024-12-15'),
(5, 'Huy', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', 'Hoi An Village', 4, '2024-11-03', '2024-11-13'),
(6, 'Hien', 'Hien123@gmail.com', '0303030303', 'Thăng Bình, Quảng Nam', '0', 2, '2024-11-21', '2024-11-23'),
(7, 'Hien', 'Hien123@gmail.com', '0303030303', 'Thăng Bình, Quảng Nam', '0', 2, '2024-11-21', '2024-11-23'),
(8, 'Hien', 'Hien123@gmail.com', '0303030303', 'Thăng Bình, Quảng Nam', '0', 2, '2024-11-21', '2024-11-23'),
(9, 'ghd', 'dhhfdhf@gmail.com', '0123456789', 'Đà Nẵng', 'Hrllogffdgfdg', 1, '2024-11-04', '2024-11-29'),
(10, 'Huy Nguyen', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '0', 2, '2024-11-12', '2024-12-05'),
(11, 'Huy Nguyen', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '0', 2, '2024-11-12', '2024-12-05'),
(12, 'Huy Nguyen', 'huynq.23ns@vku.udn.vn', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '0', 2, '2024-11-27', '2024-11-28'),
(13, 'Huy Nguyen', 'huynq.23ns@vku.udn.vn', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '0_ Vcl', 1, '2024-11-22', '2024-11-27'),
(14, 'Huy Nguyen', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '2', 0, '2024-11-11', '2024-11-21'),
(15, 'Huy Nguyen', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '1', 0, '2024-11-04', '2024-11-22'),
(16, 'ửewer', 'huyhuy0510v@gmail.com', 'ưer', 'ưerwer', '5', 0, '2024-11-22', '2024-11-30'),
(17, 'Huy Nguyen', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', '1', 22, '2024-11-08', '2024-11-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT 0.0,
  `price` decimal(10,2) DEFAULT 0.00,
  `status` enum('available','unavailable') DEFAULT 'available',
  `service_type` enum('tour','hotel','activity','transport') NOT NULL,
  `booking_deadline` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `available_from` date DEFAULT NULL,
  `available_to` date DEFAULT NULL,
  `max_capacity` int(11) DEFAULT NULL,
  `contact_info` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created_at`) VALUES
(1, 'huydeptrai123@gmail.com', '$2y$10$vUbCuqhIW/6jO7VX0XxeiugUDgUb7VDyEWeVotPmhe10j6V2BO4/q', '2024-11-06 17:51:16'),
(2, 'huynq.23ns@gmail.com', '$2y$10$2FNpDrPPrquKShroWHfOZOWClr2PDziwgww8/cKGiMhXIF7Ye7AJS', '2024-11-06 18:03:52'),
(3, 'jhjghjghj@gmail.com', '$2y$10$S.qiaBAdqBbVAWbquisjbuTSWiJeAb4sjDT0fEp7O.XuKxPAvhQTy', '2024-11-06 18:04:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `marital_status` enum('single','married','divorced','widowed') DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `preferences` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`preferences`)),
  `status` enum('active','inactive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_info_management`
--

CREATE TABLE `user_info_management` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `status` enum('active','inactive','pending') NOT NULL,
  `notes` text DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_info_management`
--

INSERT INTO `user_info_management` (`id`, `name`, `email`, `phone`, `address`, `location`, `status`, `notes`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 'Huy Nguyen', 'huyhuy0510v@gmail.com', '0866114164', '470 Tran Dai Nghia, Hoa Quy', 'Hoi An Village', 'active', 'gggfdgggggg', 'people.png', '2024-11-13 14:56:16', '2024-11-13 14:56:16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `book_form`
--
ALTER TABLE `book_form`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `user_info_management`
--
ALTER TABLE `user_info_management`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `book_form`
--
ALTER TABLE `book_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `user_info_management`
--
ALTER TABLE `user_info_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

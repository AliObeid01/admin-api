-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2025 at 04:14 PM
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
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_addresses`
--

CREATE TABLE `company_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `email` varchar(191) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `company_profile_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_addresses_translations`
--

CREATE TABLE `company_addresses_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `company_addresses_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `email_1` varchar(191) NOT NULL,
  `email_2` varchar(191) NOT NULL,
  `email_3` varchar(191) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `tiktok` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company_profile_translations`
--

CREATE TABLE `company_profile_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `company_profile_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `active` enum('A','I') NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages_translations`
--

CREATE TABLE `languages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` enum('main','footer') NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus_items`
--

CREATE TABLE `menus_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `sort_order` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `is_icon` tinyint(1) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items_translations`
--

CREATE TABLE `menu_items_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `menus_item_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `system_menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `section_type_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections_translations`
--

CREATE TABLE `sections_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_contents`
--

CREATE TABLE `section_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_link` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `video_link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `sort_order` varchar(255) NOT NULL,
  `is_main` tinyint(1) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_contents_translations`
--

CREATE TABLE `section_contents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` longtext NOT NULL,
  `image_description` longtext NOT NULL,
  `alt_image` varchar(255) NOT NULL,
  `video_description` longtext NOT NULL,
  `alt_video` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `section_contents_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `section_types`
--

CREATE TABLE `section_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_meta`
--

CREATE TABLE `seo_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_type` enum('page','content_item','content_category') NOT NULL,
  `entity_id` varchar(255) NOT NULL,
  `og_image` varchar(255) NOT NULL,
  `canonical_url` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo_meta_translations`
--

CREATE TABLE `seo_meta_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_author` varchar(255) NOT NULL,
  `meta_content` longtext NOT NULL,
  `meta_description` longtext NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `og_title` varchar(255) NOT NULL,
  `og_description` longtext NOT NULL,
  `robots` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `seo_meta_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_menu`
--

CREATE TABLE `system_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sort_order` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_menu_translations`
--

CREATE TABLE `system_menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `system_menu_id` int(10) UNSIGNED NOT NULL,
  `language_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `active` enum('A','I') NOT NULL,
  `user_created_id` varchar(255) NOT NULL,
  `user_updated_id` varchar(255) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_addresses`
--
ALTER TABLE `company_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_addresses_slug_unique` (`slug`),
  ADD KEY `company_addresses_slug_index` (`slug`),
  ADD KEY `company_addresses_company_profile_id_index` (`company_profile_id`);

--
-- Indexes for table `company_addresses_translations`
--
ALTER TABLE `company_addresses_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_addresses_translations_language_id_index` (`language_id`),
  ADD KEY `company_addresses_translations_company_addresses_id_foreign` (`company_addresses_id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_profile_translations`
--
ALTER TABLE `company_profile_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_profile_translations_language_id_index` (`language_id`),
  ADD KEY `company_profile_translations_company_profile_id_foreign` (`company_profile_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`),
  ADD KEY `languages_code_index` (`code`);

--
-- Indexes for table `languages_translations`
--
ALTER TABLE `languages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_translations_language_id_index` (`language_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`),
  ADD KEY `menus_slug_index` (`slug`);

--
-- Indexes for table `menus_items`
--
ALTER TABLE `menus_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_items_menu_id_index` (`menu_id`),
  ADD KEY `menus_items_parent_id_index` (`parent_id`);

--
-- Indexes for table `menu_items_translations`
--
ALTER TABLE `menu_items_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_translations_language_id_index` (`language_id`),
  ADD KEY `menu_items_translations_menus_item_id_foreign` (`menus_item_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_slug_index` (`slug`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_translations_language_id_index` (`language_id`),
  ADD KEY `pages_translations_page_id_foreign` (`page_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD KEY `permissions_role_id_index` (`role_id`),
  ADD KEY `permissions_system_menu_id_foreign` (`system_menu_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sections_slug_unique` (`slug`),
  ADD KEY `sections_slug_index` (`slug`),
  ADD KEY `sections_section_type_id_index` (`section_type_id`),
  ADD KEY `sections_page_id_index` (`page_id`);

--
-- Indexes for table `sections_translations`
--
ALTER TABLE `sections_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_translations_language_id_index` (`language_id`),
  ADD KEY `sections_translations_section_id_foreign` (`section_id`);

--
-- Indexes for table `section_contents`
--
ALTER TABLE `section_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_contents_section_id_index` (`section_id`);

--
-- Indexes for table `section_contents_translations`
--
ALTER TABLE `section_contents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_contents_translations_language_id_index` (`language_id`),
  ADD KEY `section_contents_translations_section_contents_id_foreign` (`section_contents_id`);

--
-- Indexes for table `section_types`
--
ALTER TABLE `section_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `section_types_slug_unique` (`slug`),
  ADD UNIQUE KEY `section_types_code_unique` (`code`),
  ADD KEY `section_types_slug_index` (`slug`),
  ADD KEY `section_types_code_index` (`code`);

--
-- Indexes for table `seo_meta`
--
ALTER TABLE `seo_meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `seo_meta_entity_type_entity_id_unique` (`entity_type`,`entity_id`);

--
-- Indexes for table `seo_meta_translations`
--
ALTER TABLE `seo_meta_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seo_meta_translations_language_id_index` (`language_id`),
  ADD KEY `seo_meta_translations_seo_meta_id_foreign` (`seo_meta_id`);

--
-- Indexes for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `system_menu_code_unique` (`code`),
  ADD KEY `system_menu_code_index` (`code`),
  ADD KEY `system_menu_parent_id_index` (`parent_id`);

--
-- Indexes for table `system_menu_translations`
--
ALTER TABLE `system_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_menu_translations_language_id_index` (`language_id`),
  ADD KEY `system_menu_translations_system_menu_id_foreign` (`system_menu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_username_index` (`username`),
  ADD KEY `users_email_index` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company_addresses`
--
ALTER TABLE `company_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_addresses_translations`
--
ALTER TABLE `company_addresses_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company_profile_translations`
--
ALTER TABLE `company_profile_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages_translations`
--
ALTER TABLE `languages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus_items`
--
ALTER TABLE `menus_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items_translations`
--
ALTER TABLE `menu_items_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_translations`
--
ALTER TABLE `pages_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections_translations`
--
ALTER TABLE `sections_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_contents`
--
ALTER TABLE `section_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_contents_translations`
--
ALTER TABLE `section_contents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `section_types`
--
ALTER TABLE `section_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_meta`
--
ALTER TABLE `seo_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo_meta_translations`
--
ALTER TABLE `seo_meta_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_menu`
--
ALTER TABLE `system_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_menu_translations`
--
ALTER TABLE `system_menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `company_addresses`
--
ALTER TABLE `company_addresses`
  ADD CONSTRAINT `company_addresses_company_profile_id_foreign` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_addresses_translations`
--
ALTER TABLE `company_addresses_translations`
  ADD CONSTRAINT `company_addresses_translations_company_addresses_id_foreign` FOREIGN KEY (`company_addresses_id`) REFERENCES `company_addresses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_addresses_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `company_profile_translations`
--
ALTER TABLE `company_profile_translations`
  ADD CONSTRAINT `company_profile_translations_company_profile_id_foreign` FOREIGN KEY (`company_profile_id`) REFERENCES `company_profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_profile_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `languages_translations`
--
ALTER TABLE `languages_translations`
  ADD CONSTRAINT `languages_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus_items`
--
ALTER TABLE `menus_items`
  ADD CONSTRAINT `menus_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menus_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items_translations`
--
ALTER TABLE `menu_items_translations`
  ADD CONSTRAINT `menu_items_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `menu_items_translations_menus_item_id_foreign` FOREIGN KEY (`menus_item_id`) REFERENCES `menus_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD CONSTRAINT `pages_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pages_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_system_menu_id_foreign` FOREIGN KEY (`system_menu_id`) REFERENCES `system_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_section_type_id_foreign` FOREIGN KEY (`section_type_id`) REFERENCES `section_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sections_translations`
--
ALTER TABLE `sections_translations`
  ADD CONSTRAINT `sections_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sections_translations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section_contents`
--
ALTER TABLE `section_contents`
  ADD CONSTRAINT `section_contents_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `section_contents_translations`
--
ALTER TABLE `section_contents_translations`
  ADD CONSTRAINT `section_contents_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `section_contents_translations_section_contents_id_foreign` FOREIGN KEY (`section_contents_id`) REFERENCES `section_contents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seo_meta_translations`
--
ALTER TABLE `seo_meta_translations`
  ADD CONSTRAINT `seo_meta_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seo_meta_translations_seo_meta_id_foreign` FOREIGN KEY (`seo_meta_id`) REFERENCES `seo_meta` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_menu`
--
ALTER TABLE `system_menu`
  ADD CONSTRAINT `system_menu_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `system_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `system_menu_translations`
--
ALTER TABLE `system_menu_translations`
  ADD CONSTRAINT `system_menu_translations_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `system_menu_translations_system_menu_id_foreign` FOREIGN KEY (`system_menu_id`) REFERENCES `system_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

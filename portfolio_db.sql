-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 19 日 15:39
-- サーバのバージョン： 10.4.27-MariaDB
-- PHP のバージョン: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `portfolio_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `choice2023`
--

CREATE TABLE `choice2023` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(255) NOT NULL,
  `first` int(100) NOT NULL,
  `second` int(100) NOT NULL,
  `third` int(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `choice2023`
--

INSERT INTO `choice2023` (`id`, `name`, `number`, `first`, `second`, `third`, `created_at`) VALUES
(3, '宮地泰介', 813, 2, 0, 5, '2023-01-11 23:50:55'),
(4, '織田信長', 9, 0, 2, 4, '2023-01-12 23:44:43'),
(5, '豊臣秀吉', 10, 2, 3, 5, '2023-01-12 23:46:29'),
(7, '徳川家康', 11, 4, 5, 1, '2023-01-12 23:48:04'),
(9, '宮地泰介', 8, 0, 1, 2, '2023-01-19 14:51:21'),
(10, '宮地泰介', 8, 5, 2, 4, '2023-01-19 19:44:13'),
(11, '宮地泰介', 8, 0, 0, 2, '2023-01-19 19:46:32');

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first` int(100) DEFAULT NULL,
  `second` int(100) DEFAULT NULL,
  `third` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`, `first`, `second`, `third`) VALUES
(8, '宮地泰介', 'test1@gs.com', '$2y$10$XiWquIX1jSwb.ZMfnBdsneQVAR2yaBEAsIOvT2LhGiW7nFsftEmRm', 0, 3, 1),
(9, '織田信長', 'test2@gs.com', '$2y$10$JjKl0JoudNCGfnp4doCJI.VLEAId0PcNxHnlecEdfJVCkj/SV6doG', 0, 0, 0),
(10, '豊臣秀吉', 'test3@gs.com', '$2y$10$oS4lP75IKOnQOShkIUYYB.dbzZwFyj/btjqVyz7vkMmsskegZAiWC', 0, 0, 0),
(11, '徳川家康', 'test4@gs.com', '$2y$10$BtJW3NqGWCTEu9FjSCk2b.4aXp3KqWq0/Opjcj.GLUqqAFQIdkKly', 0, 0, 0),
(12, '田中真', 'test1@google.com', '$2y$10$NqVVvARSD/iEUb4ZGjxF3uYzVJnnmMnvAsvzcCAtHZpKxpL03tb66', 0, 0, 0),
(13, '鈴木一郎', 'test5@gs.com', '$2y$10$nvHDysBJsHcUFqN157qY7eT5IS4slVzEfdLaF04x6JmDH7grJFMZW', 2, 1, 4);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `choice2023`
--
ALTER TABLE `choice2023`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `choice2023`
--
ALTER TABLE `choice2023`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- テーブルの AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

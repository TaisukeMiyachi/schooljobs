-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 12 日 15:49
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
(7, '徳川家康', 11, 4, 5, 1, '2023-01-12 23:48:04');

-- --------------------------------------------------------

--
-- テーブルの構造 `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `password`) VALUES
(8, '宮地泰介', 'test1@gs.com', '$2y$10$XiWquIX1jSwb.ZMfnBdsneQVAR2yaBEAsIOvT2LhGiW7nFsftEmRm'),
(9, '織田信長', 'test2@gs.com', '$2y$10$JjKl0JoudNCGfnp4doCJI.VLEAId0PcNxHnlecEdfJVCkj/SV6doG'),
(10, '豊臣秀吉', 'test3@gs.com', '$2y$10$oS4lP75IKOnQOShkIUYYB.dbzZwFyj/btjqVyz7vkMmsskegZAiWC'),
(11, '徳川家康', 'test4@gs.com', '$2y$10$BtJW3NqGWCTEu9FjSCk2b.4aXp3KqWq0/Opjcj.GLUqqAFQIdkKly');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルの AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

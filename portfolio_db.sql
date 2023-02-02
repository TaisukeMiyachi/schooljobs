-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 2 月 02 日 11:30
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
-- テーブルの構造 `choice2022`
--

CREATE TABLE `choice2022` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `first` int(100) NOT NULL,
  `second` int(100) NOT NULL,
  `third` int(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `choice2022`
--

INSERT INTO `choice2022` (`id`, `user_id`, `first`, `second`, `third`, `created_at`) VALUES
(2, 8, 0, 2, 5, '2023-01-31 22:12:39'),
(5, 16, 2, 4, 3, '2023-01-31 22:13:56'),
(6, 17, 4, 0, 2, '2023-01-31 22:14:28'),
(7, 18, 5, 3, 2, '2023-01-31 22:15:04'),
(8, 19, 0, 5, 1, '2023-01-31 22:15:30'),
(9, 20, 5, 4, 0, '2023-02-01 16:13:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `choice2023`
--

CREATE TABLE `choice2023` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` int(255) DEFAULT NULL,
  `first` int(100) NOT NULL,
  `second` int(100) NOT NULL,
  `third` int(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- テーブルのデータのダンプ `choice2023`
--

INSERT INTO `choice2023` (`id`, `name`, `number`, `first`, `second`, `third`, `created_at`) VALUES
(3, '宮地泰介', 813, 2, 1, 4, '2023-01-31 22:09:50'),
(4, '織田信長', 9, 0, 2, 4, '2023-01-12 23:44:43'),
(5, '豊臣秀吉', 10, 2, 3, 5, '2023-01-12 23:46:29'),
(7, '徳川家康', 11, 4, 5, 1, '2023-01-12 23:48:04'),
(15, 'test7', NULL, 2, 4, 1, '2023-01-25 23:13:11');

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
(16, '織田信長', 'test2@gs.com', '$2y$10$HIoBkH3jcW9.7LtTlJfDbevqcTmdbsoeKGn5aSnQpAI7wQKVkT45C'),
(17, '豊臣秀吉', 'test3@gs.com', '$2y$10$7WYM4txtzPJPRQq8H5fGzeVNe1qLegyR/Um2dI46mx2lN3gGQsKpK'),
(18, '徳川家康', 'test4@gs.com', '$2y$10$13o06lqIxslr8My6uEGJHefYiUeqjcVbni81.KOf8HuVdZdFHLnDO'),
(19, '明智光秀', 'test5@gs.com', '$2y$10$1IC1yjdLHbzr83U7HDDWyON.mdLY6w8modBlU2hHCJtAunR63BXhu'),
(20, '鈴木一郎', 'test6@gs.com', '$2y$10$zCgU6EPmIoBA1stsLF5r9u7Ekwob5sLJLhsEgrsWBFohVjH2yK6me');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `choice2022`
--
ALTER TABLE `choice2022`
  ADD PRIMARY KEY (`id`);

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
-- テーブルの AUTO_INCREMENT `choice2022`
--
ALTER TABLE `choice2022`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- テーブルの AUTO_INCREMENT `choice2023`
--
ALTER TABLE `choice2023`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルの AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

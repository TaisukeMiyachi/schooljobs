<?php
//例外処理を使って、DBにPDO接続する
try {
    $db = new PDO('mysql:dbname=portfolio_db;host=localhost;charset=utf8mb4', 'root', '');
} catch (PDOException $e) {
    echo "データベース接続エラー　：" . $e->getMessage();
}


?>
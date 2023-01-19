<?php
//例外処理を使って、DBにPDO接続する
// try {
//     $db = new PDO('mysql:dbname=portfolio_db;host=localhost;charset=utf8mb4', 'root', '');
// } catch (PDOException $e) {
//     echo "データベース接続エラー　：" . $e->getMessage();
// }

$dbn ='mysql:dbname=portfolio_db;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
};

?>
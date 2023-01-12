<?php 


///送られたデータが存在しているか確認　⇨ 不備があればエラーを出す。
if(!isset($_POST["teacher_name"]) || $_POST["teacher_name"] === '' || 
   !isset($_POST["teacher_number"]) || $_POST["teacher_number"] === '' ||
   !isset($_POST["first"]) || $_POST["first"] === '' ||
   !isset($_POST["second"]) || $_POST["second"] === '' ||
   !isset($_POST["third"]) || $_POST["third"] === '' 
    ){
        exit('ParamError');
    };

///データ取得////////////////////////////////////////////////////////////
///テキスト/////////////
if(!empty($_POST)){
    $name = $_POST["teacher_name"];
    $number = $_POST["teacher_number"];
    $first = $_POST["first"];
    $second = $_POST["second"];
    $third = $_POST["third"];
};

$array_jobs=[
  "時間割",
  "教務事務",
  "電算",
  "生徒総務",
  "整備",
  "放送"
];


if($first == $array_jobs[0]){
  $nfirst = "0";
}elseif($first == $array_jobs[1]){
  $nfirst = "1";
}elseif($first == $array_jobs[2]){
  $nfirst = "2";
}elseif($first == $array_jobs[3]){
  $nfirst = "3";
}elseif($first == $array_jobs[4]){
  $nfirst = "4";
}elseif($first == $array_jobs[5]){
  $nfirst = "5";
}

if($second == $array_jobs[0]){
  $nsecond = "0";
}elseif($second == $array_jobs[1]){
  $nsecond = "1";
}elseif($second == $array_jobs[2]){
  $nsecond = "2";
}elseif($second == $array_jobs[3]){
  $nsecond = "3";
}elseif($second == $array_jobs[4]){
  $nsecond = "4";
}elseif($second == $array_jobs[5]){
  $nsecond = "5";
}

if($third == $array_jobs[0]){
  $nthird = "0";
}elseif($third == $array_jobs[1]){
  $nthird = "1";
}elseif($third == $array_jobs[2]){
  $nthird = "2";
}elseif($third == $array_jobs[3]){
  $nthird = "3";
}elseif($third == $array_jobs[4]){
  $nthird = "4";
}elseif($third == $array_jobs[5]){
  $nthird = "5";
}


///db接続/////////////////////////////////////////////////////////////
$dbn ='mysql:dbname=portfolio_db;charset=utf8mb4;port=3306;host=localhost';
$user = 'root';
$pwd = '';

try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
};

///SQL作成＆実行
$sql = 'INSERT INTO choice2023(id, name, number, first, second, third, created_at) VALUES (NULL, :name, :number, :first, :second, :third, now())';

$stmt = $pdo->prepare($sql);
// var_dump($grade);
// exit();

///バインド変数を設定
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':number', $number, PDO::PARAM_INT);
$stmt->bindValue(':first', $nfirst, PDO::PARAM_INT);
$stmt->bindValue(':second', $nsecond, PDO::PARAM_INT);
$stmt->bindValue(':third', $nthird, PDO::PARAM_INT);


///SQL実行　⇨ 失敗するとエラーを出す
try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

///input画面へ戻る
header("Location:input.php");
exit();


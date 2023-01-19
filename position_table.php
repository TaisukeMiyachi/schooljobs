<?php
include("./functions.php");

$sql = "SELECT * FROM choice2023";
$stmt = $pdo->prepare($sql);
// $stmt->bindValue(':email', $email);
$stmt->execute();
$members = $stmt->fetchall();

// echo '<pre>';
// var_dump($members);
// echo '</pre>';
// exit();

$array_works = [
  "0" => "時間割",
  "1" => "教務事務",
  "2"  =>"電算",
  "3"  =>"生徒総務",
  "4"  =>"整備",
  "5"  =>"放送",
];

// var_dump($members);
// exit();

// 時間割
$array_0first=[];
$array_0second=[];
$array_0third=[];

// 教務事務
$array_1first=[];
$array_1second=[];
$array_1third=[];

// 電算
$array_2first=[];
$array_2second=[];
$array_2third=[];

// 生徒総務
$array_3first=[];
$array_3second=[];
$array_3third=[];

// 整備
$array_4first=[];
$array_4second=[];
$array_4third=[];

// 放送
$array_5first=[];
$array_5second=[];
$array_5third=[];

// $array_0first[]=$members[0]["name"];
// echo '<pre>';
// var_dump($array_0first);
// echo '</pre>';
// exit();

foreach($members as $member){
    if($member["first"] == "0"){   
       $array_0first[]=$member["name"];
    }elseif($member["first"] == "1"){
        $array_1first[]=$member["name"];
    }elseif($member["first"] == "2"){
        $array_2first[]=$member["name"];
    }elseif($member["first"] == "3"){   
       $array_3first[]=$member["name"];
    }elseif($member["first"] == "4"){
        $array_4first[]=$member["name"];
    }elseif($member["first"] == "5"){
        $array_5first[]=$member["name"];
    }
    elseif($member["second"] == "0"){   
       $array_0second[]=$member["name"];
    }elseif($member["second"] == "1"){
        $array_1second[]=$member["name"];
    }elseif($member["second"] == "2"){
        $array_2second[]=$member["name"];
    }elseif($member["second"] == "3"){   
       $array_3second[]=$member["name"];
    }elseif($member["second"] == "4"){
        $array_4second[]=$member["name"];
    }elseif($member["second"] == "5"){
        $array_5second[]=$member["name"];
    }
    elseif($member["third"] == "0"){   
       $array_0third[]=$member["name"];
    }elseif($member["third"] == "1"){
        $array_1third[]=$member["name"];
    }elseif($member["third"] == "2"){
        $array_2third[]=$member["name"];
    }elseif($member["third"] == "3"){   
       $array_3third[]=$member["name"];
    }elseif($member["third"] == "4"){
        $array_4third[]=$member["name"];
    }elseif($member["third"] == "5"){
        $array_5third[]=$member["name"];
    }
}


?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style_position_table.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <title>Document</title>
</head>
<body>  
    <h1> 校務分掌希望一覧 </h1>
    
        <div id="job0">
            <h2><?=$array_works[0]?></h2>
            <div class="first">第1希望 </div>
            <div class="second">第2希望 </div>
            <div class="third">第3希望 </div>
        </div>
    
    <div id="job1">
        <h2><?=$array_works[1]?></h2>
        <div class="first">第1希望</div>
        <div class="second">第2希望</div>
        <div class="third">第3希望</div>
    </div>
    <div id="job2">
        <h2><?=$array_works[2]?></h2>
        <div class="first">第1希望</div>
        <div class="second">第2希望</div>
        <div class="third">第3希望</div>
    </div>
    <div id="job3">
        <h2><?=$array_works[3]?></h2>
        <div class="first">第1希望</div>
        <div class="second">第2希望</div>
        <div class="third">第3希望</div>
    </div>
    <div id="job4">
        <h2><?=$array_works[4]?></h2>
        <div class="first">第1希望</div>
        <div class="second">第2希望</div>
        <div class="third">第3希望</div>
    </div>
    <div id="job5">
        <h2><?=$array_works[5]?></h2>
        <div class="first">第1希望</div>
        <div class="second">第2希望</div>
        <div class="third">第3希望</div>
    </div>
</body>
</html>



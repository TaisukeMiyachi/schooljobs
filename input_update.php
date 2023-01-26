<?php
session_start();

// var_dump($_SESSION["first"]);
// exit();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        
        #kind{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        #input_area{
            display: flex;
            justify-content: center;
            align-items: top;
        }
        h1{
            display: flex;
            justify-content: center;
        }
        #grade{
            display: flex;
            justify-content: center;
            align-items: center;            
        }
        #grade,
        #class,
        #student_number,
        #student_name{
            display: flex;
            justify-content: center;
            align-items: center; 
        }
        h2{
            width:100px;
        }
        #button{
            margin-left:850px;
        }
        #transform{
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction : column;
        }
        
        #area_right{
            display: flex;
            flex-direction:column;
            margin-left:20px;
        }
        #area_all{
           display: flex;
            justify-content: center;
            align-items: center; 
        }
        h2{
            width:auto;
            margin: 15px;
        }
        .decision{
            display: flex;
            justify-content: center;
            align-items: center; 
        }
        #first,#second,#third{
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #parsonal_name{
            font-size: 32px;
        }
    </style>
    <title>Document</title>
</head>
<body>
    <h1>校務分掌希望調査（再選択）</h1>
    <form action="update.php" method="POST">
        <div id="area_all">
            <div id="area_left">
                <div id="input_area">
                    <div id="kind">
                        <div id="student_name">
                            <h2> 名前 : </h2>
                            <div id = "parsonal_name">
                                <?php echo $_SESSION["name"] ?>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>   
        <div id="transform">
            <h3>来年度希望する分掌を下から選び３つ記入して下さい。</h3>
            <h3>()内は現在の希望</h3>
            <div>
                <button value="0">時間割</button>
                <button value="1">教務事務</button>
                <button value="2">電算</button>
                <button value="3">生徒総務</button>
                <button value="4">整備</button>
                <button value="5">放送</button>
            </div>
        </div>
        <div id="first">
            <h2> 第1希望 : </h2>
             <h3><input type="text" name="first">(<?php echo $_SESSION["first"] ?>)</h3>
        </div> 
         <div id="second">
            <h2> 第2希望 : </h2>
             <h3><input type="text" name="second">(<?php echo $_SESSION["second"] ?>)</h3>
        </div> 
         <div id="third">
            <h2> 第3希望 : </h2>
             <h3><input type="text" name="third">(<?php echo $_SESSION["third"] ?>)</h3>
        </div>    
        <div id="button">
            <button type="submit" class="btn">再登録</button>   
            <a href="mypage.php">mypageへ</a> 
        </div>
    </form> 
    <script src="script.js"></script>
</body>
</html>
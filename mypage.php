<?php 
session_start();
include("functions.php");

// var_dump($_SESSION);
// exit();
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <style>
        body{
            padding-left: 300px;
            padding-right: 300px;
        }
        #title,
        #email,
        #button{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        h2{
            display: flex;
            justify-content: center;
        }
        #select{
            padding-left: 450px;
            display: flex;
            justify-content:center;
            align-items: left;
            flex-direction: column;
        }
        #hope{
            display: flex;
            justify-content: center;
            align-items: center;
        }
        a{
            margin-left: 15px;
        }
        #button{
            margin-top: 10px;
        }
    </style>
</head>
<body>
<div id="title">
    <h1>My page</h1>
    <h1>(<?php echo $_SESSION["name"] ?>)</h1>
</div>
<fieldset>
    <u><h2> e-mail</h2></u> 
    
    <div id="email">
        <h3><?php echo $_SESSION["username"] ?></h3>
    </div>
    <div id="hope">
        <u><h2>校務分掌希望</h2></u>
        <a href="input.php">選択し直す</a>
    </div>
    <div id="select">
        <h3> 第1希望: <?php echo $_SESSION["first"] ?></h3>
        <h3> 第2希望: <?php echo $_SESSION["second"] ?></h3>
        <h3> 第3希望: <?php echo $_SESSION["third"] ?></h3>
    </div>
    </fieldset>
    <div id="button">
    <button><a href="logout.php">Logout</a></button>
    </div>
</body>
</html>
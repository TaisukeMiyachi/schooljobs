<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>
<body>
    <div id="title">
        <h1>校務管理システム</h1>
    </div>
    <div class="content">
        <h1>【登録がまだの方】</h1>
        <P>下のボタンをクリックして、登録をお願いします。</p>
        <input  id="entry" value="登録はこちらから" class="btn">
    </div>
    <div class="content">
        <h1>【登録がお済みの方】</h1>
        <p>登録済みのメールアドレス、パスワードを入力のうえ「ログイン」を押して下さい。</p>
        <br>
        <form action="login.php" method="post" class="textcenter">
            <div>
                <label>
                    メールアドレス：
                    <input type="text" name="email" required>
                </label>
            </div>
            <div>
                <label>
                    パスワード：
                    <input type="password" name="password" required>
                </label>
            </div>
            <input type="submit" value="ログイン" class="btn">
        </form>
    </div>
    
</body>
<script>
    $(function(){
        $("#entry").on("click", function() {
            window.location.href = 'entry.php';
        });
    });
</script>
</html>
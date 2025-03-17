<?php
//**************************************************
// 初期処理
//**************************************************
    //データベース接続関数の定義ファイルを読み込み
    require_once('../model/dbconnect.php');

    // データベース接続
    $conn = db_connect();

//**************************************************
// 変数取得
//**************************************************
    // メッセージの初期化
    $register_message = "";

//**************************************************
// 会員登録処理
//**************************************************
if ($_SERVER["REQUEST_METHOD"] === "POST" && isset($_POST["register"])) {
    $register_name = trim($_POST["register_name"]);
    $register_pass = trim($_POST["register_pass"]);

    if (!empty($register_name) && !empty($register_pass)) {
        $stmt = mysqli_prepare($conn, "INSERT INTO badapp_table (badapp_name, badapp_pass) VALUES (?, ?)");
        mysqli_stmt_bind_param($stmt, "ss", $register_name, $register_pass);
        
        if (mysqli_stmt_execute($stmt)) {
            $register_message = "登録が完了しました！";
        } else {
            $register_message = "登録に失敗しました: " . mysqli_error($conn);
        }

        mysqli_stmt_close($stmt);
    } else {
        $register_message = "すべての項目を入力してください。";
    }
}

//**************************************************
// HTMLを出力
//**************************************************
    //画面へ表示(ディレクトリトラバーサルの実装で出力している)
    require_once('../view/badapp.html');
?>
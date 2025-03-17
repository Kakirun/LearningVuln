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
    //ユーザー名
    $input = isset($_POST['user_pass']) ? $_POST['user_pass'] : "";

//**************************************************
// ユーザー検索データの取得
//**************************************************
    // フォームからの入力を処理
    $search_result = [];
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {

        // SQLインジェクション対策なし
        $query = "SELECT * FROM user_table WHERE user_pass = '$input'";
        $result = mysqli_query($conn, $query);

        if ($result) {
            $search_result = mysqli_fetch_all($result, MYSQLI_ASSOC);
        } else {
            echo "エラー: " . mysqli_error($conn);
        }
    }

//**************************************************
// HTMLを出力
//**************************************************
    //画面へ表示
    require_once('../view/sqlin_hack.html');
?>
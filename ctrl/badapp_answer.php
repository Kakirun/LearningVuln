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
    $message_sqlin = "";
    $message_dirtra = "";

//**************************************************
// 答え合わせの処理
//**************************************************
    // SQLインジェクションのフラッグ認識
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $input_sqlin = isset($_POST["user_input_sqlin"]) ? trim($_POST["user_input_sqlin"]) : "";

        if ($input_sqlin === "SQLInjection_Complete") {
            $message_sqlin = "SQLインジェクションは完璧！";
        }else{
            $message_sqlin = "答えが違います";
        }
    }

    // ディレクトリトラバーサルのフラッグ認識
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $input_dirtra = isset($_POST["user_input_dirtra"]) ? trim($_POST["user_input_dirtra"]) : "";

        if ($input_dirtra === "DirectoryTraversal_Complete") {
            $message_dirtra = "ディレクトリトラバーサルは完璧！";
        }else{
            $message_dirtra = "答えが違います";
        }
    }

//**************************************************
// HTMLを出力
//**************************************************
    //画面へ表示(ディレクトリトラバーサルの実装で出力している)
    require_once('../view/badapp_answer.html');
?>
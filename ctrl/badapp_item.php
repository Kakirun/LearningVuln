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
$file = isset($_GET['filename']) ? $_GET['filename'] : '../view/badapp_item.html';

// ファイル名が空ならエラーを表示して終了
if (empty($file)) {
    die("ファイル名が指定されていません。");
}

//**************************************************
// ファイルの取得
//**************************************************
    // ファイルを開く
    $handle = fopen($file, 'r');
    if ($handle === false) {
        die("ファイルを開けませんでした。");
    }

    // ファイルの内容を出力
    fpassthru($handle);
    fclose($handle);

//**************************************************
// HTMLを出力
//**************************************************
    //画面へ表示(ディレクトリトラバーサルの実装で出力している)
    //require_once('../view/badapp_item.html');
?>
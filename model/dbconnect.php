<?php
// データベース接続関数
function db_connect(){
    $host     = "127.0.0.1";
    $dbname   = "leaningvulndb";
    $user     = "root";
    $password = "";

    // MySQL接続
    $conn = mysqli_connect($host, $user, $password, $dbname);

    // 接続エラーチェック
    if (!$conn) {
        die("データベース接続失敗: " . mysqli_connect_error());
    }

    return $conn;
}
?>

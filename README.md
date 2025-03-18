LearningVulnの使い方
LearningVulnは、xamppを用いて起動するように作成しています。
データベースの作成などを含めて、以下の通り起動してください。

1．最新バージョンのxamppをダウンロードしておきます。

2．xamppインストール後、ファイルマネージャーを開いて、「C:\xampp\htdocs」のフォルダに「LearningVuln」というフォルダを作成して、このリポジトリの全フォルダ・ファイルをコピー＆ペーストします

3．LearningVulnのフォルダを開くと「leaningvulndb.sql」というデータベースの情報が保存されたファイルがあります。そちらを利用して、データベースを作成します。（タイプミスで名前が"leaning"となっていますが、そのままプログラムを作成してしまったので、修正しないようにお願いします。）

4．コマンドプロンプトなどでmysqlを利用します。rootユーザーでログイン後、「CREATE DATABASE leaningvulndb」とコマンドを入力します。

5．次に「mysql -u root -p leaningvulndb < C:\xampp\htdocs\LearningVuln\leaningvulndb.sql」と入力します。これでデータベースが作成されます。（パスワードを聞かれても、rootユーザーでログインしている場合はそのままEnterキーを入力すれば次に進みます）

6．xamppでApacheとMySQLが起動していることを確認してから、ブラウザを開き、URL入力欄に「http://localhost/LearningVuln/ctrl/index.php」と入力します。「LearningVulnへようこそ」という画面が表示されていれば、無事に起動できています。

# subject-1008-mysql

- 実行環境が UTF8 ならば、SQL UTF8 で

- 通常コマンドプロンプトならば SQLは SHIFT_JIS で

- キャラクタセット一覧
```sql
SHOW CHARACTER SET
```

## コマンドプロンプトのキャラクタセット変更
```bat
REM ▼ コマンドプロンプトを UTF-8 に変更
CHCP 65001
mysql -h localhost -u root -D lightbox --password= < load-data-csv.sql
mysql -h localhost -u root -D lightbox --password= < load-data-tsv.sql
mysql -h localhost -u root -D lightbox --password= < into-outfile-csv.sql
REM ▼ コマンドプロンプトを SHIFT-JIS に戻す
REM CHCP 932
```
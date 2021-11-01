# subject-1008-mysql

- 実行環境が UTF8 ならば、SQL は UTF8 で

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

## data01.932
```csv
"1001","浦岡 友也"
"1002","山村 洋代"
"1003","多岡 冬行"
"1004","高田 冬美"
"1005","内高 友之"
```

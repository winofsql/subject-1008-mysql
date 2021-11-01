# subject-1008-mysql

- 実行環境が UTF8 ならば、SQL は UTF8 で

- 通常コマンドプロンプトならば SQLは SHIFT_JIS で

- キャラクタセット一覧
```sql
SHOW CHARACTER SET
```

## LOAD DATA ( CHARSET 指定 )
```sql
LOAD DATA INFILE
    'C:/app/workspace/subject-1101/subject-1008-mysql/data01.932'
 INTO TABLE 社員マスタ
    CHARACTER SET cp932
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n';
```

## コマンドプロンプトのキャラクタセット変更
```bat
@echo off
REM ▼ コマンドプロンプトを UTF-8 に変更
CHCP 65001
mysql -h localhost -u root -D lightbox --password= < load-data-csv.sql
mysql -h localhost -u root -D lightbox --password= < load-data-tsv.sql
mysql -h localhost -u root -D lightbox --password= < into-outfile-csv.sql
REM ▼ コマンドプロンプトを SHIFT-JIS に戻す
REM CHCP 932
```

## data01.932 ( SHIFT_JIS CSV )
```
"1001","浦岡 友也"
"1002","山村 洋代"
"1003","多岡 冬行"
"1004","高田 冬美"
"1005","内高 友之"
```
## data02.932 ( SHIFT_JIS TSV )
```
"2001"	"浦岡 友也"
"2002"	"山村 洋代"
"2003"	"多岡 冬行"
"2004"	"高田 冬美"
"2005"	"内高 友之"
```

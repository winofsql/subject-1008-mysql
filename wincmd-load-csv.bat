@echo off
REM ▼ コマンドプロンプトを UTF-8 に変更
CHCP 65001
mysql -h localhost -u root -D lightbox --password= < load-data-csv.sql
mysql -h localhost -u root -D lightbox --password= < load-data-tsv.sql
del data03.932
mysql -h localhost -u root -D lightbox --password= < into-outfile-csv.sql
REM ▼ コマンドプロンプトを SHIFT-JIS に戻す
REM CHCP 932
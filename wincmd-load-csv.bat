@echo off
REM �� �R�}���h�v�����v�g�� UTF-8 �ɕύX
CHCP 65001
mysql -h localhost -u root -D lightbox --password= < load-data-csv.sql
mysql -h localhost -u root -D lightbox --password= < load-data-tsv.sql
del data03.932
mysql -h localhost -u root -D lightbox --password= < into-outfile-csv.sql
REM �� �R�}���h�v�����v�g�� SHIFT-JIS �ɖ߂�
REM CHCP 932
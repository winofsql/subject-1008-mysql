SELECT
    *
 FROM
    社員マスタ
 INTO OUTFILE
     'C:/app/workspace/subject-1101/subject-1008-mysql/data03.932'
    CHARACTER SET cp932
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n';

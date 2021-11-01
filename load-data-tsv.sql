LOAD DATA INFILE
    'C:/app/workspace/subject-1101/subject-1008-mysql/data02.932'
 INTO TABLE 社員マスタ
    CHARACTER SET cp932
    FIELDS TERMINATED BY '\t'
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n';
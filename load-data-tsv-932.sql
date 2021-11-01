SELECT
    *
 FROM
    table01
 INTO OUTFILE
     'C:/app/workspace/subject-1008-2/sql-1008/data03.csv'
    FIELDS TERMINATED BY ','
    OPTIONALLY ENCLOSED BY '"'
    LINES TERMINATED BY '\r\n';

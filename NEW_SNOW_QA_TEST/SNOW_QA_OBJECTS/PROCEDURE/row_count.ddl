CREATE OR REPLACE PROCEDURE "row_count"("table_name" VARCHAR(16777216))
RETURNS FLOAT
LANGUAGE JAVASCRIPT
EXECUTE AS OWNER
AS '     var row_count = 0; var sql_command = "select count(*) from " + table_name;     var stmt = snowflake.createstatement(            {            sqltext: sql_command            }         );     var res = stmt.execute();    res.next();row_count = res.getcolumnvalue(1);     return row_count;     ';
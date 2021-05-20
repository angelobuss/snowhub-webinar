CREATE OR REPLACE PROCEDURE "validate"("age" FLOAT)
RETURNS VARCHAR(16777216)
LANGUAGE JAVASCRIPT
EXECUTE AS CALLER
AS '     try {         if (age < 0) {             throw "age cannot be negative!";         } else {             return "age validated.";         }     } catch (err) {         return "error: " + err;     } ';
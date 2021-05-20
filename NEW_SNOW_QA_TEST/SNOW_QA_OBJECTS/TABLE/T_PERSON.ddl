create or replace TABLE T_PERSON (
	ID NUMBER(38,0) NOT NULL,
	NAME VARCHAR(16777216) NOT NULL,
	MIDDLE_NAME VARCHAR(16777216),
	LAST_NAME VARCHAR(16777216),
	PHONE_NUMBER VARCHAR(16777216),
	ADDRESS VARCHAR(16777216),
	BIRTH_DATE DATE,
	CITY_ID NUMBER(38,0)
);
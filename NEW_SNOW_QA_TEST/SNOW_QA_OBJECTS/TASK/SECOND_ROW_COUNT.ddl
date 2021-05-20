create or replace task SECOND_ROW_COUNT
	warehouse=MERCADOGOV_WH
	after NEW_SNOW_QA_TEST.SNOW_QA_OBJECTS.WEEKLY_ROW_COUNT
	as call row_count('t_city');
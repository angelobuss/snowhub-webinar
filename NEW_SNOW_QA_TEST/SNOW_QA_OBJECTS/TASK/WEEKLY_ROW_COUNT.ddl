create or replace task WEEKLY_ROW_COUNT
	warehouse=MERCADOGOV_WH
	schedule='USING CRON 0 10 * * 3 America/Los_Angeles'
	as call row_count('test');
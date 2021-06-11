create or replace task CALL_PI
	warehouse=MERCADOGOV_WH
	schedule='USING CRON 0 11 * * 4 America/Los_Angeles'
	as call sp_pi();
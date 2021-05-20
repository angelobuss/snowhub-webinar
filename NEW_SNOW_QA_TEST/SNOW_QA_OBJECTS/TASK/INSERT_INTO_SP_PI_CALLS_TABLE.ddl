create or replace task INSERT_INTO_SP_PI_CALLS_TABLE
	warehouse=MERCADOGOV_WH
	schedule='50 MINUTE'
	as insert into sp_pi_calls(src, updatetime) values (to_char(current_date), current_timestamp);
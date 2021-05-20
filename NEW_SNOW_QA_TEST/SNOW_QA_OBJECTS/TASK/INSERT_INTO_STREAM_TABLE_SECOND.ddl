create or replace task INSERT_INTO_STREAM_TABLE_SECOND
	warehouse=MERCADOGOV_WH
	schedule='60 MINUTE'
	as insert into sp_pi_calls(src, updatetime) select src, loadtime from pi_calls_stream_second;
create or replace pipe CITIES_PIPE auto_ingest=false as copy into t_city(id, city_name, country_name) from (select seq_city.nextval, t.$1, t.$5 from @cities_stage (file_format => cities_stage_format) t);
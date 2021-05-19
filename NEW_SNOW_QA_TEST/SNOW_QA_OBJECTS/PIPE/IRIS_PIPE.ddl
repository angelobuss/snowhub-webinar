create or replace pipe IRIS_PIPE auto_ingest=false as copy into t_iris (sepalLength, sepalWidth, petalLength, petalWidth, species) from (
select
parse_json(t.$1):sepalLength::float, parse_json(t.$1):sepalWidth::float, parse_json(t.$1):petalLength::float,
parse_json(t.$1):petalWidth::float, parse_json(t.$1):species::string
from @iris_stage (file_format => iris_stage_format) t
);
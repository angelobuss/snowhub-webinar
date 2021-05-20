CREATE OR REPLACE FUNCTION "CALENDAR_DATERANGE"("STARTDATE" VARCHAR(16777216), "ENDDATE" VARCHAR(16777216))
RETURNS TABLE ("D" DATE)
LANGUAGE JAVASCRIPT
AS '{
processRow: function get_params(row, rowWriter, context){
var sd = new Date(row.STARTDATE + ''T00:00:00.000'');
var ed = new Date(row.ENDDATE + ''T00:00:00.000'');
var dates = []
while (sd <= ed) {
rowWriter.writeRow({D: new Date(sd)});
sd.setDate(sd.getDate() + 1);
}
}
}';
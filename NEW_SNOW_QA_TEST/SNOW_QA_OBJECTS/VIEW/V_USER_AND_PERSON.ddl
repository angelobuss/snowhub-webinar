
 create view V_USER_AND_PERSON comment = 'view teste com t_users and t_person' as select p.name, p.middle_name from t_person p join t_users u on p.id = u.identification_number; ;


 create      view     V_JOIN_TEST as (select *               from t_employee emp                                 join t_product t on emp.employee_id = t.id         and emp.title is not null); ;



--changeset JoeS:CreatePROC_add_job_history_v2 endDelimiter:/ splitStatements:false rollbackEndDelimiter:/
CREATE OR REPLACE PROCEDURE add_sales_history
   /*########################################################################################
   NAME: add_job_history
   PURPOSE: PROCEDURE will add job history
            including real time balances and earnings

   Revisions:

   Ver        Date                 Author                    Description
   ---------  ----------        ----------------          -------------------------------
   1.0        10/21/2022       Adeel Malik                1. Created this package
   **************************************************************************************/
 (  p_emp_id          job_history.employee_id%type
  , p_start_date      job_history.start_date%type
  , p_end_date        job_history.end_date%type
  , p_job_id          job_history.job_id%type
  , p_department_id   job_history.department_id%type
  , p_department_name   job_history.department_name%type
   , p_country         job_history.country%type
  )
IS
BEGIN
 INSERT INTO job_history (employee_id, start_date, end_date,
                          job_id, department_id, deparment_name)
   VALUES(p_emp_id, p_start_date, p_end_date, p_job_id, p_department_id, p_department_name);
END;
/

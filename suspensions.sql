SELECT DISTINCT
    employee_no,
    job_no,
    position_title,
    employment_status_desc,
    latest_contract_end_date,
    NVL(reports_to_employee_utas_email, 'people.connect@utas.edu.au') AS reports_to_employee_utas_email
FROM DATA_MART.employee_latest_all_job_v
WHERE (payroll_status_flag = 'S' OR action_desc = 'Suspension')
  AND (   employment_status_desc LIKE 'Fixed%'
       OR employment_status_desc LIKE 'Conti%'
       OR employment_status_desc LIKE 'Gradu%');
DO
$$
DECLARE
    emp_id       INT := 101;
    emp_name     VARCHAR(50) := 'Sahil';
    emp_salary   INT := 550005;
    bonus_amount NUMERIC;
    new_salary   NUMERIC;
BEGIN
    -- Calculate 10% bonus
    bonus_amount := emp_salary * 0.10;
    new_salary := emp_salary + bonus_amount;

    -- Display Employee Details
    RAISE NOTICE 'Employee Details';
    RAISE NOTICE '----------------';
    RAISE NOTICE 'Employee ID   : %', emp_id;
    RAISE NOTICE 'Employee Name : %', emp_name;

    -- Display Salary Details
    RAISE NOTICE '';
    RAISE NOTICE 'Salary Details';
    RAISE NOTICE '----------------';
    RAISE NOTICE 'Salary Before Bonus : %', emp_salary;
    RAISE NOTICE '10%% Bonus Amount    : %', bonus_amount;
    RAISE NOTICE 'Salary After Bonus  : %', new_salary;
END
$$;

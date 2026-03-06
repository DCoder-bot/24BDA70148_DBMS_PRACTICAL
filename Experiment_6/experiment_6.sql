--Implicit Cursor
DO $$
BEGIN
    UPDATE Employee
    SET salary = salary + 1000
    WHERE emp_id = 1;

    IF FOUND THEN
        RAISE NOTICE 'Employee salary updated successfully.';
    ELSE
        RAISE NOTICE 'Employee not found.';
    END IF;
END $$;


--Explicit cursor
DO $$
DECLARE
    emp_cursor CURSOR FOR
        SELECT emp_id, name, salary FROM Employee;

    emp_record RECORD;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN NOT FOUND;

        RAISE NOTICE 'Employee ID: %, Name: %, Salary: %',
        emp_record.emp_id,
        emp_record.name,
        emp_record.salary;

    END LOOP;

    CLOSE emp_cursor;
END $$;


--Cursor Attributes
DO $$
DECLARE
    emp_cursor CURSOR FOR
        SELECT emp_id, name FROM Employee;

    emp_record RECORD;
    row_counter INT := 0;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO emp_record;
        EXIT WHEN NOT FOUND;

        row_counter := row_counter + 1;

        RAISE NOTICE 'Employee ID: %, Name: %',
        emp_record.emp_id,
        emp_record.name;

        RAISE NOTICE 'Rows processed so far: %', row_counter;

    END LOOP;

    CLOSE emp_cursor;
END $$;
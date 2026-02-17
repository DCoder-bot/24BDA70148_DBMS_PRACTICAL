-- This program checks whether a number is positive or non-positive.

DO $$
DECLARE
    num INTEGER := -5;
BEGIN
    IF num > 0 THEN
        RAISE NOTICE 'The number % is Positive.', num;
    ELSE
        RAISE NOTICE 'The number % is Non-Positive.', num;
    END IF;
END $$;

-- This program evaluates the grade of a student based on marks.

DO $$
DECLARE
    marks INTEGER := 85;
BEGIN
    IF marks >= 90 THEN
        RAISE NOTICE 'Grade: A+';
    ELSIF marks >= 75 THEN
        RAISE NOTICE 'Grade: A';
    ELSIF marks >= 60 THEN
        RAISE NOTICE 'Grade: B';
    ELSIF marks >= 50 THEN
        RAISE NOTICE 'Grade: C';
    ELSE
        RAISE NOTICE 'Grade: Fail';
    END IF;
END $$;

-- This program determines performance status based on marks.

DO $$
DECLARE
    marks INTEGER := 72;
BEGIN
    IF marks >= 85 THEN
        RAISE NOTICE 'Performance: Excellent';
    ELSIF marks >= 70 THEN
        RAISE NOTICE 'Performance: Very Good';
    ELSIF marks >= 55 THEN
        RAISE NOTICE 'Performance: Good';
    ELSIF marks >= 40 THEN
        RAISE NOTICE 'Performance: Average';
    ELSE
        RAISE NOTICE 'Performance: Poor';
    END IF;
END $$;


-- This program displays the day name based on the given day number.

DO $$
DECLARE
    day_number INTEGER := 4;
BEGIN
    CASE day_number
        WHEN 1 THEN RAISE NOTICE 'Day: Sunday';
        WHEN 2 THEN RAISE NOTICE 'Day: Monday';
        WHEN 3 THEN RAISE NOTICE 'Day: Tuesday';
        WHEN 4 THEN RAISE NOTICE 'Day: Wednesday';
        WHEN 5 THEN RAISE NOTICE 'Day: Thursday';
        WHEN 6 THEN RAISE NOTICE 'Day: Friday';
        WHEN 7 THEN RAISE NOTICE 'Day: Saturday';
        ELSE
            RAISE NOTICE 'Invalid Day Number';
    END CASE;
END $$;


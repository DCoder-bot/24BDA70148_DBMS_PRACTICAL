# Experiment 4

**Student Name:** Sahil Goyal  
**UID:** 24BDA70148  
**Branch:** CSE  
**Section/Group:** AIT-KRG-GP2  
**Semester:** 4th  
**Date of Performance:** 30/01/26  
**Subject Name:** DBMS  

---

## Aim of the Practical

To understand and implement conditional control structures in PL/pgSQL using IF–ELSE, ELSIF, ELSIF ladder, and CASE statements in PostgreSQL to control the flow of execution and demonstrate decision-making capabilities.

---

## Tool Used

**Database Management System:** PostgreSQL  
**Interface Used:** psql (iTerm2 Terminal)

---

## Objective

To implement control structures in PL/pgSQL including:

- IF–ELSE  
- IF–ELSIF–ELSE  
- ELSIF Ladder  
- CASE Statement  

---

## Practical / Experimental Steps

1. Open iTerm2 terminal.
2. Connect to PostgreSQL using:

   ```bash
   psql -U postgres -d database_name
   ```

3. Execute PL/pgSQL DO blocks using conditional statements.
4. Modify input values and re-execute to test different conditions.
5. Observe and record the outputs.

---

# I / O Analysis

---

## 1. IF–ELSE Statement

-- This program checks whether a number is positive or non-positive.


### Output

![IF-ELSE Output](Screenshots/If_else.png)

---

## 2. IF–ELSIF–ELSE Statement

-- This program evaluates the grade of a student based on marks.

### Output

![IF-ELSIF Output](Screenshots/IF_elsif_else.png)

---

## 3. ELSIF Ladder

-- This program determines performance status based on marks.

### Output

![ELSIF Ladder Output](Screenshots/elsif_ladder.png)

---

## 4. CASE Statement

-- This program displays the day name based on the given day number.

### Output

![CASE Output](Screenshots/case_statement.png)

---

## Learning Outcomes

- Understood the structure of a PL/pgSQL block using `DO $$ DECLARE BEGIN END $$`.
- Learned how to declare and initialize variables in PostgreSQL.
- Gained knowledge of using `RAISE NOTICE` to display output.
- Implemented decision-making using IF–ELSE and ELSIF ladder.
- Understood how CASE statement simplifies multiple condition checking.
- Developed understanding of controlling execution flow in PostgreSQL programs.

---

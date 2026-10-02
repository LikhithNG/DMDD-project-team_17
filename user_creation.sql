SET SERVEROUTPUT ON;
-- Passwords are prompted for at run time (never stored in this file).
-- SQL*Plus / SQL Developer substitutes &vars before the PL/SQL block is sent.
SET VERIFY OFF
ACCEPT tech_pw  CHAR PROMPT 'Password for hydro_technician: ' HIDE
ACCEPT agri_pw  CHAR PROMPT 'Password for hydro_agronomist: ' HIDE
ACCEPT sales_pw CHAR PROMPT 'Password for hydro_sales_manager: ' HIDE
ACCEPT cust_pw  CHAR PROMPT 'Password for hydro_customer: ' HIDE

-- Drop roles if they exist
BEGIN
   FOR role_name IN (
       SELECT 'technician_role' AS role_name FROM dual UNION ALL
       SELECT 'agronomist_role' AS role_name FROM dual UNION ALL
       SELECT 'sales_manager_role' AS role_name FROM dual UNION ALL
       SELECT 'customer_role' AS role_name FROM dual
   ) LOOP
       BEGIN
           EXECUTE IMMEDIATE 'DROP ROLE ' || role_name.role_name;
           DBMS_OUTPUT.PUT_LINE('Dropped role: ' || role_name.role_name);
       EXCEPTION
           WHEN OTHERS THEN
               DBMS_OUTPUT.PUT_LINE('Role ' || role_name.role_name || ' does not exist or cannot be dropped.');
       END;
   END LOOP;
END;
/

-- Drop users if they exist
BEGIN
   FOR user_name IN (
       SELECT 'hydro_technician' AS user_name FROM dual UNION ALL
       SELECT 'hydro_agronomist' AS user_name FROM dual UNION ALL
       SELECT 'hydro_sales_manager' AS user_name FROM dual UNION ALL
       SELECT 'hydro_customer' AS user_name FROM dual
   ) LOOP
       BEGIN
           EXECUTE IMMEDIATE 'DROP USER ' || user_name.user_name || ' CASCADE';
           DBMS_OUTPUT.PUT_LINE('Dropped user: ' || user_name.user_name);
       EXCEPTION
           WHEN OTHERS THEN
               DBMS_OUTPUT.PUT_LINE('User ' || user_name.user_name || ' does not exist or cannot be dropped.');
       END;
   END LOOP;
END;
/

COMMIT;

-- Create roles
BEGIN
   FOR role_name IN (
       SELECT 'technician_role' AS role_name FROM dual UNION ALL
       SELECT 'agronomist_role' AS role_name FROM dual UNION ALL
       SELECT 'sales_manager_role' AS role_name FROM dual UNION ALL
       SELECT 'customer_role' AS role_name FROM dual
   ) LOOP
       BEGIN
           EXECUTE IMMEDIATE 'CREATE ROLE ' || role_name.role_name;
           DBMS_OUTPUT.PUT_LINE('Created role: ' || role_name.role_name);
       EXCEPTION
           WHEN OTHERS THEN
               DBMS_OUTPUT.PUT_LINE('Role ' || role_name.role_name || ' could not be created.');
       END;
   END LOOP;
END;
/

-- Create users and assign roles
BEGIN
   FOR user_rec IN (
       SELECT 'hydro_technician' AS user_name, 'technician_role' AS role_name, '&tech_pw' AS password FROM dual UNION ALL
       SELECT 'hydro_agronomist' AS user_name, 'agronomist_role' AS role_name, '&agri_pw' AS password FROM dual UNION ALL
       SELECT 'hydro_sales_manager' AS user_name, 'sales_manager_role' AS role_name, '&sales_pw' AS password FROM dual UNION ALL
       SELECT 'hydro_customer' AS user_name, 'customer_role' AS role_name, '&cust_pw' AS password FROM dual
   ) LOOP
       BEGIN
           EXECUTE IMMEDIATE 'CREATE USER ' || user_rec.user_name || ' IDENTIFIED BY "' || user_rec.password || '"';
           EXECUTE IMMEDIATE 'GRANT ' || user_rec.role_name || ' TO ' || user_rec.user_name;
           DBMS_OUTPUT.PUT_LINE('Created user: ' || user_rec.user_name || ' and assigned role: ' || user_rec.role_name);
       EXCEPTION
           WHEN OTHERS THEN
               DBMS_OUTPUT.PUT_LINE('User ' || user_rec.user_name || ' could not be created or role assignment failed.');
       END;
   END LOOP;
END;
/

-- Set quotas for each user
BEGIN
   FOR user_quota IN (
       SELECT 'hydro_technician' AS user_name, '50M' AS quota FROM dual UNION ALL
       SELECT 'hydro_agronomist' AS user_name, '50M' AS quota FROM dual UNION ALL
       SELECT 'hydro_sales_manager' AS user_name, '50M' AS quota FROM dual UNION ALL
       SELECT 'hydro_customer' AS user_name, '20M' AS quota FROM dual
   ) LOOP
       BEGIN
           EXECUTE IMMEDIATE 'ALTER USER ' || user_quota.user_name || ' QUOTA ' || user_quota.quota || ' ON users';
           DBMS_OUTPUT.PUT_LINE('Set quota of ' || user_quota.quota || ' for user: ' || user_quota.user_name);
       EXCEPTION
           WHEN OTHERS THEN
               DBMS_OUTPUT.PUT_LINE('Could not set quota for user: ' || user_quota.user_name);
       END;
   END LOOP;
END;
/

UNDEFINE tech_pw agri_pw sales_pw cust_pw

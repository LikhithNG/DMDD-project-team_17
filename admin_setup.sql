-- Run as the database ADMIN user.
-- The hydro_admin password is prompted for at run time (never stored in this file).
SET VERIFY OFF
ACCEPT admin_pw CHAR PROMPT 'Password for hydro_admin: ' HIDE
-- USERS is the default on most Oracle installs; Oracle Autonomous Database uses DATA.
ACCEPT app_tbs CHAR DEFAULT 'USERS' PROMPT 'Tablespace for hydro_admin quota [USERS]: '

BEGIN
   -- Drop the user if it exists
   BEGIN
      EXECUTE IMMEDIATE 'DROP USER hydro_admin CASCADE';
   EXCEPTION
      WHEN OTHERS THEN
         -- Ignore the error if the user does not exist
         IF SQLCODE != -1918 THEN  -- ORA-01918: user does not exist
            RAISE;  -- Re-raise other unexpected errors
         END IF;
   END;

   -- Create the user
   EXECUTE IMMEDIATE 'CREATE USER hydro_admin IDENTIFIED BY "&admin_pw"';
END;
/

ALTER USER hydro_admin QUOTA UNLIMITED ON &app_tbs;

-- Base roles
GRANT CONNECT TO hydro_admin;
GRANT RESOURCE TO hydro_admin;

-- WITH ADMIN OPTION lets hydro_admin grant CREATE SESSION to the
-- application roles it creates in user_creation.sql.
GRANT CREATE SESSION TO hydro_admin WITH ADMIN OPTION;

-- User and role management (used by user_creation.sql)
GRANT CREATE USER TO hydro_admin;
GRANT ALTER USER TO hydro_admin;
GRANT DROP USER TO hydro_admin;
GRANT CREATE ROLE TO hydro_admin;
GRANT GRANT ANY ROLE TO hydro_admin;

-- Table privileges
GRANT CREATE TABLE TO hydro_admin;
GRANT CREATE ANY TABLE TO hydro_admin;
GRANT ALTER ANY TABLE TO hydro_admin;
GRANT DROP ANY TABLE TO hydro_admin;
GRANT SELECT ANY TABLE TO hydro_admin;
GRANT INSERT ANY TABLE TO hydro_admin;
GRANT UPDATE ANY TABLE TO hydro_admin;
GRANT DELETE ANY TABLE TO hydro_admin;
GRANT CREATE ANY INDEX TO hydro_admin;

-- Synonyms
GRANT CREATE PUBLIC SYNONYM TO hydro_admin;
GRANT DROP PUBLIC SYNONYM TO hydro_admin;

-- Schema object privileges
GRANT CREATE VIEW TO hydro_admin;
GRANT CREATE SEQUENCE TO hydro_admin;
GRANT CREATE PROCEDURE TO hydro_admin;
GRANT CREATE TRIGGER TO hydro_admin;
GRANT ALTER ANY PROCEDURE TO hydro_admin;
GRANT ALTER ANY TRIGGER TO hydro_admin;
GRANT DEBUG ANY PROCEDURE TO hydro_admin;

UNDEFINE admin_pw app_tbs

-- RESET
--drop user hydro_admin cascade;

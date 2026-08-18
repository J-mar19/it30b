CREATE DATABASE <database_name>;
SHOW DATABASES; 
CONNECT <database_name>;
CREATE TABLE <table_name_in_plural>();
INSERT INTRO <table_name_in_plural>
            (columns) VALUES
            (values);




#Utility Commands
\! cls

mysql -u root --databases library_db > C:\I30B\backups

backups time -- source C:\I30B\backups\08182026_library_db.sql;
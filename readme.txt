CREATE DATABASE <database_name>;
SHOW DATABASES; 
CONNECT <database_name>;
CREATE TABLE <table_name_in_plural>();
INSERT INTRO <table_name_in_plural>
            (columns) VALUES
            (values);


#Utility Commands
\! cls
mysql -u root --databases library_db > C:\IT30B\backups

backups time -- source C:\I30B\backups\08182026_library_db.sql;

mysqldump -u root -p --databases library_db > C:\IT30B\backups

mysqldump -u root -p --databases library_db > "C:\IT30B\backups\%date:~-4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%_library_db.sql"

/**
* SQL commands to create the 'switches' database and assign the appropriate user credentials and permissions.
* Ensure to create the Django project first, then only create the MySQL database,
* after which you must then edit the settings.py file to include MySQL as the default database.
* You can then perform a migration AFTER you've executed this statements.
**/

CREATE DATABASE switches CHARACTER SET UTF8;
GRANT ALL PRIVILEGES ON switches.* TO madjango@localhost;
FLUSH PRIVILEGES;

/*WARNING: STOP HERE AND IMPORT THE CSV BEFORE PROGRESSING ⚠*/
SHOW DATABASES;
USE switches;
SHOW TABLES;
DESCRIBE switches_ping;					/*Imported from the given CSV file*/
DESCRIBE switches_report;				/*Custom table we'll be using to process the ping reports*/
SELECT * FROM switches_ping LIMIT 20;	/*Crosscheck first 20 elements to verify prior CSV import.*/

/*Insert 1 into ALL ping_status fields*/
UPDATE switches_ping SET ping_status=1;
/*Insert 0 into ping_status fields only when all terminals have 0 ping*/
UPDATE switches_ping SET ping_status=0 WHERE
	terminal_1=0 and terminal_2=0 and terminal_3=0 and terminal_4=0 and terminal_5=0;

/*Query only switches with 0 ping status*/
SELECT * FROM switches_ping WHERE
	terminal_1=0 and terminal_2=0 and terminal_3=0 and terminal_4=0 and terminal_5=0;

/*Rerun the previous command but now decode the time*/
/*SELECT FROM_UNIXTIME(unix_timestamp) FROM switches_ping;*/
SELECT *, FROM_UNIXTIME(unix_timestamp) FROM switches_ping WHERE
	terminal_1=0 and terminal_2=0 and terminal_3=0 and terminal_4=0 and terminal_5=0;

/*Take values with missing ping from switches_ping to switches_report*/
USE switches;
INSERT INTO switches.switches_report(switch_name, alert_type, alert_date_time)
	SELECT switch_label, ping_status, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE terminal_1=0 and terminal_2=0 and terminal_3=0 and terminal_4=0 and terminal_5=0;

/*Fill up the email alert execution time*/
USE switches;
INSERT INTO switches.switches_report(switch_name, alert_type, alert_date_time, email_date_time)
	SELECT switch_label, ping_status, FROM_UNIXTIME(unix_timestamp), CURRENT_TIMESTAMP
	FROM switches.switches_ping
	WHERE terminal_1=0 and terminal_2=0 and terminal_3=0 and terminal_4=0 and terminal_5=0;

/*Move items belonging to each switch into its dedicated database*/
USE switches;
INSERT INTO switches.switches_switch1(ping_status, unix_timestamp, alert_date_time)
	SELECT ping_status, unix_timestamp, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE switch_label='S1';
USE switches;
INSERT INTO switches.switches_switch2(ping_status, unix_timestamp, alert_date_time)
	SELECT ping_status, unix_timestamp, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE switch_label='S2';
USE switches;
INSERT INTO switches.switches_switch3(ping_status, unix_timestamp, alert_date_time)
	SELECT ping_status, unix_timestamp, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE switch_label='S3';

/**
* We proceed to filter only the first 24 hours of the time stamp from the three databases
* We need only first 24 hours -> enteries are made every 2 minutes -> we need only first n records
* For beautification and good measure, we make it ...
* We now run the following queries to determine the 12 hour mark 
* (achieved by transcribing 11/28/2019 @ 8:00pm (UTC) to 1574971200)
*/
SELECT * FROM switches_switch1 WHERE unix_timestamp=1574942400; /*361*/
SELECT * FROM switches_switch2 WHERE unix_timestamp=1574942400; /*361*/
SELECT * FROM switches_switch3 WHERE unix_timestamp=1574942400; /*361*/

USE switches;
INSERT INTO switches.switches_switch1(ping_status, unix_timestamp, alert_date_time)
	SELECT ping_status, unix_timestamp, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE switch_label='S1'
	LIMIT 361;
USE switches;
INSERT INTO switches.switches_switch2(ping_status, unix_timestamp, alert_date_time)
	SELECT ping_status, unix_timestamp, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE switch_label='S2'
	LIMIT 361;
USE switches;
INSERT INTO switches.switches_switch3(ping_status, unix_timestamp, alert_date_time)
	SELECT ping_status, unix_timestamp, FROM_UNIXTIME(unix_timestamp)
	FROM switches.switches_ping
	WHERE switch_label='S3'
	LIMIT 361;

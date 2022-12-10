CREATE DATABASE BookIT;
CREATE USER 'webapp1'@'%' IDENTIFIED BY '123';
GRANT ALL PRIVILEGES ON BookIT.* TO 'webapp1'@'%';
FLUSH PRIVILEGES;

USE BookIT;

create table Employees (
	employee_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	phone_number VARCHAR(50)
);

create table Customers (
	customer_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	phone_number VARCHAR(50),
	street_address VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	country VARCHAR(50),
	credit_card VARCHAR(50)
);

create table Invoices (
	invoice_id INT,
	service_price VARCHAR(50),
	date DATE,
	street_address VARCHAR(50),
	city VARCHAR(50),
	state VARCHAR(50),
	country VARCHAR(50)
);

create table Appointments (
	appointment_id INT,
	price VARCHAR(50),
	employee_id INT,
	time_slot DATE,
	appointment_type VARCHAR(50)
);

insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (1, 'Kristo', 'Carayol', 'kcarayol0@amazon.co.jp', '646-951-7248', '802 Quincy Street', 'Flushing', 'New York', 'United States', '56022202181215219');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (2, 'Shana', 'de Cullip', 'sdecullip1@geocities.jp', '205-285-1002', '883 Fairfield Parkway', 'Birmingham', 'Alabama', 'United States', '3537892980698597');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (3, 'Tull', 'Grissett', 'tgrissett2@nationalgeographic.com', '318-160-0096', '6 Maple Pass', 'Monroe', 'Louisiana', 'United States', '6762574940881351');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (4, 'Dona', 'Yakuntsov', 'dyakuntsov3@fastcompany.com', '314-300-4718', '45276 Vernon Point', 'Saint Louis', 'Missouri', 'United States', '3530832756544978');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (5, 'Nadya', 'Fayer', 'nfayer4@imgur.com', '217-779-3070', '69837 Esch Lane', 'Springfield', 'Illinois', 'United States', '060465065534206169');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (6, 'Almire', 'Dacca', 'adacca5@springer.com', '916-791-4277', '94092 Pawling Pass', 'Sacramento', 'California', 'United States', '0604390820475591770');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (7, 'Rey', 'Ciobutaro', 'rciobutaro6@squarespace.com', '606-525-5356', '29 Corry Pass', 'London', 'Kentucky', 'United States', '3543520591726398');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (8, 'Leena', 'McGeoch', 'lmcgeoch7@miibeian.gov.cn', '202-845-4417', '67982 North Court', 'Washington', 'District of Columbia', 'United States', '5278643213034243');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (9, 'Tanya', 'Toft', 'ttoft8@columbia.edu', '313-674-6508', '7 Elmside Avenue', 'Detroit', 'Michigan', 'United States', '560222101269208360');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (10, 'Hannie', 'Grgic', 'hgrgic9@abc.net.au', '210-494-4747', '48917 3rd Place', 'San Antonio', 'Texas', 'United States', '3558941111842006');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (11, 'Jandy', 'Gee', 'jgeea@google.fr', '954-530-1047', '30 Victoria Road', 'Orlando', 'Florida', 'United States', '6334286434919144546');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (12, 'Cathe', 'Lockey', 'clockeyb@gizmodo.com', '602-579-6482', '5588 Menomonie Lane', 'Tempe', 'Arizona', 'United States', '6304596515638491578');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (13, 'Lorilyn', 'Rooper', 'lrooperc@whitehouse.gov', '757-829-6250', '7739 Fallview Junction', 'Newport News', 'Virginia', 'United States', '3564695014571698');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (14, 'Thorny', 'Vayro', 'tvayrod@instagram.com', '951-230-0373', '0 Schiller Circle', 'Corona', 'California', 'United States', '5610538349298331');
insert into Customers (customer_id, first_name, last_name, email, phone_number, street_address, city, state, country, credit_card) values (15, 'Reinold', 'Jessel', 'rjessele@goo.ne.jp', '305-521-1851', '02 Morrow Alley', 'Boca Raton', 'Florida', 'United States', '3581479653657624');

insert into Employees (employee_id, first_name, last_name, email, phone_number) values (1, 'Ulysses', 'Flanagan', 'uflanagan0@tmall.com', '564-213-5054');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (2, 'Edward', 'Furlong', 'efurlong1@comsenz.com', '767-286-6517');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (3, 'Odette', 'Noell', 'onoell2@last.fm', '213-786-2545');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (4, 'Cyrille', 'Mc Gorley', 'cmcgorley3@chronoengine.com', '597-798-0687');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (5, 'Joseito', 'Marryatt', 'jmarryatt4@wunderground.com', '197-991-6909');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (6, 'Anders', 'Kittless', 'akittless5@china.com.cn', '812-489-7786');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (7, 'Lawry', 'Gresly', 'lgresly6@nba.com', '871-343-5880');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (8, 'Jack', 'Westmarland', 'jwestmarland7@ihg.com', '516-599-3561');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (9, 'Bryna', 'Andrzejewski', 'bandrzejewski8@xrea.com', '665-179-9445');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (10, 'Kimmi', 'Hudd', 'khudd9@seattletimes.com', '835-710-5025');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (11, 'Bard', 'Merigon', 'bmerigona@skyrock.com', '195-849-3147');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (12, 'Francisca', 'McKevany', 'fmckevanyb@apache.org', '914-634-4375');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (13, 'Reg', 'Seczyk', 'rseczykc@squidoo.com', '554-975-5996');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (14, 'Timi', 'Grinston', 'tgrinstond@google.fr', '769-648-8541');
insert into Employees (employee_id, first_name, last_name, email, phone_number) values (15, 'Isak', 'Cumesky', 'icumeskye@ehow.com', '774-272-3837');

insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (1, '$33.42', '2022-02-14', '15978 Hazelcrest Street', 'Alagoinhas', null, 'Brazil');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (2, '$35.20', '2022-08-11', '982 Summit Pass', 'Kičevo', null, 'Macedonia');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (3, '$30.77', '2022-08-09', '50 Novick Circle', 'Chropyně', null, 'Czech Republic');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (4, '$32.59', '2022-09-25', '33113 Fulton Crossing', 'Washington', 'District of Columbia', 'United States');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (5, '$53.67', '2022-01-26', '41 Thierer Junction', 'Padaan', null, 'Indonesia');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (6, '$30.17', '2022-01-02', '51 Ridgeway Way', 'Zaliztsi', null, 'Ukraine');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (7, '$54.12', '2021-12-20', '73199 Brown Lane', '‘Ajlūn', null, 'Jordan');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (8, '$46.48', '2022-04-22', '81224 Longview Parkway', 'Cirangrang', null, 'Indonesia');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (9, '$43.86', '2022-08-08', '33255 Stoughton Point', 'São João do Campo', 'Coimbra', 'Portugal');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (10, '$37.36', '2022-08-23', '6 Grim Park', 'Troitskiy', null, 'Russia');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (11, '$39.97', '2021-12-28', '431 Anhalt Plaza', 'Dzięgielów', null, 'Poland');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (12, '$53.55', '2021-12-07', '92 Mccormick Crossing', 'Panyambungan', null, 'Indonesia');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (13, '$38.48', '2022-02-27', '38311 Marcy Place', 'Chernoyerkovskaya', null, 'Russia');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (14, '$42.57', '2022-05-01', '46 Hayes Point', 'Velké Opatovice', null, 'Czech Republic');
insert into Invoices (invoice_id, service_price, date, street_address, city, state, country) values (15, '$30.19', '2022-08-27', '62828 Nobel Crossing', 'Nizhnevartovsk', null, 'Russia');

insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (1, '$30.11', 10, '2022-05-03', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (2, '$37.79', 4, '2021-12-17', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (3, '$59.98', 14, '2022-01-25', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (4, '$39.39', 14, '2022-11-01', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (5, '$46.95', 9, '2022-06-29', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (6, '$34.30', 15, '2022-07-20', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (7, '$54.79', 2, '2022-03-05', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (8, '$43.91', 7, '2022-01-28', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (9, '$54.20', 8, '2022-11-14', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (10, '$31.33', 4, '2022-02-25', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (11, '$27.82', 2, '2022-01-19', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (12, '$30.66', 7, '2022-04-26', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (13, '$32.83', 7, '2021-12-07', "Cut");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (14, '$49.01', 12, '2022-06-10', "Dye");
insert into Appointments (appointment_id, price, employee_id, time_slot, appointment_type) values (15, '$25.69', 2, '2022-01-15', "Cut");
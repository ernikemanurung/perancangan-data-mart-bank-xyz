/*Table structure for table DimAccount*/

CREATE TABLE DimAccount (
	account_key bigint NOT NULL,
	account_number int NOT NULL,
	type varchar(200) NOT NULL,
	balance int NOT NULL,
	starting_date datetime NOT NULL,
	expiration_date datetime NOT NULL,
	PRIMARY KEY (account_key)
)

/*Table structure for table Customer*/
CREATE TABLE DimCustomer (
	customer_key bigint NOT NULL,
	name varchar(200) NOT NULL,
	birth_date datetime NOT NULL,
	PRIMARY KEY (customer_key)
)

/*Table structure for table Branch*/
CREATE TABLE DimBranch (
	branch_key bigint NOT NULL,
	branch_number int NOT NULL,
	name varchar(200) NOT NULL,
	location varchar(200) NOT NULL,
	PRIMARY KEY (branch_key)
)

/*Table structure for table DimTeller*/
CREATE TABLE DimTeller (
	teller_key bigint NOT NULL,
	branch_key bigint NOT NULL,
	name varchar(200) NOT NULL,
	PRIMARY KEY (teller_key),
	CONSTRAINT fkDimTellerbranch_key FOREIGN KEY (branch_key)
		REFERENCES DimBranch (branch_key)
)

/*Table structure for table DimReport*/
CREATE TABLE DimReport (
	report_key bigint NOT NULL,
	type varchar(200),
	PRIMARY KEY (report_key)
)

/*Table Structure for table DimService*/
CREATE TABLE DimService (
	service_key bigint NOT NULL,
	type varchar(200),
	PRIMARY KEY (service_key)
)


/*Table Structure for table DimDate*/
CREATE TABLE DimDate (
	date_key bigint NOT NULL,
	year_number int NOT NULL,
	month_number int NOT NULL,
	day_name varchar(200) NOT NULL,
	PRIMARY KEY (date_key)
)

/*Table Structure for table FactTransaction*/
CREATE TABLE FactTransaction (
	date_key bigint NOT NULL,
	account_key bigint NOT NULL,
	customer_key bigint NOT NULL,
	teller_key bigint NOT NULL,
	service_key bigint NOT NULL,
	report_key bigint NOT NULL,
	transaction_key bigint NOT NULL,
	amount_of_saldo int,
	number_of_transaction int,
	average_monthly_balance int,
	PRIMARY KEY (date_key),
	CONSTRAINT fkFactTransactiondate_key FOREIGN KEY (date_key)
		REFERENCES DimDate (date_key),
	CONSTRAINT fkFactTransactionaccount_key FOREIGN KEY (account_key)
		REFERENCES DimAccount(account_key),
	CONSTRAINT fkFactTransactioncustomer_key FOREIGN KEY (customer_key)
		REFERENCES DimCustomer (customer_key),
	CONSTRAINT fkFactTransactionteller_key FOREIGN KEY (teller_key)
		REFERENCES DimTeller (teller_key),
	CONSTRAINT fkFactTransactionservice_key FOREIGN KEY (service_key)
		REFERENCES DimService (service_key),
	CONSTRAINT fkFactTransactionreport_key FOREIGN KEY (report_key)
		REFERENCES DimReport (report_key)
)

/*Data for DimAccount*/
INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('1', '5308333', 'classic', '1500000', '2015-06-10', '2020-06-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('2', '5386135', 'junior', '1000000', '2017-03-03', '2022-03-03')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('3', '5054135', 'classic', '350000', '2016-09-10', '2021-09-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('4', '5075661', 'gold', '45000', '2018-03-11', '2023-03-11')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('5', '5337783', 'classic', '2654582', '2019-03-10', '2024-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('6', '5541139', 'gold', '2100', '2017-03-10', '2022-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('7', '5418318', 'junior', '36540', '2016-03-10', '2021-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('8', '5200985', 'junior', '42000', '2015-03-10', '2020-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('9', '5602242', 'classic', '789654', '2018-03-10', '2023-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('10', '5206988', 'junior', '32000', '2019-03-10', '2024-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('11', '5401590', 'classic', '26558', '2020-03-10', '2025-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('12', '5385436', 'classic', '5000', '2020-03-10', '2025-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('13', '5521229', 'gold', '12500', '2017-03-10', '2022-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('14', '5743430', 'junior', '1200000', '2016-03-10', '2001-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('15', '5560918', 'junior', '6545', '2017-03-10', '2022-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('16', '5206034', 'classic', '3564', '2018-03-10', '2023-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('17', '5312205', 'classic', '1200', '2019-03-10', '2024-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('18', '5042715', 'gold', '55665', '2019-03-10', '2024-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('19', '5042715', 'classic', '45665', '2020-03-10', '2025-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('20', '5062628', 'junior', '23654', '2020-03-10', '2025-03-10')

INSERT INTO dbo.DimAccount (account_key, account_number, type, balance, starting_date, expiration_date) VALUES
('21', '5137820', 'junior', 'Fantasy', '2019-03-10', '2024-03-10')

/*Data For DimCustomer*/
INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('1', 'Ragnar Dampier', '1988-09-23')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('2', 'Cobby Baudinot', '1986-10-03')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('3', 'Kylynn Allison', '1999-09-15')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('4', 'Marshal Bushell', '2001-03-02')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('5', 'Skell Cicetti', '1995-05-20')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('6', 'Gratia Casey', '1997-11-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('7', 'Wiley Filipponi', '2005-03-12')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('8', 'Conni MacDearmid', '1989-07-13')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('9', 'Florence Thunder', '1994-06-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('10', 'Darrin Aindrais', '2005-08-18')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('11', 'Grover Souter', '2007-07-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('12', 'Willdon Simonelli', '1991-06-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('13', 'Cirstoforo Riehm', '1989-11-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('14', 'Brittaney Avramchik', '1998-06-23')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('15', 'Vaughn Hevner', '2000-06-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('16', 'Edouard Arthan', '2007-06-15')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('17', 'Shelden Gottelier', '1998-06-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('18', 'Durward Wall', '1997-09-21')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('19', 'Griffie Lamkin', '1995-06-05')

INSERT INTO dbo.DimCustomer (customer_key, name, birth_date) VALUES
('20', 'Harrie Portwaine', '1990-02-02')

/*Data for DimBranch*/
INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('1', '1204953', 'Benesov', 'central Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('2', '88884', 'Beroun', 'north Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('3', '75232', 'Kladno', 'south Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('4', '149893', 'Kolin', 'central Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('5', '95616', 'Melnik', 'north Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('6', '77963', 'Cheb', 'central Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('7', '94725', 'Tabor', 'east Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('8', '112065', 'Domazlice', 'central Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('9', '81344', 'Klatovy', 'south Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('10', '92084', 'Sokolov', 'north Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('11', '75637', 'Decin', 'south Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('12', '107870', 'Most', 'east Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('13', '53921', 'Louny', 'central Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('14', '177686', 'Semily', 'north Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('15', '58796', 'Blansko', 'south Moravia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('16', '93931', 'Karvina', 'central Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('17', '74062', 'Trebic', 'north Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('18', '70699', 'Olomouc', 'west Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('19', '51428', 'Opava', 'east Bohemia')

INSERT INTO dbo.DimBranch (branch_key, branch_number, name, location) VALUES
('20', '70646', 'Sumperk', 'north Moravia')

/*Data for DimTeller*/
INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('1', '1', 'Portwaine')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('2', '1', 'Harrie')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('3', '2', 'Lamkin')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('4', '2', 'Griffie')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('5', '3', 'Wall')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('6', '3', 'Gottelier')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('7', '4', 'Shelden')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('8', '4', 'Arthan')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('9', '5', 'Edouard')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('10', '5', 'Hevner')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('11', '6', 'Vaughn')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('12', '6', 'Avramchik')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('13', '7', 'Brittaney')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('14', '7', 'Riehm')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('15', '8', 'Cirstoforo')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('16', '8', 'Simonelli')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('17', '9', 'Willdon')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('18', '9', 'Souter')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('19', '10', 'Grover')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('20', '10', 'Aindrais')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('21', '11', 'Darrin')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('22', '11', 'Thunder')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('23', '12', 'Folrence')
INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('24', '12', 'MacDearmid')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('25', '13', 'Conni')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('26', '13', 'Filipponi')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('27', '14', 'Wiley')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('28', '14', 'Casey')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('29', '15', 'Gratia')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('30', '15', 'Cicetti')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('31', '16', 'Skell')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('32', '16', 'Bushell')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('33', '17', 'Marshal')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('34', '17', 'Allison')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('35', '18', 'Kylynn')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('36', '18', 'Baudinot')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('37', '19', 'Cobby')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('38', '19', 'Dampier')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('39', '20', 'Ragnar')

INSERT INTO dbo.DimTeller (teller_key, branch_key, name) VALUES
('40', '20', 'Chelyn')

/*Data for DimReport*/
INSERT INTO dbo.DimReport (report_key, type) VALUES
('1', 'VYDAJ')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('2', 'VYDAJ')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('3', 'PRIJEM')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('4', 'VYDAJ')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('5', 'VYDAJ')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('6', 'PRIJEM')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('7', 'VYDAJ')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('8', 'PRIJEM')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('9', 'VYDAJ')

INSERT INTO dbo.DimReport (report_key, type) VALUES
('10', 'PRIJEM')

/*Data for DimService*/

INSERT INTO dbo.DimService (service_key, type) VALUES
('1', 'Transfer')

INSERT INTO dbo.DimService (service_key, type) VALUES
('2', 'Clearing')

INSERT INTO dbo.DimService (service_key, type) VALUES
('3', 'Collection')

INSERT INTO dbo.DimService (service_key, type) VALUES
('4', 'Safe Deposit Box')

INSERT INTO dbo.DimService (service_key, type) VALUES
('5', 'Bank Card')

INSERT INTO dbo.DimService (service_key, type) VALUES
('6', 'Bank Notes')

INSERT INTO dbo.DimService (service_key, type) VALUES
('7', 'Bank Garansi')

INSERT INTO dbo.DimService (service_key, type) VALUES
('8', 'Bank Draft')

INSERT INTO dbo.DimService (service_key, type) VALUES
('9', 'Left of Credit (L/C)')

INSERT INTO dbo.DimService (service_key, type) VALUES
('10', 'Bill Payment')

INSERT INTO dbo.DimService (service_key, type) VALUES
('11', 'Loan')

INSERT INTO dbo.DimService (service_key, type) VALUES
('12', 'Order')

INSERT INTO dbo.DimService (service_key, type) VALUES
('13', 'E-Banking')

/*Data for DimDate*/
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20050112', '2005', '01', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890115', '1989', '01', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19900112', '1990', '01', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890111', '1989', '01', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890103', '1989', '01', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19910106', '1991', '01', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890121', '1989', '01', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890213', '1989', '02', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19920214', '1992', '02', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890216', '1989', '02', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19920230', '1992', '02', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890217', '1989', '02', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19910225', '1991', '02', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890213', '1989', '02', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19930324', '1993', '03', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890320', '1989', '03', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890317', '1989', '03', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890312', '1989', '03', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19930309', '1993', '03', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20200308', '2020', '03', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20010307', '2001', '03', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890405', '1989', '04', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890404', '1989', '04', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19930412', '1993', '04', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890405', '1989', '04', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19950408', '1995', '04', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20170407', '2017', '04', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19940408', '1994', '04', 'Saturday')


INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19940503', '1994', '05', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20010503', '2001', '05', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20180504', '2018', '05', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20011514', '2001', '05', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19990525', '1999', '05', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19960523', '1996', '05', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890531', '1989', '05', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20010617', '2001', '06', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20190626', '2019', '06', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20090617', '2009', '06', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19970604', '1997', '06', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890621', '1989', '06', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20160608', '2016', '06', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890621', '1989', '06', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19980723', '1998', '07', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890724', '1989', '07', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19990721', '1999', '07', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19980723', '1998', '07', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20090720', '2009', '07', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20130711', '2013', '07', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20090714', '2009', '07', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20050828', '2005', '08', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20030827', '2003', '08', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890805', '1989', '08', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890806', '1989', '08', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20000804', '2000', '08', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20120823', '2012', '08', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890821', '1989', '08', 'Saturday')


INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20000912', '2000', '09', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20030914', '2003', '09', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19950908', '1995', '09', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20190908', '2019', '09', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20010907', '2001', '09', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19890921', '1989', '09', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20190920', '2019', '09', 'Saturday')


INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19891012', '1989', '10', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20011011', '2001', '10', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20191022', '2019', '10', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19971026', '1997', '10', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19891009', '1989', '10', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20001001', '2000', '10', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20021003', '2002', '10', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19901112', '1990', '11', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20181102', '2018', '11', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19011112', '1901', '11', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20181104', '2018', '11', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20191113', '2019', '11', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20181113', '2018', '11', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20181112', '2018', '11', 'Saturday')

INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20171204', '2017', '12', 'Sunday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19891204', '1989', '12', 'Monday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20171214', '2017', '12', 'Tuesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19921206', '1992', '12', 'Wednesday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('20161204', '2016', '12', 'Thursday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19891203', '1989', '12', 'Friday')
INSERT INTO dbo.DimDate (date_key, year_number, month_number, day_name) VALUES
('19891204', '1989', '12', 'Saturday')

/*Data for FactTransaction*/

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890103', '1', '1', '1', '2', '2', '1', '700000', '20', '200000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181102', '19', '10', '1', '1', '3', '2', '2000000', '12', '150000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20050112', '21', '9', '24', '3', '1', '3', '30000000', '6', '100000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20171214', '18', '8', '2', '4', '6', '4', '50000', '7', '10000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19900112', '12', '1', '23', '4', '4', '5', '50000', '11', '75000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181102', '1', '7', '1', '5', '9', '6', '50000', '15', '25000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890213', '2', '6', '1', '5', '10', '7', '100000', '12', '65000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20161204', '17', '5', '2', '6', '9', '8', '50000', '13', '10000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890121', '5', '1', '1', '7', '8', '9', '100000', '1', '20000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19891204', '10', '4', '1', '7', '6', '10', '100000', '10', '50000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890217', '11', '3', '22', '8', '1', '11', '100000', '1', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181102', '1', '1', '2', '9', '3', '12', '100000', '11', '78000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890213', '3', '2', '1', '8', '5', '13', '250000000', '1', '1000000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19930324', '9', '15', '1', '9', '2', '14', '250000000', '2', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181102', '4', '3', '21', '8', '8', '15', '1590000', '4', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890405', '1', '2', '10', '10', '3', '16', '1590000', '2', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20010307', '12', '15', '2', '9', '4', '17', '700000', '5', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19930309', '11', '1', '20', '11', '7', '18', '1590000', '6', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181102', '8', '2', '1', '7', '9', '19', '50000', '7', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19930412', '1', '19', '10', '12', '2', '20', '1590000', '1', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20161204', '5', '15', '19', '8', '5', '21', '5050000', '8', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890405', '21', '20', '1', '9', '4', '22', '1590000', '5', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20190920', '6', '2', '2', '13', '1', '23', '50000', '9', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20030914', '7', '18', '9', '6', '3', '24', '5050000', '11', '150000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19940503', '1', '2', '18', '7', '7', '25', '2050000', '10', '150000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20011514', '20', '2', '1', '1', '9', '26', '5050000', '11', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890531', '5', '5', '1', '8', '2', '27', '50000', '17', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20090617', '3', '17', '9', '4', '4', '28', '5050000', '12', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890103', '4', '16', '17', '9', '6', '29', '5050000', '15', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20030914', '2', '1', '2', '5', '8', '30', '50000', '14', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20190920', '19', '3', '12', '9', '9', '31', '900000', '21', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20010907', '11', '3', '2', '7', '7', '32', '50000', '1', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890621', '11', '15', '1', '3', '3', '33', '900000', '31', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20090720', '18', '13', '16', '9', '2', '34', '6000000', '3', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20010907', '17', '15', '1', '4', '1', '35', '50000', '1', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20030914', '2', '14', '1', '8', '4', '36', '900000', '21', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '15', '7', '40', '5', '3', '37', '50000', '3', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19990721', '16', '3', '2', '5', '2', '38', '900000', '5', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20161204', '14', '15', '15', '6', '5', '39', '900000', '5', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19980723', '15', '7', '10', '7', '7', '40', '50000', '9', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20161204', '14', '15', '3', '4', '3', '41', '205000', '32', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20030914', '2', '6', '2', '1', '1', '42', '50000', '8', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '13', '19', '1', '9', '2', '43', '153000', '2', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20161204', '12', '4', '4', '6', '5', '44', '50000', '11', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19890805', '11', '15', '14', '3', '6', '45', '205000', '9', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20161204', '2', '20', '1', '7', '9', '46', '50000', '7', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '3', '1', '1', '8', '4', '47', '702000', '7', '150000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20000912', '2', '15', '5', '9', '2', '48', '50000', '21', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181113', '3', '9', '3', '6', '3', '49', '205000', '17', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20190908', '3', '5', '3', '1', '1', '50', '205000', '18', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181113', '4', '14', '13', '7', '2', '51', '120500', '6', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20010907', '4', '15', '14', '9', '7', '52', '205000', '5', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20010907', '5', '11', '6', '8', '9', '53', '205000', '19', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181113', '5', '8', '25', '2', '8', '54', '205000', '21', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20190920', '5', '10', '21', '9', '4', '55', '50000000', '5', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '11', '6', '12', '8', '3', '56', '205000', '4', '750000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19891009', '11', '07', '7', '9', '1', '57', '50000000', '24', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '11', '11', '24', '9', '2', '58', '3000000', '2', '89000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('19901112', '11', '6', '21', '6', '9', '59', '3000000', '1', '150000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '5', '12', '8', '13', '5', '60', '300000', '25', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20010907', '11', '8', '11', '8', '1', '61', '50000000', '3', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20181112', '9', '15', '20', '4', '10', '62', '3000000', '1', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '10', '13', '9', '11', '3', '63', '3000000', '2', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20030914', '7', '7', '11', '5', '1', '64', '190000', '27', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20191022', '6', '15', '34', '1', '2', '65', '50000000', '4', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20171204', '11', '15', '32', '13', '3', '66', '3000000', '6', '69000')

INSERT INTO dbo.FactTransaction (date_key, account_key, customer_key, teller_key, service_key, report_key, transaction_key, amount_of_saldo, number_of_transaction, average_monthly_balance) VALUES
('20030914', '8', '7', '10', '12', '4', '67', '50000000', '29', '150000')

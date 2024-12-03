--Create database TMG
USE MASTER
GO

IF EXISTS (SELECT NAME FROM sys.databases WHERE NAME='TMG')
DROP DATABASE TMG
GO

CREATE DATABASE TMG
GO 
 
USE TMG
GO

--Borrower:

CREATE TABLE [dbo].[Borrower_details](
[SSN] [int] PRIMARY KEY NOT NULL,
[Borrower FirstName] [varchar](50) NULL,
[Borrower LastName] [varchar](50) NULL,
[Borrower Email] [varchar](50) NULL,
[Home Phone] [varchar](50) NULL,
[Cell Phone] [varchar](50) NULL,
[Marital Status] [varchar](50) NULL,
[Date of Birth] [datetime] NULL,
[Current Street Address] [varchar](50) NULL,
[City] [varchar](50) NULL,
[State] [varchar](50) NULL,
[Zip] [varchar](50) NULL,
[YearsAtThisAddress] [int] NULL,
[Sex] [varchar](50) NULL,
[Ethnicity] [varchar](50) NULL,
[Race] [varchar](50) NULL,
[Co-Borrower FirstName] [varchar](50) NULL,
[Co-Borrower LastName] [varchar](50) NULL,
[Co-Borrower SSN] int NULL

)

ALTER TABLE [dbo].[Borrower_details] -- Please add a date in the last one year
ADD ApplDate DATE
 

 
INSERT INTO Borrower_details
VALUES (234567891,'Martha','Bekele','mbekele@gmail.com','617-735-0243','240-779-5938','Married','1985-06-04','9202 muskogee pl','Adelphi','MD','20783',4,'M','Non hispanic','African','Tigist','Getachew', 346789213,'01-03-2020'),
       (123456701,'Moti','Geleta','mgeeta@gmail.com','555-735-0243','202-779-5938','Single','1980-06-04','1111 dgkg rd','Adelphi','MD','11783',8,'M','Non hispanic','African',Null,Null,Null,'02-04-2020')

INSERT INTO Borrower_details VALUES
(070234444, 'Robert', 'Iversen', 'RIversen@yahoo.com', '(707) 890-3212','(407) 248-8286', 'Married', '1971-10-07', '1293 Duncan Avenue','Rockville', 'MD','20871', 2, 'M', 'Not Hispanic Or Latino', 'White', 'Abebe', 'Abegaz', 123333456,'03-13-2020'),
(123233456, 'Rosie', 'Seiler', 'RSeiler@yahoo.com', '(332) 890-3212','(707) 890-3213', 'Divorced', '1975-03-07', '123 Ky St', 'Bethesda', 'MD','20871', 5, 'M', 'Hispanic Or Latino', 'White', 'Zinaw', 'Chane', 060232222,'04-18-2020' ),
(080235555, 'Neftalem', 'Medhanie', 'Neftalem54@gmail.com', '(301) 890-3201', '(101) 890-3213', 'Married', '1980-09-07', '4080 Marshall Street','Washington', 'DC','20021', 7, 'M', 'Not Hispanic Or Latino', 'White', 'Teka', 'Eshetu', 123233433,'05-21-2020'),
(050231111, 'Mark', 'Lewis', 'ps@yahoo.com', '(301) 890-3202', '(101) 890-3214', 'Divorced', '1974-07-01', '786 Eagle Lane', 'Columbia', 'MD','20990', 7, 'M', 'Not Hispanic Or Latino', 'Alaska Native', 'Abinet', 'Chala', 323233456,'06-13-2020'),
(060-23-2222, 'Dennis', 'Kumar', 'Dennis@gmail.com', '(301) 890-3203', '(101) 890-3215', 'Married', '1972-09-12', '1331 Edsel Road', 'Woodbridge', 'VA','20321', 7, 'F', 'Not Hispanic Or Latino', 'White', 'chaltu', 'Teka', 123233356,'07-25-2020'),
(093213456, 'Sarah', 'Kathrin', 'Sarah387@yahoo.com', '(301) 890-3204', '(101) 890-3216', 'Married', '1983-10-03', '5 Poe Lane', 'Washington', 'DC','20021', 7, 'F', 'Not Hispanic Or Latino', 'White', 'Sayat', 'Fetene', 133233456,'08-13-2020'),
(222239999, 'Dennis', 'Porter', 'Porter@gmail.com', '(301) 890-3205', '(101) 890-3217', 'Single', '1988-03-18', '1378 Gateway Road', 'Alexandia', 'VA','20321', 5, 'M', 'Hispanic Or Latino', 'African American', 'Kero', 'Ayele', 123233456,'09-16-2020'),
(090217777, 'Liang', 'Xu', 'Liang123@gmail.com', '(301) 890-3206', '(101) 890-3218', 'Widowed', '1986-11-03', '825 Victoria Street', 'Columbia', 'MD','20990', 4, 'M','Hispanic Or Latino', 'White', 'Balcha', 'Adugna', 123233556,'10-11-2020'),
(111238888, 'Gang', 'Manore', 'Gang47@yahoo.com', '(301) 890-3207', '(101) 890-3219', 'Married', '1987-01-01', '1389 Finwood Road', 'Germantown', 'MD','20871', 6, 'M', 'Not Hispanic Or Latino', 'White', 'Balcha', 'Adugna', 123253456,'11-12-2020'),
(903239056, 'Nahom', 'Price', 'NahomP@yahoo.com', '(301) 890-3208', '(101) 890-3222', 'Single', '1983-09-01', '3520 Nash Street', 'Washington', 'DC','20021', 2, 'M', 'Not Hispanic Or Latino', 'White', 'Balcha', 'Adugna', 125233456,'12-08-2020'),
(999233356, 'Katherine', 'Seiler', 'Seiler1994@gmail.com', '(301) 890-3209', '(101) 890-3232', 'Married', '1989-09-07', '4656 Byrd Lane', 'Arlington', 'VA','20321', 5, 'M','Not Hispanic Or Latino', 'African American', 'Balcha', 'Adugna', 153233456,'01-21-2021'),
(060213333, 'Jessamine', 'Kepa', 'Kepahu@yahoo.com', '(301) 890-3211', '(101) 890-3242', 'Divorced', '1973-10-09', '3583 Stadium Drive', 'Beltsville', 'MD','20990', 5, 'M','Not Hispanic Or Latino', 'White', 'Balcha', 'Adugna', 523233456,'02-13-2021'),
(555233344, 'Emmanuel', 'Kumar', 'Emmanuel45@yahoo.com', '(301) 890-3212', '(101) 890-3252', 'Widowed', '1982-11-28', '1337 Havanna Street', 'Clarksburg', 'MD','20871', 4, 'F', 'Hispanic Or Latino', 'African American', 'Almaz', 'Cuchu', 123234456,'03-10-2021'),
(908236666, 'Peter', 'Rasmussen', 'Petergud@gmail.com', '(301) 890-3220', '(101) 890-3262', 'Single', '1985-09-15', '2780 Irish Lane', 'Washington', 'DC','20021', 7, 'M', 'Hispanic Or Latino', 'African American', 'Getu', 'Adugna', 123243456,'04-02-2021'),
(908233432, 'Ruth', 'Kumar', 'Ruth123@gmail.com', '(301) 890-3230', '(101) 890-3272', 'Married', '1990-09-07', '3048 James Avenue', 'Fairfax', 'VA','20321', 7, 'M','Not Hispanic Or Latino', 'White', 'Lakew', 'Derese', 123433456,'05-27-2021'),
(444211122, 'Andrew', 'Henriksen', 'Andrew88@yahoo.com', '(301) 890-3240', '(101) 890-3282', 'Married', '1990-11-24', '714 Chicago Avenue', 'Laurel', 'MD','20990', 2, 'M', 'Hispanic Or Latino', 'White', 'Balcha', 'Bubu', 124233456,'06-22-2021'),
(777215566, 'Enza', 'Manore', 'Enzaman23@yahoo.com', '(301) 890-3250', '(101) 890-3292', 'Married', '1983-10-25', '4200 Colony Rd', 'Orlando', 'FL', '32839', 6, 'M','Not Hispanic Or Latino', 'Pacific Islander', 'Kusa', 'Manikusa', 143233456,'07-27-2021'),
(666234455, 'Stefan', 'Porter', 'Stefan55@yahoo.com', '(301) 890-3260', '(101) 890-3202', 'Married', '1990-09-30', '3000 East 1st Ave', 'Denver', 'CO', '80206', 3, 'M','Not Hispanic Or Latino', 'White', 'Kasa', 'Feje', 423233456,'08-06-2021'),
(444232233,'Ermias', 'Manore', 'Ermias1295@yahoo.com', '(301) 890-3270', '(101) 890-3012', 'Divorced', '1990-09-01', '6635 Las Vegas Blvd', 'Las Vegas', 'NV', '89119', 2, 'M','Hispanic Or Latino', 'Native Hawaiian', 'Gared', 'Tufa', 123263456,'09-21-2021'),
(888236677, 'Christopher', 'Kathrin', 'cristoff12@gmail.com', '(301) 890-3280', '(101) 890-3012', 'Single', '1990-09-01', '150 Greenview St', 'New York', 'NY', '10956', 6, 'M','Not Hispanic Or Latino', 'White', 'Haile', 'Mamo', 623233456,'10-12-2021')



--Financial:

CREATE TABLE [dbo].[Financial_details](
[SSN] [int] FOREIGN KEY REFERENCES [Borrower_details]([SSN]) NOT NULL,  
[MonthlyIncome] [varchar](50) NULL,
[Bonuses] [varchar](50) NULL,
[Commission] [varchar](50) NULL,
[OtherIncome] [varchar](50) NULL,
[Rent or Own] [varchar](50) NULL,
[Checking] [int] NULL,
[Savings] [int] NULL,
[RetirementFund] [int] NULL,
[MutualFund] [int] NULL
)

ALTER TABLE [dbo].[Financial_details]
ALTER COLUMN MonthlyIncome DECIMAL(10,2)

SELECT *
FROM Financial_details


INSERT INTO Financial_details
VALUES(234567891,'9000','1000','500','1500','Rent',5000,6000,100000,50000),
      (123456701,'5600','1000','500','1000','Own', 5000,6000,100000,50000)

INSERT INTO Financial_details Values
(070234444, '7000','1000','2500','1500','Own',5500,6100,120000,80000),
(123233456, '5000','2000','1500','1000','Rent',4500,5100,10000,980000),
(080235555, '9000','3000','2500','2000','Own',6000,8000,140000,100000),
(050231111, '6000','1500','3000','4000','Own',7500,9100,180000,200000),
(060-23-2222, '12000','3000','2500','4000','Own',10000,20000,200000,100000),
(093213456, '10000','3500','2000','2000','Rent',15000,25000,200000,120000)   ,
(222239999, '6500','1000','2500','2000','Rent',5000,6000,100000,80000),
(090217777, '7000','3000','2500','1000','Own',7000,10000,140000,190000),
(111238888, '4000','1000','1000','1000','Rent',4000,9000,120000,70000),
(903239056, '13000','3000','4000','2500','Rent',20000,50000,200000,180000)   ,
(999233356, '8000','2550','1550','3000','Own',8000,10000,140000,100000),
(060213333, '5500','1500','2500','2000','Rent',8500,12000,170000,1200000),
(555233344, '11000','3000','2000','3000','Own',19000,25000,100000,80000),
(908236666, '20000','70000','4500','5500','Own',80000,120000,250000,190000),
(908233432, '2000','100','200','500','Rent',4000,6000,80000,60000),
(444211122, '18000','3000','4500','2000','Own',30000,40000,17000,100000),
(777215566, '10000','4500','1500','2500','Rent',8000,17000,140000,70000),
(666234455, '7500','2000','1500','1000','Rent',5500,6100,100000,60000),
(444232233, '6000','2220','2300','1550','Own',9000,16000,135000,95000),
(888236677, '14000','4440','3250','2550','Own',23000,43000,190000,135000)



DECLARE @MonthlyIncome VARCHAR(50);
SELECT CAST(@MonthlyIncome AS DECIMAL(10,2))
AS MonthlyIncome;

SELECT * FROM Financial_details

--Property:

CREATE TABLE [dbo].[Property_details](
[Property_ID] [int] PRIMARY KEY NOT NULL,
[SSN] [int] FOREIGN KEY REFERENCES [Borrower_details]([SSN]) NOT NULL,
[Property Usage] [varchar](50) NULL,
[Property City] [varchar](50) NULL,
[Property State] [varchar](50) NULL,
[Property Zip] [int] NULL,
[RealEstateAgentName] [varchar](50) NULL,
[RealEstateAgentPhone] [varchar](50) NULL,
[RealEstateAgentEmail] [varchar](50) NULL

)



INSERT INTO Property_details

VALUES (234,234567891,Null,'Washington','DC',20011,'Marcos','2340987634','mpolo@yahoo.com'),
       (235,123456701,Null,'Hyatsville','MD',20783,'Teressa','9871234567','tbaga@gmail.com')

INSERT INTO Property_details Values
(1,070234444, 'SecondHome', 'Little Rock','AR',722017,'Ryan Mckevit','789-098-4567','rmckevit@longandfoster.com'),
(2,123233456,'Investment', 'Phoenix','AZ',85001,'Gelila Kibru','788-098-9567','gelila@longandfoster.com'),
(3,080235555,'Primary Residence', 'Orlando','FL',32801,'Nebyu Hailu','249-098-4567','nebyu@redfin.com'),
(4,050231111,'SecondHome', 'Honolulu','HI',96801,'Naomi Tesfaye','202-098-4567','naomi@longandfoster.com'),
(5,060-23-2222,'Uber', 'Daven Port','IA',52801,'Mikah Yishaac','670-098-4567','mikah@spectorgroup.com'),
(6,093213456,'SecondHome', 'Freeport','ME',04032,'Lelisse Girum','312-098-4567','lelisse@century21.com'),
(7,222239999,'Personal Use', 'Biloxi','MS',39530,'Tatiana Tomson','567-098-4567','tatiana@longandfoster.com'),
(8,090217777,'SecondHome', 'Ashland','NH',03217,'William Willson','777-098-4567','wawa@century21.com'),
(9,111238888,'Investment', 'Portland','OR',97201,'Mimi Yemane','119-444-4567','mimicad@redfin.com'),
(10,903239056,'Uber', 'New York','NY',10001,'Sarah Nega','202-811-4507','saranega@longandfoster.com'),
(11,999233356,'SecondHome', 'Tulsa','OK',74101,'Amin Nasrin','789-000-4567','amin@redfin.com'),
(12,060213333,'Personal Use', 'Camden','NC',29020,'Janice Kinrad','301-098-2407','janice@mydmvteam.com'),
(13,555233344,'Uber', 'Logan','UT',84321,'Hamed Motamedi','904-099-4967','hamed@mydmvteam.com'),
(14,908236666,'SecondHome', 'Pinedale','WY',82941,'Fang Lu','703-098-3421','fang@fairfaxrealty.com'),
(15,908233432,'SecondHome', 'Morgan Town','WV',25813,'Debbie Cook','700-178-4777','debbie@longandfoster.com'),
(16,444211122,'Investment', 'Milwaukee','WI',53201,'Melihik Solomon','898-200-9236','mcsymregn@century21.com'),
(17,777215566,'Personal Use', 'Silver Spring','MD',20902,'Fantahun Zeike','129-128-1267','fantahun@fairfaxrealty.com'),
(18,666234455,'Uber', 'Rockville','MD',20910,'Gary Gill','889-098-8888','Gary@redfin.com'),
(19,444232233,'SecondHome', 'Georgetown','DC',20000,'Damian Quavo','100-100-1007','damian@longandfoster.com'),
(20,888236677,'Investment', 'Wasington','DC',20010,'Wubet Yewodes','123-555-5557','wubet@mydmvteam.com')

--Loan:

CREATE TABLE [dbo].[Loan_details](
[Loan_ID] [int] PRIMARY KEY NOT NULL,
[SSN] [int] FOREIGN KEY REFERENCES [Borrower_details]([SSN]) NOT NULL,
[Property_ID] [int] FOREIGN KEY REFERENCES [Property_details]([Property_ID]) NOT NULL,
[Purpose of Loan] [varchar](50) NULL,
[LoanAmount] [int] NULL,
[Purchase Price] [int] NULL,
[CreditCardAuthorization] [varchar](50) NULL,
[Number of Units] [int] NULL,
[Refferal] [varchar](50) NULL,
[Co-Borrower SSN] [int] NULL
)

ALTER TABLE [dbo].[Loan_details]  -- Please add a date in the last one year. Make sure that the dates are some in the last one week,
-- some in the last one month and rest in one year period
ADD LoanDate DATE


INSERT INTO Loan_details
VALUES (50,234567891,234,'House Purchase',230000,10000,'Agree',1,Null,872345671,'11-03-2021'),
	   (51,123456701,235,'Marriage preparation',85000,10000,'Agree',2,Null,Null,'10-03-2021')

INSERT INTO Loan_details Values
(30,070234444,1,'House Purchase',45000,15000,'Agree',1,NULL,123333456,'11-10-2021'),
(31,123233456,2,'Car Purchase',500000,10000,'Not Agree',1,NULL,06023222,'11-22-2020'),
(32,080235555,3,'Renovation',250000,20000,'Agree',1,NULL,123233433,'09-27-2020'),
(33,050231111,4,'Cash-OutRefi',150000,20000,'Agree',1,NULL,323233456,'08-09-2021'),
(34,060-23-2222,5,'Cash-OutRefi',350500,25000,'Agree',1,NULL,123233356,'08-23-2021'),
(35,093213456,6,'House Purchase',15000,15000,'Agree',1,NULL,133233456,'08-10-2021'),
(36,222239999,7,'Car Purchase',480000,35000,'Not Agree',1,NULL,123233456,'07-05-2021'),
(37,090217777,8,'Renovation',250000,20000,'Agree',1,NULL,123233556,'07-12-2021'),
(38,111238888,9,'Cash-OutRefi',150000,20000,'Agree',1,NULL,123253456,'07-25-2021'),
(39,903239056,10,'Cash-OutRefi',350500,25000,'Agree',1,NULL,125233456,'10-06-2021'),
(40,999233356,11,'House Purchase',45000,15000,'Agree',1,NULL,153233456,'11-16-2021'),
(41,060213333,12,'Car Purchase',500000,10000,'Not Agree',1,NULL,523233456,'11-26-2021'),
(42,555233344,13,'Renovation',250000,20000,'Agree',1,NULL,123234456,'12-02-2021'),
(43,908236666,14,'Cash-OutRefi',150000,20000,'Agree',1,NULL,123243456,'12-19-2021'),
(44,908233432,15,'Cash-OutRefi',350500,25000,'Agree',1,NULL,123433456,'01-24-2021'),
(45,444211122,16,'House Purchase',45000,15000,'Agree',1,NULL,124233456,'12-07-2021'),
(46,777215566,17,'Car Purchase',500000,10000,'Not Agree',1,NULL,143233456,'12-30-2021'),
(47,666234455,18,'Renovation',250000,20000,'Agree',1,NULL,423233456,'12-30-2021'),
(48,444232233,19,'Cash-OutRefi',150000,20000,'Agree',1,NULL,123263456,'12-30-2021'),
(49,888236677,20,'Cash-OutRefi',350500,25000,'Agree',1,NULL,623233456,'12-30-2021')

select * from [dbo].[Loan_details]
select * from [dbo].[Borrower_details]
select * from [dbo].[Financial_details]
select * from [dbo].[Property_details]

-- 
-- let's retrieve all loan applications from loan_details table

select * from Loan_details

-- let's count total loan applications by loan_ID

select Loan_ID, COUNT(*) AS total_applications
from Loan_details
GROUP BY Loan_ID

--let's count total loan applications by purpose of loan

select [Purpose of Loan], COUNT(*) AS total_applications
from Loan_details
GROUP BY [Purpose of Loan]

--let's calculate average loan amount

select AVG(LoanAmount) AS Average_loan_amount
from Loan_details


--select
--   CASE
--      WHEN MonthlyIncome < 5000 THEN 'Low Income'
--	  WHEN MonthlyIncome BETWEEN 5000 AND 10000 THEN 'Middle Income'
--	  ELSE 'High Income'
--	END AS income_range
--	AVG(LoanAmount) AS Average_loan_amount
--from Financial_details
--GROUP BY income_range

--joining loan_details and borrower_details table

select B.[Borrower FirstName], 
       B.[Borrower LastName], 
	   B.SSN, B.City, 
	   B.[Co-Borrower FirstName], 
	   B.[Co-Borrower LastName], 
	   LO.Loan_ID, 
	   LO.LoanAmount, 
	   LO.SSN
from Borrower_details B JOIN Loan_details LO ON B.SSN = LO.SSN

--joining loan_details and Property_detail table

select PR.SSN, 
       PR.[Property Usage], 
	   PR.[Property State], 
	   PR.[Property City], 
	   L.Loan_ID, 
	   L.LoanAmount, 
       L.SSN
from Property_details PR JOIN Loan_details L ON PR.SSN = L.SSN

-- Let's see details about primary applicants with their co-applicants
 
select B.[Borrower LastName] AS BorrowerName, 
       C.[Co-Borrower LastName] AS CoBorrowerName
from Borrower_details B 
     LEFT JOIN Borrower_details C ON 
	 B.City = C.City
  
--lets see the finincial details of the borrower using left joins to get all the matching records.

select B.[Borrower FirstName], 
       B.[Borrower LastName], 
	   B.[Borrower Email], 
	   B.SSN, 
	   FD.MonthlyIncome, 
	   FD.Commission, 
	   FD.Bonuses, 
	   FD.OtherIncome
from Borrower_details B LEFT JOIN Financial_details FD ON B.SSN = FD.SSN 
 
 SELECT * FROM dbo.Borrower_details

 --Let's create stored procedure with and without parameter

 GO

CREATE PROCEDURE usp_CreateLoanApplication
    @SSN INT,
    @BorrowerFirstName VARCHAR(50),
    @BorrowerLastName VARCHAR(50),
    @CoBorrowerFirstName VARCHAR(50),
    @CoBorrowerLastName VARCHAR(50),
    @CoBorrowerSSN INT
AS
BEGIN
        INSERT INTO Borrower_details (
            SSN,
            BorrowerFirstName,
            BorrowerLastName,
            CoBorrowerFirstName,
            CoBorrowerLastName,
            CoBorrowerSSN)
VALUES(
            @SSN,
            @BorrowerFirstName,
            @BorrowerLastName,
            @CoBorrowerFirstName,
            @CoBorrowerLastName,
            @CoBorrowerSSN
            )
END
GO

EXEC usp_CreateLoanApplication 50231111, 'Mark', 'Lewis', 'Abinet', 'Chala', 323233456

GO


CREATE PROCEDURE usp_updatePropertyDetails
@RealEstateAgentName VARCHAR(50)
AS
BEGIN
            UPDATE Property_details
			SET RealEstateAgentName = 'Abeba'
			WHERE Property_ID = 14
END
GO

EXEC usp_updatePropertyDetails 14


---- Let's create some VIEWS 

GO
CREATE VIEW VW_LoanApplications
AS
    SELECT Loan_ID, 
	       SSN AS Borrower_SSN, 
	       LoanAmount, 
	       LoanDate
	FROM Loan_details	
GO

SELECT * from VW_LoanApplications

GO

CREATE VIEW VW_LoanApplicationsWithBorrowerInfo
AS
    SELECT ApplDate, 
	       SSN, 
		   City, 
		   [State], 
		   YearsAtThisAddress
	FROM Borrower_details 
	WHERE ApplDate BETWEEN '2020-01-03' AND '2021-09-21'
GO

SELECT * 
FROM VW_LoanApplicationsWithBorrowerInfo

GO

CREATE VIEW VW_LoanApplicationsByAmount
AS
    SELECT *
	FROM Loan_details
	WHERE LoanAmount >= '20000'

GO

SELECT * 
FROM VW_LoanApplicationsByAmount














































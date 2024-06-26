#Final script to create ur database

CREATE TABLE Owner (
  OwnerID      CHAR(4) PRIMARY KEY,
  FamilyName        VARCHAR(20),
  GivenName        VARCHAR(10),
  Street  VARCHAR(20),  
  City      VARCHAR(32),
  State        CHAR(3),
  Postcode      CHAR(4), 
  TelephoneNumber      CHAR(10)
)Engine = InnoDB;

CREATE TABLE Property (
  BuildingNumber   CHAR(3) PRIMARY KEY,
  Address      VARCHAR(30),
  Value         VARCHAR(10),
  OwnerID      CHAR(4),
  FOREIGN KEY (OwnerID)  REFERENCES Owner(OwnerID)  
)Engine = InnoDB;


CREATE TABLE Tenant (
  TenantID      CHAR(4) PRIMARY KEY,
  FamilyName        VARCHAR(20),
  GivenName        VARCHAR(20),
  Street     VARCHAR(10),
  City          VARCHAR(10),
  State          CHAR(3),
  Postcode       CHAR(4),
  TelephoneNumber     CHAR(10),
  Email          VARCHAR(30),
  BuildingNumber   CHAR(3),
  FOREIGN KEY (BuildingNumber) REFERENCES Property(BuildingNumber)
)Engine = InnoDB;


CREATE TABLE Damage (
  DamageID     CHAR(4) PRIMARY KEY,
  Date        DATE,
  TypeOfDamage        VARCHAR(10),
  RepairCost        VARCHAR(14),
  BuildingNumber   CHAR(3),
  TenantID      CHAR(4),
  FOREIGN KEY (BuildingNumber) REFERENCES Property(BuildingNumber),
  FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID)
)Engine = InnoDB;



CREATE TABLE Maintenance (
  MaintenanceID      CHAR(4) PRIMARY KEY,
  Date        DATE,
  TypeOfMaintenance        VARCHAR(10),
  Cost      VARCHAR(32),
  BuildingNumber   CHAR(3),
  OwnerID      CHAR(4),
  FOREIGN KEY (BuildingNumber) REFERENCES Property(BuildingNumber),
  FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID)
)Engine = InnoDB;



CREATE TABLE Rent (
   BuildingNumber   CHAR(3),
  TenantID      CHAR(4),
  LeasePeriod     VARCHAR(15), 
  Bond   VARCHAR(10),
  PRIMARY KEY (BuildingNumber, TenantID),
  FOREIGN KEY (BuildingNumber) REFERENCES Property(BuildingNumber),
  FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID)
)Engine = InnoDB;


CREATE TABLE Payment (
  PaymentID     CHAR(5),
  WeeklyRentalPayment    VARCHAR(10), 
  Bond      VARCHAR(10),
  DamageBills   VARCHAR(10),
  Date      DATE,
  TypeOfAccount      VARCHAR(10),
  Amount      VARCHAR(10),
  BuildingNumber   CHAR(3),
  TenantID      CHAR(4),
  FOREIGN KEY (TenantID) REFERENCES Tenant(TenantID),
  FOREIGN KEY (BuildingNumber) REFERENCES Property(BuildingNumber)
)Engine = InnoDB;


  # INSERTING ROWS TO Owner TABLE

INSERT INTO Owner VALUES 
    ('OW10', 'Patel', 'Manojkumar', '76 Singing St', 'Parramatta', 'NSW', '2765', '0404786322' );

INSERT INTO Owner VALUES 
   ('OW11', 'Adrah', 'Seedorf', '14 Thurston St', 'Melborune', 'VIC', '1225', '0304507698');
   
INSERT INTO Owner VALUES 
   ('OW12', 'Abdul', 'Mutalib', '21 Hombush Dr', 'Kumasi', 'ATO', '2389', '0609993885');
   
INSERT INTO Owner VALUES 
   ('OW13', 'Syed-Shah', 'Hassan', '07 University Av', 'Parramatta', 'TFN', '3500', '0206734657');

INSERT INTO Owner VALUES 
   ('OW14', 'Karikari', 'Emmanuel', '12 Concord Rd', 'Las Vegas', 'BBN', '4900', '0204789098');
   
INSERT INTO Owner VALUES 
   ('OW15', 'Lok-Mun', 'Tan', '98 Coconut St', 'Paris', 'NCA', '2570', '0424376589');
   
INSERT INTO Owner VALUES 
   ('OW16', 'Latha', 'Darshan', '35 Country-Side Rd', 'Mumbai', 'NSW', '1769', '0404678980');

INSERT INTO Owner VALUES
   ('OW17', 'Vouching', 'Cheav', '08 Table-Top St', 'Los Angeles', 'NYC', '2003', '0304778902');

INSERT INTO Owner VALUES
    ('OW18', 'Amaning', 'Linda', '16 Jordan Rd', 'Moscow', 'MSC', '1995', '0972435909');

INSERT INTO Owner VALUES 
    ('OW19', 'Alcantara', 'Thiago', '23 Summerville St', 'Michigan', 'TFN', '1908', '0204508976');





# INSERTING ROWS TO Property TABLE

INSERT INTO Property VALUES 
   ('P01', '18 Coreen Av, Los Angeles', '$10000000', 'OW11');

INSERT INTO Property VALUES
   ('P02', '56 Clover Dr, Accra', '$480470',  'OW12');

INSERT INTO Property VALUES
   ('P03', '163 Main St, Sydney', '$300000', 'OW13');

INSERT INTO Property VALUES 
   ('P04', '32 Manse Rd, Sydney', '$120000', 'OW14');

INSERT INTO Property VALUES 
   ('P05', '22 Deer Rd, London', '$230000', 'OW15');

INSERT INTO Property VALUES 
    ('P06', '44 Abondoned St, Munich', '$2500000', 'OW16');

INSERT INTO Property VALUES
   ('P07', '16 Argyll St, Los Angeles', '$399000',  'OW17');

INSERT INTO Property VALUES 
    ('P08', '98/5-9 Thornton Rd, Paris', '$760000', 'OW18');

INSERT INTO Property VALUES 
    ('P09', '7 Sterille Dr, Wahington', '$890000', 'OW19');

INSERT INTO Property VALUES
    ('P10', '22 Hillcrest Av, Melbourne', '$900000', 'OW10');







# INSERTING ROWS TO Tenant TABLE

INSERT INTO Tenant VALUES 
    ('TN70', 'Mensah', 'Kofi', '56 Clover Dr', 'Accra', 'GHA', '6753', '0200319878', 'kofiadumensah@gmail.com', 'P02');

INSERT INTO Tenant VALUES 
   ('TN71', 'Brown', 'John','163 Main St', 'Sydney', 'LDN', '2001', '0340782345', 'brownJohn@gmail.com', 'P03');

INSERT INTO Tenant VALUES 
   ('TN72', 'Prajapatii', 'Kritika', '16 Argyll St', 'Los Angeles', 'LAG', '3764', '0389933399', 'ktkapjp32@gmail.com', 'P07');
   
INSERT INTO Tenant VALUES 
   ('TN73', 'Singh', 'Andrew', '98/5-9 Thornton Rd', 'Paris', 'PRS', '4099', '03671265789', 'andrewsingh77@gmail.com', 'P08');

INSERT INTO Tenant VALUES 
   ('TN74', 'Leekah', 'Divya', '32 Manse Rd', 'Sydney', 'NSW', '2388', '0902002004', 'divyaleekah080@gmail.com', 'P04');

INSERT INTO Tenant VALUES
   ('TN75', 'Paddy', 'Simons', '56 Clover Dr', 'Accra', 'ANT', '4377', '0808437865', 'notmesimons@gmail.com', 'P10');

INSERT INTO Tenant VALUES
   ('TN76', 'Alvaro', 'Alcantara', '22 Hillcrest Av', 'Melbourne', 'VIC', '1223', '0404652178', '99alvaro@gmail.com', 'P05');

INSERT INTO Tenant VALUES 
   ('TN77', 'Preab', 'Kanita', '18 Coreen Av', 'Los Angeles', 'NYC', '1234', '0204003005', 'preabkt00@gmail.com', 'P01');

INSERT INTO Tenant VALUES 
    ('TN78', 'Ronaldo', 'Cristiano', '98/5-9 Thornton Rd', 'Paris', 'PRS', '4099', '0909653782', 'cr7@gmail.com', 'P08');

INSERT INTO Tenant VALUES 
    ('TN79', 'Messi', 'Leo', '7 Sterille Dr', 'Washington', 'WDC', '0102', '4378338787', 'leomessi@gmail.com', 'P09');

INSERT INTO Tenant VALUES 
    ('TN80', 'Guransh', 'Striker', '44 Abondoned St', 'Munich', 'GRM', '9090', '0622097711', 'strikerG99@gmail.com', 'P06');






# INSERTING ROWS TO Damage

INSERT INTO Damage VALUES
   ('DM90', '2022-09-27', 'ceiling', '$380', 'P09', 'TN79');

INSERT INTO Damage VALUES
   ('DM91', '2023-02-01', 'tiles', '$175', 'P05', 'TN76');

INSERT INTO Damage VALUES
   ('DM92', '2023-11-30', 'fan', '$100', 'P03', 'TN71');

INSERT INTO Damage VALUES
   ('DM93', '2022-05-21', 'door-frame', '$200', 'P07', 'TN74');

INSERT INTO Damage VALUES 
   ('DM94', '2023-07-27', 'heater', '$450', 'P10', 'TN75');

INSERT INTO Damage VALUES 
   ('DM95', '2020-09-21', 'door-knob', '$90', 'P01', 'TN77');

INSERT INTO Damage VALUES 
    ('DM96', '2021-03-24', 'air conditioner', '$400', 'P02', 'TN70');

INSERT INTO Damage VALUES
    ('DM97', '2022-09-10', 'toilets', '$200', 'P04', 'TN74');

INSERT INTO Damage VALUES 
    ('DM98', '2020-12-09', 'sink', '$150', 'P06', 'TN80');

INSERT INTO Damage VALUES
    ('DM99', '2023-11-23', 'flower-pot', '$98', 'P08', 'TN78');
   



# INSERTING ROWS TO Maintenance TABLE

INSERT INTO Maintenance VALUES
   ('MN60', '2022-12-23', 'Electricals', '200', 'P02', 'OW12');

INSERT INTO Maintenance VALUES
   ('MN61', '2023-04-03', 'Garrage', '500', 'P05', 'OW15');

INSERT INTO Maintenance VALUES
   ('MN62', '2022-08-29', 'Gardern', '210', 'P03', 'OW13');

INSERT INTO Maintenance VALUES
   ('MN63', '2023-09-12', 'Kitchen', '320', 'P10', 'OW10');

INSERT INTO Maintenance VALUES
   ('MN64', '2022-01-01', 'Electricals', '90', 'P08', 'OW18');

INSERT INTO Maintenance VALUES
   ('MN65', '2023-01-31', 'Kitchen', '406', 'P04', 'OW14');

INSERT INTO Maintenance VALUES
   ('MN66', '2022-01-01', 'Electricals', '90', 'P07', 'OW17');

INSERT INTO Maintenance VALUES
   ('MN67', '2023-01-31', 'Kitchen', '406', 'P04', 'OW14');

INSERT INTO Maintenance VALUES 
   ('MN68', '2021-08-01', 'Bathroom', '590', 'P01', 'OW11');

INSERT INTO Maintenance VALUES 
    ('MN69', '2020-09-21', 'Roofing', '700', 'P06', 'OW16');

INSERT INTO Maintenance VALUES 
    ('MN70', '2020-12-25', 'Tiles', '300', 'P09', 'OW19');







# INSERTING ROWS TO Rent TABLE

INSERT INTO Rent VALUES 
   ('P01', 'TN77', '2 years', '900');

INSERT INTO Rent VALUES 
   ('P02', 'TN70', '6 months', '1000');

INSERT INTO Rent VALUES 
   ('P03', 'TN71', '12 months', '700');

INSERT INTO Rent VALUES 
   ('P04', 'TN74', '3 years', '940');

INSERT INTO Rent VALUES 
   ('P05', 'TN76', '12 months', '1780');

INSERT INTO Rent VALUES 
    ('P06', 'TN80', '4 years', '2400');

INSERT INTO Rent VALUES 
   ('P07', 'TN72', '12 months', '1480');

INSERT INTO Rent VALUES 
    ('P08', 'TN78', '8 months', '2000');

INSERT INTO Rent VALUES 
    ('P08', 'TN73', '7 months', '2000');

INSERT INTO Rent VALUES 
    ('P09', 'TN79', '2 years', '1240');

INSERT INTO Rent VALUES 
   ('P10', 'TN75', '3 months', '2000');

   





# INSERTING ROWS TO Payment TABLE

INSERT INTO Payment VALUES 
   ('PM40', '$470', '$940', "$300", '2023-01-01', 'Bond', '$1710', 'P04', 'TN74');

INSERT INTO Payment VALUES 
   ('PM41', '$500', '$1000', '$50', '2022-10-28', 'Damage', '$1550', 'P10', 'TN75');

INSERT INTO Payment VALUES 
   ('PM42', '$890', '$1780', '$430', '2020-02-30', 'Rental', '$3100', 'P05', 'TN76' );

INSERT INTO Payment VALUES 
   ('PM43', '$350', '$700', '$30', '2022-08-08', 'Rental', '$1080', 'P03', 'TN71');

INSERT INTO Payment VALUES 
   ('PM44', '$1000', '$2000', '$80', '2023-11-23', 'Damage', '$3080', 'P10', 'TN75');

INSERT INTO Payment VALUES 
   ('PM45', '$740', '$1480', '$150', '2019-04-09', 'Rental', '$2370', 'P07', 'TN72');

INSERT INTO Payment VALUES 
   ('PM46', '$450', '900', '$178', '2020-08-23', 'Maintenance', '$800', 'P01', 'TN77');
   










-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 06:37 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `prmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE IF NOT EXISTS `admin_login` (
  `id` varchar(20) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `consultation`
--

CREATE TABLE IF NOT EXISTS `consultation` (
  `Patient_SSN` varchar(20) NOT NULL,
  `Doctor_SSN` varchar(20) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Complains` longtext NOT NULL,
  `Findings` longtext NOT NULL,
  `Treatments` longtext,
  `Medicines` longtext,
  `Allergies` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `consultation`
--

INSERT INTO `consultation` (`Patient_SSN`, `Doctor_SSN`, `Date_Time`, `Complains`, `Findings`, `Treatments`, `Medicines`, `Allergies`) VALUES
('10P', '11DR', '2019-12-19 16:30:00', 'Chest Pain', 'Possible block in Artery', 'Angiogram, Surgery', 'talltol 3 times a day', '-'),
('10P', '13DR', '2020-03-19 12:00:00', 'Pain in the head', 'low water level', 'CT scan', '-', '-'),
('11P', '13DR', '2020-03-12 10:00:00', 'Fatigue, body ache', 'High blood pressure', 'Reduce salt food consumption', 'Bitanol 10 continue', '-'),
('11P', '55DR', '2020-05-11 16:00:00', 'Pain in the eye', 'Possible glaucoma', 'Tonometry', '-', '-'),
('12P', '13DR', '2020-05-05 13:00:00', 'Fever, pain, body ache', 'Jaundice', 'Bed Rest and water consumption', 'lekajol 4mg, kamsik 2mg, shuba-shot ', '-'),
('12P', '69DR', '2020-04-15 14:00:00', 'Seizures', 'Epilepsy', 'Ketogenic diet', 'AEDs daily', '-'),
('69P', '11DR', '2020-01-17 11:00:00', 'Chest pain, shortness of breath', 'Cardiac Arrest', 'Surgery', 'Allistol 3 mg 7 weeks', 'peanuts'),
('69P', '12DR', '2019-12-18 16:00:00', 'Back Pain', 'Spine nerve damage', 'Reconstructive surgery', 'Medcol 2 mg 3 months', 'peanuts'),
('70P', '69DR', '2020-04-16 18:33:00', 'Shaky Hands', 'Parkinson disease', '-', 'L-Dopa daily', '-');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE IF NOT EXISTS `diagnosis` (
  `Patient_SSN` varchar(20) NOT NULL,
  `Doctor_SSN` varchar(20) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Diagnosis_Name` varchar(25) NOT NULL,
  `Description` longtext NOT NULL,
  `Complications` longtext,
  `Allergies` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`Patient_SSN`, `Doctor_SSN`, `Date_Time`, `Diagnosis_Name`, `Description`, `Complications`, `Allergies`) VALUES
('10P', '11DR', '2019-12-26 15:00:00', 'Angiogram', 'Blocked artery', '-', '-'),
('10P', '13DR', '2020-03-19 15:00:00', 'CT Scan', 'Found tumor in the left lobe', '-', '-'),
('11P', '55DR', '2020-05-14 18:00:00', 'Tonometry', 'Confirmed Glaucoma', 'Excessive pressure in eye', '-'),
('69P', '11DR', '2021-04-08 12:15:00', 'Ineffective Breathing Pat', 'Related to decreased lung expansion; evidenced by dyspnea, coughing', 'Risk for Ineffective Airway Clearance; evidenced by accumulation of secretions in lungs', '-');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `SSN` varchar(20) NOT NULL,
  `F_Name` char(15) NOT NULL,
  `L_Name` char(15) NOT NULL,
  `Hospital_ID` varchar(25) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Contact_No` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Department` char(35) NOT NULL,
  `Speciality` varchar(30) NOT NULL,
  `Designation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`SSN`, `F_Name`, `L_Name`, `Hospital_ID`, `Address`, `Contact_No`, `Email`, `Department`, `Speciality`, `Designation`) VALUES
('10DR', 'Carolyn', 'Moore', 'LCGH96', '4315  Ryder Avenue', '7416945850', 'carolyne@gmail.com', 'Department of Oncology', 'Leukemia Specialist', 'Senior Consultant'),
('11DR', 'Wade', 'Flaming', 'GRND0', '3603  Heavner Court', '2545454545', 'wade@gmail.com', 'Department of Cardiology', 'Cardiac Surgeon', 'Professor and Dean'),
('12DR', 'Jacobs', 'Waltr', 'LCGH96', '3424  Sherwood Circle', '3479510000', 'wjacob@gmail.com', 'Department of Orthopedics', 'Reconstruction Surgery Special', 'Chief Surgeon'),
('13DR', 'Irma', 'Sanchez', 'NHCH22', '4702  Massachusetts Avenue', '3479998885', 'sancheze@gmail.com', 'Department of Medicine', 'Meidicne', 'Senior Physician'),
('19DR', 'Brad', 'Rees', 'NHCH22', '613  Cardinal Lane', '9545454540', 'bradd@gmail.com', 'Department of Pathology', 'Pathology', 'Senior Analyst'),
('29DR', 'Harry', 'Denn', 'MDCR69', '1942  Half and Half Drive', '9876547474', 'harryden@gmail.com', 'Department of Urology', 'Kidney Specialist', 'Senior Physician'),
('55DR', 'Rick', 'Johnson', 'NHCH22', '846  Cemetery Street', '1345785540', 'rickj@gmail.com', 'Department of Opthalmology', 'Eye Surgeon', 'Surgeon'),
('59DR', 'Sam', 'Wilson', 'MDCR69', '747  Aviation Way', '9754612000', 'samwilson@gmail.com', 'Department of ENT', 'ENT Specialist', 'Junior Resident Physician'),
('69DR', 'Steeve', 'Roogers', 'GRND0', '2491  McKinley Avenue', '1478545499', 'steeve@gmail.com', 'Department of Neuology', 'Neurologist', 'Senior Surgeon and Profes');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_login`
--

CREATE TABLE IF NOT EXISTS `doctor_login` (
  `d_ssn` varchar(20) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_login`
--

INSERT INTO `doctor_login` (`d_ssn`, `pass`) VALUES
('10DR', 'password0'),
('11DR', 'password'),
('12DR', 'password0'),
('13DR', 'password'),
('19DR', 'password'),
('29DR', 'password0'),
('55DR', 'password0'),
('59DR', 'password'),
('69DR', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE IF NOT EXISTS `hospital` (
  `ID` varchar(25) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`ID`, `Email`, `Address`, `name`) VALUES
('GRND0', 'info@grnd.com', '4505  Briarhill Lane', 'Grandee Hospital'),
('LCGH96', 'info@lcgh.com', '1439  Despard Street', 'Lifecare General Hospital'),
('MDCR69', 'info@mdcr.com', '321  Trainer Avenue', 'Medwin Cares'),
('NHCH22', 'info@nhch.com', '658  Woodstock Drive', 'New Horizons Community Hospital'),
('WVHP6', 'info@wvhp.com', '321  Trainer Avenue', 'West Valley Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `medical_adminstration`
--

CREATE TABLE IF NOT EXISTS `medical_adminstration` (
  `Patient_SSN` varchar(20) NOT NULL,
  `Staff_SSN` varchar(20) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Description` longtext NOT NULL,
  `Complication` longtext,
  `Medicine` longtext,
  `Allergies` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_adminstration`
--

INSERT INTO `medical_adminstration` (`Patient_SSN`, `Staff_SSN`, `Date_Time`, `Description`, `Complication`, `Medicine`, `Allergies`) VALUES
('69P', '10S', '2020-01-17 10:35:00', 'Possible cardiac arrest', 'Shortness of Breath,', 'Xanax 12 mg', '');

-- --------------------------------------------------------

--
-- Table structure for table `medical_staff`
--

CREATE TABLE IF NOT EXISTS `medical_staff` (
  `SSN` varchar(20) NOT NULL,
  `F_Name` char(15) NOT NULL,
  `L_Name` char(15) NOT NULL,
  `Hospital_ID` varchar(25) NOT NULL,
  `Department` char(35) NOT NULL,
  `Contact_No` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Designation` varchar(25) NOT NULL,
  `Address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medical_staff`
--

INSERT INTO `medical_staff` (`SSN`, `F_Name`, `L_Name`, `Hospital_ID`, `Department`, `Contact_No`, `Email`, `Designation`, `Address`) VALUES
('10S', 'Thomas', 'Moore', 'GRND0', 'Paramedics', '720001569', 'thomas@gmail.com', 'Emergency Response Team', '2770  Union Street'),
('11S', 'Pedro', 'Rodregez', 'GRND0', 'Department of Nurses', '9745111111', 'pedrostar@gmail.com', 'Senior Nurse', '2103  Washington Avenue');

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE IF NOT EXISTS `operation` (
  `Patient_SSN` varchar(20) NOT NULL,
  `Doctor_SSN` varchar(20) NOT NULL,
  `Date_Time` datetime NOT NULL,
  `Description` longtext NOT NULL,
  `Complications` longtext,
  `Allergies` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`Patient_SSN`, `Doctor_SSN`, `Date_Time`, `Description`, `Complications`, `Allergies`) VALUES
('10P', '11DR', '2020-02-12 14:26:00', 'Artery Block Remove', 'Vein cut in the left', 'Reactive to sedatives'),
('11P', '55DR', '2020-05-19 14:00:00', 'Glaucoma Surgery', '-', ''),
('69P', '11DR', '2020-01-30 10:00:00', 'Bypass Surgery', '-', '-'),
('69P', '12DR', '2020-04-01 15:00:00', 'Spine reconstructive surgery', '-', 'Anesthesia overdose');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `SSN` varchar(20) NOT NULL,
  `F_Name` char(15) NOT NULL,
  `L_Name` char(15) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Contact_No` varchar(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Gender` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`SSN`, `F_Name`, `L_Name`, `Address`, `Contact_No`, `Email`, `Date_Of_Birth`, `Gender`) VALUES
('10P', 'Stanley', 'Arwind', '3132  Sherman Street', '1597534568', 'stasd@gmail.com', '1992-10-14', 'Male'),
('11P', 'Christopher', 'Bick', '4856  White Oak Drive', '2223232322', 'bickc@gmail.com', '1996-05-21', 'Male'),
('12P', 'Henry', 'Doe', '1927  Howard Street', '9654547500', 'doee@gmail.com', '1997-03-01', 'Male'),
('38P', 'Bruno', 'Denn', 'Blecker Street 12', '4578884500', 'denbru@gmail.com', '1991-07-26', 'Male'),
('69P', 'Daisy', 'J Arsenault', '2770  Huntz Lane', '3478885540', 'daisss@gmail.com', '1991-10-11', 'Female'),
('70P', 'Johnny', 'Grnwood', '3025  Emma Street', '7548964555', 'jlovesd@gmail.com', '1981-08-12', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `patient_login`
--

CREATE TABLE IF NOT EXISTS `patient_login` (
  `p_ssn` varchar(20) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_login`
--

INSERT INTO `patient_login` (`p_ssn`, `pass`) VALUES
('10P', 'password'),
('11P', 'password'),
('12P', 'password'),
('38P', 'password02'),
('69P', 'password'),
('70P', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `staff_login`
--

CREATE TABLE IF NOT EXISTS `staff_login` (
  `s_ssn` varchar(20) NOT NULL,
  `pass` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_login`
--

INSERT INTO `staff_login` (`s_ssn`, `pass`) VALUES
('10S', 'password'),
('11S', 'password');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultation`
--
ALTER TABLE `consultation`
 ADD PRIMARY KEY (`Patient_SSN`,`Doctor_SSN`,`Date_Time`), ADD KEY `DoctorSSN_FK` (`Doctor_SSN`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
 ADD PRIMARY KEY (`Patient_SSN`,`Doctor_SSN`,`Date_Time`), ADD KEY `diagnosis_ibfk_2` (`Doctor_SSN`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`SSN`), ADD KEY `Hospital_ID` (`Hospital_ID`);

--
-- Indexes for table `doctor_login`
--
ALTER TABLE `doctor_login`
 ADD PRIMARY KEY (`d_ssn`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medical_adminstration`
--
ALTER TABLE `medical_adminstration`
 ADD PRIMARY KEY (`Patient_SSN`,`Staff_SSN`,`Date_Time`), ADD KEY `medical_adminstration_ibfk_2` (`Staff_SSN`);

--
-- Indexes for table `medical_staff`
--
ALTER TABLE `medical_staff`
 ADD PRIMARY KEY (`SSN`), ADD KEY `Hospital_ID` (`Hospital_ID`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
 ADD PRIMARY KEY (`Patient_SSN`,`Doctor_SSN`,`Date_Time`), ADD KEY `operation_ibfk_2` (`Doctor_SSN`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`SSN`);

--
-- Indexes for table `patient_login`
--
ALTER TABLE `patient_login`
 ADD PRIMARY KEY (`p_ssn`);

--
-- Indexes for table `staff_login`
--
ALTER TABLE `staff_login`
 ADD PRIMARY KEY (`s_ssn`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `consultation`
--
ALTER TABLE `consultation`
ADD CONSTRAINT `DoctorSSN_FK` FOREIGN KEY (`Doctor_SSN`) REFERENCES `doctor` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `PatientSSN_FK` FOREIGN KEY (`Patient_SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diagnosis`
--
ALTER TABLE `diagnosis`
ADD CONSTRAINT `diagnosis_ibfk_1` FOREIGN KEY (`Patient_SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `diagnosis_ibfk_2` FOREIGN KEY (`Doctor_SSN`) REFERENCES `doctor` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Hospital_ID`) REFERENCES `hospital` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doctor_login`
--
ALTER TABLE `doctor_login`
ADD CONSTRAINT `doctor_login_ibfk_1` FOREIGN KEY (`d_ssn`) REFERENCES `doctor` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_adminstration`
--
ALTER TABLE `medical_adminstration`
ADD CONSTRAINT `medical_adminstration_ibfk_1` FOREIGN KEY (`Patient_SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `medical_adminstration_ibfk_2` FOREIGN KEY (`Staff_SSN`) REFERENCES `medical_staff` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_staff`
--
ALTER TABLE `medical_staff`
ADD CONSTRAINT `medical_staff_ibfk_1` FOREIGN KEY (`Hospital_ID`) REFERENCES `hospital` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operation`
--
ALTER TABLE `operation`
ADD CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`Patient_SSN`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `operation_ibfk_2` FOREIGN KEY (`Doctor_SSN`) REFERENCES `doctor` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_login`
--
ALTER TABLE `patient_login`
ADD CONSTRAINT `fk_pssn` FOREIGN KEY (`p_ssn`) REFERENCES `patient` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_login`
--
ALTER TABLE `staff_login`
ADD CONSTRAINT `staff_login_ibfk_1` FOREIGN KEY (`s_ssn`) REFERENCES `medical_staff` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2017 at 08:05 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_room`
--

CREATE TABLE `admitpatient_room` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `RoomNo` varchar(50) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admitpatient_room`
--

INSERT INTO `admitpatient_room` (`AdmitID`, `PatientID`, `Disease`, `RoomNo`, `AdmitDate`, `DoctorID`, `AP_Remarks`) VALUES
(1, 'P-1', 'Malariya', '101', '22/10/2015', '1', ''),
(2, 'P-1', 'Brain Damage', '101', '26/07/2017', '1', 'her condition is very critical , please take spacial attention on her'),
(3, 'p-2', 'cariac arrest', '107', '08/07/2017', '2', 'heart patient'),
(4, 'P-3', 'faulty brain', '102', '10/10/2017', '2', 'lol'),
(5, 'P-04', 'broken arm', '102', '15/08/2017', '2', 'severe');

-- --------------------------------------------------------

--
-- Table structure for table `admitpatient_ward`
--

CREATE TABLE `admitpatient_ward` (
  `AdmitID` int(11) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `Disease` text NOT NULL,
  `Wardname` varchar(100) NOT NULL,
  `AdmitDate` text NOT NULL,
  `DoctorID` varchar(50) NOT NULL,
  `AP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admitpatient_ward`
--

INSERT INTO `admitpatient_ward` (`AdmitID`, `PatientID`, `Disease`, `Wardname`, `AdmitDate`, `DoctorID`, `AP_Remarks`) VALUES
(1, 'P-1', 'brain damage', 'C', '08/07/2017', '1', 'mentally disable');

-- --------------------------------------------------------

--
-- Table structure for table `bill_room`
--

CREATE TABLE `bill_room` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `RoomCharges` double NOT NULL,
  `TotalRoomCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_room`
--

INSERT INTO `bill_room` (`BillNo`, `DischargeID`, `BillingDate`, `NoOfDays`, `RoomCharges`, `TotalRoomCharges`, `ServiceCharges`, `TotalCharges`, `PaymentMode`, `PaymentModeDetails`, `ChargesPaid`, `DueCharges`) VALUES
(1, 1, '24/10/2015', 2, 1200, 2400, 2300, 4700, 'by Cash', '', 4700, 0),
(2, 2, '03/08/2017', 11, 1200, 13200, 3200, 16400, 'by Check', 'look', 5000, 11400),
(3, 4, '16/08/2017', 1, 2200, 2200, 5000, 7200, 'by Credit Card', 'sdfguhkjl', 7200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_ward`
--

CREATE TABLE `bill_ward` (
  `BillNo` int(11) NOT NULL,
  `DischargeID` int(11) NOT NULL,
  `BillingDate` text NOT NULL,
  `BedCharges` double NOT NULL,
  `NoOfDays` int(11) NOT NULL,
  `TotalBedCharges` double NOT NULL,
  `ServiceCharges` double NOT NULL,
  `TotalCharges` double NOT NULL,
  `PaymentMode` text NOT NULL,
  `PaymentModeDetails` text NOT NULL,
  `ChargesPaid` double NOT NULL,
  `DueCharges` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_room`
--

CREATE TABLE `dischargepatient_room` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dischargepatient_room`
--

INSERT INTO `dischargepatient_room` (`ID`, `AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, 1, '24/10/2015', 'good conduct'),
(2, 2, '30/03/2024', 'require bed rest'),
(3, 4, '15/08/2017', 'hsdgfhksnfhdskf'),
(4, 5, '16/08/2017', 'good health');

-- --------------------------------------------------------

--
-- Table structure for table `dischargepatient_ward`
--

CREATE TABLE `dischargepatient_ward` (
  `ID` int(11) NOT NULL,
  `AdmitID` int(11) NOT NULL,
  `DischargeDate` text NOT NULL,
  `DP_Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dischargepatient_ward`
--

INSERT INTO `dischargepatient_ward` (`ID`, `AdmitID`, `DischargeDate`, `DP_Remarks`) VALUES
(1, 1, '02/08/2017', 'mentally disable');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` varchar(50) NOT NULL,
  `DoctorName` text NOT NULL,
  `FatherName` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Qualifications` text NOT NULL,
  `Specialization` text NOT NULL,
  `Gender` text NOT NULL,
  `Bloodgroup` text NOT NULL,
  `DateOfJoining` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorName`, `FatherName`, `Address`, `ContactNo`, `Email`, `Qualifications`, `Specialization`, `Gender`, `Bloodgroup`, `DateOfJoining`) VALUES
('1', 'Sunil Perera', 'Gayan Perera', 'Sri Lanka', '123456789', 'sunilperera@gmail.com', 'MBBS', 'Nurology', 'M', 'B+', '01/08/2017'),
('2', 'Viraj Nugera', 'Nugera', 'sdffj', '01234567891', 'nugera@gmail.com', ' MBBS Surgen', 'cardio', 'M', 'B-', '24/07/2017');

-- --------------------------------------------------------

--
-- Table structure for table `patientregistration`
--

CREATE TABLE `patientregistration` (
  `PatientID` varchar(50) NOT NULL,
  `Patientname` text NOT NULL,
  `Fathername` text NOT NULL,
  `Address` text NOT NULL,
  `ContactNo` text NOT NULL,
  `Email` text NOT NULL,
  `Age` int(11) NOT NULL,
  `Gen` text NOT NULL,
  `BG` text NOT NULL,
  `Remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientregistration`
--

INSERT INTO `patientregistration` (`PatientID`, `Patientname`, `Fathername`, `Address`, `ContactNo`, `Email`, `Age`, `Gen`, `BG`, `Remarks`) VALUES
('P-04', 'Omalka', 'Weerakoon', 'gampaha', '78645323', 'oga@gmail.com', 20, 'F', 'B+', 'lol'),
('P-1', 'Githmi', 'Githmige appa', 'colombo', '789465132', 'Githmi@gmail.com', 20, 'F', 'O+', 'she had broken her leg 99% damage with head damage and severe memory loss  '),
('p-2', 'Navin', 'Fernandoi', 'rghijh', '1425369875', 'navingmail.com', 21, 'M', 'O-', 'cardiac arrest blood clot'),
('P-3', 'Sara', 'Sen', 'pool', '7878978', 'ioio@gmail.com', 22, 'M', 'O+', 'brain process malfunction');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `NameOfUser` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`username`, `password`, `NameOfUser`, `ContactNo`, `Email`) VALUES
('admin', 'admin', 'nilgitku', '123456789', 'nilgitku@gmail.com'),
('Sachi123', 'Sachi123', 'Sachi', '78945612', 'Sachi@gmail.com'),
('Teddy bear', 'Teddy bear', 'Teddy', '01234567814', 'teddy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomNo` varchar(50) NOT NULL,
  `RoomType` varchar(100) NOT NULL,
  `RoomCharges` int(11) NOT NULL,
  `RoomStatus` varchar(100) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomNo`, `RoomType`, `RoomCharges`, `RoomStatus`) VALUES
('101', 'General', 1200, 'Vacant'),
('102', 'Deluxe', 2200, 'Vacant'),
('105', 'General', 5000, 'Vacant'),
('107', 'Deluxe', 5500, 'Booked'),
('109', 'General', 3400, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `ServiceID` int(11) NOT NULL,
  `ServiceName` varchar(250) NOT NULL,
  `ServiceDate` varchar(50) NOT NULL,
  `PatientID` varchar(50) NOT NULL,
  `ServiceCharges` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ServiceID`, `ServiceName`, `ServiceDate`, `PatientID`, `ServiceCharges`) VALUES
(1, 'X-ray Test', '23/10/2015', 'P-1', 2300),
(2, 'CT Scan', '29/07/2017', 'P-1', 456456465),
(3, 'dye scan/ echo', '03/07/2017', 'p-2', 3200),
(4, 'MRI', '14/08/2017', 'P-3', 1000),
(5, 'X-ray', '15/08/2017', 'P-04', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `user_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `user_password`) VALUES
('admin', 'admin'),
('Sachi123', '123Sachi'),
('Teddy bear', 'bearteddy');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `wardname` varchar(100) NOT NULL,
  `wardtype` varchar(50) NOT NULL,
  `NoOfBeds` int(11) NOT NULL,
  `Charges` int(11) NOT NULL
) ENGINE=InnoDB AVG_ROW_LENGTH=8192 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`wardname`, `wardtype`, `NoOfBeds`, `Charges`) VALUES
('B', 'Special', 4, 3400),
('C', 'Special', 5, 1500),
('D', 'Special', 12, 3500),
('E', 'Special', 10, 6300),
('F', 'Special', 10, 1600),
('N', 'General', 12, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `wardboy_nurse_tbl`
--

CREATE TABLE `wardboy_nurse_tbl` (
  `ID` varchar(50) NOT NULL,
  `W_N_Name` varchar(250) NOT NULL,
  `Category` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `ContactNo` varchar(15) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Qualifications` varchar(250) NOT NULL,
  `BloodGroup` varchar(50) NOT NULL,
  `DateOfJoining` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wardboy_nurse_tbl`
--

INSERT INTO `wardboy_nurse_tbl` (`ID`, `W_N_Name`, `Category`, `Address`, `ContactNo`, `Email`, `Qualifications`, `BloodGroup`, `DateOfJoining`) VALUES
('1', 'Nil', 'Nurse', 'qwertyuj', '4645', 'gil@gmail.com', 'MBBS', 'AB+', '14/08/2017'),
('2', 'vathmi', 'Nurse', 'asd', '012457896', 'vathmi@gmail.com', 'head\nurse', 'A+', '01/06/2017');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `DoctorID_2` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `RoomNo` (`RoomNo`);

--
-- Indexes for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD PRIMARY KEY (`AdmitID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PatientID` (`PatientID`),
  ADD KEY `Wardname` (`Wardname`);

--
-- Indexes for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`),
  ADD KEY `DischargeID_2` (`DischargeID`);

--
-- Indexes for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD PRIMARY KEY (`BillNo`),
  ADD KEY `DischargeID` (`DischargeID`);

--
-- Indexes for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AdmitID` (`AdmitID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`);

--
-- Indexes for table `patientregistration`
--
ALTER TABLE `patientregistration`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomNo`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ServiceID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`wardname`);

--
-- Indexes for table `wardboy_nurse_tbl`
--
ALTER TABLE `wardboy_nurse_tbl`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  MODIFY `AdmitID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bill_room`
--
ALTER TABLE `bill_room`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bill_ward`
--
ALTER TABLE `bill_ward`
  MODIFY `BillNo` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ServiceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admitpatient_room`
--
ALTER TABLE `admitpatient_room`
  ADD CONSTRAINT `admitpatient_room_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_room_ibfk_2` FOREIGN KEY (`RoomNo`) REFERENCES `room` (`RoomNo`),
  ADD CONSTRAINT `admitpatient_room_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `admitpatient_ward`
--
ALTER TABLE `admitpatient_ward`
  ADD CONSTRAINT `admitpatient_ward_ibfk_1` FOREIGN KEY (`Wardname`) REFERENCES `ward` (`wardname`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_2` FOREIGN KEY (`PatientID`) REFERENCES `patientregistration` (`PatientID`),
  ADD CONSTRAINT `admitpatient_ward_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`);

--
-- Constraints for table `bill_room`
--
ALTER TABLE `bill_room`
  ADD CONSTRAINT `bill_room_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_room` (`ID`);

--
-- Constraints for table `bill_ward`
--
ALTER TABLE `bill_ward`
  ADD CONSTRAINT `bill_ward_ibfk_1` FOREIGN KEY (`DischargeID`) REFERENCES `dischargepatient_ward` (`ID`);

--
-- Constraints for table `dischargepatient_room`
--
ALTER TABLE `dischargepatient_room`
  ADD CONSTRAINT `dischargepatient_room_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_room` (`AdmitID`);

--
-- Constraints for table `dischargepatient_ward`
--
ALTER TABLE `dischargepatient_ward`
  ADD CONSTRAINT `dischargepatient_ward_ibfk_1` FOREIGN KEY (`AdmitID`) REFERENCES `admitpatient_ward` (`AdmitID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`username`) REFERENCES `registration` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

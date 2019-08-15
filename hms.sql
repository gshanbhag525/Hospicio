-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Aug 15, 2019 at 07:46 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `dr_id` int(11) NOT NULL,
  `dr_name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `sp` varchar(255) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `mail_id` varchar(255) DEFAULT NULL,
  `timings` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`dr_id`, `dr_name`, `contact`, `degree`, `sp`, `fees`, `mail_id`, `timings`) VALUES
(1, 'R.K. GUPTA', '9414244333', 'M.B.B.S', 'Physician', 150, 'rk@gmail.com', '9:00Am to 11:00Am'),
(2, 'K.K. SHARMA', '9414344555', 'M.B.B.S', 'Orthopaedic', 400, 'kk@gmail.com', '9:00Am to 11:00Am'),
(3, 'M.K Sharma', '9414244777', 'B.D.S', 'Paediatrician', 400, 'mk@gmail.com', '9:00 am');

-- --------------------------------------------------------

--
-- Table structure for table `ipdmedicine`
--

CREATE TABLE `ipdmedicine` (
  `date` varchar(255) DEFAULT NULL,
  `ipd_no` int(11) DEFAULT NULL,
  `md_cat` varchar(255) DEFAULT NULL,
  `md_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipdmedicine`
--

INSERT INTO `ipdmedicine` (`date`, `ipd_no`, `md_cat`, `md_name`, `quantity`, `amount`) VALUES
('Tue Jul 19 11:27:00 IST 2016', 1, '1', '1', 5, 10),
('Tue Jul 19 11:36:53 IST 2016', 1, '2', '2', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `ipdpatient`
--

CREATE TABLE `ipdpatient` (
  `ipd_no` int(11) NOT NULL,
  `pat_id` int(11) DEFAULT NULL,
  `doa` varchar(255) DEFAULT NULL,
  `dod` varchar(255) DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `procharges` int(11) DEFAULT NULL,
  `drcharges` int(11) DEFAULT NULL,
  `medcharges` int(11) DEFAULT NULL,
  `othercharges` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `adpay` int(11) DEFAULT NULL,
  `net` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipdpatient`
--

INSERT INTO `ipdpatient` (`ipd_no`, `pat_id`, `doa`, `dod`, `room_number`, `procharges`, `drcharges`, `medcharges`, `othercharges`, `total`, `adpay`, `net`) VALUES
(1, 1, '19.07.2016', 'Not Discharged Yet', 101, 0, 0, 0, 0, 0, 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ipdprocedure`
--

CREATE TABLE `ipdprocedure` (
  `date` varchar(255) DEFAULT NULL,
  `ipd_no` int(11) DEFAULT NULL,
  `p_id` varchar(255) DEFAULT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipdprocedure`
--

INSERT INTO `ipdprocedure` (`date`, `ipd_no`, `p_id`, `p_name`, `amount`) VALUES
('Tue Jul 19 10:49:15 IST 2016', 1, '1', '1', 120),
('Tue Jul 19 11:26:13 IST 2016', 1, '1', '1', 120);

-- --------------------------------------------------------

--
-- Table structure for table `mcategory`
--

CREATE TABLE `mcategory` (
  `ct_id` int(11) NOT NULL,
  `ct_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcategory`
--

INSERT INTO `mcategory` (`ct_id`, `ct_name`) VALUES
(1, 'CAPSULES'),
(2, 'TABLETS'),
(3, 'SYRUP');

-- --------------------------------------------------------

--
-- Table structure for table `med`
--

CREATE TABLE `med` (
  `med_id` int(11) NOT NULL,
  `med_name` varchar(255) DEFAULT NULL,
  `med_mrp` int(11) DEFAULT NULL,
  `medcat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medcat`
--

CREATE TABLE `medcat` (
  `medcat_id` int(11) NOT NULL,
  `medcat_name` varchar(255) DEFAULT NULL,
  `med_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `md_id` int(11) NOT NULL,
  `md_name` varchar(255) DEFAULT NULL,
  `md_cat` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `ct_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`md_id`, `md_name`, `md_cat`, `unit`, `price`, `ct_id`) VALUES
(1, 'BECASULE', 'CAPSULES', 'pcs', 2, 1),
(2, 'AVIL', 'TABLETS', 'pcs', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `opd`
--

CREATE TABLE `opd` (
  `reg_no` int(11) NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `pat_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `dr_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opd`
--

INSERT INTO `opd` (`reg_no`, `reg_date`, `pat_id`, `amount`, `dr_id`) VALUES
(1, '2019-07-20 16:00:00', 2, 400, 2),
(2, '2019-07-20 16:00:00', 1, 150, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pat_id` int(11) NOT NULL,
  `pat_name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `mail_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pat_id`, `pat_name`, `age`, `father_name`, `gender`, `address`, `contact`, `mail_id`) VALUES
(1, 'Rakesh Kumar Gupta', 21, 'Vinay Gupta', 'Male', '123', '9414244777', 'r@gmail.com'),
(2, 'Vikas Kumar Khanna', 26, 'Gaurav Khanna', 'Male', '123	', '9414244888', 'vk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pcat`
--

CREATE TABLE `pcat` (
  `pcat_id` int(11) NOT NULL,
  `pcat_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcat`
--

INSERT INTO `pcat` (`pcat_id`, `pcat_name`) VALUES
(1, 'X-RAY'),
(2, 'BLOOD TEST'),
(3, 'OPERATION');

-- --------------------------------------------------------

--
-- Table structure for table `pprocedure`
--

CREATE TABLE `pprocedure` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pcat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pprocedure`
--

INSERT INTO `pprocedure` (`p_id`, `p_name`, `price`, `description`, `pcat_id`) VALUES
(1, 'FOOT X-RAY', 120, 'AAA', 1),
(2, 'RBC', 150, 'AAA', 2),
(3, 'LEG X-RAY', 250, 'aaa', 1),
(4, 'Blood Group', 50, 'aa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_number` int(11) DEFAULT NULL,
  `room_category` varchar(255) DEFAULT NULL,
  `room_count` int(11) DEFAULT NULL,
  `room_description` varchar(255) DEFAULT NULL,
  `room_charges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_number`, `room_category`, `room_count`, `room_description`, `room_charges`) VALUES
(1, 101, 'DELUXE ROOM', 1, 'LED,TV', 1000),
(2, 102, 'DELUXE ROOM', 1, 'LET,TV,FRIDGE', 1000),
(3, 201, 'GENERAL WARD', 10, 'TV', 250);

-- --------------------------------------------------------

--
-- Table structure for table `roomcat`
--

CREATE TABLE `roomcat` (
  `roomcat_id` int(11) NOT NULL,
  `roomcat_name` varchar(255) DEFAULT NULL,
  `room_count` int(11) DEFAULT NULL,
  `room_charge` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomcat`
--

INSERT INTO `roomcat` (`roomcat_id`, `roomcat_name`, `room_count`, `room_charge`) VALUES
(1, 'DELUXE ROOM', 10, 1000),
(2, 'GENERAL WARD', 2, 250);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usertype` enum('admin','doctor','operator') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `password`, `usertype`) VALUES
('admin', 'admin', 'admin'),
('lol', 'lol', 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`dr_id`);

--
-- Indexes for table `ipdpatient`
--
ALTER TABLE `ipdpatient`
  ADD PRIMARY KEY (`ipd_no`),
  ADD KEY `pat_id` (`pat_id`);

--
-- Indexes for table `mcategory`
--
ALTER TABLE `mcategory`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `med`
--
ALTER TABLE `med`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `medcat_id` (`medcat_id`);

--
-- Indexes for table `medcat`
--
ALTER TABLE `medcat`
  ADD PRIMARY KEY (`medcat_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`md_id`),
  ADD KEY `ct_id` (`ct_id`);

--
-- Indexes for table `opd`
--
ALTER TABLE `opd`
  ADD PRIMARY KEY (`reg_no`),
  ADD KEY `dr_id` (`dr_id`),
  ADD KEY `pat_id` (`pat_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `pcat`
--
ALTER TABLE `pcat`
  ADD PRIMARY KEY (`pcat_id`);

--
-- Indexes for table `pprocedure`
--
ALTER TABLE `pprocedure`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `pcat_id` (`pcat_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `room_number` (`room_number`);

--
-- Indexes for table `roomcat`
--
ALTER TABLE `roomcat`
  ADD PRIMARY KEY (`roomcat_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `dr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ipdpatient`
--
ALTER TABLE `ipdpatient`
  MODIFY `ipd_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mcategory`
--
ALTER TABLE `mcategory`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `md_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `opd`
--
ALTER TABLE `opd`
  MODIFY `reg_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pcat`
--
ALTER TABLE `pcat`
  MODIFY `pcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pprocedure`
--
ALTER TABLE `pprocedure`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roomcat`
--
ALTER TABLE `roomcat`
  MODIFY `roomcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ipdpatient`
--
ALTER TABLE `ipdpatient`
  ADD CONSTRAINT `ipdpatient_ibfk_1` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`pat_id`);

--
-- Constraints for table `med`
--
ALTER TABLE `med`
  ADD CONSTRAINT `med_ibfk_1` FOREIGN KEY (`medcat_id`) REFERENCES `medcat` (`medcat_id`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`ct_id`) REFERENCES `mcategory` (`ct_id`);

--
-- Constraints for table `opd`
--
ALTER TABLE `opd`
  ADD CONSTRAINT `opd_ibfk_1` FOREIGN KEY (`dr_id`) REFERENCES `doctor` (`dr_id`),
  ADD CONSTRAINT `opd_ibfk_2` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`pat_id`);

--
-- Constraints for table `pprocedure`
--
ALTER TABLE `pprocedure`
  ADD CONSTRAINT `pprocedure_ibfk_1` FOREIGN KEY (`pcat_id`) REFERENCES `pcat` (`pcat_id`);

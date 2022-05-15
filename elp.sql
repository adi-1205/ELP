-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 07:52 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `college_code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`, `college_code`) VALUES
(1, 'admin', 'admin@rcti', 640),
(2, 'aditya', 'aditya@rcti', 640),
(3, 'karan', 'karan@rcti', 640),
(4, 'maitri', 'maitri@rcti', 640);

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `col_name` varchar(50) NOT NULL,
  `col_code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`col_name`, `col_code`) VALUES
('RCTI', 640);

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `depid` int(11) NOT NULL,
  `depname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`depid`, `depname`) VALUES
(1, 'IT'),
(3, 'Mechanical'),
(4, 'Architecture'),
(5, 'Electronic'),
(6, 'Electrical'),
(7, 'Civil'),
(8, 'Computer'),
(9, 'Textile');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `nid` int(11) NOT NULL,
  `ntite` varchar(100) NOT NULL,
  `ndesc` text NOT NULL,
  `nvid_url` varchar(255) NOT NULL,
  `ndoc_url` varchar(255) NOT NULL,
  `nchapter` int(2) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `n_date` date NOT NULL DEFAULT current_timestamp(),
  `subcode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`nid`, `ntite`, `ndesc`, `nvid_url`, `ndoc_url`, `nchapter`, `prof_id`, `n_date`, `subcode`) VALUES
(6, 'Android_Introduction', 'lec-1: creating Android Application using mobile app development description; how to use android development apk in mobile and create some buttons:-user_id,password,delete recorde,update recorde,search recorde,log_out,log_in.and introduction about chapter 3 android activites and UI Design and making our first programm', 'https://drive.google.com/file/d/1X7ha7z-uGaBz9tzhf4mY1_QoSUqH_fXY/preview', 'xyz', 1, 9, '2022-02-15', 3361602),
(12, 'Intents', 'learn about intents with theory+practicals. Also learn basic view controls in android app development', 'https://drive.google.com/file/d/1LCiUsDaI-bvIY-YNQl2Xj3COgih21iT-/preview', '', 3, 9, '2022-02-18', 3361602);

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `prof_id` int(11) NOT NULL,
  `pfname` varchar(15) NOT NULL,
  `plname` varchar(15) NOT NULL,
  `pemail` varchar(50) NOT NULL,
  `preg_date` date NOT NULL,
  `ppassword` text NOT NULL,
  `pdesig` varchar(15) NOT NULL,
  `pdept` varchar(15) NOT NULL,
  `pqual` varchar(15) NOT NULL,
  `pgender` varchar(10) NOT NULL,
  `pcontact` varchar(10) NOT NULL,
  `paddress` text NOT NULL,
  `pcollege` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`prof_id`, `pfname`, `plname`, `pemail`, `preg_date`, `ppassword`, `pdesig`, `pdept`, `pqual`, `pgender`, `pcontact`, `paddress`, `pcollege`) VALUES
(9, 'Aditya', 'Vyas', 'aditya@gmail.com', '2002-05-12', '900150983cd24fb0d6963f7d28e17f72', 'Lecturer', 'Electrical', 'btech', 'male', '0123456789', 'H-3/14, Ashish Apartment, Nr. Kadva Patidar Trust.\r\nAdarshnagar, Naranpura\r\nNava Vadaj', 640),
(11, 'Gunjan', 'Vyas', 'gunjanvyas.18.el@iite.indusuni.ac.in', '2022-02-10', 'a', 'get', 'Electronic', 'btech', 'male', '9879194254', 'H-3/14, Ashish Apartment, Nr. Kadva Patidar Trust.\r\nAdarshnagar, Naranpura', 640),
(13, 'Alka', 'Vyas', 'alka@gmail.com', '2022-03-24', '900150983cd24fb0d6963f7d28e17f72', 'Lecturer', 'IT', 'btech', 'female', '0123456789', 'ahmedabad', 640),
(14, 'Karan', 'Sharma', 'karan@gmail.com', '2019-11-11', '900150983cd24fb0d6963f7d28e17f72', 'professor', 'IT', 'B tech', 'male', '0123456789', 'abad', 640);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sfname` varchar(15) NOT NULL,
  `slname` varchar(15) NOT NULL,
  `semail` varchar(50) NOT NULL,
  `sreg_date` date NOT NULL,
  `spassword` text NOT NULL,
  `sdept` varchar(15) NOT NULL,
  `sgender` varchar(10) NOT NULL,
  `scontact` varchar(10) NOT NULL,
  `saddress` text NOT NULL,
  `sdob` date NOT NULL,
  `senroll` varchar(15) NOT NULL,
  `scol_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sfname`, `slname`, `semail`, `sreg_date`, `spassword`, `sdept`, `sgender`, `scontact`, `saddress`, `sdob`, `senroll`, `scol_id`) VALUES
(7, 'Gunjan', 'Vyas', 'gunjanvyas.18.el@iite.indusuni.ac.in', '2022-02-08', '900150983cd24fb0d6963f7d28e17f72', 'IT', 'male', '9879194254', 'H-3/14, Ashish Apartment, Nr. Kadva Patidar Trust.\r\nAdarshnagar, Naranpura', '2022-02-07', '1111', 640),
(10, 'Gunjan', 'Vyas', 'gunjanvyas.18.el@iite.indusuni.ac.in', '2022-02-18', 'asd', 'Computer', 'male', '9879194254', 'H-3/14, Ashish Apartment, Nr. Kadva Patidar Trust.\r\nAdarshnagar, Naranpura', '2022-02-01', '1111', 640),
(12, 'Alka', 'Vyas', 'alkavyas7@gmail.com', '2022-02-16', '0cc175b9c0f1b6a831c399e269772661', 'IT', 'female', '0001112223', 'H-3/14, Ashish Apartment, Nr. Kadva Patidar Trust.Adarshnagar, NaranpuraNava Vadaj,Ahmedabad', '2022-02-01', '70435', 640),
(15, 'Maitri', 'Solanki', 'maitri@gmail.com', '2022-05-10', '900150983cd24fb0d6963f7d28e17f72', 'IT', 'female', '00', 'ahmedabad', '2003-01-10', '196400316137', 640);

-- --------------------------------------------------------

--
-- Table structure for table `subchap`
--

CREATE TABLE `subchap` (
  `chid` int(11) NOT NULL,
  `chnum` int(2) NOT NULL,
  `chname` varchar(50) NOT NULL,
  `subcode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subchap`
--

INSERT INTO `subchap` (`chid`, `chnum`, `chname`, `subcode`) VALUES
(1, 1, 'Android OS: Concepts', 3361602),
(2, 2, 'Android Architecture', 3361602),
(3, 3, 'Android Activity and UI Design', 3361602),
(4, 4, 'Advanced UI programmning', 3361602),
(5, 5, 'Toast, Menu, Dialog, List and Adapters', 3361602),
(8, 6, 'Working with Database (SQLite)', 3361602),
(11, 1, 'Java Applets', 3360701),
(12, 2, 'Abstract Window Toolkit (AWT)', 3360701),
(13, 3, 'Java Data Base Connectivity (JDBC)', 3360701),
(14, 4, 'Servlets', 3360701),
(15, 5, 'Java Server Pages (JSP)', 3360701),
(16, 1, 'Introduction to PHP', 3361603),
(17, 2, 'Working with In Built Functions', 3361603),
(18, 3, 'Working with data and forms', 3361603),
(19, 4, 'Session, Cookies and Error Handling', 3361603),
(20, 5, 'Database Connectivity using MYSQL', 3361603),
(21, 1, 'Public Key Crypto Systems', 3361601),
(22, 2, 'MAC and Hash Functions', 3361601),
(23, 3, 'Network Security Application', 3361601),
(24, 4, 'Web Security', 3361601),
(25, 5, 'System Security', 3361601);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subcode` int(10) NOT NULL,
  `subname` varchar(50) NOT NULL,
  `subdept` varchar(15) NOT NULL,
  `subimg_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subcode`, `subname`, `subdept`, `subimg_url`) VALUES
(3360701, 'AJP', 'IT', 'https://www.ajayonlinestall.com/wp-content/uploads/2021/12/ATU0082.jpg'),
(3361601, 'WNS', 'IT', 'https://www.ajayonlinestall.com/wp-content/uploads/2021/02/ATU0577.png'),
(3361602, 'AAD', 'IT', 'https://www.ajayonlinestall.com/wp-content/uploads/2022/01/9789385138072.jpg'),
(3361603, 'PHP', 'IT', 'https://www.ajayonlinestall.com/wp-content/uploads/2021/03/ATU0080.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `sugid` int(11) NOT NULL,
  `sugmsg` text NOT NULL,
  `sid` int(11) NOT NULL,
  `sug_date` date NOT NULL DEFAULT current_timestamp(),
  `subcode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`sugid`, `sugmsg`, `sid`, `sug_date`, `subcode`) VALUES
(3, 'Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative thinking to further the overall value proposition. Organically grow the holistic world view of disruptive innovation via workplace diversity and empowerment.', 7, '2022-02-15', 3361602);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `college_code` (`college_code`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`col_code`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`depid`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`nid`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `subcode` (`subcode`),
  ADD KEY `nchapter` (`nchapter`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`prof_id`),
  ADD KEY `pcol_id` (`pcollege`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `scol_id` (`scol_id`);

--
-- Indexes for table `subchap`
--
ALTER TABLE `subchap`
  ADD PRIMARY KEY (`chid`),
  ADD KEY `subcode` (`subcode`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subcode`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`sugid`),
  ADD KEY `sid` (`sid`),
  ADD KEY `subcode` (`subcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `depid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `prof_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subchap`
--
ALTER TABLE `subchap`
  MODIFY `chid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `sugid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`college_code`) REFERENCES `college` (`col_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `professor` (`prof_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `notes_ibfk_2` FOREIGN KEY (`subcode`) REFERENCES `subject` (`subcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`pcollege`) REFERENCES `college` (`col_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`scol_id`) REFERENCES `college` (`col_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subchap`
--
ALTER TABLE `subchap`
  ADD CONSTRAINT `subchap_ibfk_1` FOREIGN KEY (`subcode`) REFERENCES `subject` (`subcode`);

--
-- Constraints for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD CONSTRAINT `suggestion_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suggestion_ibfk_2` FOREIGN KEY (`subcode`) REFERENCES `subject` (`subcode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

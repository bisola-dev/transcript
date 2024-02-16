-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2021 at 04:45 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `founda`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptfee`
--

CREATE TABLE `acceptfee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `session` varchar(100) NOT NULL,
  `datepaid` varchar(100) NOT NULL,
  `plicantid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acceptfee`
--

INSERT INTO `acceptfee` (`id`, `name`, `email`, `amount`, `session`, `datepaid`, `plicantid`) VALUES
(2, 'Temitope tolu', 'temitope@gmail.com', '30000', '20202021', 'Feb 25, 2021 02:38 pm', 1),
(3, 'buhari stella', 'temilolu@yahoo.com', '30000', '20202021', 'Feb 26, 2021 12:21 pm', 9);

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `fulln` varchar(100) NOT NULL,
  `usmal` varchar(100) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'adminuser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `fulln`, `usmal`, `hash`, `status`) VALUES
(1, 'bisola oke', 'bissy@yahoo.com', '8c11b8ab78c2d9279c716a0fcbf894d8', 'adminuser'),
(2, 'gloria', 'gloria123@yahoo.com', '123456', 'adminuser');

-- --------------------------------------------------------

--
-- Table structure for table `ans`
--

CREATE TABLE `ans` (
  `id` int(11) NOT NULL,
  `ans` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ans`
--

INSERT INTO `ans` (`id`, `ans`) VALUES
(1, 'rice'),
(2, 'Amala'),
(3, 'blue'),
(4, 'orange\r\n'),
(6, 'cat'),
(7, 'dog'),
(8, 'running'),
(9, 'football');

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `id` int(11) NOT NULL,
  `psession` varchar(16) NOT NULL,
  `closingdate` date NOT NULL,
  `applicationfee` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Currentsession` varchar(11) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `schoolfee` varchar(200) NOT NULL,
  `acceptfee` varchar(200) NOT NULL,
  `resultfee` varchar(200) NOT NULL,
  `correctionfee` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `app`
--

INSERT INTO `app` (`id`, `psession`, `closingdate`, `applicationfee`, `Currentsession`, `schoolfee`, `acceptfee`, `resultfee`, `correctionfee`) VALUES
(1, '20192020', '2019-03-27', '1200', '0', '', '', '', ''),
(2, '20182019', '2019-10-22', '1300', '0', '', '', '', ''),
(3, '20172018', '2018-03-12', '1300', '0', '', '', '', ''),
(4, '20162017', '2017-12-08', '59000', '0', '', '', '', ''),
(5, '20152016', '2016-12-02', '49000', '0', '', '', '', ''),
(6, '20252026', '2026-03-12', '50000', '0', '', '', '', ''),
(7, '20222023', '2023-05-05', '69000', '0', '', '', '', ''),
(8, '20242025', '2025-10-09', '1200', '0', '', '', '', ''),
(9, '20202021', '2021-07-15', '10000', '1', '68000', '30000', '10000', '5000');

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `appid` varchar(12) DEFAULT NULL,
  `sname` varchar(70) NOT NULL,
  `oname` varchar(70) NOT NULL,
  `emal` varchar(70) NOT NULL,
  `fon` varchar(14) NOT NULL,
  `hpwd` varchar(32) NOT NULL,
  `pix` varchar(120) NOT NULL DEFAULT 'def.png',
  `pixxy` int(11) DEFAULT 0,
  `dreg` varchar(45) NOT NULL,
  `pafom` int(1) NOT NULL DEFAULT 0,
  `dsub` varchar(50) DEFAULT NULL,
  `submstat` int(1) DEFAULT 0,
  `resultveri` int(1) DEFAULT 0,
  `clearsts` int(1) DEFAULT 0,
  `admsts` int(1) DEFAULT 0,
  `secq` varchar(100) DEFAULT NULL,
  `seca` varchar(30) DEFAULT NULL,
  `hemal` varchar(32) NOT NULL,
  `gend` varchar(6) DEFAULT NULL,
  `dob` varchar(15) DEFAULT NULL,
  `aje` int(2) DEFAULT NULL,
  `addy` text DEFAULT NULL,
  `orig` varchar(50) DEFAULT NULL,
  `lga` varchar(50) DEFAULT NULL,
  `natn` varchar(50) DEFAULT NULL,
  `nkin` varchar(100) DEFAULT NULL,
  `nkfon` varchar(15) DEFAULT NULL,
  `disab` varchar(3) DEFAULT NULL,
  `disadet` text DEFAULT NULL,
  `marit` varchar(20) DEFAULT NULL,
  `paname` varchar(150) DEFAULT NULL,
  `paddy` text DEFAULT NULL,
  `pafon` varchar(15) DEFAULT NULL,
  `mysec` varchar(220) DEFAULT NULL,
  `olev` varchar(120) DEFAULT NULL,
  `exmno` varchar(50) DEFAULT NULL,
  `exmyr` varchar(50) DEFAULT NULL,
  `exmpd` varchar(120) DEFAULT NULL,
  `jreg` varchar(50) DEFAULT NULL,
  `jsco` int(3) DEFAULT NULL,
  `progi` varchar(250) DEFAULT NULL,
  `subform` int(1) NOT NULL DEFAULT 0,
  `subcert` int(1) NOT NULL DEFAULT 0,
  `subgrade` int(1) NOT NULL DEFAULT 0,
  `subpix` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `appid`, `sname`, `oname`, `emal`, `fon`, `hpwd`, `pix`, `pixxy`, `dreg`, `pafom`, `dsub`, `submstat`, `resultveri`, `clearsts`, `admsts`, `secq`, `seca`, `hemal`, `gend`, `dob`, `aje`, `addy`, `orig`, `lga`, `natn`, `nkin`, `nkfon`, `disab`, `disadet`, `marit`, `paname`, `paddy`, `pafon`, `mysec`, `olev`, `exmno`, `exmyr`, `exmpd`, `jreg`, `jsco`, `progi`, `subform`, `subcert`, `subgrade`, `subpix`) VALUES
(2, 'CUS2100002', 'Adewale', 'Rasheed', 'ras@gmail.com', '07021234345', '029cba4196c3093e81d8ae3b98dc1aae', 'def.png', 0, 'Mar 20, 2021 07:21 pm', 1, NULL, 0, 0, 0, 0, NULL, NULL, 'a075bb51cf4863bbe53f3f4b958d316c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '', 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `carddeets`
--

CREATE TABLE `carddeets` (
  `id` int(11) NOT NULL,
  `cardnum` varchar(100) NOT NULL,
  `cvv` varchar(100) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `edate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carddeets`
--

INSERT INTO `carddeets` (`id`, `cardnum`, `cvv`, `pin`, `edate`) VALUES
(1, '1234123412341234', '987', '1234', '4321'),
(2, '1234123412341234', '897', '4321', '0521'),
(3, '1234123412341234', '987', '7890', '1234'),
(4, '1234567891234567', '213', '1234', '7865'),
(5, '1234567891234567', '213', '4321', '5632'),
(6, '1234567891234567', '213', '1234', '2341'),
(7, '1234123412341234', '423', '1234', '8769'),
(8, '1234567891234567', '213', '1234', '6790'),
(9, '1234567891234567', '213', '1234', '2345'),
(10, '1234567891234567', '123', '2345', '1234'),
(11, '1234567898765432', '123', '4321', '2356'),
(12, '4567898765432123', '123', '3456', '6789'),
(13, '4567890432156789', '986', '4569', '3452'),
(15, '4567898765432345', '456', '6789', '9087'),
(16, '1234567898765432', '123', '3456', '0221'),
(17, '1234567890876543', '123', '4567', '7809'),
(18, '1234567890876543', '123', '3456', '7809'),
(19, '1234567890987654', '123', '4567', '0823'),
(20, '1234556789876543', '213', '1234', '2123'),
(21, '1234567897865432', '123', '1234', '0221'),
(22, '7987654321234567', '213', '2134', '0245'),
(23, '1234567890987654', '213', '8097', '2123'),
(24, '1234567890987654', '213', '8097', '2123'),
(25, '1234567890987654', '213', '8097', '2123'),
(26, '1234567890987654', '234', '0987', '0723'),
(27, '1234567890987654', '123', '1234', '0821'),
(28, '1234567890987654', '567', '3456', '0221'),
(29, '2345678909876543', '234', '3457', '0965'),
(30, '9876543212345678', '234', '1234', '0221'),
(31, '1234567890987654', '123', '1234', '0231');

-- --------------------------------------------------------

--
-- Table structure for table `cert`
--

CREATE TABLE `cert` (
  `id` int(11) NOT NULL,
  `cert` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cert`
--

INSERT INTO `cert` (`id`, `cert`) VALUES
(1, 'birth certificate'),
(2, 'First school Leaving Certificate'),
(3, 'Letter of Admission');

-- --------------------------------------------------------

--
-- Table structure for table `correctionfee`
--

CREATE TABLE `correctionfee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `session` varchar(100) NOT NULL,
  `datepaid` varchar(100) NOT NULL,
  `plicantid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `correctionfee`
--

INSERT INTO `correctionfee` (`id`, `name`, `email`, `amount`, `session`, `datepaid`, `plicantid`) VALUES
(5, 'Temitope tolu', 'temitope@gmail.com', '5000', '20202021', 'Feb 26, 2021 11:08 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courses` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courses`) VALUES
(1, 'Accountancy'),
(2, 'Computer science'),
(5, 'Biological science'),
(6, 'Chemical Engineering'),
(8, 'Food Technology'),
(9, 'Business Administration'),
(10, 'Law'),
(11, 'Biochemistry'),
(12, 'Architecture'),
(21, 'Hospitality Management.'),
(25, 'Environmental Science'),
(35, 'Banking and finance'),
(79, 'English Education'),
(80, 'Computer education'),
(81, 'Geophysics'),
(82, 'Metallurgy'),
(84, 'Neuroscience'),
(85, 'Criminology'),
(86, 'Dietetics'),
(87, 'Linguistics'),
(88, 'Yoruba'),
(133, 'Human Science');

-- --------------------------------------------------------

--
-- Table structure for table `docupload`
--

CREATE TABLE `docupload` (
  `id` int(11) NOT NULL,
  `studentid` varchar(200) NOT NULL,
  `filly` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `chess` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `docupload`
--

INSERT INTO `docupload` (`id`, `studentid`, `filly`, `name`, `chess`) VALUES
(4, '13', 'buhari stella jambfile.pdf', 'WAEC', 3),
(7, '13', 'The Gifts of Imperfection_ Embrace Who You Are ( PDFDrive ) (1).pdf', 'NECO', 3);

-- --------------------------------------------------------

--
-- Table structure for table `examdeets`
--

CREATE TABLE `examdeets` (
  `id` int(11) NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `sitting` varchar(100) NOT NULL,
  `examtype` varchar(100) NOT NULL,
  `examtype2` varchar(100) NOT NULL,
  `examyear` varchar(100) NOT NULL,
  `examyear2` varchar(100) NOT NULL,
  `examnum` varchar(100) NOT NULL,
  `examnum2` varchar(100) NOT NULL,
  `dreg` varchar(100) NOT NULL,
  `emal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examdeets`
--

INSERT INTO `examdeets` (`id`, `studentid`, `sitting`, `examtype`, `examtype2`, `examyear`, `examyear2`, `examnum`, `examnum2`, `dreg`, `emal`) VALUES
(2, '5', '1', 'NECO', '', '2006', '', '54238954GA', '', 'Feb 22, 2021 01:25 pm', 'tolulope@gmail.com'),
(4, '1', '2', 'WAEC', 'NECO', '2007', '2006', '42578956ET', '42578956QW', 'Feb 23, 2021 12:40 pm', 'temitope@gmail.com'),
(5, '9', '1', 'WAEC', '', '2002', '', '54238954AD', '', 'Feb 26, 2021 11:59 am', 'temilolu@yahoo.com'),
(6, '13', '1', 'NECO', '', '2008', '', '42578956TY', '', 'Feb 28, 2021 01:22 pm', 'adegeye@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `feez`
--

CREATE TABLE `feez` (
  `id` int(11) NOT NULL,
  `fee` varchar(50) NOT NULL,
  `amt` int(11) NOT NULL,
  `dupd` varchar(55) NOT NULL,
  `updby` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feez`
--

INSERT INTO `feez` (`id`, `fee`, `amt`, `dupd`, `updby`) VALUES
(1, 'Application form', 2500, 'March 20, 2021', 'clintonty@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade`) VALUES
(1, 'A1'),
(2, 'B2'),
(3, 'B3'),
(4, 'C4'),
(5, 'C5'),
(6, 'C6'),
(7, 'D7'),
(8, 'E8'),
(9, 'F9'),
(10, 'AR');

-- --------------------------------------------------------

--
-- Table structure for table `jambrecord`
--

CREATE TABLE `jambrecord` (
  `id` int(11) NOT NULL,
  `jambreg` varchar(100) NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `mark` varchar(100) NOT NULL,
  `jambfile` varchar(200) NOT NULL,
  `birthcert` varchar(200) NOT NULL,
  `schoolcert` varchar(200) NOT NULL,
  `othcert` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jambrecord`
--

INSERT INTO `jambrecord` (`id`, `jambreg`, `studentid`, `mark`, `jambfile`, `birthcert`, `schoolcert`, `othcert`) VALUES
(6, '456765434YU', '5', '250', 'voters.docx', '', '', ''),
(7, '52345678WQ', '1', '245', 'The Gifts of Imperfection_ Embrace Who You Are ( PDFDrive ).pdf', 'The 5 Second Rule_ Transform your Life, Work, and Confidence with Everyday Courage ( PDFDrive ).pdf', 'The Gifts of Imperfection_ Embrace Who You Are ( PDFDrive ) (1).pdf', 'The 5 Second Rule_ Transform your Life, Work, and Confidence with Everyday Courage ( PDFDrive ).pdf'),
(8, '456765434YU', '9', '240', 'The 5 Second Rule_ Transform your Life, Work, and Confidence with Everyday Courage ( PDFDrive ).pdf', 'The Gifts of Imperfection_ Embrace Who You Are ( PDFDrive ) (1).pdf', 'The 5 Second Rule_ Transform your Life, Work, and Confidence with Everyday Courage ( PDFDrive ).pdf', '');

-- --------------------------------------------------------

--
-- Table structure for table `logger`
--

CREATE TABLE `logger` (
  `id` int(11) NOT NULL,
  `uzer` varchar(100) NOT NULL,
  `activity` text NOT NULL,
  `timereg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logger`
--

INSERT INTO `logger` (`id`, `uzer`, `activity`, `timereg`) VALUES
(1, 'ras@gmail.com', 'Registered as fresh applicant', 'Mar 20, 2021 07:21 pm'),
(2, 'ras@gmail.com', 'Logged in to portal', 'Mar 20, 2021 07:44 pm'),
(3, 'ras@gmail.com', 'Logged in to portal', 'Mar 20, 2021 08:04 pm'),
(4, 'ras@gmail.com', 'Logged in to portal', 'Mar 20, 2021 08:06 pm'),
(5, 'ras@gmail.com', 'Logged in to portal', 'Mar 20, 2021 08:06 pm'),
(6, 'ras@gmail.com', 'Paid for application form successfully', 'Mar 20, 2021 09:51 pm'),
(7, 'ras@gmail.com', 'Logged in to portal', 'Mar 20, 2021 10:41 pm'),
(8, 'ras@gmail.com', 'Logged in to portal', 'Mar 21, 2021 04:21 pm'),
(9, 'ras@gmail.com', 'Logged in to portal', 'Mar 22, 2021 12:43 am'),
(10, 'ras@gmail.com', 'Logged in to portal', 'Mar 22, 2021 12:45 am');

-- --------------------------------------------------------

--
-- Table structure for table `olevel`
--

CREATE TABLE `olevel` (
  `id` int(11) NOT NULL,
  `studentid` int(100) NOT NULL,
  `sitting` varchar(100) NOT NULL,
  `oleveldoc` varchar(300) NOT NULL,
  `chess` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `olevel`
--

INSERT INTO `olevel` (`id`, `studentid`, `sitting`, `oleveldoc`, `chess`) VALUES
(1, 1, '2', 'The Gifts of Imperfection_ Embrace Who You Are ( PDFDrive ) (1).pdf', 2),
(2, 9, '1', '', 0),
(3, 13, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `othupload`
--

CREATE TABLE `othupload` (
  `id` int(11) NOT NULL,
  `filly` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `studentid` varchar(200) NOT NULL,
  `sitting` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `othupload`
--

INSERT INTO `othupload` (`id`, `filly`, `name`, `studentid`, `sitting`) VALUES
(1, '', '', '13', ''),
(2, '', '', '13', '');

-- --------------------------------------------------------

--
-- Table structure for table `payform`
--

CREATE TABLE `payform` (
  `id` int(11) NOT NULL,
  `lame` varchar(100) NOT NULL,
  `emal` varchar(70) NOT NULL,
  `amtt` decimal(8,2) NOT NULL,
  `sessn` varchar(15) NOT NULL,
  `dpaid` varchar(100) NOT NULL,
  `appid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payform`
--

INSERT INTO `payform` (`id`, `lame`, `emal`, `amtt`, `sessn`, `dpaid`, `appid`) VALUES
(1, 'toyin aimkhahu', 'toyinoyebade1@yahoo.com', '1200.00', '20192020', 'Feb 8, 2021 04:26 pm', '3'),
(3, 'shade uche', 'gregory@yahoo.com', '10000.00', '20202021', 'Feb 10, 2021 10:13 am', '1'),
(7, 'Kemisola Bernice oyetibo', 'bernice@yahoo.co.nz', '10000.00', '20202021', 'Feb 11, 2021 10:03 am', '12'),
(8, 'taiwo stanley', 'taiwo@gmail.com', '10000.00', '20202021', 'Feb 15, 2021 10:03 am', '13'),
(9, 'toluwalope Andrews', 'tolulope@gmail.com', '10000.00', '20202021', 'Feb 21, 2021 08:36 pm', '5'),
(10, 'Temitope tolu', 'temitope@gmail.com', '10000.00', '20202021', 'Feb 23, 2021 12:11 pm', '1'),
(11, 'buhari stella', 'temilolu@yahoo.com', '10000.00', '20202021', 'Feb 26, 2021 11:58 am', '9'),
(12, 'Adegeyesamson', 'adegeye@yahoo.com', '10000.00', '20202021', 'Feb 28, 2021 01:10 pm', '13'),
(13, 'Adewale Rasheed', 'ras@gmail.com', '3000.00', '2021/2022', 'Mar 20, 2021 09:51 pm', 'CUS2100002');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `ques` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `ques`) VALUES
(1, 'what is your favourite food'),
(2, 'what is your favourite colour'),
(3, 'what is your favourite pet'),
(4, 'what is your favourite sport\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `resultfee`
--

CREATE TABLE `resultfee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `session` varchar(100) NOT NULL,
  `datepaid` varchar(100) NOT NULL,
  `plicantid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resultfee`
--

INSERT INTO `resultfee` (`id`, `name`, `email`, `amount`, `session`, `datepaid`, `plicantid`) VALUES
(1, 'Temitope tolu', 'temitope@gmail.com', '10000', '20202021', 'Feb 23, 2021 09:52 pm', 1),
(2, 'buhari stella', 'temilolu@yahoo.com', '10000', '20202021', 'Feb 26, 2021 12:04 pm', 9),
(3, 'Adegeyesamson', 'adegeye@yahoo.com', '10000', '20202021', 'Feb 28, 2021 01:30 pm', 13);

-- --------------------------------------------------------

--
-- Table structure for table `schoolfee`
--

CREATE TABLE `schoolfee` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `session` varchar(100) NOT NULL,
  `datepaid` varchar(100) NOT NULL,
  `plicantid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolfee`
--

INSERT INTO `schoolfee` (`id`, `name`, `email`, `amount`, `session`, `datepaid`, `plicantid`) VALUES
(5, 'Temitope tolu', 'temitope@gmail.com', '68000', '20202021', 'Feb 25, 2021 01:28 pm', 1),
(6, 'buhari stella', 'temilolu@yahoo.com', '68000', '20202021', 'Feb 26, 2021 12:49 pm', 9);

-- --------------------------------------------------------

--
-- Table structure for table `setaz`
--

CREATE TABLE `setaz` (
  `id` int(11) NOT NULL,
  `slame` varchar(200) NOT NULL,
  `sess` varchar(20) NOT NULL,
  `supo` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `setaz`
--

INSERT INTO `setaz` (`id`, `slame`, `sess`, `supo`) VALUES
(1, 'Confluence University of Science and Technology Osara, Kogi State', '2021/2022', 'Call support');

-- --------------------------------------------------------

--
-- Table structure for table `subby`
--

CREATE TABLE `subby` (
  `id` int(11) NOT NULL,
  `studentid` varchar(100) NOT NULL,
  `examtype` varchar(200) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subby`
--

INSERT INTO `subby` (`id`, `studentid`, `examtype`, `subject`, `grade`) VALUES
(1, '1', 'NECO', 'Capentry', 'B2'),
(2, '1', 'WAEC', 'Biology', 'B3'),
(3, '1', 'NECO', 'Civic Education', 'C5'),
(4, '1', 'WAEC', 'Mathematics', 'C6'),
(5, '1', 'WAEC', 'Use of English Language', 'C4'),
(6, '1', 'WAEC', 'Commerce', 'B2'),
(7, '9', 'WAEC', 'Accounting', 'A1'),
(8, '9', 'WAEC', 'Biology', 'B3'),
(9, '9', 'WAEC', 'Government', 'C5'),
(10, '9', 'WAEC', 'Literature', 'C4'),
(11, '9', 'WAEC', 'Capentry', 'C5'),
(12, '13', 'NECO', 'Accounting', 'B2'),
(13, '13', 'NECO', 'Biology', 'C4'),
(14, '13', 'NECO', 'Biology', 'A1'),
(15, '13', 'NECO', 'Government', 'C6'),
(16, '13', 'NECO', 'Furthermathematics', 'C5');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subjects` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjects`) VALUES
(40, 'Chemistry'),
(41, 'Civic Education'),
(42, 'Geography'),
(43, 'Mathematics'),
(44, 'Furthermathematics'),
(45, 'Capentry'),
(47, 'Government'),
(48, 'Use of English Language'),
(49, 'Literature'),
(50, 'Food & Nutrition'),
(51, 'Accounting'),
(52, 'Commerce'),
(53, 'CRK'),
(55, 'Biology'),
(57, 'History'),
(58, 'Woodwork');

-- --------------------------------------------------------

--
-- Table structure for table `xamtype`
--

CREATE TABLE `xamtype` (
  `id` int(11) NOT NULL,
  `examtypes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xamtype`
--

INSERT INTO `xamtype` (`id`, `examtypes`) VALUES
(1, 'WAEC'),
(2, 'NECO'),
(3, 'NABTEB'),
(4, 'GCE'),
(5, 'JAMB');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year`) VALUES
(1, '1990'),
(2, '1991'),
(3, '1992'),
(4, '1993'),
(5, '1994'),
(6, '1995'),
(7, '1996'),
(8, '1997'),
(9, '1998'),
(10, '1999'),
(11, '2000'),
(12, '2001'),
(13, '2002'),
(14, '2003'),
(15, '2004'),
(16, '2005'),
(17, '2006'),
(18, '2007'),
(19, '2008'),
(20, '2009'),
(21, '2010'),
(22, '2011'),
(23, '2012'),
(24, '2013'),
(25, '2014'),
(26, '2015'),
(27, '2016'),
(28, '2017'),
(29, '2018'),
(30, '2019'),
(31, '2020');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptfee`
--
ALTER TABLE `acceptfee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ans`
--
ALTER TABLE `ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carddeets`
--
ALTER TABLE `carddeets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cert`
--
ALTER TABLE `cert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `correctionfee`
--
ALTER TABLE `correctionfee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docupload`
--
ALTER TABLE `docupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examdeets`
--
ALTER TABLE `examdeets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feez`
--
ALTER TABLE `feez`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jambrecord`
--
ALTER TABLE `jambrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `olevel`
--
ALTER TABLE `olevel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `othupload`
--
ALTER TABLE `othupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payform`
--
ALTER TABLE `payform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resultfee`
--
ALTER TABLE `resultfee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schoolfee`
--
ALTER TABLE `schoolfee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setaz`
--
ALTER TABLE `setaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subby`
--
ALTER TABLE `subby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xamtype`
--
ALTER TABLE `xamtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptfee`
--
ALTER TABLE `acceptfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ans`
--
ALTER TABLE `ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `app`
--
ALTER TABLE `app`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carddeets`
--
ALTER TABLE `carddeets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `cert`
--
ALTER TABLE `cert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `correctionfee`
--
ALTER TABLE `correctionfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `docupload`
--
ALTER TABLE `docupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `examdeets`
--
ALTER TABLE `examdeets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feez`
--
ALTER TABLE `feez`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jambrecord`
--
ALTER TABLE `jambrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `olevel`
--
ALTER TABLE `olevel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `othupload`
--
ALTER TABLE `othupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payform`
--
ALTER TABLE `payform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resultfee`
--
ALTER TABLE `resultfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schoolfee`
--
ALTER TABLE `schoolfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setaz`
--
ALTER TABLE `setaz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subby`
--
ALTER TABLE `subby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `xamtype`
--
ALTER TABLE `xamtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2021 at 10:46 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolman`
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
  `schname` varchar(100) NOT NULL,
  `admail` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `addy` varchar(200) NOT NULL,
  `hemal` varchar(100) NOT NULL,
  `hpazz` varchar(100) NOT NULL,
  `fon` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL DEFAULT '0',
  `skid` varchar(100) NOT NULL,
  `dreg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `fulln`, `schname`, `admail`, `logo`, `addy`, `hemal`, `hpazz`, `fon`, `role`, `skid`, `dreg`) VALUES
(1, 'bisola makinwa', '', 'bisolamakinwa@yahoo.com', '', '', 'ec4569fe47b04a9843e964a047b9faa6', '8ab0198b1ea66ff63b10fd05bef7f9c3', '08034568712', '0', '', ''),
(2, 'Gabriella smith', 'taju International School', 'smith@yahoo.com', NULL, '12,fafunwa street, gbagada', '0fc288618dcdda3445de971ef0171e2a', 'd2f591b43983be677334ef7903b551d5', '08067432195', '1', '', 'Sep 28, 2021 09:39 am'),
(3, 'Tejumola daniels', 'Maryland educational school', 'tejumola@yahoo.com', '1633692316bukomo.png', '46,grace street ,Agbara Lagos', 'c7793a5dc358761cb472041869630dc4', 'd2f591b43983be677334ef7903b551d5', '08056341567', '1', '', 'Sep 28, 2021 10:26 am'),
(4, 'henrietta', 'henrietta Goodluck schools', 'henrietta@yahoo.com', '1633789613thumbnail.jpg', '16,olagbenro street ,Yaba-Lagos.', '15a9c8232bc5f4b987931cf453885f36', 'd2f591b43983be677334ef7903b551d5', '08076543421', '1', '', 'Oct 9, 2021 12:58 pm');

-- --------------------------------------------------------

--
-- Table structure for table `admissionz`
--

CREATE TABLE `admissionz` (
  `id` int(11) NOT NULL,
  `apnum` varchar(20) NOT NULL,
  `lame` varchar(100) NOT NULL,
  `program` varchar(100) NOT NULL,
  `programtype` varchar(100) NOT NULL,
  `categ` varchar(100) NOT NULL,
  `admittedby` varchar(50) NOT NULL,
  `dateadmitted` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admissionz`
--

INSERT INTO `admissionz` (`id`, `apnum`, `lame`, `program`, `programtype`, `categ`, `admittedby`, `dateadmitted`) VALUES
(1, 'CUS00003', 'Ogunjobi Jumoke Anu', 'Accountancy', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 08:41 pm'),
(2, 'CUS00004', 'Babatunde Kayode', 'Accountancy', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 08:41 pm'),
(3, 'CUS00001', 'Yakubu Eriayo Joyful', 'Computer Engineering', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 08:55 pm'),
(4, 'CUS00017', 'Soyele Tobi', 'Computer Science', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 08:58 pm'),
(5, 'CUS00010', 'Eriife Oluwagbemiga', 'Hospitality Management', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 09:13 pm'),
(6, 'CUS00018', 'Afolabi Olayemi', 'Hospitality Management', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 09:27 pm'),
(7, 'CUS00002', 'Ajayi Taiwo Joshua', 'Business Administration', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 10:27 pm'),
(8, 'CUS00014', 'Salami Seun', 'Business Administration', 'BSc Full Time', 'Merit', 'admin@gmail.com', 'Mar 14, 2021 10:27 pm'),
(9, 'CUS00012', 'Ijanmi Olakunle', 'Hospitality Management', 'BSc Full Time', 'Supplementary 1', 'admin@gmail.com', 'Mar 14, 2021 10:35 pm'),
(10, 'CUS00019', 'Taiwo Alani', 'Hospitality Management', 'BSc Full Time', 'Supplementary 1', 'admin@gmail.com', 'Mar 14, 2021 10:35 pm'),
(12, 'CUS00007', 'Ajayi Temitayo Anu', 'Accountancy', 'Bsc Full Time', 'Supplementary 1', 'admin@gmail.com', 'Apr 8, 2021 10:51 pm'),
(13, 'CUS00011', 'Adedayo Dimeji', 'Computer Science', 'Bsc Full Time', 'Merit', 'admin@gmail.com', 'Apr 8, 2021 11:37 pm'),
(14, 'CUS00016', 'Femi Olaifa', 'Business Administration', 'Bsc Full Time', 'Merit', 'admin@gmail.com', 'Apr 27, 2021 10:48 am');

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
  `sname` varchar(70) DEFAULT NULL,
  `oname` varchar(70) DEFAULT NULL,
  `emal` varchar(70) DEFAULT NULL,
  `fon` varchar(14) DEFAULT NULL,
  `hpwd` varchar(32) DEFAULT NULL,
  `pix` varchar(120) DEFAULT 'def.png',
  `pasyes` int(11) NOT NULL DEFAULT 0,
  `pixxy` int(11) DEFAULT 0,
  `dreg` varchar(45) DEFAULT NULL,
  `pafom` int(1) DEFAULT 0,
  `dsub` varchar(50) DEFAULT NULL,
  `submstat` int(1) DEFAULT 0,
  `resultveri` int(1) DEFAULT 0,
  `clearsts` int(1) DEFAULT 0,
  `admsts` int(1) DEFAULT 0,
  `secq` varchar(100) DEFAULT NULL,
  `seca` varchar(30) DEFAULT NULL,
  `hemal` varchar(32) DEFAULT NULL,
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
  `olev2` varchar(100) DEFAULT NULL,
  `olevyes` int(11) NOT NULL DEFAULT 0,
  `exmno2` varchar(100) DEFAULT NULL,
  `exmyr2` varchar(100) DEFAULT NULL,
  `exmpd2` varchar(100) DEFAULT NULL,
  `jreg` varchar(50) DEFAULT NULL,
  `jsco` int(3) DEFAULT NULL,
  `jambsub1` varchar(100) NOT NULL DEFAULT 'Use of English Language',
  `jsubscor1` varchar(100) DEFAULT NULL,
  `jambsub2` varchar(100) DEFAULT NULL,
  `jsubscor2` varchar(100) DEFAULT NULL,
  `jambsub3` varchar(100) DEFAULT NULL,
  `jsubscor3` varchar(100) DEFAULT NULL,
  `jambsub4` varchar(100) DEFAULT NULL,
  `jsubscor4` varchar(100) DEFAULT NULL,
  `jambdeet` int(11) DEFAULT 0,
  `progi` varchar(250) DEFAULT NULL,
  `formyes` int(11) NOT NULL DEFAULT 0,
  `subform` int(1) DEFAULT 0,
  `subcert` int(1) DEFAULT 0,
  `subgrade` int(1) DEFAULT 0,
  `subpix` int(1) DEFAULT 0,
  `uplev1` varchar(120) DEFAULT NULL,
  `uplev2` varchar(120) DEFAULT NULL,
  `upjamb` varchar(120) DEFAULT NULL,
  `upbcert` varchar(120) DEFAULT NULL,
  `oppyes` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `appid`, `sname`, `oname`, `emal`, `fon`, `hpwd`, `pix`, `pasyes`, `pixxy`, `dreg`, `pafom`, `dsub`, `submstat`, `resultveri`, `clearsts`, `admsts`, `secq`, `seca`, `hemal`, `gend`, `dob`, `aje`, `addy`, `orig`, `lga`, `natn`, `nkin`, `nkfon`, `disab`, `disadet`, `marit`, `paname`, `paddy`, `pafon`, `mysec`, `olev`, `exmno`, `exmyr`, `exmpd`, `olev2`, `olevyes`, `exmno2`, `exmyr2`, `exmpd2`, `jreg`, `jsco`, `jambsub1`, `jsubscor1`, `jambsub2`, `jsubscor2`, `jambsub3`, `jsubscor3`, `jambsub4`, `jsubscor4`, `jambdeet`, `progi`, `formyes`, `subform`, `subcert`, `subgrade`, `subpix`, `uplev1`, `uplev2`, `upjamb`, `upbcert`, `oppyes`) VALUES
(5, 'CUS2100005', 'Yusuf', 'lalulde', 'yusuf@gmail.com', '09098998980', '029cba4196c3093e81d8ae3b98dc1aae', '1618889739olusesi.jpeg', 0, 0, 'Apr 19, 2021 07:26 pm', 1, NULL, 0, 0, 0, 0, NULL, NULL, '88f998bde4bb98ffedd3d9bf7639c577', 'Male', '1999-12-12', 19, '34, Lawal Johnson Street, Agege, Lagos.', 'Osun', 'Boripe', 'Nigerian', 'Mr Sule', '09023234312', 'No', 'Nothing', 'Single', 'Mr and Mrs Jegede', 'No 2, Dada Close, Abia Lagos', '08055667788', 'Feyingbole Secondary', 'WAEC', 'TY67654312', '2020', 'May/June', 'NABTEB', 0, 'RE656789', '2019', 'May/June', 'TY34536354', 213, '', '', '', '', '', '', '', '', 0, 'Medicine & Surgery', 1, 1, 0, 0, 0, '1618888821Screenshot from 2021-02-08 23-05-49.png', '1618889047Screenshot from 2021-02-28 01-19-18.png', '1618889028Screenshot from 2021-03-24 22-44-10.png', '1618889165Screenshot from 2021-03-13 14-07-54.png', 0),
(6, 'CUS2100006', 'Oke', 'Abisola', 'bisola_oak@yahoo.com', '08057612367', '8ab0198b1ea66ff63b10fd05bef7f9c3', '1619169758PND193330074.jpg', 1, 0, 'Apr 23, 2021 10:13 am', 1, NULL, 1, 1, 0, 0, NULL, NULL, '444779f5aee412684114b299d01321be', 'Female', '1988-02-23', 50, '12,durosinmi street ,Shomolu-lagos.', '13', '243', 'Nigerian', 'Bimbo Oke', '08023451290', 'No', 'none', 'Married', 'Mr.thomas  ', '12,durosinmi street, shomolu-lagos.', '08120973748', 'Arch bishop Aggey Memorial Secondary school', 'WAEC', '435897654DE', '2019', 'May/June', 'NECO', 1, '56789434WE', '2018', 'November/December', '42567834ER', 202, '', '', '', '', '', '', '', '', 0, 'Medicine & Surgery', 1, 1, 0, 0, 0, '1619181418Screenshot (1).png', '1619181444Screenshot (4).png', '1619181430Screenshot (8).png', '1619190238Screenshot (7).png', 1),
(7, 'CUS2100007', 'Ajiwere', 'samuel', 'samuelajiwere@yahoo.com', '08067541234', '8ab0198b1ea66ff63b10fd05bef7f9c3', '1619193206thumbnail.jpg', 1, 0, 'Apr 23, 2021 04:51 pm', 1, NULL, 1, 0, 0, 0, NULL, NULL, 'b4cfcfd0f1043c673c71a2775154dfd7', 'Male', '1993-02-23', 28, '45,durosinmi street ,Shomolu-Lagos.', '18', '336', 'Nigerian', 'samson ajiwere', '08054231209', 'No', 'none', 'Single', 'Mrs. wells', '89,durosinmi street, shomolu-lagos.', '08095632120', 'Arch bishop Aggey Memorial Secondary school', 'WAEC', '435897654OL', '2020', 'May/June', 'NECO', 1, '56789434YU', '2019', 'November/December', '42567838UE', 208, '', '', '', '', '', '', '', '', 0, 'Electrical Electronics Engineering', 1, 1, 0, 0, 0, '1619193514welfare donation..jpg', '1619193650bukomo.png', '1619193524PND193330074.jpg', '1619193673thumbnail.jpg', 1),
(8, 'CUS2100008', 'Akinwale', 'johnson', 'akinwalejohnson@yahoo.com', '08057612389', '8ab0198b1ea66ff63b10fd05bef7f9c3', 'def.png', 0, 0, 'Apr 28, 2021 03:29 pm', 1, NULL, 0, 1, 0, 0, NULL, NULL, 'ba5f9d0cfee3b990ac1a5e6fbeb8410d', 'Female', '1970-05-28', 29, '16,olagbenrostreet ,Yaba-Lagos.', '', '189', 'Nigerian', 'Tundun Ayoola', '08127056734', 'No', 'none', 'Married', 'Mr. tundun', '91b,teju street, yaba-lagos.', '08097654321', 'saint mariah  secondary school', 'WAEC', '435897654DE', '2019', 'May/June', NULL, 0, NULL, NULL, NULL, '42567612OM', 230, '', '', '', '', '', '', '', '', 0, 'Electrical Electronics Engineering', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(9, 'CUS2100009', 'oyemade', 'toyin', 'toyin@yahoo.com', '08045321289', '8ab0198b1ea66ff63b10fd05bef7f9c3', 'def.png', 0, 0, 'Apr 29, 2021 02:40 pm', 1, NULL, 0, 1, 0, 1, NULL, NULL, '34e14a550bff58235a55a1a9e5ef73c7', 'Female', '2021-04-21', 23, '21,duro street , mushin-lagos', '16', '288', 'Nigerian', 'bunmi', '08076543210', 'No', 'none', 'Single', 'mrs wills', '12,fafunwa street, gbagada', '0806743219', 'dickson Secondary school', 'WAEC', '4235678AD', '2020', 'May/June', 'NECO', 1, '4235678GR', '2019', 'November/December', '45678943WE', 309, 'Use of English', '23', 'Accounting', '45', 'Mathematics', '56', 'Accounting', '89', 1, 'Electrical Electronics Engineering', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 0),
(10, 'CUS2100010', 'toki', 'tobi', 'tobitoki@yahoo.com', '08097654312', '8ab0198b1ea66ff63b10fd05bef7f9c3', 'def.png', 0, 0, 'Jun 11, 2021 01:48 pm', 1, NULL, 0, 0, 0, 0, NULL, NULL, '87aa5f9bef96180e4366e4acde27d3ed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 'Use of English Language', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0);

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
-- Table structure for table `jambdetails`
--

CREATE TABLE `jambdetails` (
  `jambsub` varchar(100) NOT NULL,
  `jsubscor` varchar(100) NOT NULL,
  `appid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(10, 'ras@gmail.com', 'Logged in to portal', 'Mar 22, 2021 12:45 am'),
(11, 'destiny@yahoo.com', 'Registered as fresh applicant', 'Apr 12, 2021 04:22 pm'),
(12, 'yaya@gmail.com', 'Registered as fresh applicant', 'Apr 12, 2021 04:34 pm'),
(13, 'yaya@gmail.com', 'Logged in to portal', 'Apr 12, 2021 04:40 pm'),
(14, 'yaya@gmail.com', 'Paid for application form successfully', 'Apr 12, 2021 04:49 pm'),
(15, 'destiny@yahoo.com', 'Logged in to portal', 'Apr 13, 2021 01:07 pm'),
(16, 'destiny@yahoo.com', 'Paid for application form successfully', 'Apr 13, 2021 01:07 pm'),
(17, 'yusuf@gmail.com', 'Registered as fresh applicant', 'Apr 19, 2021 07:26 pm'),
(18, 'yusuf@gmail.com', 'Logged in to portal', 'Apr 19, 2021 07:27 pm'),
(19, 'yusuf@gmail.com', 'Paid for application form successfully', 'Apr 19, 2021 07:27 pm'),
(20, 'yusuf@gmail.com', 'Paid for application form successfully', 'Apr 20, 2021 12:38 am'),
(21, 'yusuf@gmail.com', 'Paid for application form successfully', 'Apr 20, 2021 12:40 am'),
(22, 'yusuf@gmail.com', 'Paid for application form successfully', 'Apr 20, 2021 12:43 am'),
(23, 'yusuf@gmail.com', 'Paid for application form successfully', 'Apr 20, 2021 12:44 am'),
(24, 'yusuf@gmail.com', 'Generated application ID successfully', 'Apr 20, 2021 12:45 am'),
(25, 'yusuf@gmail.com', 'Paid for application form successfully', 'Apr 20, 2021 12:47 am'),
(26, 'yusuf@gmail.com', 'Generated application ID successfully', 'Apr 20, 2021 12:47 am'),
(27, 'yusuf@gmail.com', 'Logged in to portal', 'Apr 20, 2021 03:22 pm'),
(28, 'yusuf@gmail.com', 'Logged in to portal', 'Apr 23, 2021 12:17 am'),
(29, 'bisola_oak@yahoo.com', 'Registered as fresh applicant', 'Apr 23, 2021 10:13 am'),
(30, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Apr 23, 2021 10:13 am'),
(31, 'bisola_oak@yahoo.com', 'Paid for application form successfully', 'Apr 23, 2021 10:23 am'),
(32, 'bisola_oak@yahoo.com', 'Generated application ID successfully', 'Apr 23, 2021 10:23 am'),
(33, 'samuelajiwere@yahoo.com', 'Registered as fresh applicant', 'Apr 23, 2021 04:51 pm'),
(34, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 23, 2021 04:51 pm'),
(35, 'samuelajiwere@yahoo.com', 'Paid for application form successfully', 'Apr 23, 2021 04:51 pm'),
(36, 'samuelajiwere@yahoo.com', 'Generated application ID successfully', 'Apr 23, 2021 04:51 pm'),
(37, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 02:59 pm'),
(38, 'bisola_oak@yahoo.com', 'Paid for result verification successfully', 'Apr 28, 2021 03:05 pm'),
(39, 'bisola_oak@yahoo.com', 'Paid for result verification successfully', 'Apr 28, 2021 03:10 pm'),
(40, 'bisola_oak@yahoo.com', 'Paid for result verification successfully', 'Apr 28, 2021 03:28 pm'),
(41, 'akinwalejohnson@yahoo.com', 'Registered as fresh applicant', 'Apr 28, 2021 03:29 pm'),
(42, 'akinwalejohnson@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:29 pm'),
(43, 'akinwalejohnson@yahoo.com', 'Paid for application form successfully', 'Apr 28, 2021 03:30 pm'),
(44, 'akinwalejohnson@yahoo.com', 'Paid for result verification successfully', 'Apr 28, 2021 03:39 pm'),
(45, 'akinwalejohnson@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:40 pm'),
(46, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:40 pm'),
(47, 'bisola_oak@yahoo.com', 'Paid for result verification successfully', 'Apr 28, 2021 03:41 pm'),
(48, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:50 pm'),
(49, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:54 pm'),
(50, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:58 pm'),
(51, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 03:59 pm'),
(52, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 04:04 pm'),
(53, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 04:06 pm'),
(54, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 04:07 pm'),
(55, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 04:08 pm'),
(56, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 28, 2021 04:20 pm'),
(57, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 29, 2021 10:01 am'),
(58, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Apr 29, 2021 02:33 pm'),
(59, 'toyin@yahoo.com', 'Registered as fresh applicant', 'Apr 29, 2021 02:40 pm'),
(60, 'toyin@yahoo.com', 'Logged in to portal', 'Apr 29, 2021 02:41 pm'),
(61, 'toyin@yahoo.com', 'Paid for application form successfully', 'Apr 29, 2021 02:41 pm'),
(62, 'toyin@yahoo.com', 'Generated application ID successfully', 'Apr 29, 2021 02:41 pm'),
(63, 'toyin@yahoo.com', 'Logged in to portal', 'Apr 30, 2021 03:32 pm'),
(64, 'toyin@yahoo.com', 'Paid for result verification successfully', 'Apr 30, 2021 04:18 pm'),
(65, 'toyin@yahoo.com', 'Paid for result verification successfully', 'Apr 30, 2021 04:19 pm'),
(66, 'toyin@yahoo.com', 'Paid for result verification successfully', 'Apr 30, 2021 04:23 pm'),
(67, 'toyin@yahoo.com', 'Paid for result verification successfully', 'Apr 30, 2021 04:25 pm'),
(68, 'toyin@yahoo.com', 'Paid for result verification successfully', 'Apr 30, 2021 04:26 pm'),
(69, 'tobitoki@yahoo.com', 'Registered as fresh applicant', 'Jun 11, 2021 01:48 pm'),
(70, 'tobitoki@yahoo.com', 'Logged in to portal', 'Jun 11, 2021 01:48 pm'),
(71, 'tobitoki@yahoo.com', 'Paid for application form successfully', 'Jun 11, 2021 01:49 pm'),
(72, 'tobitoki@yahoo.com', 'Paid for application form successfully', 'Jun 11, 2021 01:49 pm'),
(73, 'samuelajiwere@yahoo.com', 'Paid for application form successfully', 'Jun 11, 2021 02:10 pm'),
(74, 'samuelajiwere@yahoo.com', 'Paid for application form successfully', 'Jun 11, 2021 02:11 pm'),
(75, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Jun 11, 2021 02:32 pm'),
(76, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Jun 12, 2021 06:20 pm'),
(77, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Jun 12, 2021 06:21 pm'),
(78, 'samuelajiwere@yahoo.com', 'Logged in to portal', 'Jun 15, 2021 12:40 pm'),
(79, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Sep 24, 2021 11:08 am'),
(80, 'bisola_oak@yahoo.com', 'Logged in to portal', 'Sep 24, 2021 11:11 am'),
(81, 'bisola_oak@yahoo.com', 'Paid for result verification successfully', 'Sep 24, 2021 11:17 am');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `id` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `lga` varchar(22) NOT NULL,
  `state` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `stateid`, `lga`, `state`) VALUES
(1, 1, 'Aba North', 'Abia State'),
(2, 1, 'Aba South', 'Abia State'),
(3, 1, 'Arochukwu', 'Abia State'),
(4, 1, 'Bende', 'Abia State'),
(5, 1, 'Ikwuano', 'Abia State'),
(6, 1, 'Isiala Ngwa North', 'Abia State'),
(7, 1, 'Isiala Ngwa South', 'Abia State'),
(8, 1, 'Isuikwuato', 'Abia State'),
(9, 1, 'Obi Ngwa', 'Abia State'),
(10, 1, 'Ohafia', 'Abia State'),
(11, 1, 'Osisioma', 'Abia State'),
(12, 1, 'Ugwunagbo', 'Abia State'),
(13, 1, 'Ukwa East', 'Abia State'),
(14, 1, 'Ukwa West', 'Abia State'),
(15, 1, 'Umuahia North', 'Abia State'),
(16, 1, 'Umuahia South', 'Abia State'),
(17, 1, 'Umu Nneochi', 'Abia State'),
(18, 2, 'Demsa', 'Adamawa State'),
(19, 2, 'Fufure', 'Adamawa State'),
(20, 2, 'Ganye', 'Adamawa State'),
(21, 2, 'Gayuk', 'Adamawa State'),
(22, 2, 'Gombi', 'Adamawa State'),
(23, 2, 'Grie', 'Adamawa State'),
(24, 2, 'Hong', 'Adamawa State'),
(25, 2, 'Jada', 'Adamawa State'),
(26, 2, 'Lamurde', 'Adamawa State'),
(27, 2, 'Madagali', 'Adamawa State'),
(28, 2, 'Maiha', 'Adamawa State'),
(29, 2, 'Mayo Belwa', 'Adamawa State'),
(30, 2, 'Michika', 'Adamawa State'),
(31, 2, 'Mubi North', 'Adamawa State'),
(32, 2, 'Mubi South', 'Adamawa State'),
(33, 2, 'Numan', 'Adamawa State'),
(34, 2, 'Shelleng', 'Adamawa State'),
(35, 2, 'Song', 'Adamawa State'),
(36, 2, 'Toungo', 'Adamawa State'),
(37, 2, 'Yola North', 'Adamawa State'),
(38, 2, 'Yola South', 'Adamawa State'),
(39, 3, 'Abak', 'Akwa Ibom State'),
(40, 3, 'Eastern Obolo', 'Akwa Ibom State'),
(41, 3, 'Eket', 'Akwa Ibom State'),
(42, 3, 'Esit Eket', 'Akwa Ibom State'),
(43, 3, 'Essien Udim', 'Akwa Ibom State'),
(44, 3, 'Etim Ekpo', 'Akwa Ibom State'),
(45, 3, 'Etinan', 'Akwa Ibom State'),
(46, 3, 'Ibeno', 'Akwa Ibom State'),
(47, 3, 'Ibesikpo Asutan', 'Akwa Ibom State'),
(48, 3, 'Ibiono-Ibom', 'Akwa Ibom State'),
(49, 3, 'Ika', 'Akwa Ibom State'),
(50, 3, 'Ikono', 'Akwa Ibom State'),
(51, 3, 'Ikot Abasi', 'Akwa Ibom State'),
(52, 3, 'Ikot Ekpene', 'Akwa Ibom State'),
(53, 3, 'Ini', 'Akwa Ibom State'),
(54, 3, 'Itu', 'Akwa Ibom State'),
(55, 3, 'Mbo', 'Akwa Ibom State'),
(56, 3, 'Mkpat-Enin', 'Akwa Ibom State'),
(57, 3, 'Nsit-Atai', 'Akwa Ibom State'),
(58, 3, 'Nsit-Ibom', 'Akwa Ibom State'),
(59, 3, 'Nsit-Ubium', 'Akwa Ibom State'),
(60, 3, 'Obot Akara', 'Akwa Ibom State'),
(61, 3, 'Okobo', 'Akwa Ibom State'),
(62, 3, 'Onna', 'Akwa Ibom State'),
(63, 3, 'Oron', 'Akwa Ibom State'),
(64, 3, 'Oruk Anam', 'Akwa Ibom State'),
(65, 3, 'Udung-Uko', 'Akwa Ibom State'),
(66, 3, 'Ukanafun', 'Akwa Ibom State'),
(67, 3, 'Uruan', 'Akwa Ibom State'),
(68, 3, 'Urue-Offong/Oruko', 'Akwa Ibom State'),
(69, 3, 'Uyo', 'Akwa Ibom State'),
(70, 4, 'Aguata', 'Anambra State'),
(71, 4, 'Anambra East', 'Anambra State'),
(72, 4, 'Anambra West', 'Anambra State'),
(73, 4, 'Anaocha', 'Anambra State'),
(74, 4, 'Awka North', 'Anambra State'),
(75, 4, 'Awka South', 'Anambra State'),
(76, 4, 'Ayamelum', 'Anambra State'),
(77, 4, 'Dunukofia', 'Anambra State'),
(78, 4, 'Ekwusigo', 'Anambra State'),
(79, 4, 'Idemili North', 'Anambra State'),
(80, 4, 'Idemili South', 'Anambra State'),
(81, 4, 'Ihiala', 'Anambra State'),
(82, 4, 'Njikoka', 'Anambra State'),
(83, 4, 'Nnewi North', 'Anambra State'),
(84, 4, 'Nnewi South', 'Anambra State'),
(85, 4, 'Ogbaru', 'Anambra State'),
(86, 4, 'Onitsha North', 'Anambra State'),
(87, 4, 'Onitsha South', 'Anambra State'),
(88, 4, 'Orumba North', 'Anambra State'),
(89, 4, 'Orumba South', 'Anambra State'),
(90, 4, 'Oyi', 'Anambra State'),
(91, 5, 'Alkaleri', 'Bauchi State'),
(92, 5, 'Bauchi', 'Bauchi State'),
(93, 5, 'Bogoro', 'Bauchi State'),
(94, 5, 'Damban', 'Bauchi State'),
(95, 5, 'Darazo', 'Bauchi State'),
(96, 5, 'Dass', 'Bauchi State'),
(97, 5, 'Gamawa', 'Bauchi State'),
(98, 5, 'Ganjuwa', 'Bauchi State'),
(99, 5, 'Giade', 'Bauchi State'),
(100, 5, 'Itas/Gadau', 'Bauchi State'),
(101, 5, 'Jama\'are', 'Bauchi State'),
(102, 5, 'Katagum', 'Bauchi State'),
(103, 5, 'Kirfi', 'Bauchi State'),
(104, 5, 'Misau', 'Bauchi State'),
(105, 5, 'Ningi', 'Bauchi State'),
(106, 5, 'Shira', 'Bauchi State'),
(107, 5, 'Tafawa Balewa', 'Bauchi State'),
(108, 5, 'Toro', 'Bauchi State'),
(109, 5, 'Warji', 'Bauchi State'),
(110, 5, 'Zaki', 'Bauchi State'),
(111, 6, 'Brass', 'Bayelsa State'),
(112, 6, 'Ekeremor', 'Bayelsa State'),
(113, 6, 'Kolokuma/Opokuma', 'Bayelsa State'),
(114, 6, 'Nembe', 'Bayelsa State'),
(115, 6, 'Ogbia', 'Bayelsa State'),
(116, 6, 'Sagbama', 'Bayelsa State'),
(117, 6, 'Southern Ijaw', 'Bayelsa State'),
(118, 6, 'Yenagoa', 'Bayelsa State'),
(119, 7, 'Agatu', 'Benue State'),
(120, 7, 'Apa', 'Benue State'),
(121, 7, 'Ado', 'Benue State'),
(122, 7, 'Buruku', 'Benue State'),
(123, 7, 'Gboko', 'Benue State'),
(124, 7, 'Guma', 'Benue State'),
(125, 7, 'Gwer East', 'Benue State'),
(126, 7, 'Gwer West', 'Benue State'),
(127, 7, 'Katsina-Ala', 'Benue State'),
(128, 7, 'Konshisha', 'Benue State'),
(129, 7, 'Kwande', 'Benue State'),
(130, 7, 'Logo', 'Benue State'),
(131, 7, 'Makurdi', 'Benue State'),
(132, 7, 'Obi', 'Benue State'),
(133, 7, 'Ogbadibo', 'Benue State'),
(134, 7, 'Ohimini', 'Benue State'),
(135, 7, 'Oju', 'Benue State'),
(136, 7, 'Okpokwu', 'Benue State'),
(137, 7, 'Oturkpo', 'Benue State'),
(138, 7, 'Tarka', 'Benue State'),
(139, 7, 'Ukum', 'Benue State'),
(140, 7, 'Ushongo', 'Benue State'),
(141, 7, 'Vandeikya', 'Benue State'),
(142, 8, 'Abadam', 'Borno State'),
(143, 8, 'Askira/Uba', 'Borno State'),
(144, 8, 'Bama', 'Borno State'),
(145, 8, 'Bayo', 'Borno State'),
(146, 8, 'Biu', 'Borno State'),
(147, 8, 'Chibok', 'Borno State'),
(148, 8, 'Damboa', 'Borno State'),
(149, 8, 'Dikwa', 'Borno State'),
(150, 8, 'Gubio', 'Borno State'),
(151, 8, 'Guzamala', 'Borno State'),
(152, 8, 'Gwoza', 'Borno State'),
(153, 8, 'Hawul', 'Borno State'),
(154, 8, 'Jere', 'Borno State'),
(155, 8, 'Kaga', 'Borno State'),
(156, 8, 'Kala/Balge', 'Borno State'),
(157, 8, 'Konduga', 'Borno State'),
(158, 8, 'Kukawa', 'Borno State'),
(159, 8, 'Kwaya Kusar', 'Borno State'),
(160, 8, 'Mafa', 'Borno State'),
(161, 8, 'Magumeri', 'Borno State'),
(162, 8, 'Maiduguri', 'Borno State'),
(163, 8, 'Marte', 'Borno State'),
(164, 8, 'Mobbar', 'Borno State'),
(165, 8, 'Monguno', 'Borno State'),
(166, 8, 'Ngala', 'Borno State'),
(167, 8, 'Nganzai', 'Borno State'),
(168, 8, 'Shani', 'Borno State'),
(169, 9, 'Abi', 'Cross River State'),
(170, 9, 'Akamkpa', 'Cross River State'),
(171, 9, 'Akpabuyo', 'Cross River State'),
(172, 9, 'Bakassi', 'Cross River State'),
(173, 9, 'Bekwarra', 'Cross River State'),
(174, 9, 'Biase', 'Cross River State'),
(175, 9, 'Boki', 'Cross River State'),
(176, 9, 'Calabar Municipal', 'Cross River State'),
(177, 9, 'Calabar South', 'Cross River State'),
(178, 9, 'Etung', 'Cross River State'),
(179, 9, 'Ikom', 'Cross River State'),
(180, 9, 'Obanliku', 'Cross River State'),
(181, 9, 'Obubra', 'Cross River State'),
(182, 9, 'Obudu', 'Cross River State'),
(183, 9, 'Odukpani', 'Cross River State'),
(184, 9, 'Ogoja', 'Cross River State'),
(185, 9, 'Yakuur', 'Cross River State'),
(186, 9, 'Yala', 'Cross River State'),
(187, 10, 'Aniocha North', 'Delta State'),
(188, 10, 'Aniocha South', 'Delta State'),
(189, 10, 'Bomadi', 'Delta State'),
(190, 10, 'Burutu', 'Delta State'),
(191, 10, 'Ethiope East', 'Delta State'),
(192, 10, 'Ethiope West', 'Delta State'),
(193, 10, 'Ika North East', 'Delta State'),
(194, 10, 'Ika South', 'Delta State'),
(195, 10, 'Isoko North', 'Delta State'),
(196, 10, 'Isoko South', 'Delta State'),
(197, 10, 'Ndokwa East', 'Delta State'),
(198, 10, 'Ndokwa West', 'Delta State'),
(199, 10, 'Okpe', 'Delta State'),
(200, 10, 'Oshimili North', 'Delta State'),
(201, 10, 'Oshimili South', 'Delta State'),
(202, 10, 'Patani', 'Delta State'),
(203, 10, 'Sapele', 'Delta State'),
(204, 10, 'Udu', 'Delta State'),
(205, 10, 'Ughelli North', 'Delta State'),
(206, 10, 'Ughelli South', 'Delta State'),
(207, 10, 'Ukwuani', 'Delta State'),
(208, 10, 'Uvwie', 'Delta State'),
(209, 10, 'Warri North', 'Delta State'),
(210, 10, 'Warri South', 'Delta State'),
(211, 10, 'Warri South West', 'Delta State'),
(212, 11, 'Abakaliki', 'Ebonyi State'),
(213, 11, 'Afikpo North', 'Ebonyi State'),
(214, 11, 'Afikpo South', 'Ebonyi State'),
(215, 11, 'Ebonyi', 'Ebonyi State'),
(216, 11, 'Ezza North', 'Ebonyi State'),
(217, 11, 'Ezza South', 'Ebonyi State'),
(218, 11, 'Ikwo', 'Ebonyi State'),
(219, 11, 'Ishielu', 'Ebonyi State'),
(220, 11, 'Ivo', 'Ebonyi State'),
(221, 11, 'Izzi', 'Ebonyi State'),
(222, 11, 'Ohaozara', 'Ebonyi State'),
(223, 11, 'Ohaukwu', 'Ebonyi State'),
(224, 11, 'Onicha', 'Ebonyi State'),
(225, 12, 'Akoko-Edo', 'Edo State'),
(226, 12, 'Egor', 'Edo State'),
(227, 12, 'Esan Central', 'Edo State'),
(228, 12, 'Esan North-East', 'Edo State'),
(229, 12, 'Esan South-East', 'Edo State'),
(230, 12, 'Esan West', 'Edo State'),
(231, 12, 'Etsako Central', 'Edo State'),
(232, 12, 'Etsako East', 'Edo State'),
(233, 12, 'Etsako West', 'Edo State'),
(234, 12, 'Igueben', 'Edo State'),
(235, 12, 'Ikpoba Okha', 'Edo State'),
(236, 12, 'Orhionmwon', 'Edo State'),
(237, 12, 'Oredo', 'Edo State'),
(238, 12, 'Ovia North-East', 'Edo State'),
(239, 12, 'Ovia South-West', 'Edo State'),
(240, 12, 'Owan East', 'Edo State'),
(241, 12, 'Owan West', 'Edo State'),
(242, 12, 'Uhunmwonde', 'Edo State'),
(243, 13, 'Ado Ekiti', 'Ekiti State'),
(244, 13, 'Efon', 'Ekiti State'),
(245, 13, 'Ekiti East', 'Ekiti State'),
(246, 13, 'Ekiti South-West', 'Ekiti State'),
(247, 13, 'Ekiti West', 'Ekiti State'),
(248, 13, 'Emure', 'Ekiti State'),
(249, 13, 'Gbonyin', 'Ekiti State'),
(250, 13, 'Ido Osi', 'Ekiti State'),
(251, 13, 'Ijero', 'Ekiti State'),
(252, 13, 'Ikere', 'Ekiti State'),
(253, 13, 'Ikole', 'Ekiti State'),
(254, 13, 'Ilejemeje', 'Ekiti State'),
(255, 13, 'Irepodun/Ifelodun', 'Ekiti State'),
(256, 13, 'Ise/Orun', 'Ekiti State'),
(257, 13, 'Moba', 'Ekiti State'),
(258, 13, 'Oye', 'Ekiti State'),
(259, 14, 'Aninri', 'Enugu State'),
(260, 14, 'Awgu', 'Enugu State'),
(261, 14, 'Enugu East', 'Enugu State'),
(262, 14, 'Enugu North', 'Enugu State'),
(263, 14, 'Enugu South', 'Enugu State'),
(264, 14, 'Ezeagu', 'Enugu State'),
(265, 14, 'Igbo Etiti', 'Enugu State'),
(266, 14, 'Igbo Eze North', 'Enugu State'),
(267, 14, 'Igbo Eze South', 'Enugu State'),
(268, 14, 'Isi Uzo', 'Enugu State'),
(269, 14, 'Nkanu East', 'Enugu State'),
(270, 14, 'Nkanu West', 'Enugu State'),
(271, 14, 'Nsukka', 'Enugu State'),
(272, 14, 'Oji River', 'Enugu State'),
(273, 14, 'Udenu', 'Enugu State'),
(274, 14, 'Udi', 'Enugu State'),
(275, 14, 'Uzo Uwani', 'Enugu State'),
(276, 15, 'Abaji', 'FCT'),
(277, 15, 'Bwari', 'FCT'),
(278, 15, 'Gwagwalada', 'FCT'),
(279, 15, 'Kuje', 'FCT'),
(280, 15, 'Kwali', 'FCT'),
(281, 15, 'Municipal Area Council', 'FCT'),
(282, 16, 'Akko', 'Gombe State'),
(283, 16, 'Balanga', 'Gombe State'),
(284, 16, 'Billiri', 'Gombe State'),
(285, 16, 'Dukku', 'Gombe State'),
(286, 16, 'Funakaye', 'Gombe State'),
(287, 16, 'Gombe', 'Gombe State'),
(288, 16, 'Kaltungo', 'Gombe State'),
(289, 16, 'Kwami', 'Gombe State'),
(290, 16, 'Nafada', 'Gombe State'),
(291, 16, 'Shongom', 'Gombe State'),
(292, 16, 'Yamaltu/Deba', 'Gombe State'),
(293, 17, 'Aboh Mbaise', 'Imo State'),
(294, 17, 'Ahiazu Mbaise', 'Imo State'),
(295, 17, 'Ehime Mbano', 'Imo State'),
(296, 17, 'Ezinihitte', 'Imo State'),
(297, 17, 'Ideato North', 'Imo State'),
(298, 17, 'Ideato South', 'Imo State'),
(299, 17, 'Ihitte/Uboma', 'Imo State'),
(300, 17, 'Ikeduru', 'Imo State'),
(301, 17, 'Isiala Mbano', 'Imo State'),
(302, 17, 'Isu', 'Imo State'),
(303, 17, 'Mbaitoli', 'Imo State'),
(304, 17, 'Ngor Okpala', 'Imo State'),
(305, 17, 'Njaba', 'Imo State'),
(306, 17, 'Nkwerre', 'Imo State'),
(307, 17, 'Nwangele', 'Imo State'),
(308, 17, 'Obowo', 'Imo State'),
(309, 17, 'Oguta', 'Imo State'),
(310, 17, 'Ohaji/Egbema', 'Imo State'),
(311, 17, 'Okigwe', 'Imo State'),
(312, 17, 'Orlu', 'Imo State'),
(313, 17, 'Orsu', 'Imo State'),
(314, 17, 'Oru East', 'Imo State'),
(315, 17, 'Oru West', 'Imo State'),
(316, 17, 'Owerri Municipal', 'Imo State'),
(317, 17, 'Owerri North', 'Imo State'),
(318, 17, 'Owerri West', 'Imo State'),
(319, 17, 'Unuimo', 'Imo State'),
(320, 18, 'Auyo', 'Jigawa State'),
(321, 18, 'Babura', 'Jigawa State'),
(322, 18, 'Biriniwa', 'Jigawa State'),
(323, 18, 'Birnin Kudu', 'Jigawa State'),
(324, 18, 'Buji', 'Jigawa State'),
(325, 18, 'Dutse', 'Jigawa State'),
(326, 18, 'Gagarawa', 'Jigawa State'),
(327, 18, 'Garki', 'Jigawa State'),
(328, 18, 'Gumel', 'Jigawa State'),
(329, 18, 'Guri', 'Jigawa State'),
(330, 18, 'Gwaram', 'Jigawa State'),
(331, 18, 'Gwiwa', 'Jigawa State'),
(332, 18, 'Hadejia', 'Jigawa State'),
(333, 18, 'Jahun', 'Jigawa State'),
(334, 18, 'Kafin Hausa', 'Jigawa State'),
(335, 18, 'Kazaure', 'Jigawa State'),
(336, 18, 'Kiri Kasama', 'Jigawa State'),
(337, 18, 'Kiyawa', 'Jigawa State'),
(338, 18, 'Kaugama', 'Jigawa State'),
(339, 18, 'Maigatari', 'Jigawa State'),
(340, 18, 'Malam Madori', 'Jigawa State'),
(341, 18, 'Miga', 'Jigawa State'),
(342, 18, 'Ringim', 'Jigawa State'),
(343, 18, 'Roni', 'Jigawa State'),
(344, 18, 'Sule Tankarkar', 'Jigawa State'),
(345, 18, 'Taura', 'Jigawa State'),
(346, 18, 'Yankwashi', 'Jigawa State'),
(347, 19, 'Birnin Gwari', 'Kaduna State'),
(348, 19, 'Chikun', 'Kaduna State'),
(349, 19, 'Giwa', 'Kaduna State'),
(350, 19, 'Igabi', 'Kaduna State'),
(351, 19, 'Ikara', 'Kaduna State'),
(352, 19, 'Jaba', 'Kaduna State'),
(353, 19, 'Jema\'a', 'Kaduna State'),
(354, 19, 'Kachia', 'Kaduna State'),
(355, 19, 'Kaduna North', 'Kaduna State'),
(356, 19, 'Kaduna South', 'Kaduna State'),
(357, 19, 'Kagarko', 'Kaduna State'),
(358, 19, 'Kajuru', 'Kaduna State'),
(359, 19, 'Kaura', 'Kaduna State'),
(360, 19, 'Kauru', 'Kaduna State'),
(361, 19, 'Kubau', 'Kaduna State'),
(362, 19, 'Kudan', 'Kaduna State'),
(363, 19, 'Lere', 'Kaduna State'),
(364, 19, 'Makarfi', 'Kaduna State'),
(365, 19, 'Sabon Gari', 'Kaduna State'),
(366, 19, 'Sanga', 'Kaduna State'),
(367, 19, 'Soba', 'Kaduna State'),
(368, 19, 'Zangon Kataf', 'Kaduna State'),
(369, 19, 'Zaria', 'Kaduna State'),
(370, 20, 'Ajingi', 'Kano State'),
(371, 20, 'Albasu', 'Kano State'),
(372, 20, 'Bagwai', 'Kano State'),
(373, 20, 'Bebeji', 'Kano State'),
(374, 20, 'Bichi', 'Kano State'),
(375, 20, 'Bunkure', 'Kano State'),
(376, 20, 'Dala', 'Kano State'),
(377, 20, 'Dambatta', 'Kano State'),
(378, 20, 'Dawakin Kudu', 'Kano State'),
(379, 20, 'Dawakin Tofa', 'Kano State'),
(380, 20, 'Doguwa', 'Kano State'),
(381, 20, 'Fagge', 'Kano State'),
(382, 20, 'Gabasawa', 'Kano State'),
(383, 20, 'Garko', 'Kano State'),
(384, 20, 'Garun Mallam', 'Kano State'),
(385, 20, 'Gaya', 'Kano State'),
(386, 20, 'Gezawa', 'Kano State'),
(387, 20, 'Gwale', 'Kano State'),
(388, 20, 'Gwarzo', 'Kano State'),
(389, 20, 'Kabo', 'Kano State'),
(390, 20, 'Kano Municipal', 'Kano State'),
(391, 20, 'Karaye', 'Kano State'),
(392, 20, 'Kibiya', 'Kano State'),
(393, 20, 'Kiru', 'Kano State'),
(394, 20, 'Kumbotso', 'Kano State'),
(395, 20, 'Kunchi', 'Kano State'),
(396, 20, 'Kura', 'Kano State'),
(397, 20, 'Madobi', 'Kano State'),
(398, 20, 'Makoda', 'Kano State'),
(399, 20, 'Minjibir', 'Kano State'),
(400, 20, 'Nasarawa', 'Kano State'),
(401, 20, 'Rano', 'Kano State'),
(402, 20, 'Rimin Gado', 'Kano State'),
(403, 20, 'Rogo', 'Kano State'),
(404, 20, 'Shanono', 'Kano State'),
(405, 20, 'Sumaila', 'Kano State'),
(406, 20, 'Takai', 'Kano State'),
(407, 20, 'Tarauni', 'Kano State'),
(408, 20, 'Tofa', 'Kano State'),
(409, 20, 'Tsanyawa', 'Kano State'),
(410, 20, 'Tudun Wada', 'Kano State'),
(411, 20, 'Ungogo', 'Kano State'),
(412, 20, 'Warawa', 'Kano State'),
(413, 20, 'Wudil', 'Kano State'),
(414, 21, 'Bakori', 'Katsina State'),
(415, 21, 'Batagarawa', 'Katsina State'),
(416, 21, 'Batsari', 'Katsina State'),
(417, 21, 'Baure', 'Katsina State'),
(418, 21, 'Bindawa', 'Katsina State'),
(419, 21, 'Charanchi', 'Katsina State'),
(420, 21, 'Dandume', 'Katsina State'),
(421, 21, 'Danja', 'Katsina State'),
(422, 21, 'Dan Musa', 'Katsina State'),
(423, 21, 'Daura', 'Katsina State'),
(424, 21, 'Dutsi', 'Katsina State'),
(425, 21, 'Dutsin Ma', 'Katsina State'),
(426, 21, 'Faskari', 'Katsina State'),
(427, 21, 'Funtua', 'Katsina State'),
(428, 21, 'Ingawa', 'Katsina State'),
(429, 21, 'Jibia', 'Katsina State'),
(430, 21, 'Kafur', 'Katsina State'),
(431, 21, 'Kaita', 'Katsina State'),
(432, 21, 'Kankara', 'Katsina State'),
(433, 21, 'Kankia', 'Katsina State'),
(434, 21, 'Katsina', 'Katsina State'),
(435, 21, 'Kurfi', 'Katsina State'),
(436, 21, 'Kusada', 'Katsina State'),
(437, 21, 'Mai\'Adua', 'Katsina State'),
(438, 21, 'Malumfashi', 'Katsina State'),
(439, 21, 'Mani', 'Katsina State'),
(440, 21, 'Mashi', 'Katsina State'),
(441, 21, 'Matazu', 'Katsina State'),
(442, 21, 'Musawa', 'Katsina State'),
(443, 21, 'Rimi', 'Katsina State'),
(444, 21, 'Sabuwa', 'Katsina State'),
(445, 21, 'Safana', 'Katsina State'),
(446, 21, 'Sandamu', 'Katsina State'),
(447, 21, 'Zango', 'Katsina State'),
(448, 22, 'Aleiro', 'Kebbi State'),
(449, 22, 'Arewa Dandi', 'Kebbi State'),
(450, 22, 'Argungu', 'Kebbi State'),
(451, 22, 'Augie', 'Kebbi State'),
(452, 22, 'Bagudo', 'Kebbi State'),
(453, 22, 'Birnin Kebbi', 'Kebbi State'),
(454, 22, 'Bunza', 'Kebbi State'),
(455, 22, 'Dandi', 'Kebbi State'),
(456, 22, 'Fakai', 'Kebbi State'),
(457, 22, 'Gwandu', 'Kebbi State'),
(458, 22, 'Jega', 'Kebbi State'),
(459, 22, 'Kalgo', 'Kebbi State'),
(460, 22, 'Koko/Besse', 'Kebbi State'),
(461, 22, 'Maiyama', 'Kebbi State'),
(462, 22, 'Ngaski', 'Kebbi State'),
(463, 22, 'Sakaba', 'Kebbi State'),
(464, 22, 'Shanga', 'Kebbi State'),
(465, 22, 'Suru', 'Kebbi State'),
(466, 22, 'Wasagu/Danko', 'Kebbi State'),
(467, 22, 'Yauri', 'Kebbi State'),
(468, 22, 'Zuru', 'Kebbi State'),
(469, 23, 'Adavi', 'Kogi State'),
(470, 23, 'Ajaokuta', 'Kogi State'),
(471, 23, 'Ankpa', 'Kogi State'),
(472, 23, 'Bassa', 'Kogi State'),
(473, 23, 'Dekina', 'Kogi State'),
(474, 23, 'Ibaji', 'Kogi State'),
(475, 23, 'Idah', 'Kogi State'),
(476, 23, 'Igalamela Odolu', 'Kogi State'),
(477, 23, 'Ijumu', 'Kogi State'),
(478, 23, 'Kabba/Bunu', 'Kogi State'),
(479, 23, 'Kogi', 'Kogi State'),
(480, 23, 'Lokoja', 'Kogi State'),
(481, 23, 'Mopa Muro', 'Kogi State'),
(482, 23, 'Ofu', 'Kogi State'),
(483, 23, 'Ogori/Magongo', 'Kogi State'),
(484, 23, 'Okehi', 'Kogi State'),
(485, 23, 'Okene', 'Kogi State'),
(486, 23, 'Olamaboro', 'Kogi State'),
(487, 23, 'Omala', 'Kogi State'),
(488, 23, 'Yagba East', 'Kogi State'),
(489, 23, 'Yagba West', 'Kogi State'),
(490, 24, 'Asa', 'Kwara State'),
(491, 24, 'Baruten', 'Kwara State'),
(492, 24, 'Edu', 'Kwara State'),
(493, 24, 'Ekiti', 'Kwara State'),
(494, 24, 'Ifelodun', 'Kwara State'),
(495, 24, 'Ilorin East', 'Kwara State'),
(496, 24, 'Ilorin South', 'Kwara State'),
(497, 24, 'Ilorin West', 'Kwara State'),
(498, 24, 'Irepodun', 'Kwara State'),
(499, 24, 'Isin', 'Kwara State'),
(500, 24, 'Kaiama', 'Kwara State'),
(501, 24, 'Moro', 'Kwara State'),
(502, 24, 'Offa', 'Kwara State'),
(503, 24, 'Oke Ero', 'Kwara State'),
(504, 24, 'Oyun', 'Kwara State'),
(505, 24, 'Pategi', 'Kwara State'),
(506, 25, 'Agege', 'Lagos State'),
(507, 25, 'Ajeromi-Ifelodun', 'Lagos State'),
(508, 25, 'Alimosho', 'Lagos State'),
(509, 25, 'Amuwo-Odofin', 'Lagos State'),
(510, 25, 'Apapa', 'Lagos State'),
(511, 25, 'Badagry', 'Lagos State'),
(512, 25, 'Epe', 'Lagos State'),
(513, 25, 'Eti Osa', 'Lagos State'),
(514, 25, 'Ibeju-Lekki', 'Lagos State'),
(515, 25, 'Ifako-Ijaiye', 'Lagos State'),
(516, 25, 'Ikeja', 'Lagos State'),
(517, 25, 'Ikorodu', 'Lagos State'),
(518, 25, 'Kosofe', 'Lagos State'),
(519, 25, 'Lagos Island', 'Lagos State'),
(520, 25, 'Lagos Mainland', 'Lagos State'),
(521, 25, 'Mushin', 'Lagos State'),
(522, 25, 'Ojo', 'Lagos State'),
(523, 25, 'Oshodi-Isolo', 'Lagos State'),
(524, 25, 'Shomolu', 'Lagos State'),
(525, 25, 'Surulere', 'Lagos State'),
(526, 26, 'Akwanga', 'Nasarawa State'),
(527, 26, 'Awe', 'Nasarawa State'),
(528, 26, 'Doma', 'Nasarawa State'),
(529, 26, 'Karu', 'Nasarawa State'),
(530, 26, 'Keana', 'Nasarawa State'),
(531, 26, 'Keffi', 'Nasarawa State'),
(532, 26, 'Kokona', 'Nasarawa State'),
(533, 26, 'Lafia', 'Nasarawa State'),
(534, 26, 'Nasarawa', 'Nasarawa State'),
(535, 26, 'Nasarawa Egon', 'Nasarawa State'),
(536, 26, 'Obi', 'Nasarawa State'),
(537, 26, 'Toto', 'Nasarawa State'),
(538, 26, 'Wamba', 'Nasarawa State'),
(539, 27, 'Agaie', 'Niger State'),
(540, 27, 'Agwara', 'Niger State'),
(541, 27, 'Bida', 'Niger State'),
(542, 27, 'Borgu', 'Niger State'),
(543, 27, 'Bosso', 'Niger State'),
(544, 27, 'Chanchaga', 'Niger State'),
(545, 27, 'Edati', 'Niger State'),
(546, 27, 'Gbako', 'Niger State'),
(547, 27, 'Gurara', 'Niger State'),
(548, 27, 'Katcha', 'Niger State'),
(549, 27, 'Kontagora', 'Niger State'),
(550, 27, 'Lapai', 'Niger State'),
(551, 27, 'Lavun', 'Niger State'),
(552, 27, 'Magama', 'Niger State'),
(553, 27, 'Mariga', 'Niger State'),
(554, 27, 'Mashegu', 'Niger State'),
(555, 27, 'Mokwa', 'Niger State'),
(556, 27, 'Moya', 'Niger State'),
(557, 27, 'Paikoro', 'Niger State'),
(558, 27, 'Rafi', 'Niger State'),
(559, 27, 'Rijau', 'Niger State'),
(560, 27, 'Shiroro', 'Niger State'),
(561, 27, 'Suleja', 'Niger State'),
(562, 27, 'Tafa', 'Niger State'),
(563, 27, 'Wushishi', 'Niger State'),
(564, 28, 'Abeokuta North', 'Ogun State'),
(565, 28, 'Abeokuta South', 'Ogun State'),
(566, 28, 'Ado-Odo/Ota', 'Ogun State'),
(567, 28, 'Egbado North', 'Ogun State'),
(568, 28, 'Egbado South', 'Ogun State'),
(569, 28, 'Ewekoro', 'Ogun State'),
(570, 28, 'Ifo', 'Ogun State'),
(571, 28, 'Ijebu East', 'Ogun State'),
(572, 28, 'Ijebu North', 'Ogun State'),
(573, 28, 'Ijebu North East', 'Ogun State'),
(574, 28, 'Ijebu Ode', 'Ogun State'),
(575, 28, 'Ikenne', 'Ogun State'),
(576, 28, 'Imeko Afon', 'Ogun State'),
(577, 28, 'Ipokia', 'Ogun State'),
(578, 28, 'Obafemi Owode', 'Ogun State'),
(579, 28, 'Odeda', 'Ogun State'),
(580, 28, 'Odogbolu', 'Ogun State'),
(581, 28, 'Ogun Waterside', 'Ogun State'),
(582, 28, 'Remo North', 'Ogun State'),
(583, 28, 'Shagamu', 'Ogun State'),
(584, 29, 'Akoko North-East', 'Ondo State'),
(585, 29, 'Akoko North-West', 'Ondo State'),
(586, 29, 'Akoko South-West', 'Ondo State'),
(587, 29, 'Akoko South-East', 'Ondo State'),
(588, 29, 'Akure North', 'Ondo State'),
(589, 29, 'Akure South', 'Ondo State'),
(590, 29, 'Ese Odo', 'Ondo State'),
(591, 29, 'Idanre', 'Ondo State'),
(592, 29, 'Ifedore', 'Ondo State'),
(593, 29, 'Ilaje', 'Ondo State'),
(594, 29, 'Ile Oluji/Okeigbo', 'Ondo State'),
(595, 29, 'Irele', 'Ondo State'),
(596, 29, 'Odigbo', 'Ondo State'),
(597, 29, 'Okitipupa', 'Ondo State'),
(598, 29, 'Ondo East', 'Ondo State'),
(599, 29, 'Ondo West', 'Ondo State'),
(600, 29, 'Ose', 'Ondo State'),
(601, 29, 'Owo', 'Ondo State'),
(602, 30, 'Atakunmosa East', 'Osun State'),
(603, 30, 'Atakunmosa West', 'Osun State'),
(604, 30, 'Aiyedaade', 'Osun State'),
(605, 30, 'Aiyedire', 'Osun State'),
(606, 30, 'Boluwaduro', 'Osun State'),
(607, 30, 'Boripe', 'Osun State'),
(608, 30, 'Ede North', 'Osun State'),
(609, 30, 'Ede South', 'Osun State'),
(610, 30, 'Ife Central', 'Osun State'),
(611, 30, 'Ife East', 'Osun State'),
(612, 30, 'Ife North', 'Osun State'),
(613, 30, 'Ife South', 'Osun State'),
(614, 30, 'Egbedore', 'Osun State'),
(615, 30, 'Ejigbo', 'Osun State'),
(616, 30, 'Ifedayo', 'Osun State'),
(617, 30, 'Ifelodun', 'Osun State'),
(618, 30, 'Ila', 'Osun State'),
(619, 30, 'Ilesa East', 'Osun State'),
(620, 30, 'Ilesa West', 'Osun State'),
(621, 30, 'Irepodun', 'Osun State'),
(622, 30, 'Irewole', 'Osun State'),
(623, 30, 'Isokan', 'Osun State'),
(624, 30, 'Iwo', 'Osun State'),
(625, 30, 'Obokun', 'Osun State'),
(626, 30, 'Odo Otin', 'Osun State'),
(627, 30, 'Ola Oluwa', 'Osun State'),
(628, 30, 'Olorunda', 'Osun State'),
(629, 30, 'Oriade', 'Osun State'),
(630, 30, 'Orolu', 'Osun State'),
(631, 30, 'Osogbo', 'Osun State'),
(632, 31, 'Afijio', 'Oyo State'),
(633, 31, 'Akinyele', 'Oyo State'),
(634, 31, 'Atiba', 'Oyo State'),
(635, 31, 'Atisbo', 'Oyo State'),
(636, 31, 'Egbeda', 'Oyo State'),
(637, 31, 'Ibadan North', 'Oyo State'),
(638, 31, 'Ibadan North-East', 'Oyo State'),
(639, 31, 'Ibadan North-West', 'Oyo State'),
(640, 31, 'Ibadan South-East', 'Oyo State'),
(641, 31, 'Ibadan South-West', 'Oyo State'),
(642, 31, 'Ibarapa Central', 'Oyo State'),
(643, 31, 'Ibarapa East', 'Oyo State'),
(644, 31, 'Ibarapa North', 'Oyo State'),
(645, 31, 'Ido', 'Oyo State'),
(646, 31, 'Irepo', 'Oyo State'),
(647, 31, 'Iseyin', 'Oyo State'),
(648, 31, 'Itesiwaju', 'Oyo State'),
(649, 31, 'Iwajowa', 'Oyo State'),
(650, 31, 'Kajola', 'Oyo State'),
(651, 31, 'Lagelu', 'Oyo State'),
(652, 31, 'Ogbomosho North', 'Oyo State'),
(653, 31, 'Ogbomosho South', 'Oyo State'),
(654, 31, 'Ogo Oluwa', 'Oyo State'),
(655, 31, 'Olorunsogo', 'Oyo State'),
(656, 31, 'Oluyole', 'Oyo State'),
(657, 31, 'Ona Ara', 'Oyo State'),
(658, 31, 'Orelope', 'Oyo State'),
(659, 31, 'Ori Ire', 'Oyo State'),
(660, 31, 'Oyo', 'Oyo State'),
(661, 31, 'Oyo East', 'Oyo State'),
(662, 31, 'Saki East', 'Oyo State'),
(663, 31, 'Saki West', 'Oyo State'),
(664, 31, 'Surulere', 'Oyo State'),
(665, 32, 'Bokkos', 'Plateau State'),
(666, 32, 'Barkin Ladi', 'Plateau State'),
(667, 32, 'Bassa', 'Plateau State'),
(668, 32, 'Jos East', 'Plateau State'),
(669, 32, 'Jos North', 'Plateau State'),
(670, 32, 'Jos South', 'Plateau State'),
(671, 32, 'Kanam', 'Plateau State'),
(672, 32, 'Kanke', 'Plateau State'),
(673, 32, 'Langtang South', 'Plateau State'),
(674, 32, 'Langtang North', 'Plateau State'),
(675, 32, 'Mangu', 'Plateau State'),
(676, 32, 'Mikang', 'Plateau State'),
(677, 32, 'Pankshin', 'Plateau State'),
(678, 32, 'Qua\'an Pan', 'Plateau State'),
(679, 32, 'Riyom', 'Plateau State'),
(680, 32, 'Shendam', 'Plateau State'),
(681, 32, 'Wase', 'Plateau State'),
(682, 33, 'Abua/Odual', 'Rivers State'),
(683, 33, 'Ahoada East', 'Rivers State'),
(684, 33, 'Ahoada West', 'Rivers State'),
(685, 33, 'Akuku-Toru', 'Rivers State'),
(686, 33, 'Andoni', 'Rivers State'),
(687, 33, 'Asari-Toru', 'Rivers State'),
(688, 33, 'Bonny', 'Rivers State'),
(689, 33, 'Degema', 'Rivers State'),
(690, 33, 'Eleme', 'Rivers State'),
(691, 33, 'Emuoha', 'Rivers State'),
(692, 33, 'Etche', 'Rivers State'),
(693, 33, 'Gokana', 'Rivers State'),
(694, 33, 'Ikwerre', 'Rivers State'),
(695, 33, 'Khana', 'Rivers State'),
(696, 33, 'Obio/Akpor', 'Rivers State'),
(697, 33, 'Ogba/Egbema/Ndoni', 'Rivers State'),
(698, 33, 'Ogu/Bolo', 'Rivers State'),
(699, 33, 'Okrika', 'Rivers State'),
(700, 33, 'Omuma', 'Rivers State'),
(701, 33, 'Opobo/Nkoro', 'Rivers State'),
(702, 33, 'Oyigbo', 'Rivers State'),
(703, 33, 'Port Harcourt', 'Rivers State'),
(704, 33, 'Tai', 'Rivers State'),
(705, 34, 'Binji', 'Sokoto State'),
(706, 34, 'Bodinga', 'Sokoto State'),
(707, 34, 'Dange Shuni', 'Sokoto State'),
(708, 34, 'Gada', 'Sokoto State'),
(709, 34, 'Goronyo', 'Sokoto State'),
(710, 34, 'Gudu', 'Sokoto State'),
(711, 34, 'Gwadabawa', 'Sokoto State'),
(712, 34, 'Illela', 'Sokoto State'),
(713, 34, 'Isa', 'Sokoto State'),
(714, 34, 'Kebbe', 'Sokoto State'),
(715, 34, 'Kware', 'Sokoto State'),
(716, 34, 'Rabah', 'Sokoto State'),
(717, 34, 'Sabon Birni', 'Sokoto State'),
(718, 34, 'Shagari', 'Sokoto State'),
(719, 34, 'Silame', 'Sokoto State'),
(720, 34, 'Sokoto North', 'Sokoto State'),
(721, 34, 'Sokoto South', 'Sokoto State'),
(722, 34, 'Tambuwal', 'Sokoto State'),
(723, 34, 'Tangaza', 'Sokoto State'),
(724, 34, 'Tureta', 'Sokoto State'),
(725, 34, 'Wamako', 'Sokoto State'),
(726, 34, 'Wurno', 'Sokoto State'),
(727, 34, 'Yabo', 'Sokoto State'),
(728, 35, 'Ardo Kola', 'Taraba State'),
(729, 35, 'Bali', 'Taraba State'),
(730, 35, 'Donga', 'Taraba State'),
(731, 35, 'Gashaka', 'Taraba State'),
(732, 35, 'Gassol', 'Taraba State'),
(733, 35, 'Ibi', 'Taraba State'),
(734, 35, 'Jalingo', 'Taraba State'),
(735, 35, 'Karim Lamido', 'Taraba State'),
(736, 35, 'Kumi', 'Taraba State'),
(737, 35, 'Lau', 'Taraba State'),
(738, 35, 'Sardauna', 'Taraba State'),
(739, 35, 'Takum', 'Taraba State'),
(740, 35, 'Ussa', 'Taraba State'),
(741, 35, 'Wukari', 'Taraba State'),
(742, 35, 'Yorro', 'Taraba State'),
(743, 35, 'Zing', 'Taraba State'),
(744, 36, 'Bade', 'Yobe State'),
(745, 36, 'Bursari', 'Yobe State'),
(746, 36, 'Damaturu', 'Yobe State'),
(747, 36, 'Fika', 'Yobe State'),
(748, 36, 'Fune', 'Yobe State'),
(749, 36, 'Geidam', 'Yobe State'),
(750, 36, 'Gujba', 'Yobe State'),
(751, 36, 'Gulani', 'Yobe State'),
(752, 36, 'Jakusko', 'Yobe State'),
(753, 36, 'Karasuwa', 'Yobe State'),
(754, 36, 'Machina', 'Yobe State'),
(755, 36, 'Nangere', 'Yobe State'),
(756, 36, 'Nguru', 'Yobe State'),
(757, 36, 'Potiskum', 'Yobe State'),
(758, 36, 'Tarmuwa', 'Yobe State'),
(759, 36, 'Yunusari', 'Yobe State'),
(760, 36, 'Yusufari', 'Yobe State'),
(761, 37, 'Anka', 'Zamfara State'),
(762, 37, 'Bakura', 'Zamfara State'),
(763, 37, 'Birnin Magaji/Kiyaw', 'Zamfara State'),
(764, 37, 'Bukkuyum', 'Zamfara State'),
(765, 37, 'Bungudu', 'Zamfara State'),
(766, 37, 'Gummi', 'Zamfara State'),
(767, 37, 'Gusau', 'Zamfara State'),
(768, 37, 'Kaura Namoda', 'Zamfara State'),
(769, 37, 'Maradun', 'Zamfara State'),
(770, 37, 'Maru', 'Zamfara State'),
(771, 37, 'Shinkafi', 'Zamfara State'),
(772, 37, 'Talata Mafara', 'Zamfara State'),
(773, 37, 'Chafe', 'Zamfara State'),
(774, 37, 'Zurmi', 'Zamfara State'),
(1, 1, 'Aba North', 'Abia State'),
(2, 1, 'Aba South', 'Abia State'),
(3, 1, 'Arochukwu', 'Abia State'),
(4, 1, 'Bende', 'Abia State'),
(5, 1, 'Ikwuano', 'Abia State'),
(6, 1, 'Isiala Ngwa North', 'Abia State'),
(7, 1, 'Isiala Ngwa South', 'Abia State'),
(8, 1, 'Isuikwuato', 'Abia State'),
(9, 1, 'Obi Ngwa', 'Abia State'),
(10, 1, 'Ohafia', 'Abia State'),
(11, 1, 'Osisioma', 'Abia State'),
(12, 1, 'Ugwunagbo', 'Abia State'),
(13, 1, 'Ukwa East', 'Abia State'),
(14, 1, 'Ukwa West', 'Abia State'),
(15, 1, 'Umuahia North', 'Abia State'),
(16, 1, 'Umuahia South', 'Abia State'),
(17, 1, 'Umu Nneochi', 'Abia State'),
(18, 2, 'Demsa', 'Adamawa State'),
(19, 2, 'Fufure', 'Adamawa State'),
(20, 2, 'Ganye', 'Adamawa State'),
(21, 2, 'Gayuk', 'Adamawa State'),
(22, 2, 'Gombi', 'Adamawa State'),
(23, 2, 'Grie', 'Adamawa State'),
(24, 2, 'Hong', 'Adamawa State'),
(25, 2, 'Jada', 'Adamawa State'),
(26, 2, 'Lamurde', 'Adamawa State'),
(27, 2, 'Madagali', 'Adamawa State'),
(28, 2, 'Maiha', 'Adamawa State'),
(29, 2, 'Mayo Belwa', 'Adamawa State'),
(30, 2, 'Michika', 'Adamawa State'),
(31, 2, 'Mubi North', 'Adamawa State'),
(32, 2, 'Mubi South', 'Adamawa State'),
(33, 2, 'Numan', 'Adamawa State'),
(34, 2, 'Shelleng', 'Adamawa State'),
(35, 2, 'Song', 'Adamawa State'),
(36, 2, 'Toungo', 'Adamawa State'),
(37, 2, 'Yola North', 'Adamawa State'),
(38, 2, 'Yola South', 'Adamawa State'),
(39, 3, 'Abak', 'Akwa Ibom State'),
(40, 3, 'Eastern Obolo', 'Akwa Ibom State'),
(41, 3, 'Eket', 'Akwa Ibom State'),
(42, 3, 'Esit Eket', 'Akwa Ibom State'),
(43, 3, 'Essien Udim', 'Akwa Ibom State'),
(44, 3, 'Etim Ekpo', 'Akwa Ibom State'),
(45, 3, 'Etinan', 'Akwa Ibom State'),
(46, 3, 'Ibeno', 'Akwa Ibom State'),
(47, 3, 'Ibesikpo Asutan', 'Akwa Ibom State'),
(48, 3, 'Ibiono-Ibom', 'Akwa Ibom State'),
(49, 3, 'Ika', 'Akwa Ibom State'),
(50, 3, 'Ikono', 'Akwa Ibom State'),
(51, 3, 'Ikot Abasi', 'Akwa Ibom State'),
(52, 3, 'Ikot Ekpene', 'Akwa Ibom State'),
(53, 3, 'Ini', 'Akwa Ibom State'),
(54, 3, 'Itu', 'Akwa Ibom State'),
(55, 3, 'Mbo', 'Akwa Ibom State'),
(56, 3, 'Mkpat-Enin', 'Akwa Ibom State'),
(57, 3, 'Nsit-Atai', 'Akwa Ibom State'),
(58, 3, 'Nsit-Ibom', 'Akwa Ibom State'),
(59, 3, 'Nsit-Ubium', 'Akwa Ibom State'),
(60, 3, 'Obot Akara', 'Akwa Ibom State'),
(61, 3, 'Okobo', 'Akwa Ibom State'),
(62, 3, 'Onna', 'Akwa Ibom State'),
(63, 3, 'Oron', 'Akwa Ibom State'),
(64, 3, 'Oruk Anam', 'Akwa Ibom State'),
(65, 3, 'Udung-Uko', 'Akwa Ibom State'),
(66, 3, 'Ukanafun', 'Akwa Ibom State'),
(67, 3, 'Uruan', 'Akwa Ibom State'),
(68, 3, 'Urue-Offong/Oruko', 'Akwa Ibom State'),
(69, 3, 'Uyo', 'Akwa Ibom State'),
(70, 4, 'Aguata', 'Anambra State'),
(71, 4, 'Anambra East', 'Anambra State'),
(72, 4, 'Anambra West', 'Anambra State'),
(73, 4, 'Anaocha', 'Anambra State'),
(74, 4, 'Awka North', 'Anambra State'),
(75, 4, 'Awka South', 'Anambra State'),
(76, 4, 'Ayamelum', 'Anambra State'),
(77, 4, 'Dunukofia', 'Anambra State'),
(78, 4, 'Ekwusigo', 'Anambra State'),
(79, 4, 'Idemili North', 'Anambra State'),
(80, 4, 'Idemili South', 'Anambra State'),
(81, 4, 'Ihiala', 'Anambra State'),
(82, 4, 'Njikoka', 'Anambra State'),
(83, 4, 'Nnewi North', 'Anambra State'),
(84, 4, 'Nnewi South', 'Anambra State'),
(85, 4, 'Ogbaru', 'Anambra State'),
(86, 4, 'Onitsha North', 'Anambra State'),
(87, 4, 'Onitsha South', 'Anambra State'),
(88, 4, 'Orumba North', 'Anambra State'),
(89, 4, 'Orumba South', 'Anambra State'),
(90, 4, 'Oyi', 'Anambra State'),
(91, 5, 'Alkaleri', 'Bauchi State'),
(92, 5, 'Bauchi', 'Bauchi State'),
(93, 5, 'Bogoro', 'Bauchi State'),
(94, 5, 'Damban', 'Bauchi State'),
(95, 5, 'Darazo', 'Bauchi State'),
(96, 5, 'Dass', 'Bauchi State'),
(97, 5, 'Gamawa', 'Bauchi State'),
(98, 5, 'Ganjuwa', 'Bauchi State'),
(99, 5, 'Giade', 'Bauchi State'),
(100, 5, 'Itas/Gadau', 'Bauchi State'),
(101, 5, 'Jama\'are', 'Bauchi State'),
(102, 5, 'Katagum', 'Bauchi State'),
(103, 5, 'Kirfi', 'Bauchi State'),
(104, 5, 'Misau', 'Bauchi State'),
(105, 5, 'Ningi', 'Bauchi State'),
(106, 5, 'Shira', 'Bauchi State'),
(107, 5, 'Tafawa Balewa', 'Bauchi State'),
(108, 5, 'Toro', 'Bauchi State'),
(109, 5, 'Warji', 'Bauchi State'),
(110, 5, 'Zaki', 'Bauchi State'),
(111, 6, 'Brass', 'Bayelsa State'),
(112, 6, 'Ekeremor', 'Bayelsa State'),
(113, 6, 'Kolokuma/Opokuma', 'Bayelsa State'),
(114, 6, 'Nembe', 'Bayelsa State'),
(115, 6, 'Ogbia', 'Bayelsa State'),
(116, 6, 'Sagbama', 'Bayelsa State'),
(117, 6, 'Southern Ijaw', 'Bayelsa State'),
(118, 6, 'Yenagoa', 'Bayelsa State'),
(119, 7, 'Agatu', 'Benue State'),
(120, 7, 'Apa', 'Benue State'),
(121, 7, 'Ado', 'Benue State'),
(122, 7, 'Buruku', 'Benue State'),
(123, 7, 'Gboko', 'Benue State'),
(124, 7, 'Guma', 'Benue State'),
(125, 7, 'Gwer East', 'Benue State'),
(126, 7, 'Gwer West', 'Benue State'),
(127, 7, 'Katsina-Ala', 'Benue State'),
(128, 7, 'Konshisha', 'Benue State'),
(129, 7, 'Kwande', 'Benue State'),
(130, 7, 'Logo', 'Benue State'),
(131, 7, 'Makurdi', 'Benue State'),
(132, 7, 'Obi', 'Benue State'),
(133, 7, 'Ogbadibo', 'Benue State'),
(134, 7, 'Ohimini', 'Benue State'),
(135, 7, 'Oju', 'Benue State'),
(136, 7, 'Okpokwu', 'Benue State'),
(137, 7, 'Oturkpo', 'Benue State'),
(138, 7, 'Tarka', 'Benue State'),
(139, 7, 'Ukum', 'Benue State'),
(140, 7, 'Ushongo', 'Benue State'),
(141, 7, 'Vandeikya', 'Benue State'),
(142, 8, 'Abadam', 'Borno State'),
(143, 8, 'Askira/Uba', 'Borno State'),
(144, 8, 'Bama', 'Borno State'),
(145, 8, 'Bayo', 'Borno State'),
(146, 8, 'Biu', 'Borno State'),
(147, 8, 'Chibok', 'Borno State'),
(148, 8, 'Damboa', 'Borno State'),
(149, 8, 'Dikwa', 'Borno State'),
(150, 8, 'Gubio', 'Borno State'),
(151, 8, 'Guzamala', 'Borno State'),
(152, 8, 'Gwoza', 'Borno State'),
(153, 8, 'Hawul', 'Borno State'),
(154, 8, 'Jere', 'Borno State'),
(155, 8, 'Kaga', 'Borno State'),
(156, 8, 'Kala/Balge', 'Borno State'),
(157, 8, 'Konduga', 'Borno State'),
(158, 8, 'Kukawa', 'Borno State'),
(159, 8, 'Kwaya Kusar', 'Borno State'),
(160, 8, 'Mafa', 'Borno State'),
(161, 8, 'Magumeri', 'Borno State'),
(162, 8, 'Maiduguri', 'Borno State'),
(163, 8, 'Marte', 'Borno State'),
(164, 8, 'Mobbar', 'Borno State'),
(165, 8, 'Monguno', 'Borno State'),
(166, 8, 'Ngala', 'Borno State'),
(167, 8, 'Nganzai', 'Borno State'),
(168, 8, 'Shani', 'Borno State'),
(169, 9, 'Abi', 'Cross River State'),
(170, 9, 'Akamkpa', 'Cross River State'),
(171, 9, 'Akpabuyo', 'Cross River State'),
(172, 9, 'Bakassi', 'Cross River State'),
(173, 9, 'Bekwarra', 'Cross River State'),
(174, 9, 'Biase', 'Cross River State'),
(175, 9, 'Boki', 'Cross River State'),
(176, 9, 'Calabar Municipal', 'Cross River State'),
(177, 9, 'Calabar South', 'Cross River State'),
(178, 9, 'Etung', 'Cross River State'),
(179, 9, 'Ikom', 'Cross River State'),
(180, 9, 'Obanliku', 'Cross River State'),
(181, 9, 'Obubra', 'Cross River State'),
(182, 9, 'Obudu', 'Cross River State'),
(183, 9, 'Odukpani', 'Cross River State'),
(184, 9, 'Ogoja', 'Cross River State'),
(185, 9, 'Yakuur', 'Cross River State'),
(186, 9, 'Yala', 'Cross River State'),
(187, 10, 'Aniocha North', 'Delta State'),
(188, 10, 'Aniocha South', 'Delta State'),
(189, 10, 'Bomadi', 'Delta State'),
(190, 10, 'Burutu', 'Delta State'),
(191, 10, 'Ethiope East', 'Delta State'),
(192, 10, 'Ethiope West', 'Delta State'),
(193, 10, 'Ika North East', 'Delta State'),
(194, 10, 'Ika South', 'Delta State'),
(195, 10, 'Isoko North', 'Delta State'),
(196, 10, 'Isoko South', 'Delta State'),
(197, 10, 'Ndokwa East', 'Delta State'),
(198, 10, 'Ndokwa West', 'Delta State'),
(199, 10, 'Okpe', 'Delta State'),
(200, 10, 'Oshimili North', 'Delta State'),
(201, 10, 'Oshimili South', 'Delta State'),
(202, 10, 'Patani', 'Delta State'),
(203, 10, 'Sapele', 'Delta State'),
(204, 10, 'Udu', 'Delta State'),
(205, 10, 'Ughelli North', 'Delta State'),
(206, 10, 'Ughelli South', 'Delta State'),
(207, 10, 'Ukwuani', 'Delta State'),
(208, 10, 'Uvwie', 'Delta State'),
(209, 10, 'Warri North', 'Delta State'),
(210, 10, 'Warri South', 'Delta State'),
(211, 10, 'Warri South West', 'Delta State'),
(212, 11, 'Abakaliki', 'Ebonyi State'),
(213, 11, 'Afikpo North', 'Ebonyi State'),
(214, 11, 'Afikpo South', 'Ebonyi State'),
(215, 11, 'Ebonyi', 'Ebonyi State'),
(216, 11, 'Ezza North', 'Ebonyi State'),
(217, 11, 'Ezza South', 'Ebonyi State'),
(218, 11, 'Ikwo', 'Ebonyi State'),
(219, 11, 'Ishielu', 'Ebonyi State'),
(220, 11, 'Ivo', 'Ebonyi State'),
(221, 11, 'Izzi', 'Ebonyi State'),
(222, 11, 'Ohaozara', 'Ebonyi State'),
(223, 11, 'Ohaukwu', 'Ebonyi State'),
(224, 11, 'Onicha', 'Ebonyi State'),
(225, 12, 'Akoko-Edo', 'Edo State'),
(226, 12, 'Egor', 'Edo State'),
(227, 12, 'Esan Central', 'Edo State'),
(228, 12, 'Esan North-East', 'Edo State'),
(229, 12, 'Esan South-East', 'Edo State'),
(230, 12, 'Esan West', 'Edo State'),
(231, 12, 'Etsako Central', 'Edo State'),
(232, 12, 'Etsako East', 'Edo State'),
(233, 12, 'Etsako West', 'Edo State'),
(234, 12, 'Igueben', 'Edo State'),
(235, 12, 'Ikpoba Okha', 'Edo State'),
(236, 12, 'Orhionmwon', 'Edo State'),
(237, 12, 'Oredo', 'Edo State'),
(238, 12, 'Ovia North-East', 'Edo State'),
(239, 12, 'Ovia South-West', 'Edo State'),
(240, 12, 'Owan East', 'Edo State'),
(241, 12, 'Owan West', 'Edo State'),
(242, 12, 'Uhunmwonde', 'Edo State'),
(243, 13, 'Ado Ekiti', 'Ekiti State'),
(244, 13, 'Efon', 'Ekiti State'),
(245, 13, 'Ekiti East', 'Ekiti State'),
(246, 13, 'Ekiti South-West', 'Ekiti State'),
(247, 13, 'Ekiti West', 'Ekiti State'),
(248, 13, 'Emure', 'Ekiti State'),
(249, 13, 'Gbonyin', 'Ekiti State'),
(250, 13, 'Ido Osi', 'Ekiti State'),
(251, 13, 'Ijero', 'Ekiti State'),
(252, 13, 'Ikere', 'Ekiti State'),
(253, 13, 'Ikole', 'Ekiti State'),
(254, 13, 'Ilejemeje', 'Ekiti State'),
(255, 13, 'Irepodun/Ifelodun', 'Ekiti State'),
(256, 13, 'Ise/Orun', 'Ekiti State'),
(257, 13, 'Moba', 'Ekiti State'),
(258, 13, 'Oye', 'Ekiti State'),
(259, 14, 'Aninri', 'Enugu State'),
(260, 14, 'Awgu', 'Enugu State'),
(261, 14, 'Enugu East', 'Enugu State'),
(262, 14, 'Enugu North', 'Enugu State'),
(263, 14, 'Enugu South', 'Enugu State'),
(264, 14, 'Ezeagu', 'Enugu State'),
(265, 14, 'Igbo Etiti', 'Enugu State'),
(266, 14, 'Igbo Eze North', 'Enugu State'),
(267, 14, 'Igbo Eze South', 'Enugu State'),
(268, 14, 'Isi Uzo', 'Enugu State'),
(269, 14, 'Nkanu East', 'Enugu State'),
(270, 14, 'Nkanu West', 'Enugu State'),
(271, 14, 'Nsukka', 'Enugu State'),
(272, 14, 'Oji River', 'Enugu State'),
(273, 14, 'Udenu', 'Enugu State'),
(274, 14, 'Udi', 'Enugu State'),
(275, 14, 'Uzo Uwani', 'Enugu State'),
(276, 15, 'Abaji', 'FCT'),
(277, 15, 'Bwari', 'FCT'),
(278, 15, 'Gwagwalada', 'FCT'),
(279, 15, 'Kuje', 'FCT'),
(280, 15, 'Kwali', 'FCT'),
(281, 15, 'Municipal Area Council', 'FCT'),
(282, 16, 'Akko', 'Gombe State'),
(283, 16, 'Balanga', 'Gombe State'),
(284, 16, 'Billiri', 'Gombe State'),
(285, 16, 'Dukku', 'Gombe State'),
(286, 16, 'Funakaye', 'Gombe State'),
(287, 16, 'Gombe', 'Gombe State'),
(288, 16, 'Kaltungo', 'Gombe State'),
(289, 16, 'Kwami', 'Gombe State'),
(290, 16, 'Nafada', 'Gombe State'),
(291, 16, 'Shongom', 'Gombe State'),
(292, 16, 'Yamaltu/Deba', 'Gombe State'),
(293, 17, 'Aboh Mbaise', 'Imo State'),
(294, 17, 'Ahiazu Mbaise', 'Imo State'),
(295, 17, 'Ehime Mbano', 'Imo State'),
(296, 17, 'Ezinihitte', 'Imo State'),
(297, 17, 'Ideato North', 'Imo State'),
(298, 17, 'Ideato South', 'Imo State'),
(299, 17, 'Ihitte/Uboma', 'Imo State'),
(300, 17, 'Ikeduru', 'Imo State'),
(301, 17, 'Isiala Mbano', 'Imo State'),
(302, 17, 'Isu', 'Imo State'),
(303, 17, 'Mbaitoli', 'Imo State'),
(304, 17, 'Ngor Okpala', 'Imo State'),
(305, 17, 'Njaba', 'Imo State'),
(306, 17, 'Nkwerre', 'Imo State'),
(307, 17, 'Nwangele', 'Imo State'),
(308, 17, 'Obowo', 'Imo State'),
(309, 17, 'Oguta', 'Imo State'),
(310, 17, 'Ohaji/Egbema', 'Imo State'),
(311, 17, 'Okigwe', 'Imo State'),
(312, 17, 'Orlu', 'Imo State'),
(313, 17, 'Orsu', 'Imo State'),
(314, 17, 'Oru East', 'Imo State'),
(315, 17, 'Oru West', 'Imo State'),
(316, 17, 'Owerri Municipal', 'Imo State'),
(317, 17, 'Owerri North', 'Imo State'),
(318, 17, 'Owerri West', 'Imo State'),
(319, 17, 'Unuimo', 'Imo State'),
(320, 18, 'Auyo', 'Jigawa State'),
(321, 18, 'Babura', 'Jigawa State'),
(322, 18, 'Biriniwa', 'Jigawa State'),
(323, 18, 'Birnin Kudu', 'Jigawa State'),
(324, 18, 'Buji', 'Jigawa State'),
(325, 18, 'Dutse', 'Jigawa State'),
(326, 18, 'Gagarawa', 'Jigawa State'),
(327, 18, 'Garki', 'Jigawa State'),
(328, 18, 'Gumel', 'Jigawa State'),
(329, 18, 'Guri', 'Jigawa State'),
(330, 18, 'Gwaram', 'Jigawa State'),
(331, 18, 'Gwiwa', 'Jigawa State'),
(332, 18, 'Hadejia', 'Jigawa State'),
(333, 18, 'Jahun', 'Jigawa State'),
(334, 18, 'Kafin Hausa', 'Jigawa State'),
(335, 18, 'Kazaure', 'Jigawa State'),
(336, 18, 'Kiri Kasama', 'Jigawa State'),
(337, 18, 'Kiyawa', 'Jigawa State'),
(338, 18, 'Kaugama', 'Jigawa State'),
(339, 18, 'Maigatari', 'Jigawa State'),
(340, 18, 'Malam Madori', 'Jigawa State'),
(341, 18, 'Miga', 'Jigawa State'),
(342, 18, 'Ringim', 'Jigawa State'),
(343, 18, 'Roni', 'Jigawa State'),
(344, 18, 'Sule Tankarkar', 'Jigawa State'),
(345, 18, 'Taura', 'Jigawa State'),
(346, 18, 'Yankwashi', 'Jigawa State'),
(347, 19, 'Birnin Gwari', 'Kaduna State'),
(348, 19, 'Chikun', 'Kaduna State'),
(349, 19, 'Giwa', 'Kaduna State'),
(350, 19, 'Igabi', 'Kaduna State'),
(351, 19, 'Ikara', 'Kaduna State'),
(352, 19, 'Jaba', 'Kaduna State'),
(353, 19, 'Jema\'a', 'Kaduna State'),
(354, 19, 'Kachia', 'Kaduna State'),
(355, 19, 'Kaduna North', 'Kaduna State'),
(356, 19, 'Kaduna South', 'Kaduna State'),
(357, 19, 'Kagarko', 'Kaduna State'),
(358, 19, 'Kajuru', 'Kaduna State'),
(359, 19, 'Kaura', 'Kaduna State'),
(360, 19, 'Kauru', 'Kaduna State'),
(361, 19, 'Kubau', 'Kaduna State'),
(362, 19, 'Kudan', 'Kaduna State'),
(363, 19, 'Lere', 'Kaduna State'),
(364, 19, 'Makarfi', 'Kaduna State'),
(365, 19, 'Sabon Gari', 'Kaduna State'),
(366, 19, 'Sanga', 'Kaduna State'),
(367, 19, 'Soba', 'Kaduna State'),
(368, 19, 'Zangon Kataf', 'Kaduna State'),
(369, 19, 'Zaria', 'Kaduna State'),
(370, 20, 'Ajingi', 'Kano State'),
(371, 20, 'Albasu', 'Kano State'),
(372, 20, 'Bagwai', 'Kano State'),
(373, 20, 'Bebeji', 'Kano State'),
(374, 20, 'Bichi', 'Kano State'),
(375, 20, 'Bunkure', 'Kano State'),
(376, 20, 'Dala', 'Kano State'),
(377, 20, 'Dambatta', 'Kano State'),
(378, 20, 'Dawakin Kudu', 'Kano State'),
(379, 20, 'Dawakin Tofa', 'Kano State'),
(380, 20, 'Doguwa', 'Kano State'),
(381, 20, 'Fagge', 'Kano State'),
(382, 20, 'Gabasawa', 'Kano State'),
(383, 20, 'Garko', 'Kano State'),
(384, 20, 'Garun Mallam', 'Kano State'),
(385, 20, 'Gaya', 'Kano State'),
(386, 20, 'Gezawa', 'Kano State'),
(387, 20, 'Gwale', 'Kano State'),
(388, 20, 'Gwarzo', 'Kano State'),
(389, 20, 'Kabo', 'Kano State'),
(390, 20, 'Kano Municipal', 'Kano State'),
(391, 20, 'Karaye', 'Kano State'),
(392, 20, 'Kibiya', 'Kano State'),
(393, 20, 'Kiru', 'Kano State'),
(394, 20, 'Kumbotso', 'Kano State'),
(395, 20, 'Kunchi', 'Kano State'),
(396, 20, 'Kura', 'Kano State'),
(397, 20, 'Madobi', 'Kano State'),
(398, 20, 'Makoda', 'Kano State'),
(399, 20, 'Minjibir', 'Kano State'),
(400, 20, 'Nasarawa', 'Kano State'),
(401, 20, 'Rano', 'Kano State'),
(402, 20, 'Rimin Gado', 'Kano State'),
(403, 20, 'Rogo', 'Kano State'),
(404, 20, 'Shanono', 'Kano State'),
(405, 20, 'Sumaila', 'Kano State'),
(406, 20, 'Takai', 'Kano State'),
(407, 20, 'Tarauni', 'Kano State'),
(408, 20, 'Tofa', 'Kano State'),
(409, 20, 'Tsanyawa', 'Kano State'),
(410, 20, 'Tudun Wada', 'Kano State'),
(411, 20, 'Ungogo', 'Kano State'),
(412, 20, 'Warawa', 'Kano State'),
(413, 20, 'Wudil', 'Kano State'),
(414, 21, 'Bakori', 'Katsina State'),
(415, 21, 'Batagarawa', 'Katsina State'),
(416, 21, 'Batsari', 'Katsina State'),
(417, 21, 'Baure', 'Katsina State'),
(418, 21, 'Bindawa', 'Katsina State'),
(419, 21, 'Charanchi', 'Katsina State'),
(420, 21, 'Dandume', 'Katsina State'),
(421, 21, 'Danja', 'Katsina State'),
(422, 21, 'Dan Musa', 'Katsina State'),
(423, 21, 'Daura', 'Katsina State'),
(424, 21, 'Dutsi', 'Katsina State'),
(425, 21, 'Dutsin Ma', 'Katsina State'),
(426, 21, 'Faskari', 'Katsina State'),
(427, 21, 'Funtua', 'Katsina State'),
(428, 21, 'Ingawa', 'Katsina State'),
(429, 21, 'Jibia', 'Katsina State'),
(430, 21, 'Kafur', 'Katsina State'),
(431, 21, 'Kaita', 'Katsina State'),
(432, 21, 'Kankara', 'Katsina State'),
(433, 21, 'Kankia', 'Katsina State'),
(434, 21, 'Katsina', 'Katsina State'),
(435, 21, 'Kurfi', 'Katsina State'),
(436, 21, 'Kusada', 'Katsina State'),
(437, 21, 'Mai\'Adua', 'Katsina State'),
(438, 21, 'Malumfashi', 'Katsina State'),
(439, 21, 'Mani', 'Katsina State'),
(440, 21, 'Mashi', 'Katsina State'),
(441, 21, 'Matazu', 'Katsina State'),
(442, 21, 'Musawa', 'Katsina State'),
(443, 21, 'Rimi', 'Katsina State'),
(444, 21, 'Sabuwa', 'Katsina State'),
(445, 21, 'Safana', 'Katsina State'),
(446, 21, 'Sandamu', 'Katsina State'),
(447, 21, 'Zango', 'Katsina State'),
(448, 22, 'Aleiro', 'Kebbi State'),
(449, 22, 'Arewa Dandi', 'Kebbi State'),
(450, 22, 'Argungu', 'Kebbi State'),
(451, 22, 'Augie', 'Kebbi State'),
(452, 22, 'Bagudo', 'Kebbi State'),
(453, 22, 'Birnin Kebbi', 'Kebbi State'),
(454, 22, 'Bunza', 'Kebbi State'),
(455, 22, 'Dandi', 'Kebbi State'),
(456, 22, 'Fakai', 'Kebbi State'),
(457, 22, 'Gwandu', 'Kebbi State'),
(458, 22, 'Jega', 'Kebbi State'),
(459, 22, 'Kalgo', 'Kebbi State'),
(460, 22, 'Koko/Besse', 'Kebbi State'),
(461, 22, 'Maiyama', 'Kebbi State'),
(462, 22, 'Ngaski', 'Kebbi State'),
(463, 22, 'Sakaba', 'Kebbi State'),
(464, 22, 'Shanga', 'Kebbi State'),
(465, 22, 'Suru', 'Kebbi State'),
(466, 22, 'Wasagu/Danko', 'Kebbi State'),
(467, 22, 'Yauri', 'Kebbi State'),
(468, 22, 'Zuru', 'Kebbi State'),
(469, 23, 'Adavi', 'Kogi State'),
(470, 23, 'Ajaokuta', 'Kogi State'),
(471, 23, 'Ankpa', 'Kogi State'),
(472, 23, 'Bassa', 'Kogi State'),
(473, 23, 'Dekina', 'Kogi State'),
(474, 23, 'Ibaji', 'Kogi State'),
(475, 23, 'Idah', 'Kogi State'),
(476, 23, 'Igalamela Odolu', 'Kogi State'),
(477, 23, 'Ijumu', 'Kogi State'),
(478, 23, 'Kabba/Bunu', 'Kogi State'),
(479, 23, 'Kogi', 'Kogi State'),
(480, 23, 'Lokoja', 'Kogi State'),
(481, 23, 'Mopa Muro', 'Kogi State'),
(482, 23, 'Ofu', 'Kogi State'),
(483, 23, 'Ogori/Magongo', 'Kogi State'),
(484, 23, 'Okehi', 'Kogi State'),
(485, 23, 'Okene', 'Kogi State'),
(486, 23, 'Olamaboro', 'Kogi State'),
(487, 23, 'Omala', 'Kogi State'),
(488, 23, 'Yagba East', 'Kogi State'),
(489, 23, 'Yagba West', 'Kogi State'),
(490, 24, 'Asa', 'Kwara State'),
(491, 24, 'Baruten', 'Kwara State'),
(492, 24, 'Edu', 'Kwara State'),
(493, 24, 'Ekiti', 'Kwara State'),
(494, 24, 'Ifelodun', 'Kwara State'),
(495, 24, 'Ilorin East', 'Kwara State'),
(496, 24, 'Ilorin South', 'Kwara State'),
(497, 24, 'Ilorin West', 'Kwara State'),
(498, 24, 'Irepodun', 'Kwara State'),
(499, 24, 'Isin', 'Kwara State'),
(500, 24, 'Kaiama', 'Kwara State'),
(501, 24, 'Moro', 'Kwara State'),
(502, 24, 'Offa', 'Kwara State'),
(503, 24, 'Oke Ero', 'Kwara State'),
(504, 24, 'Oyun', 'Kwara State'),
(505, 24, 'Pategi', 'Kwara State'),
(506, 25, 'Agege', 'Lagos State'),
(507, 25, 'Ajeromi-Ifelodun', 'Lagos State'),
(508, 25, 'Alimosho', 'Lagos State'),
(509, 25, 'Amuwo-Odofin', 'Lagos State'),
(510, 25, 'Apapa', 'Lagos State'),
(511, 25, 'Badagry', 'Lagos State'),
(512, 25, 'Epe', 'Lagos State'),
(513, 25, 'Eti Osa', 'Lagos State'),
(514, 25, 'Ibeju-Lekki', 'Lagos State'),
(515, 25, 'Ifako-Ijaiye', 'Lagos State'),
(516, 25, 'Ikeja', 'Lagos State'),
(517, 25, 'Ikorodu', 'Lagos State'),
(518, 25, 'Kosofe', 'Lagos State'),
(519, 25, 'Lagos Island', 'Lagos State'),
(520, 25, 'Lagos Mainland', 'Lagos State'),
(521, 25, 'Mushin', 'Lagos State'),
(522, 25, 'Ojo', 'Lagos State'),
(523, 25, 'Oshodi-Isolo', 'Lagos State'),
(524, 25, 'Shomolu', 'Lagos State'),
(525, 25, 'Surulere', 'Lagos State'),
(526, 26, 'Akwanga', 'Nasarawa State'),
(527, 26, 'Awe', 'Nasarawa State'),
(528, 26, 'Doma', 'Nasarawa State'),
(529, 26, 'Karu', 'Nasarawa State'),
(530, 26, 'Keana', 'Nasarawa State'),
(531, 26, 'Keffi', 'Nasarawa State'),
(532, 26, 'Kokona', 'Nasarawa State'),
(533, 26, 'Lafia', 'Nasarawa State'),
(534, 26, 'Nasarawa', 'Nasarawa State'),
(535, 26, 'Nasarawa Egon', 'Nasarawa State'),
(536, 26, 'Obi', 'Nasarawa State'),
(537, 26, 'Toto', 'Nasarawa State'),
(538, 26, 'Wamba', 'Nasarawa State'),
(539, 27, 'Agaie', 'Niger State'),
(540, 27, 'Agwara', 'Niger State'),
(541, 27, 'Bida', 'Niger State'),
(542, 27, 'Borgu', 'Niger State'),
(543, 27, 'Bosso', 'Niger State'),
(544, 27, 'Chanchaga', 'Niger State'),
(545, 27, 'Edati', 'Niger State'),
(546, 27, 'Gbako', 'Niger State'),
(547, 27, 'Gurara', 'Niger State'),
(548, 27, 'Katcha', 'Niger State'),
(549, 27, 'Kontagora', 'Niger State'),
(550, 27, 'Lapai', 'Niger State'),
(551, 27, 'Lavun', 'Niger State'),
(552, 27, 'Magama', 'Niger State'),
(553, 27, 'Mariga', 'Niger State'),
(554, 27, 'Mashegu', 'Niger State'),
(555, 27, 'Mokwa', 'Niger State'),
(556, 27, 'Moya', 'Niger State'),
(557, 27, 'Paikoro', 'Niger State'),
(558, 27, 'Rafi', 'Niger State'),
(559, 27, 'Rijau', 'Niger State'),
(560, 27, 'Shiroro', 'Niger State'),
(561, 27, 'Suleja', 'Niger State'),
(562, 27, 'Tafa', 'Niger State'),
(563, 27, 'Wushishi', 'Niger State'),
(564, 28, 'Abeokuta North', 'Ogun State'),
(565, 28, 'Abeokuta South', 'Ogun State'),
(566, 28, 'Ado-Odo/Ota', 'Ogun State'),
(567, 28, 'Egbado North', 'Ogun State'),
(568, 28, 'Egbado South', 'Ogun State'),
(569, 28, 'Ewekoro', 'Ogun State'),
(570, 28, 'Ifo', 'Ogun State'),
(571, 28, 'Ijebu East', 'Ogun State'),
(572, 28, 'Ijebu North', 'Ogun State'),
(573, 28, 'Ijebu North East', 'Ogun State'),
(574, 28, 'Ijebu Ode', 'Ogun State'),
(575, 28, 'Ikenne', 'Ogun State'),
(576, 28, 'Imeko Afon', 'Ogun State'),
(577, 28, 'Ipokia', 'Ogun State'),
(578, 28, 'Obafemi Owode', 'Ogun State'),
(579, 28, 'Odeda', 'Ogun State'),
(580, 28, 'Odogbolu', 'Ogun State'),
(581, 28, 'Ogun Waterside', 'Ogun State'),
(582, 28, 'Remo North', 'Ogun State'),
(583, 28, 'Shagamu', 'Ogun State'),
(584, 29, 'Akoko North-East', 'Ondo State'),
(585, 29, 'Akoko North-West', 'Ondo State'),
(586, 29, 'Akoko South-West', 'Ondo State'),
(587, 29, 'Akoko South-East', 'Ondo State'),
(588, 29, 'Akure North', 'Ondo State'),
(589, 29, 'Akure South', 'Ondo State'),
(590, 29, 'Ese Odo', 'Ondo State'),
(591, 29, 'Idanre', 'Ondo State'),
(592, 29, 'Ifedore', 'Ondo State'),
(593, 29, 'Ilaje', 'Ondo State'),
(594, 29, 'Ile Oluji/Okeigbo', 'Ondo State'),
(595, 29, 'Irele', 'Ondo State'),
(596, 29, 'Odigbo', 'Ondo State'),
(597, 29, 'Okitipupa', 'Ondo State'),
(598, 29, 'Ondo East', 'Ondo State'),
(599, 29, 'Ondo West', 'Ondo State'),
(600, 29, 'Ose', 'Ondo State'),
(601, 29, 'Owo', 'Ondo State'),
(602, 30, 'Atakunmosa East', 'Osun State'),
(603, 30, 'Atakunmosa West', 'Osun State'),
(604, 30, 'Aiyedaade', 'Osun State'),
(605, 30, 'Aiyedire', 'Osun State'),
(606, 30, 'Boluwaduro', 'Osun State'),
(607, 30, 'Boripe', 'Osun State'),
(608, 30, 'Ede North', 'Osun State'),
(609, 30, 'Ede South', 'Osun State'),
(610, 30, 'Ife Central', 'Osun State'),
(611, 30, 'Ife East', 'Osun State'),
(612, 30, 'Ife North', 'Osun State'),
(613, 30, 'Ife South', 'Osun State'),
(614, 30, 'Egbedore', 'Osun State'),
(615, 30, 'Ejigbo', 'Osun State'),
(616, 30, 'Ifedayo', 'Osun State'),
(617, 30, 'Ifelodun', 'Osun State'),
(618, 30, 'Ila', 'Osun State'),
(619, 30, 'Ilesa East', 'Osun State'),
(620, 30, 'Ilesa West', 'Osun State'),
(621, 30, 'Irepodun', 'Osun State'),
(622, 30, 'Irewole', 'Osun State'),
(623, 30, 'Isokan', 'Osun State'),
(624, 30, 'Iwo', 'Osun State'),
(625, 30, 'Obokun', 'Osun State'),
(626, 30, 'Odo Otin', 'Osun State'),
(627, 30, 'Ola Oluwa', 'Osun State'),
(628, 30, 'Olorunda', 'Osun State'),
(629, 30, 'Oriade', 'Osun State'),
(630, 30, 'Orolu', 'Osun State'),
(631, 30, 'Osogbo', 'Osun State'),
(632, 31, 'Afijio', 'Oyo State');
INSERT INTO `mytable` (`id`, `stateid`, `lga`, `state`) VALUES
(633, 31, 'Akinyele', 'Oyo State'),
(634, 31, 'Atiba', 'Oyo State'),
(635, 31, 'Atisbo', 'Oyo State'),
(636, 31, 'Egbeda', 'Oyo State'),
(637, 31, 'Ibadan North', 'Oyo State'),
(638, 31, 'Ibadan North-East', 'Oyo State'),
(639, 31, 'Ibadan North-West', 'Oyo State'),
(640, 31, 'Ibadan South-East', 'Oyo State'),
(641, 31, 'Ibadan South-West', 'Oyo State'),
(642, 31, 'Ibarapa Central', 'Oyo State'),
(643, 31, 'Ibarapa East', 'Oyo State'),
(644, 31, 'Ibarapa North', 'Oyo State'),
(645, 31, 'Ido', 'Oyo State'),
(646, 31, 'Irepo', 'Oyo State'),
(647, 31, 'Iseyin', 'Oyo State'),
(648, 31, 'Itesiwaju', 'Oyo State'),
(649, 31, 'Iwajowa', 'Oyo State'),
(650, 31, 'Kajola', 'Oyo State'),
(651, 31, 'Lagelu', 'Oyo State'),
(652, 31, 'Ogbomosho North', 'Oyo State'),
(653, 31, 'Ogbomosho South', 'Oyo State'),
(654, 31, 'Ogo Oluwa', 'Oyo State'),
(655, 31, 'Olorunsogo', 'Oyo State'),
(656, 31, 'Oluyole', 'Oyo State'),
(657, 31, 'Ona Ara', 'Oyo State'),
(658, 31, 'Orelope', 'Oyo State'),
(659, 31, 'Ori Ire', 'Oyo State'),
(660, 31, 'Oyo', 'Oyo State'),
(661, 31, 'Oyo East', 'Oyo State'),
(662, 31, 'Saki East', 'Oyo State'),
(663, 31, 'Saki West', 'Oyo State'),
(664, 31, 'Surulere', 'Oyo State'),
(665, 32, 'Bokkos', 'Plateau State'),
(666, 32, 'Barkin Ladi', 'Plateau State'),
(667, 32, 'Bassa', 'Plateau State'),
(668, 32, 'Jos East', 'Plateau State'),
(669, 32, 'Jos North', 'Plateau State'),
(670, 32, 'Jos South', 'Plateau State'),
(671, 32, 'Kanam', 'Plateau State'),
(672, 32, 'Kanke', 'Plateau State'),
(673, 32, 'Langtang South', 'Plateau State'),
(674, 32, 'Langtang North', 'Plateau State'),
(675, 32, 'Mangu', 'Plateau State'),
(676, 32, 'Mikang', 'Plateau State'),
(677, 32, 'Pankshin', 'Plateau State'),
(678, 32, 'Qua\'an Pan', 'Plateau State'),
(679, 32, 'Riyom', 'Plateau State'),
(680, 32, 'Shendam', 'Plateau State'),
(681, 32, 'Wase', 'Plateau State'),
(682, 33, 'Abua/Odual', 'Rivers State'),
(683, 33, 'Ahoada East', 'Rivers State'),
(684, 33, 'Ahoada West', 'Rivers State'),
(685, 33, 'Akuku-Toru', 'Rivers State'),
(686, 33, 'Andoni', 'Rivers State'),
(687, 33, 'Asari-Toru', 'Rivers State'),
(688, 33, 'Bonny', 'Rivers State'),
(689, 33, 'Degema', 'Rivers State'),
(690, 33, 'Eleme', 'Rivers State'),
(691, 33, 'Emuoha', 'Rivers State'),
(692, 33, 'Etche', 'Rivers State'),
(693, 33, 'Gokana', 'Rivers State'),
(694, 33, 'Ikwerre', 'Rivers State'),
(695, 33, 'Khana', 'Rivers State'),
(696, 33, 'Obio/Akpor', 'Rivers State'),
(697, 33, 'Ogba/Egbema/Ndoni', 'Rivers State'),
(698, 33, 'Ogu/Bolo', 'Rivers State'),
(699, 33, 'Okrika', 'Rivers State'),
(700, 33, 'Omuma', 'Rivers State'),
(701, 33, 'Opobo/Nkoro', 'Rivers State'),
(702, 33, 'Oyigbo', 'Rivers State'),
(703, 33, 'Port Harcourt', 'Rivers State'),
(704, 33, 'Tai', 'Rivers State'),
(705, 34, 'Binji', 'Sokoto State'),
(706, 34, 'Bodinga', 'Sokoto State'),
(707, 34, 'Dange Shuni', 'Sokoto State'),
(708, 34, 'Gada', 'Sokoto State'),
(709, 34, 'Goronyo', 'Sokoto State'),
(710, 34, 'Gudu', 'Sokoto State'),
(711, 34, 'Gwadabawa', 'Sokoto State'),
(712, 34, 'Illela', 'Sokoto State'),
(713, 34, 'Isa', 'Sokoto State'),
(714, 34, 'Kebbe', 'Sokoto State'),
(715, 34, 'Kware', 'Sokoto State'),
(716, 34, 'Rabah', 'Sokoto State'),
(717, 34, 'Sabon Birni', 'Sokoto State'),
(718, 34, 'Shagari', 'Sokoto State'),
(719, 34, 'Silame', 'Sokoto State'),
(720, 34, 'Sokoto North', 'Sokoto State'),
(721, 34, 'Sokoto South', 'Sokoto State'),
(722, 34, 'Tambuwal', 'Sokoto State'),
(723, 34, 'Tangaza', 'Sokoto State'),
(724, 34, 'Tureta', 'Sokoto State'),
(725, 34, 'Wamako', 'Sokoto State'),
(726, 34, 'Wurno', 'Sokoto State'),
(727, 34, 'Yabo', 'Sokoto State'),
(728, 35, 'Ardo Kola', 'Taraba State'),
(729, 35, 'Bali', 'Taraba State'),
(730, 35, 'Donga', 'Taraba State'),
(731, 35, 'Gashaka', 'Taraba State'),
(732, 35, 'Gassol', 'Taraba State'),
(733, 35, 'Ibi', 'Taraba State'),
(734, 35, 'Jalingo', 'Taraba State'),
(735, 35, 'Karim Lamido', 'Taraba State'),
(736, 35, 'Kumi', 'Taraba State'),
(737, 35, 'Lau', 'Taraba State'),
(738, 35, 'Sardauna', 'Taraba State'),
(739, 35, 'Takum', 'Taraba State'),
(740, 35, 'Ussa', 'Taraba State'),
(741, 35, 'Wukari', 'Taraba State'),
(742, 35, 'Yorro', 'Taraba State'),
(743, 35, 'Zing', 'Taraba State'),
(744, 36, 'Bade', 'Yobe State'),
(745, 36, 'Bursari', 'Yobe State'),
(746, 36, 'Damaturu', 'Yobe State'),
(747, 36, 'Fika', 'Yobe State'),
(748, 36, 'Fune', 'Yobe State'),
(749, 36, 'Geidam', 'Yobe State'),
(750, 36, 'Gujba', 'Yobe State'),
(751, 36, 'Gulani', 'Yobe State'),
(752, 36, 'Jakusko', 'Yobe State'),
(753, 36, 'Karasuwa', 'Yobe State'),
(754, 36, 'Machina', 'Yobe State'),
(755, 36, 'Nangere', 'Yobe State'),
(756, 36, 'Nguru', 'Yobe State'),
(757, 36, 'Potiskum', 'Yobe State'),
(758, 36, 'Tarmuwa', 'Yobe State'),
(759, 36, 'Yunusari', 'Yobe State'),
(760, 36, 'Yusufari', 'Yobe State'),
(761, 37, 'Anka', 'Zamfara State'),
(762, 37, 'Bakura', 'Zamfara State'),
(763, 37, 'Birnin Magaji/Kiyaw', 'Zamfara State'),
(764, 37, 'Bukkuyum', 'Zamfara State'),
(765, 37, 'Bungudu', 'Zamfara State'),
(766, 37, 'Gummi', 'Zamfara State'),
(767, 37, 'Gusau', 'Zamfara State'),
(768, 37, 'Kaura Namoda', 'Zamfara State'),
(769, 37, 'Maradun', 'Zamfara State'),
(770, 37, 'Maru', 'Zamfara State'),
(771, 37, 'Shinkafi', 'Zamfara State'),
(772, 37, 'Talata Mafara', 'Zamfara State'),
(773, 37, 'Chafe', 'Zamfara State'),
(774, 37, 'Zurmi', 'Zamfara State'),
(1, 1, 'Aba North', 'Abia State'),
(2, 1, 'Aba South', 'Abia State'),
(3, 1, 'Arochukwu', 'Abia State'),
(4, 1, 'Bende', 'Abia State'),
(5, 1, 'Ikwuano', 'Abia State'),
(6, 1, 'Isiala Ngwa North', 'Abia State'),
(7, 1, 'Isiala Ngwa South', 'Abia State'),
(8, 1, 'Isuikwuato', 'Abia State'),
(9, 1, 'Obi Ngwa', 'Abia State'),
(10, 1, 'Ohafia', 'Abia State'),
(11, 1, 'Osisioma', 'Abia State'),
(12, 1, 'Ugwunagbo', 'Abia State'),
(13, 1, 'Ukwa East', 'Abia State'),
(14, 1, 'Ukwa West', 'Abia State'),
(15, 1, 'Umuahia North', 'Abia State'),
(16, 1, 'Umuahia South', 'Abia State'),
(17, 1, 'Umu Nneochi', 'Abia State'),
(18, 2, 'Demsa', 'Adamawa State'),
(19, 2, 'Fufure', 'Adamawa State'),
(20, 2, 'Ganye', 'Adamawa State'),
(21, 2, 'Gayuk', 'Adamawa State'),
(22, 2, 'Gombi', 'Adamawa State'),
(23, 2, 'Grie', 'Adamawa State'),
(24, 2, 'Hong', 'Adamawa State'),
(25, 2, 'Jada', 'Adamawa State'),
(26, 2, 'Lamurde', 'Adamawa State'),
(27, 2, 'Madagali', 'Adamawa State'),
(28, 2, 'Maiha', 'Adamawa State'),
(29, 2, 'Mayo Belwa', 'Adamawa State'),
(30, 2, 'Michika', 'Adamawa State'),
(31, 2, 'Mubi North', 'Adamawa State'),
(32, 2, 'Mubi South', 'Adamawa State'),
(33, 2, 'Numan', 'Adamawa State'),
(34, 2, 'Shelleng', 'Adamawa State'),
(35, 2, 'Song', 'Adamawa State'),
(36, 2, 'Toungo', 'Adamawa State'),
(37, 2, 'Yola North', 'Adamawa State'),
(38, 2, 'Yola South', 'Adamawa State'),
(39, 3, 'Abak', 'Akwa Ibom State'),
(40, 3, 'Eastern Obolo', 'Akwa Ibom State'),
(41, 3, 'Eket', 'Akwa Ibom State'),
(42, 3, 'Esit Eket', 'Akwa Ibom State'),
(43, 3, 'Essien Udim', 'Akwa Ibom State'),
(44, 3, 'Etim Ekpo', 'Akwa Ibom State'),
(45, 3, 'Etinan', 'Akwa Ibom State'),
(46, 3, 'Ibeno', 'Akwa Ibom State'),
(47, 3, 'Ibesikpo Asutan', 'Akwa Ibom State'),
(48, 3, 'Ibiono-Ibom', 'Akwa Ibom State'),
(49, 3, 'Ika', 'Akwa Ibom State'),
(50, 3, 'Ikono', 'Akwa Ibom State'),
(51, 3, 'Ikot Abasi', 'Akwa Ibom State'),
(52, 3, 'Ikot Ekpene', 'Akwa Ibom State'),
(53, 3, 'Ini', 'Akwa Ibom State'),
(54, 3, 'Itu', 'Akwa Ibom State'),
(55, 3, 'Mbo', 'Akwa Ibom State'),
(56, 3, 'Mkpat-Enin', 'Akwa Ibom State'),
(57, 3, 'Nsit-Atai', 'Akwa Ibom State'),
(58, 3, 'Nsit-Ibom', 'Akwa Ibom State'),
(59, 3, 'Nsit-Ubium', 'Akwa Ibom State'),
(60, 3, 'Obot Akara', 'Akwa Ibom State'),
(61, 3, 'Okobo', 'Akwa Ibom State'),
(62, 3, 'Onna', 'Akwa Ibom State'),
(63, 3, 'Oron', 'Akwa Ibom State'),
(64, 3, 'Oruk Anam', 'Akwa Ibom State'),
(65, 3, 'Udung-Uko', 'Akwa Ibom State'),
(66, 3, 'Ukanafun', 'Akwa Ibom State'),
(67, 3, 'Uruan', 'Akwa Ibom State'),
(68, 3, 'Urue-Offong/Oruko', 'Akwa Ibom State'),
(69, 3, 'Uyo', 'Akwa Ibom State'),
(70, 4, 'Aguata', 'Anambra State'),
(71, 4, 'Anambra East', 'Anambra State'),
(72, 4, 'Anambra West', 'Anambra State'),
(73, 4, 'Anaocha', 'Anambra State'),
(74, 4, 'Awka North', 'Anambra State'),
(75, 4, 'Awka South', 'Anambra State'),
(76, 4, 'Ayamelum', 'Anambra State'),
(77, 4, 'Dunukofia', 'Anambra State'),
(78, 4, 'Ekwusigo', 'Anambra State'),
(79, 4, 'Idemili North', 'Anambra State'),
(80, 4, 'Idemili South', 'Anambra State'),
(81, 4, 'Ihiala', 'Anambra State'),
(82, 4, 'Njikoka', 'Anambra State'),
(83, 4, 'Nnewi North', 'Anambra State'),
(84, 4, 'Nnewi South', 'Anambra State'),
(85, 4, 'Ogbaru', 'Anambra State'),
(86, 4, 'Onitsha North', 'Anambra State'),
(87, 4, 'Onitsha South', 'Anambra State'),
(88, 4, 'Orumba North', 'Anambra State'),
(89, 4, 'Orumba South', 'Anambra State'),
(90, 4, 'Oyi', 'Anambra State'),
(91, 5, 'Alkaleri', 'Bauchi State'),
(92, 5, 'Bauchi', 'Bauchi State'),
(93, 5, 'Bogoro', 'Bauchi State'),
(94, 5, 'Damban', 'Bauchi State'),
(95, 5, 'Darazo', 'Bauchi State'),
(96, 5, 'Dass', 'Bauchi State'),
(97, 5, 'Gamawa', 'Bauchi State'),
(98, 5, 'Ganjuwa', 'Bauchi State'),
(99, 5, 'Giade', 'Bauchi State'),
(100, 5, 'Itas/Gadau', 'Bauchi State'),
(101, 5, 'Jama\'are', 'Bauchi State'),
(102, 5, 'Katagum', 'Bauchi State'),
(103, 5, 'Kirfi', 'Bauchi State'),
(104, 5, 'Misau', 'Bauchi State'),
(105, 5, 'Ningi', 'Bauchi State'),
(106, 5, 'Shira', 'Bauchi State'),
(107, 5, 'Tafawa Balewa', 'Bauchi State'),
(108, 5, 'Toro', 'Bauchi State'),
(109, 5, 'Warji', 'Bauchi State'),
(110, 5, 'Zaki', 'Bauchi State'),
(111, 6, 'Brass', 'Bayelsa State'),
(112, 6, 'Ekeremor', 'Bayelsa State'),
(113, 6, 'Kolokuma/Opokuma', 'Bayelsa State'),
(114, 6, 'Nembe', 'Bayelsa State'),
(115, 6, 'Ogbia', 'Bayelsa State'),
(116, 6, 'Sagbama', 'Bayelsa State'),
(117, 6, 'Southern Ijaw', 'Bayelsa State'),
(118, 6, 'Yenagoa', 'Bayelsa State'),
(119, 7, 'Agatu', 'Benue State'),
(120, 7, 'Apa', 'Benue State'),
(121, 7, 'Ado', 'Benue State'),
(122, 7, 'Buruku', 'Benue State'),
(123, 7, 'Gboko', 'Benue State'),
(124, 7, 'Guma', 'Benue State'),
(125, 7, 'Gwer East', 'Benue State'),
(126, 7, 'Gwer West', 'Benue State'),
(127, 7, 'Katsina-Ala', 'Benue State'),
(128, 7, 'Konshisha', 'Benue State'),
(129, 7, 'Kwande', 'Benue State'),
(130, 7, 'Logo', 'Benue State'),
(131, 7, 'Makurdi', 'Benue State'),
(132, 7, 'Obi', 'Benue State'),
(133, 7, 'Ogbadibo', 'Benue State'),
(134, 7, 'Ohimini', 'Benue State'),
(135, 7, 'Oju', 'Benue State'),
(136, 7, 'Okpokwu', 'Benue State'),
(137, 7, 'Oturkpo', 'Benue State'),
(138, 7, 'Tarka', 'Benue State'),
(139, 7, 'Ukum', 'Benue State'),
(140, 7, 'Ushongo', 'Benue State'),
(141, 7, 'Vandeikya', 'Benue State'),
(142, 8, 'Abadam', 'Borno State'),
(143, 8, 'Askira/Uba', 'Borno State'),
(144, 8, 'Bama', 'Borno State'),
(145, 8, 'Bayo', 'Borno State'),
(146, 8, 'Biu', 'Borno State'),
(147, 8, 'Chibok', 'Borno State'),
(148, 8, 'Damboa', 'Borno State'),
(149, 8, 'Dikwa', 'Borno State'),
(150, 8, 'Gubio', 'Borno State'),
(151, 8, 'Guzamala', 'Borno State'),
(152, 8, 'Gwoza', 'Borno State'),
(153, 8, 'Hawul', 'Borno State'),
(154, 8, 'Jere', 'Borno State'),
(155, 8, 'Kaga', 'Borno State'),
(156, 8, 'Kala/Balge', 'Borno State'),
(157, 8, 'Konduga', 'Borno State'),
(158, 8, 'Kukawa', 'Borno State'),
(159, 8, 'Kwaya Kusar', 'Borno State'),
(160, 8, 'Mafa', 'Borno State'),
(161, 8, 'Magumeri', 'Borno State'),
(162, 8, 'Maiduguri', 'Borno State'),
(163, 8, 'Marte', 'Borno State'),
(164, 8, 'Mobbar', 'Borno State'),
(165, 8, 'Monguno', 'Borno State'),
(166, 8, 'Ngala', 'Borno State'),
(167, 8, 'Nganzai', 'Borno State'),
(168, 8, 'Shani', 'Borno State'),
(169, 9, 'Abi', 'Cross River State'),
(170, 9, 'Akamkpa', 'Cross River State'),
(171, 9, 'Akpabuyo', 'Cross River State'),
(172, 9, 'Bakassi', 'Cross River State'),
(173, 9, 'Bekwarra', 'Cross River State'),
(174, 9, 'Biase', 'Cross River State'),
(175, 9, 'Boki', 'Cross River State'),
(176, 9, 'Calabar Municipal', 'Cross River State'),
(177, 9, 'Calabar South', 'Cross River State'),
(178, 9, 'Etung', 'Cross River State'),
(179, 9, 'Ikom', 'Cross River State'),
(180, 9, 'Obanliku', 'Cross River State'),
(181, 9, 'Obubra', 'Cross River State'),
(182, 9, 'Obudu', 'Cross River State'),
(183, 9, 'Odukpani', 'Cross River State'),
(184, 9, 'Ogoja', 'Cross River State'),
(185, 9, 'Yakuur', 'Cross River State'),
(186, 9, 'Yala', 'Cross River State'),
(187, 10, 'Aniocha North', 'Delta State'),
(188, 10, 'Aniocha South', 'Delta State'),
(189, 10, 'Bomadi', 'Delta State'),
(190, 10, 'Burutu', 'Delta State'),
(191, 10, 'Ethiope East', 'Delta State'),
(192, 10, 'Ethiope West', 'Delta State'),
(193, 10, 'Ika North East', 'Delta State'),
(194, 10, 'Ika South', 'Delta State'),
(195, 10, 'Isoko North', 'Delta State'),
(196, 10, 'Isoko South', 'Delta State'),
(197, 10, 'Ndokwa East', 'Delta State'),
(198, 10, 'Ndokwa West', 'Delta State'),
(199, 10, 'Okpe', 'Delta State'),
(200, 10, 'Oshimili North', 'Delta State'),
(201, 10, 'Oshimili South', 'Delta State'),
(202, 10, 'Patani', 'Delta State'),
(203, 10, 'Sapele', 'Delta State'),
(204, 10, 'Udu', 'Delta State'),
(205, 10, 'Ughelli North', 'Delta State'),
(206, 10, 'Ughelli South', 'Delta State'),
(207, 10, 'Ukwuani', 'Delta State'),
(208, 10, 'Uvwie', 'Delta State'),
(209, 10, 'Warri North', 'Delta State'),
(210, 10, 'Warri South', 'Delta State'),
(211, 10, 'Warri South West', 'Delta State'),
(212, 11, 'Abakaliki', 'Ebonyi State'),
(213, 11, 'Afikpo North', 'Ebonyi State'),
(214, 11, 'Afikpo South', 'Ebonyi State'),
(215, 11, 'Ebonyi', 'Ebonyi State'),
(216, 11, 'Ezza North', 'Ebonyi State'),
(217, 11, 'Ezza South', 'Ebonyi State'),
(218, 11, 'Ikwo', 'Ebonyi State'),
(219, 11, 'Ishielu', 'Ebonyi State'),
(220, 11, 'Ivo', 'Ebonyi State'),
(221, 11, 'Izzi', 'Ebonyi State'),
(222, 11, 'Ohaozara', 'Ebonyi State'),
(223, 11, 'Ohaukwu', 'Ebonyi State'),
(224, 11, 'Onicha', 'Ebonyi State'),
(225, 12, 'Akoko-Edo', 'Edo State'),
(226, 12, 'Egor', 'Edo State'),
(227, 12, 'Esan Central', 'Edo State'),
(228, 12, 'Esan North-East', 'Edo State'),
(229, 12, 'Esan South-East', 'Edo State'),
(230, 12, 'Esan West', 'Edo State'),
(231, 12, 'Etsako Central', 'Edo State'),
(232, 12, 'Etsako East', 'Edo State'),
(233, 12, 'Etsako West', 'Edo State'),
(234, 12, 'Igueben', 'Edo State'),
(235, 12, 'Ikpoba Okha', 'Edo State'),
(236, 12, 'Orhionmwon', 'Edo State'),
(237, 12, 'Oredo', 'Edo State'),
(238, 12, 'Ovia North-East', 'Edo State'),
(239, 12, 'Ovia South-West', 'Edo State'),
(240, 12, 'Owan East', 'Edo State'),
(241, 12, 'Owan West', 'Edo State'),
(242, 12, 'Uhunmwonde', 'Edo State'),
(243, 13, 'Ado Ekiti', 'Ekiti State'),
(244, 13, 'Efon', 'Ekiti State'),
(245, 13, 'Ekiti East', 'Ekiti State'),
(246, 13, 'Ekiti South-West', 'Ekiti State'),
(247, 13, 'Ekiti West', 'Ekiti State'),
(248, 13, 'Emure', 'Ekiti State'),
(249, 13, 'Gbonyin', 'Ekiti State'),
(250, 13, 'Ido Osi', 'Ekiti State'),
(251, 13, 'Ijero', 'Ekiti State'),
(252, 13, 'Ikere', 'Ekiti State'),
(253, 13, 'Ikole', 'Ekiti State'),
(254, 13, 'Ilejemeje', 'Ekiti State'),
(255, 13, 'Irepodun/Ifelodun', 'Ekiti State'),
(256, 13, 'Ise/Orun', 'Ekiti State'),
(257, 13, 'Moba', 'Ekiti State'),
(258, 13, 'Oye', 'Ekiti State'),
(259, 14, 'Aninri', 'Enugu State'),
(260, 14, 'Awgu', 'Enugu State'),
(261, 14, 'Enugu East', 'Enugu State'),
(262, 14, 'Enugu North', 'Enugu State'),
(263, 14, 'Enugu South', 'Enugu State'),
(264, 14, 'Ezeagu', 'Enugu State'),
(265, 14, 'Igbo Etiti', 'Enugu State'),
(266, 14, 'Igbo Eze North', 'Enugu State'),
(267, 14, 'Igbo Eze South', 'Enugu State'),
(268, 14, 'Isi Uzo', 'Enugu State'),
(269, 14, 'Nkanu East', 'Enugu State'),
(270, 14, 'Nkanu West', 'Enugu State'),
(271, 14, 'Nsukka', 'Enugu State'),
(272, 14, 'Oji River', 'Enugu State'),
(273, 14, 'Udenu', 'Enugu State'),
(274, 14, 'Udi', 'Enugu State'),
(275, 14, 'Uzo Uwani', 'Enugu State'),
(276, 15, 'Abaji', 'FCT'),
(277, 15, 'Bwari', 'FCT'),
(278, 15, 'Gwagwalada', 'FCT'),
(279, 15, 'Kuje', 'FCT'),
(280, 15, 'Kwali', 'FCT'),
(281, 15, 'Municipal Area Council', 'FCT'),
(282, 16, 'Akko', 'Gombe State'),
(283, 16, 'Balanga', 'Gombe State'),
(284, 16, 'Billiri', 'Gombe State'),
(285, 16, 'Dukku', 'Gombe State'),
(286, 16, 'Funakaye', 'Gombe State'),
(287, 16, 'Gombe', 'Gombe State'),
(288, 16, 'Kaltungo', 'Gombe State'),
(289, 16, 'Kwami', 'Gombe State'),
(290, 16, 'Nafada', 'Gombe State'),
(291, 16, 'Shongom', 'Gombe State'),
(292, 16, 'Yamaltu/Deba', 'Gombe State'),
(293, 17, 'Aboh Mbaise', 'Imo State'),
(294, 17, 'Ahiazu Mbaise', 'Imo State'),
(295, 17, 'Ehime Mbano', 'Imo State'),
(296, 17, 'Ezinihitte', 'Imo State'),
(297, 17, 'Ideato North', 'Imo State'),
(298, 17, 'Ideato South', 'Imo State'),
(299, 17, 'Ihitte/Uboma', 'Imo State'),
(300, 17, 'Ikeduru', 'Imo State'),
(301, 17, 'Isiala Mbano', 'Imo State'),
(302, 17, 'Isu', 'Imo State'),
(303, 17, 'Mbaitoli', 'Imo State'),
(304, 17, 'Ngor Okpala', 'Imo State'),
(305, 17, 'Njaba', 'Imo State'),
(306, 17, 'Nkwerre', 'Imo State'),
(307, 17, 'Nwangele', 'Imo State'),
(308, 17, 'Obowo', 'Imo State'),
(309, 17, 'Oguta', 'Imo State'),
(310, 17, 'Ohaji/Egbema', 'Imo State'),
(311, 17, 'Okigwe', 'Imo State'),
(312, 17, 'Orlu', 'Imo State'),
(313, 17, 'Orsu', 'Imo State'),
(314, 17, 'Oru East', 'Imo State'),
(315, 17, 'Oru West', 'Imo State'),
(316, 17, 'Owerri Municipal', 'Imo State'),
(317, 17, 'Owerri North', 'Imo State'),
(318, 17, 'Owerri West', 'Imo State'),
(319, 17, 'Unuimo', 'Imo State'),
(320, 18, 'Auyo', 'Jigawa State'),
(321, 18, 'Babura', 'Jigawa State'),
(322, 18, 'Biriniwa', 'Jigawa State'),
(323, 18, 'Birnin Kudu', 'Jigawa State'),
(324, 18, 'Buji', 'Jigawa State'),
(325, 18, 'Dutse', 'Jigawa State'),
(326, 18, 'Gagarawa', 'Jigawa State'),
(327, 18, 'Garki', 'Jigawa State'),
(328, 18, 'Gumel', 'Jigawa State'),
(329, 18, 'Guri', 'Jigawa State'),
(330, 18, 'Gwaram', 'Jigawa State'),
(331, 18, 'Gwiwa', 'Jigawa State'),
(332, 18, 'Hadejia', 'Jigawa State'),
(333, 18, 'Jahun', 'Jigawa State'),
(334, 18, 'Kafin Hausa', 'Jigawa State'),
(335, 18, 'Kazaure', 'Jigawa State'),
(336, 18, 'Kiri Kasama', 'Jigawa State'),
(337, 18, 'Kiyawa', 'Jigawa State'),
(338, 18, 'Kaugama', 'Jigawa State'),
(339, 18, 'Maigatari', 'Jigawa State'),
(340, 18, 'Malam Madori', 'Jigawa State'),
(341, 18, 'Miga', 'Jigawa State'),
(342, 18, 'Ringim', 'Jigawa State'),
(343, 18, 'Roni', 'Jigawa State'),
(344, 18, 'Sule Tankarkar', 'Jigawa State'),
(345, 18, 'Taura', 'Jigawa State'),
(346, 18, 'Yankwashi', 'Jigawa State'),
(347, 19, 'Birnin Gwari', 'Kaduna State'),
(348, 19, 'Chikun', 'Kaduna State'),
(349, 19, 'Giwa', 'Kaduna State'),
(350, 19, 'Igabi', 'Kaduna State'),
(351, 19, 'Ikara', 'Kaduna State'),
(352, 19, 'Jaba', 'Kaduna State'),
(353, 19, 'Jema\'a', 'Kaduna State'),
(354, 19, 'Kachia', 'Kaduna State'),
(355, 19, 'Kaduna North', 'Kaduna State'),
(356, 19, 'Kaduna South', 'Kaduna State'),
(357, 19, 'Kagarko', 'Kaduna State'),
(358, 19, 'Kajuru', 'Kaduna State'),
(359, 19, 'Kaura', 'Kaduna State'),
(360, 19, 'Kauru', 'Kaduna State'),
(361, 19, 'Kubau', 'Kaduna State'),
(362, 19, 'Kudan', 'Kaduna State'),
(363, 19, 'Lere', 'Kaduna State'),
(364, 19, 'Makarfi', 'Kaduna State'),
(365, 19, 'Sabon Gari', 'Kaduna State'),
(366, 19, 'Sanga', 'Kaduna State'),
(367, 19, 'Soba', 'Kaduna State'),
(368, 19, 'Zangon Kataf', 'Kaduna State'),
(369, 19, 'Zaria', 'Kaduna State'),
(370, 20, 'Ajingi', 'Kano State'),
(371, 20, 'Albasu', 'Kano State'),
(372, 20, 'Bagwai', 'Kano State'),
(373, 20, 'Bebeji', 'Kano State'),
(374, 20, 'Bichi', 'Kano State'),
(375, 20, 'Bunkure', 'Kano State'),
(376, 20, 'Dala', 'Kano State'),
(377, 20, 'Dambatta', 'Kano State'),
(378, 20, 'Dawakin Kudu', 'Kano State'),
(379, 20, 'Dawakin Tofa', 'Kano State'),
(380, 20, 'Doguwa', 'Kano State'),
(381, 20, 'Fagge', 'Kano State'),
(382, 20, 'Gabasawa', 'Kano State'),
(383, 20, 'Garko', 'Kano State'),
(384, 20, 'Garun Mallam', 'Kano State'),
(385, 20, 'Gaya', 'Kano State'),
(386, 20, 'Gezawa', 'Kano State'),
(387, 20, 'Gwale', 'Kano State'),
(388, 20, 'Gwarzo', 'Kano State'),
(389, 20, 'Kabo', 'Kano State'),
(390, 20, 'Kano Municipal', 'Kano State'),
(391, 20, 'Karaye', 'Kano State'),
(392, 20, 'Kibiya', 'Kano State'),
(393, 20, 'Kiru', 'Kano State'),
(394, 20, 'Kumbotso', 'Kano State'),
(395, 20, 'Kunchi', 'Kano State'),
(396, 20, 'Kura', 'Kano State'),
(397, 20, 'Madobi', 'Kano State'),
(398, 20, 'Makoda', 'Kano State'),
(399, 20, 'Minjibir', 'Kano State'),
(400, 20, 'Nasarawa', 'Kano State'),
(401, 20, 'Rano', 'Kano State'),
(402, 20, 'Rimin Gado', 'Kano State'),
(403, 20, 'Rogo', 'Kano State'),
(404, 20, 'Shanono', 'Kano State'),
(405, 20, 'Sumaila', 'Kano State'),
(406, 20, 'Takai', 'Kano State'),
(407, 20, 'Tarauni', 'Kano State'),
(408, 20, 'Tofa', 'Kano State'),
(409, 20, 'Tsanyawa', 'Kano State'),
(410, 20, 'Tudun Wada', 'Kano State'),
(411, 20, 'Ungogo', 'Kano State'),
(412, 20, 'Warawa', 'Kano State'),
(413, 20, 'Wudil', 'Kano State'),
(414, 21, 'Bakori', 'Katsina State'),
(415, 21, 'Batagarawa', 'Katsina State'),
(416, 21, 'Batsari', 'Katsina State'),
(417, 21, 'Baure', 'Katsina State'),
(418, 21, 'Bindawa', 'Katsina State'),
(419, 21, 'Charanchi', 'Katsina State'),
(420, 21, 'Dandume', 'Katsina State'),
(421, 21, 'Danja', 'Katsina State'),
(422, 21, 'Dan Musa', 'Katsina State'),
(423, 21, 'Daura', 'Katsina State'),
(424, 21, 'Dutsi', 'Katsina State'),
(425, 21, 'Dutsin Ma', 'Katsina State'),
(426, 21, 'Faskari', 'Katsina State'),
(427, 21, 'Funtua', 'Katsina State'),
(428, 21, 'Ingawa', 'Katsina State'),
(429, 21, 'Jibia', 'Katsina State'),
(430, 21, 'Kafur', 'Katsina State'),
(431, 21, 'Kaita', 'Katsina State'),
(432, 21, 'Kankara', 'Katsina State'),
(433, 21, 'Kankia', 'Katsina State'),
(434, 21, 'Katsina', 'Katsina State'),
(435, 21, 'Kurfi', 'Katsina State'),
(436, 21, 'Kusada', 'Katsina State'),
(437, 21, 'Mai\'Adua', 'Katsina State'),
(438, 21, 'Malumfashi', 'Katsina State'),
(439, 21, 'Mani', 'Katsina State'),
(440, 21, 'Mashi', 'Katsina State'),
(441, 21, 'Matazu', 'Katsina State'),
(442, 21, 'Musawa', 'Katsina State'),
(443, 21, 'Rimi', 'Katsina State'),
(444, 21, 'Sabuwa', 'Katsina State'),
(445, 21, 'Safana', 'Katsina State'),
(446, 21, 'Sandamu', 'Katsina State'),
(447, 21, 'Zango', 'Katsina State'),
(448, 22, 'Aleiro', 'Kebbi State'),
(449, 22, 'Arewa Dandi', 'Kebbi State'),
(450, 22, 'Argungu', 'Kebbi State'),
(451, 22, 'Augie', 'Kebbi State'),
(452, 22, 'Bagudo', 'Kebbi State'),
(453, 22, 'Birnin Kebbi', 'Kebbi State'),
(454, 22, 'Bunza', 'Kebbi State'),
(455, 22, 'Dandi', 'Kebbi State'),
(456, 22, 'Fakai', 'Kebbi State'),
(457, 22, 'Gwandu', 'Kebbi State'),
(458, 22, 'Jega', 'Kebbi State'),
(459, 22, 'Kalgo', 'Kebbi State'),
(460, 22, 'Koko/Besse', 'Kebbi State'),
(461, 22, 'Maiyama', 'Kebbi State'),
(462, 22, 'Ngaski', 'Kebbi State'),
(463, 22, 'Sakaba', 'Kebbi State'),
(464, 22, 'Shanga', 'Kebbi State'),
(465, 22, 'Suru', 'Kebbi State'),
(466, 22, 'Wasagu/Danko', 'Kebbi State'),
(467, 22, 'Yauri', 'Kebbi State'),
(468, 22, 'Zuru', 'Kebbi State'),
(469, 23, 'Adavi', 'Kogi State'),
(470, 23, 'Ajaokuta', 'Kogi State'),
(471, 23, 'Ankpa', 'Kogi State'),
(472, 23, 'Bassa', 'Kogi State'),
(473, 23, 'Dekina', 'Kogi State'),
(474, 23, 'Ibaji', 'Kogi State'),
(475, 23, 'Idah', 'Kogi State'),
(476, 23, 'Igalamela Odolu', 'Kogi State'),
(477, 23, 'Ijumu', 'Kogi State'),
(478, 23, 'Kabba/Bunu', 'Kogi State'),
(479, 23, 'Kogi', 'Kogi State'),
(480, 23, 'Lokoja', 'Kogi State'),
(481, 23, 'Mopa Muro', 'Kogi State'),
(482, 23, 'Ofu', 'Kogi State'),
(483, 23, 'Ogori/Magongo', 'Kogi State'),
(484, 23, 'Okehi', 'Kogi State'),
(485, 23, 'Okene', 'Kogi State'),
(486, 23, 'Olamaboro', 'Kogi State'),
(487, 23, 'Omala', 'Kogi State'),
(488, 23, 'Yagba East', 'Kogi State'),
(489, 23, 'Yagba West', 'Kogi State'),
(490, 24, 'Asa', 'Kwara State'),
(491, 24, 'Baruten', 'Kwara State'),
(492, 24, 'Edu', 'Kwara State'),
(493, 24, 'Ekiti', 'Kwara State'),
(494, 24, 'Ifelodun', 'Kwara State'),
(495, 24, 'Ilorin East', 'Kwara State'),
(496, 24, 'Ilorin South', 'Kwara State'),
(497, 24, 'Ilorin West', 'Kwara State'),
(498, 24, 'Irepodun', 'Kwara State'),
(499, 24, 'Isin', 'Kwara State'),
(500, 24, 'Kaiama', 'Kwara State'),
(501, 24, 'Moro', 'Kwara State'),
(502, 24, 'Offa', 'Kwara State'),
(503, 24, 'Oke Ero', 'Kwara State'),
(504, 24, 'Oyun', 'Kwara State'),
(505, 24, 'Pategi', 'Kwara State'),
(506, 25, 'Agege', 'Lagos State'),
(507, 25, 'Ajeromi-Ifelodun', 'Lagos State'),
(508, 25, 'Alimosho', 'Lagos State'),
(509, 25, 'Amuwo-Odofin', 'Lagos State'),
(510, 25, 'Apapa', 'Lagos State'),
(511, 25, 'Badagry', 'Lagos State'),
(512, 25, 'Epe', 'Lagos State'),
(513, 25, 'Eti Osa', 'Lagos State'),
(514, 25, 'Ibeju-Lekki', 'Lagos State'),
(515, 25, 'Ifako-Ijaiye', 'Lagos State'),
(516, 25, 'Ikeja', 'Lagos State'),
(517, 25, 'Ikorodu', 'Lagos State'),
(518, 25, 'Kosofe', 'Lagos State'),
(519, 25, 'Lagos Island', 'Lagos State'),
(520, 25, 'Lagos Mainland', 'Lagos State'),
(521, 25, 'Mushin', 'Lagos State'),
(522, 25, 'Ojo', 'Lagos State'),
(523, 25, 'Oshodi-Isolo', 'Lagos State'),
(524, 25, 'Shomolu', 'Lagos State'),
(525, 25, 'Surulere', 'Lagos State'),
(526, 26, 'Akwanga', 'Nasarawa State'),
(527, 26, 'Awe', 'Nasarawa State'),
(528, 26, 'Doma', 'Nasarawa State'),
(529, 26, 'Karu', 'Nasarawa State'),
(530, 26, 'Keana', 'Nasarawa State'),
(531, 26, 'Keffi', 'Nasarawa State'),
(532, 26, 'Kokona', 'Nasarawa State'),
(533, 26, 'Lafia', 'Nasarawa State'),
(534, 26, 'Nasarawa', 'Nasarawa State'),
(535, 26, 'Nasarawa Egon', 'Nasarawa State'),
(536, 26, 'Obi', 'Nasarawa State'),
(537, 26, 'Toto', 'Nasarawa State'),
(538, 26, 'Wamba', 'Nasarawa State'),
(539, 27, 'Agaie', 'Niger State'),
(540, 27, 'Agwara', 'Niger State'),
(541, 27, 'Bida', 'Niger State'),
(542, 27, 'Borgu', 'Niger State'),
(543, 27, 'Bosso', 'Niger State'),
(544, 27, 'Chanchaga', 'Niger State'),
(545, 27, 'Edati', 'Niger State'),
(546, 27, 'Gbako', 'Niger State'),
(547, 27, 'Gurara', 'Niger State'),
(548, 27, 'Katcha', 'Niger State'),
(549, 27, 'Kontagora', 'Niger State'),
(550, 27, 'Lapai', 'Niger State'),
(551, 27, 'Lavun', 'Niger State'),
(552, 27, 'Magama', 'Niger State'),
(553, 27, 'Mariga', 'Niger State'),
(554, 27, 'Mashegu', 'Niger State'),
(555, 27, 'Mokwa', 'Niger State'),
(556, 27, 'Moya', 'Niger State'),
(557, 27, 'Paikoro', 'Niger State'),
(558, 27, 'Rafi', 'Niger State'),
(559, 27, 'Rijau', 'Niger State'),
(560, 27, 'Shiroro', 'Niger State'),
(561, 27, 'Suleja', 'Niger State'),
(562, 27, 'Tafa', 'Niger State'),
(563, 27, 'Wushishi', 'Niger State'),
(564, 28, 'Abeokuta North', 'Ogun State'),
(565, 28, 'Abeokuta South', 'Ogun State'),
(566, 28, 'Ado-Odo/Ota', 'Ogun State'),
(567, 28, 'Egbado North', 'Ogun State'),
(568, 28, 'Egbado South', 'Ogun State'),
(569, 28, 'Ewekoro', 'Ogun State'),
(570, 28, 'Ifo', 'Ogun State'),
(571, 28, 'Ijebu East', 'Ogun State'),
(572, 28, 'Ijebu North', 'Ogun State'),
(573, 28, 'Ijebu North East', 'Ogun State'),
(574, 28, 'Ijebu Ode', 'Ogun State'),
(575, 28, 'Ikenne', 'Ogun State'),
(576, 28, 'Imeko Afon', 'Ogun State'),
(577, 28, 'Ipokia', 'Ogun State'),
(578, 28, 'Obafemi Owode', 'Ogun State'),
(579, 28, 'Odeda', 'Ogun State'),
(580, 28, 'Odogbolu', 'Ogun State'),
(581, 28, 'Ogun Waterside', 'Ogun State'),
(582, 28, 'Remo North', 'Ogun State'),
(583, 28, 'Shagamu', 'Ogun State'),
(584, 29, 'Akoko North-East', 'Ondo State'),
(585, 29, 'Akoko North-West', 'Ondo State'),
(586, 29, 'Akoko South-West', 'Ondo State'),
(587, 29, 'Akoko South-East', 'Ondo State'),
(588, 29, 'Akure North', 'Ondo State'),
(589, 29, 'Akure South', 'Ondo State'),
(590, 29, 'Ese Odo', 'Ondo State'),
(591, 29, 'Idanre', 'Ondo State'),
(592, 29, 'Ifedore', 'Ondo State'),
(593, 29, 'Ilaje', 'Ondo State'),
(594, 29, 'Ile Oluji/Okeigbo', 'Ondo State'),
(595, 29, 'Irele', 'Ondo State'),
(596, 29, 'Odigbo', 'Ondo State'),
(597, 29, 'Okitipupa', 'Ondo State'),
(598, 29, 'Ondo East', 'Ondo State'),
(599, 29, 'Ondo West', 'Ondo State'),
(600, 29, 'Ose', 'Ondo State'),
(601, 29, 'Owo', 'Ondo State'),
(602, 30, 'Atakunmosa East', 'Osun State'),
(603, 30, 'Atakunmosa West', 'Osun State'),
(604, 30, 'Aiyedaade', 'Osun State'),
(605, 30, 'Aiyedire', 'Osun State'),
(606, 30, 'Boluwaduro', 'Osun State'),
(607, 30, 'Boripe', 'Osun State'),
(608, 30, 'Ede North', 'Osun State'),
(609, 30, 'Ede South', 'Osun State'),
(610, 30, 'Ife Central', 'Osun State'),
(611, 30, 'Ife East', 'Osun State'),
(612, 30, 'Ife North', 'Osun State'),
(613, 30, 'Ife South', 'Osun State'),
(614, 30, 'Egbedore', 'Osun State'),
(615, 30, 'Ejigbo', 'Osun State'),
(616, 30, 'Ifedayo', 'Osun State'),
(617, 30, 'Ifelodun', 'Osun State'),
(618, 30, 'Ila', 'Osun State'),
(619, 30, 'Ilesa East', 'Osun State'),
(620, 30, 'Ilesa West', 'Osun State'),
(621, 30, 'Irepodun', 'Osun State'),
(622, 30, 'Irewole', 'Osun State'),
(623, 30, 'Isokan', 'Osun State'),
(624, 30, 'Iwo', 'Osun State'),
(625, 30, 'Obokun', 'Osun State'),
(626, 30, 'Odo Otin', 'Osun State'),
(627, 30, 'Ola Oluwa', 'Osun State'),
(628, 30, 'Olorunda', 'Osun State'),
(629, 30, 'Oriade', 'Osun State'),
(630, 30, 'Orolu', 'Osun State'),
(631, 30, 'Osogbo', 'Osun State'),
(632, 31, 'Afijio', 'Oyo State'),
(633, 31, 'Akinyele', 'Oyo State'),
(634, 31, 'Atiba', 'Oyo State'),
(635, 31, 'Atisbo', 'Oyo State'),
(636, 31, 'Egbeda', 'Oyo State'),
(637, 31, 'Ibadan North', 'Oyo State'),
(638, 31, 'Ibadan North-East', 'Oyo State'),
(639, 31, 'Ibadan North-West', 'Oyo State'),
(640, 31, 'Ibadan South-East', 'Oyo State'),
(641, 31, 'Ibadan South-West', 'Oyo State'),
(642, 31, 'Ibarapa Central', 'Oyo State'),
(643, 31, 'Ibarapa East', 'Oyo State'),
(644, 31, 'Ibarapa North', 'Oyo State'),
(645, 31, 'Ido', 'Oyo State'),
(646, 31, 'Irepo', 'Oyo State'),
(647, 31, 'Iseyin', 'Oyo State'),
(648, 31, 'Itesiwaju', 'Oyo State'),
(649, 31, 'Iwajowa', 'Oyo State'),
(650, 31, 'Kajola', 'Oyo State'),
(651, 31, 'Lagelu', 'Oyo State'),
(652, 31, 'Ogbomosho North', 'Oyo State'),
(653, 31, 'Ogbomosho South', 'Oyo State'),
(654, 31, 'Ogo Oluwa', 'Oyo State'),
(655, 31, 'Olorunsogo', 'Oyo State'),
(656, 31, 'Oluyole', 'Oyo State'),
(657, 31, 'Ona Ara', 'Oyo State'),
(658, 31, 'Orelope', 'Oyo State'),
(659, 31, 'Ori Ire', 'Oyo State'),
(660, 31, 'Oyo', 'Oyo State'),
(661, 31, 'Oyo East', 'Oyo State'),
(662, 31, 'Saki East', 'Oyo State'),
(663, 31, 'Saki West', 'Oyo State'),
(664, 31, 'Surulere', 'Oyo State'),
(665, 32, 'Bokkos', 'Plateau State'),
(666, 32, 'Barkin Ladi', 'Plateau State'),
(667, 32, 'Bassa', 'Plateau State'),
(668, 32, 'Jos East', 'Plateau State'),
(669, 32, 'Jos North', 'Plateau State'),
(670, 32, 'Jos South', 'Plateau State'),
(671, 32, 'Kanam', 'Plateau State'),
(672, 32, 'Kanke', 'Plateau State'),
(673, 32, 'Langtang South', 'Plateau State'),
(674, 32, 'Langtang North', 'Plateau State'),
(675, 32, 'Mangu', 'Plateau State'),
(676, 32, 'Mikang', 'Plateau State'),
(677, 32, 'Pankshin', 'Plateau State'),
(678, 32, 'Qua\'an Pan', 'Plateau State'),
(679, 32, 'Riyom', 'Plateau State'),
(680, 32, 'Shendam', 'Plateau State'),
(681, 32, 'Wase', 'Plateau State'),
(682, 33, 'Abua/Odual', 'Rivers State'),
(683, 33, 'Ahoada East', 'Rivers State'),
(684, 33, 'Ahoada West', 'Rivers State'),
(685, 33, 'Akuku-Toru', 'Rivers State'),
(686, 33, 'Andoni', 'Rivers State'),
(687, 33, 'Asari-Toru', 'Rivers State'),
(688, 33, 'Bonny', 'Rivers State'),
(689, 33, 'Degema', 'Rivers State'),
(690, 33, 'Eleme', 'Rivers State'),
(691, 33, 'Emuoha', 'Rivers State'),
(692, 33, 'Etche', 'Rivers State'),
(693, 33, 'Gokana', 'Rivers State'),
(694, 33, 'Ikwerre', 'Rivers State'),
(695, 33, 'Khana', 'Rivers State'),
(696, 33, 'Obio/Akpor', 'Rivers State'),
(697, 33, 'Ogba/Egbema/Ndoni', 'Rivers State'),
(698, 33, 'Ogu/Bolo', 'Rivers State'),
(699, 33, 'Okrika', 'Rivers State'),
(700, 33, 'Omuma', 'Rivers State'),
(701, 33, 'Opobo/Nkoro', 'Rivers State'),
(702, 33, 'Oyigbo', 'Rivers State'),
(703, 33, 'Port Harcourt', 'Rivers State'),
(704, 33, 'Tai', 'Rivers State'),
(705, 34, 'Binji', 'Sokoto State'),
(706, 34, 'Bodinga', 'Sokoto State'),
(707, 34, 'Dange Shuni', 'Sokoto State'),
(708, 34, 'Gada', 'Sokoto State'),
(709, 34, 'Goronyo', 'Sokoto State'),
(710, 34, 'Gudu', 'Sokoto State'),
(711, 34, 'Gwadabawa', 'Sokoto State'),
(712, 34, 'Illela', 'Sokoto State'),
(713, 34, 'Isa', 'Sokoto State'),
(714, 34, 'Kebbe', 'Sokoto State'),
(715, 34, 'Kware', 'Sokoto State'),
(716, 34, 'Rabah', 'Sokoto State'),
(717, 34, 'Sabon Birni', 'Sokoto State'),
(718, 34, 'Shagari', 'Sokoto State'),
(719, 34, 'Silame', 'Sokoto State'),
(720, 34, 'Sokoto North', 'Sokoto State'),
(721, 34, 'Sokoto South', 'Sokoto State'),
(722, 34, 'Tambuwal', 'Sokoto State'),
(723, 34, 'Tangaza', 'Sokoto State'),
(724, 34, 'Tureta', 'Sokoto State'),
(725, 34, 'Wamako', 'Sokoto State'),
(726, 34, 'Wurno', 'Sokoto State'),
(727, 34, 'Yabo', 'Sokoto State'),
(728, 35, 'Ardo Kola', 'Taraba State'),
(729, 35, 'Bali', 'Taraba State'),
(730, 35, 'Donga', 'Taraba State'),
(731, 35, 'Gashaka', 'Taraba State'),
(732, 35, 'Gassol', 'Taraba State'),
(733, 35, 'Ibi', 'Taraba State'),
(734, 35, 'Jalingo', 'Taraba State'),
(735, 35, 'Karim Lamido', 'Taraba State'),
(736, 35, 'Kumi', 'Taraba State'),
(737, 35, 'Lau', 'Taraba State'),
(738, 35, 'Sardauna', 'Taraba State'),
(739, 35, 'Takum', 'Taraba State'),
(740, 35, 'Ussa', 'Taraba State'),
(741, 35, 'Wukari', 'Taraba State'),
(742, 35, 'Yorro', 'Taraba State'),
(743, 35, 'Zing', 'Taraba State'),
(744, 36, 'Bade', 'Yobe State'),
(745, 36, 'Bursari', 'Yobe State'),
(746, 36, 'Damaturu', 'Yobe State'),
(747, 36, 'Fika', 'Yobe State'),
(748, 36, 'Fune', 'Yobe State'),
(749, 36, 'Geidam', 'Yobe State'),
(750, 36, 'Gujba', 'Yobe State'),
(751, 36, 'Gulani', 'Yobe State'),
(752, 36, 'Jakusko', 'Yobe State'),
(753, 36, 'Karasuwa', 'Yobe State'),
(754, 36, 'Machina', 'Yobe State'),
(755, 36, 'Nangere', 'Yobe State'),
(756, 36, 'Nguru', 'Yobe State'),
(757, 36, 'Potiskum', 'Yobe State'),
(758, 36, 'Tarmuwa', 'Yobe State'),
(759, 36, 'Yunusari', 'Yobe State'),
(760, 36, 'Yusufari', 'Yobe State'),
(761, 37, 'Anka', 'Zamfara State'),
(762, 37, 'Bakura', 'Zamfara State'),
(763, 37, 'Birnin Magaji/Kiyaw', 'Zamfara State'),
(764, 37, 'Bukkuyum', 'Zamfara State'),
(765, 37, 'Bungudu', 'Zamfara State'),
(766, 37, 'Gummi', 'Zamfara State'),
(767, 37, 'Gusau', 'Zamfara State'),
(768, 37, 'Kaura Namoda', 'Zamfara State'),
(769, 37, 'Maradun', 'Zamfara State'),
(770, 37, 'Maru', 'Zamfara State'),
(771, 37, 'Shinkafi', 'Zamfara State'),
(772, 37, 'Talata Mafara', 'Zamfara State'),
(773, 37, 'Chafe', 'Zamfara State'),
(774, 37, 'Zurmi', 'Zamfara State'),
(1, 1, 'Aba North', 'Abia State'),
(2, 1, 'Aba South', 'Abia State'),
(3, 1, 'Arochukwu', 'Abia State'),
(4, 1, 'Bende', 'Abia State'),
(5, 1, 'Ikwuano', 'Abia State'),
(6, 1, 'Isiala Ngwa North', 'Abia State'),
(7, 1, 'Isiala Ngwa South', 'Abia State'),
(8, 1, 'Isuikwuato', 'Abia State'),
(9, 1, 'Obi Ngwa', 'Abia State'),
(10, 1, 'Ohafia', 'Abia State'),
(11, 1, 'Osisioma', 'Abia State'),
(12, 1, 'Ugwunagbo', 'Abia State'),
(13, 1, 'Ukwa East', 'Abia State'),
(14, 1, 'Ukwa West', 'Abia State'),
(15, 1, 'Umuahia North', 'Abia State'),
(16, 1, 'Umuahia South', 'Abia State'),
(17, 1, 'Umu Nneochi', 'Abia State'),
(18, 2, 'Demsa', 'Adamawa State'),
(19, 2, 'Fufure', 'Adamawa State'),
(20, 2, 'Ganye', 'Adamawa State'),
(21, 2, 'Gayuk', 'Adamawa State'),
(22, 2, 'Gombi', 'Adamawa State'),
(23, 2, 'Grie', 'Adamawa State'),
(24, 2, 'Hong', 'Adamawa State'),
(25, 2, 'Jada', 'Adamawa State'),
(26, 2, 'Lamurde', 'Adamawa State'),
(27, 2, 'Madagali', 'Adamawa State'),
(28, 2, 'Maiha', 'Adamawa State'),
(29, 2, 'Mayo Belwa', 'Adamawa State'),
(30, 2, 'Michika', 'Adamawa State'),
(31, 2, 'Mubi North', 'Adamawa State'),
(32, 2, 'Mubi South', 'Adamawa State'),
(33, 2, 'Numan', 'Adamawa State'),
(34, 2, 'Shelleng', 'Adamawa State'),
(35, 2, 'Song', 'Adamawa State'),
(36, 2, 'Toungo', 'Adamawa State'),
(37, 2, 'Yola North', 'Adamawa State'),
(38, 2, 'Yola South', 'Adamawa State'),
(39, 3, 'Abak', 'Akwa Ibom State'),
(40, 3, 'Eastern Obolo', 'Akwa Ibom State'),
(41, 3, 'Eket', 'Akwa Ibom State'),
(42, 3, 'Esit Eket', 'Akwa Ibom State'),
(43, 3, 'Essien Udim', 'Akwa Ibom State'),
(44, 3, 'Etim Ekpo', 'Akwa Ibom State'),
(45, 3, 'Etinan', 'Akwa Ibom State'),
(46, 3, 'Ibeno', 'Akwa Ibom State'),
(47, 3, 'Ibesikpo Asutan', 'Akwa Ibom State'),
(48, 3, 'Ibiono-Ibom', 'Akwa Ibom State'),
(49, 3, 'Ika', 'Akwa Ibom State'),
(50, 3, 'Ikono', 'Akwa Ibom State'),
(51, 3, 'Ikot Abasi', 'Akwa Ibom State'),
(52, 3, 'Ikot Ekpene', 'Akwa Ibom State'),
(53, 3, 'Ini', 'Akwa Ibom State'),
(54, 3, 'Itu', 'Akwa Ibom State'),
(55, 3, 'Mbo', 'Akwa Ibom State'),
(56, 3, 'Mkpat-Enin', 'Akwa Ibom State'),
(57, 3, 'Nsit-Atai', 'Akwa Ibom State'),
(58, 3, 'Nsit-Ibom', 'Akwa Ibom State'),
(59, 3, 'Nsit-Ubium', 'Akwa Ibom State'),
(60, 3, 'Obot Akara', 'Akwa Ibom State'),
(61, 3, 'Okobo', 'Akwa Ibom State'),
(62, 3, 'Onna', 'Akwa Ibom State'),
(63, 3, 'Oron', 'Akwa Ibom State'),
(64, 3, 'Oruk Anam', 'Akwa Ibom State'),
(65, 3, 'Udung-Uko', 'Akwa Ibom State'),
(66, 3, 'Ukanafun', 'Akwa Ibom State'),
(67, 3, 'Uruan', 'Akwa Ibom State'),
(68, 3, 'Urue-Offong/Oruko', 'Akwa Ibom State'),
(69, 3, 'Uyo', 'Akwa Ibom State'),
(70, 4, 'Aguata', 'Anambra State'),
(71, 4, 'Anambra East', 'Anambra State'),
(72, 4, 'Anambra West', 'Anambra State'),
(73, 4, 'Anaocha', 'Anambra State'),
(74, 4, 'Awka North', 'Anambra State'),
(75, 4, 'Awka South', 'Anambra State'),
(76, 4, 'Ayamelum', 'Anambra State'),
(77, 4, 'Dunukofia', 'Anambra State'),
(78, 4, 'Ekwusigo', 'Anambra State'),
(79, 4, 'Idemili North', 'Anambra State'),
(80, 4, 'Idemili South', 'Anambra State'),
(81, 4, 'Ihiala', 'Anambra State'),
(82, 4, 'Njikoka', 'Anambra State'),
(83, 4, 'Nnewi North', 'Anambra State'),
(84, 4, 'Nnewi South', 'Anambra State'),
(85, 4, 'Ogbaru', 'Anambra State'),
(86, 4, 'Onitsha North', 'Anambra State'),
(87, 4, 'Onitsha South', 'Anambra State'),
(88, 4, 'Orumba North', 'Anambra State'),
(89, 4, 'Orumba South', 'Anambra State'),
(90, 4, 'Oyi', 'Anambra State'),
(91, 5, 'Alkaleri', 'Bauchi State'),
(92, 5, 'Bauchi', 'Bauchi State'),
(93, 5, 'Bogoro', 'Bauchi State'),
(94, 5, 'Damban', 'Bauchi State'),
(95, 5, 'Darazo', 'Bauchi State'),
(96, 5, 'Dass', 'Bauchi State'),
(97, 5, 'Gamawa', 'Bauchi State'),
(98, 5, 'Ganjuwa', 'Bauchi State'),
(99, 5, 'Giade', 'Bauchi State'),
(100, 5, 'Itas/Gadau', 'Bauchi State'),
(101, 5, 'Jama\'are', 'Bauchi State'),
(102, 5, 'Katagum', 'Bauchi State'),
(103, 5, 'Kirfi', 'Bauchi State'),
(104, 5, 'Misau', 'Bauchi State'),
(105, 5, 'Ningi', 'Bauchi State'),
(106, 5, 'Shira', 'Bauchi State'),
(107, 5, 'Tafawa Balewa', 'Bauchi State'),
(108, 5, 'Toro', 'Bauchi State'),
(109, 5, 'Warji', 'Bauchi State'),
(110, 5, 'Zaki', 'Bauchi State'),
(111, 6, 'Brass', 'Bayelsa State'),
(112, 6, 'Ekeremor', 'Bayelsa State'),
(113, 6, 'Kolokuma/Opokuma', 'Bayelsa State'),
(114, 6, 'Nembe', 'Bayelsa State'),
(115, 6, 'Ogbia', 'Bayelsa State'),
(116, 6, 'Sagbama', 'Bayelsa State'),
(117, 6, 'Southern Ijaw', 'Bayelsa State'),
(118, 6, 'Yenagoa', 'Bayelsa State'),
(119, 7, 'Agatu', 'Benue State'),
(120, 7, 'Apa', 'Benue State'),
(121, 7, 'Ado', 'Benue State'),
(122, 7, 'Buruku', 'Benue State'),
(123, 7, 'Gboko', 'Benue State'),
(124, 7, 'Guma', 'Benue State'),
(125, 7, 'Gwer East', 'Benue State'),
(126, 7, 'Gwer West', 'Benue State'),
(127, 7, 'Katsina-Ala', 'Benue State'),
(128, 7, 'Konshisha', 'Benue State'),
(129, 7, 'Kwande', 'Benue State'),
(130, 7, 'Logo', 'Benue State'),
(131, 7, 'Makurdi', 'Benue State'),
(132, 7, 'Obi', 'Benue State'),
(133, 7, 'Ogbadibo', 'Benue State'),
(134, 7, 'Ohimini', 'Benue State'),
(135, 7, 'Oju', 'Benue State'),
(136, 7, 'Okpokwu', 'Benue State'),
(137, 7, 'Oturkpo', 'Benue State'),
(138, 7, 'Tarka', 'Benue State'),
(139, 7, 'Ukum', 'Benue State'),
(140, 7, 'Ushongo', 'Benue State'),
(141, 7, 'Vandeikya', 'Benue State'),
(142, 8, 'Abadam', 'Borno State'),
(143, 8, 'Askira/Uba', 'Borno State'),
(144, 8, 'Bama', 'Borno State'),
(145, 8, 'Bayo', 'Borno State'),
(146, 8, 'Biu', 'Borno State'),
(147, 8, 'Chibok', 'Borno State'),
(148, 8, 'Damboa', 'Borno State'),
(149, 8, 'Dikwa', 'Borno State'),
(150, 8, 'Gubio', 'Borno State'),
(151, 8, 'Guzamala', 'Borno State'),
(152, 8, 'Gwoza', 'Borno State'),
(153, 8, 'Hawul', 'Borno State'),
(154, 8, 'Jere', 'Borno State'),
(155, 8, 'Kaga', 'Borno State'),
(156, 8, 'Kala/Balge', 'Borno State'),
(157, 8, 'Konduga', 'Borno State'),
(158, 8, 'Kukawa', 'Borno State'),
(159, 8, 'Kwaya Kusar', 'Borno State'),
(160, 8, 'Mafa', 'Borno State'),
(161, 8, 'Magumeri', 'Borno State'),
(162, 8, 'Maiduguri', 'Borno State'),
(163, 8, 'Marte', 'Borno State'),
(164, 8, 'Mobbar', 'Borno State'),
(165, 8, 'Monguno', 'Borno State'),
(166, 8, 'Ngala', 'Borno State'),
(167, 8, 'Nganzai', 'Borno State'),
(168, 8, 'Shani', 'Borno State'),
(169, 9, 'Abi', 'Cross River State'),
(170, 9, 'Akamkpa', 'Cross River State'),
(171, 9, 'Akpabuyo', 'Cross River State'),
(172, 9, 'Bakassi', 'Cross River State'),
(173, 9, 'Bekwarra', 'Cross River State'),
(174, 9, 'Biase', 'Cross River State'),
(175, 9, 'Boki', 'Cross River State'),
(176, 9, 'Calabar Municipal', 'Cross River State'),
(177, 9, 'Calabar South', 'Cross River State'),
(178, 9, 'Etung', 'Cross River State'),
(179, 9, 'Ikom', 'Cross River State'),
(180, 9, 'Obanliku', 'Cross River State'),
(181, 9, 'Obubra', 'Cross River State'),
(182, 9, 'Obudu', 'Cross River State'),
(183, 9, 'Odukpani', 'Cross River State'),
(184, 9, 'Ogoja', 'Cross River State'),
(185, 9, 'Yakuur', 'Cross River State'),
(186, 9, 'Yala', 'Cross River State'),
(187, 10, 'Aniocha North', 'Delta State'),
(188, 10, 'Aniocha South', 'Delta State'),
(189, 10, 'Bomadi', 'Delta State'),
(190, 10, 'Burutu', 'Delta State'),
(191, 10, 'Ethiope East', 'Delta State'),
(192, 10, 'Ethiope West', 'Delta State'),
(193, 10, 'Ika North East', 'Delta State'),
(194, 10, 'Ika South', 'Delta State'),
(195, 10, 'Isoko North', 'Delta State'),
(196, 10, 'Isoko South', 'Delta State'),
(197, 10, 'Ndokwa East', 'Delta State'),
(198, 10, 'Ndokwa West', 'Delta State'),
(199, 10, 'Okpe', 'Delta State'),
(200, 10, 'Oshimili North', 'Delta State'),
(201, 10, 'Oshimili South', 'Delta State'),
(202, 10, 'Patani', 'Delta State'),
(203, 10, 'Sapele', 'Delta State'),
(204, 10, 'Udu', 'Delta State'),
(205, 10, 'Ughelli North', 'Delta State'),
(206, 10, 'Ughelli South', 'Delta State'),
(207, 10, 'Ukwuani', 'Delta State'),
(208, 10, 'Uvwie', 'Delta State'),
(209, 10, 'Warri North', 'Delta State'),
(210, 10, 'Warri South', 'Delta State'),
(211, 10, 'Warri South West', 'Delta State'),
(212, 11, 'Abakaliki', 'Ebonyi State'),
(213, 11, 'Afikpo North', 'Ebonyi State'),
(214, 11, 'Afikpo South', 'Ebonyi State'),
(215, 11, 'Ebonyi', 'Ebonyi State'),
(216, 11, 'Ezza North', 'Ebonyi State'),
(217, 11, 'Ezza South', 'Ebonyi State'),
(218, 11, 'Ikwo', 'Ebonyi State'),
(219, 11, 'Ishielu', 'Ebonyi State'),
(220, 11, 'Ivo', 'Ebonyi State'),
(221, 11, 'Izzi', 'Ebonyi State'),
(222, 11, 'Ohaozara', 'Ebonyi State'),
(223, 11, 'Ohaukwu', 'Ebonyi State'),
(224, 11, 'Onicha', 'Ebonyi State'),
(225, 12, 'Akoko-Edo', 'Edo State'),
(226, 12, 'Egor', 'Edo State'),
(227, 12, 'Esan Central', 'Edo State'),
(228, 12, 'Esan North-East', 'Edo State'),
(229, 12, 'Esan South-East', 'Edo State'),
(230, 12, 'Esan West', 'Edo State'),
(231, 12, 'Etsako Central', 'Edo State'),
(232, 12, 'Etsako East', 'Edo State'),
(233, 12, 'Etsako West', 'Edo State'),
(234, 12, 'Igueben', 'Edo State'),
(235, 12, 'Ikpoba Okha', 'Edo State'),
(236, 12, 'Orhionmwon', 'Edo State'),
(237, 12, 'Oredo', 'Edo State'),
(238, 12, 'Ovia North-East', 'Edo State'),
(239, 12, 'Ovia South-West', 'Edo State'),
(240, 12, 'Owan East', 'Edo State'),
(241, 12, 'Owan West', 'Edo State'),
(242, 12, 'Uhunmwonde', 'Edo State'),
(243, 13, 'Ado Ekiti', 'Ekiti State'),
(244, 13, 'Efon', 'Ekiti State'),
(245, 13, 'Ekiti East', 'Ekiti State'),
(246, 13, 'Ekiti South-West', 'Ekiti State'),
(247, 13, 'Ekiti West', 'Ekiti State'),
(248, 13, 'Emure', 'Ekiti State'),
(249, 13, 'Gbonyin', 'Ekiti State'),
(250, 13, 'Ido Osi', 'Ekiti State'),
(251, 13, 'Ijero', 'Ekiti State'),
(252, 13, 'Ikere', 'Ekiti State'),
(253, 13, 'Ikole', 'Ekiti State'),
(254, 13, 'Ilejemeje', 'Ekiti State'),
(255, 13, 'Irepodun/Ifelodun', 'Ekiti State'),
(256, 13, 'Ise/Orun', 'Ekiti State'),
(257, 13, 'Moba', 'Ekiti State'),
(258, 13, 'Oye', 'Ekiti State'),
(259, 14, 'Aninri', 'Enugu State'),
(260, 14, 'Awgu', 'Enugu State'),
(261, 14, 'Enugu East', 'Enugu State'),
(262, 14, 'Enugu North', 'Enugu State'),
(263, 14, 'Enugu South', 'Enugu State'),
(264, 14, 'Ezeagu', 'Enugu State'),
(265, 14, 'Igbo Etiti', 'Enugu State'),
(266, 14, 'Igbo Eze North', 'Enugu State'),
(267, 14, 'Igbo Eze South', 'Enugu State'),
(268, 14, 'Isi Uzo', 'Enugu State'),
(269, 14, 'Nkanu East', 'Enugu State'),
(270, 14, 'Nkanu West', 'Enugu State'),
(271, 14, 'Nsukka', 'Enugu State'),
(272, 14, 'Oji River', 'Enugu State'),
(273, 14, 'Udenu', 'Enugu State'),
(274, 14, 'Udi', 'Enugu State'),
(275, 14, 'Uzo Uwani', 'Enugu State'),
(276, 15, 'Abaji', 'FCT'),
(277, 15, 'Bwari', 'FCT'),
(278, 15, 'Gwagwalada', 'FCT'),
(279, 15, 'Kuje', 'FCT'),
(280, 15, 'Kwali', 'FCT'),
(281, 15, 'Municipal Area Council', 'FCT'),
(282, 16, 'Akko', 'Gombe State'),
(283, 16, 'Balanga', 'Gombe State'),
(284, 16, 'Billiri', 'Gombe State'),
(285, 16, 'Dukku', 'Gombe State'),
(286, 16, 'Funakaye', 'Gombe State'),
(287, 16, 'Gombe', 'Gombe State'),
(288, 16, 'Kaltungo', 'Gombe State'),
(289, 16, 'Kwami', 'Gombe State'),
(290, 16, 'Nafada', 'Gombe State'),
(291, 16, 'Shongom', 'Gombe State'),
(292, 16, 'Yamaltu/Deba', 'Gombe State'),
(293, 17, 'Aboh Mbaise', 'Imo State'),
(294, 17, 'Ahiazu Mbaise', 'Imo State'),
(295, 17, 'Ehime Mbano', 'Imo State'),
(296, 17, 'Ezinihitte', 'Imo State'),
(297, 17, 'Ideato North', 'Imo State'),
(298, 17, 'Ideato South', 'Imo State'),
(299, 17, 'Ihitte/Uboma', 'Imo State'),
(300, 17, 'Ikeduru', 'Imo State'),
(301, 17, 'Isiala Mbano', 'Imo State'),
(302, 17, 'Isu', 'Imo State'),
(303, 17, 'Mbaitoli', 'Imo State'),
(304, 17, 'Ngor Okpala', 'Imo State'),
(305, 17, 'Njaba', 'Imo State'),
(306, 17, 'Nkwerre', 'Imo State'),
(307, 17, 'Nwangele', 'Imo State'),
(308, 17, 'Obowo', 'Imo State'),
(309, 17, 'Oguta', 'Imo State'),
(310, 17, 'Ohaji/Egbema', 'Imo State'),
(311, 17, 'Okigwe', 'Imo State'),
(312, 17, 'Orlu', 'Imo State'),
(313, 17, 'Orsu', 'Imo State'),
(314, 17, 'Oru East', 'Imo State'),
(315, 17, 'Oru West', 'Imo State'),
(316, 17, 'Owerri Municipal', 'Imo State'),
(317, 17, 'Owerri North', 'Imo State'),
(318, 17, 'Owerri West', 'Imo State'),
(319, 17, 'Unuimo', 'Imo State'),
(320, 18, 'Auyo', 'Jigawa State'),
(321, 18, 'Babura', 'Jigawa State'),
(322, 18, 'Biriniwa', 'Jigawa State'),
(323, 18, 'Birnin Kudu', 'Jigawa State'),
(324, 18, 'Buji', 'Jigawa State'),
(325, 18, 'Dutse', 'Jigawa State'),
(326, 18, 'Gagarawa', 'Jigawa State'),
(327, 18, 'Garki', 'Jigawa State'),
(328, 18, 'Gumel', 'Jigawa State'),
(329, 18, 'Guri', 'Jigawa State'),
(330, 18, 'Gwaram', 'Jigawa State'),
(331, 18, 'Gwiwa', 'Jigawa State'),
(332, 18, 'Hadejia', 'Jigawa State'),
(333, 18, 'Jahun', 'Jigawa State'),
(334, 18, 'Kafin Hausa', 'Jigawa State'),
(335, 18, 'Kazaure', 'Jigawa State'),
(336, 18, 'Kiri Kasama', 'Jigawa State'),
(337, 18, 'Kiyawa', 'Jigawa State'),
(338, 18, 'Kaugama', 'Jigawa State'),
(339, 18, 'Maigatari', 'Jigawa State'),
(340, 18, 'Malam Madori', 'Jigawa State'),
(341, 18, 'Miga', 'Jigawa State'),
(342, 18, 'Ringim', 'Jigawa State'),
(343, 18, 'Roni', 'Jigawa State'),
(344, 18, 'Sule Tankarkar', 'Jigawa State'),
(345, 18, 'Taura', 'Jigawa State'),
(346, 18, 'Yankwashi', 'Jigawa State'),
(347, 19, 'Birnin Gwari', 'Kaduna State'),
(348, 19, 'Chikun', 'Kaduna State'),
(349, 19, 'Giwa', 'Kaduna State'),
(350, 19, 'Igabi', 'Kaduna State'),
(351, 19, 'Ikara', 'Kaduna State'),
(352, 19, 'Jaba', 'Kaduna State'),
(353, 19, 'Jema\'a', 'Kaduna State'),
(354, 19, 'Kachia', 'Kaduna State'),
(355, 19, 'Kaduna North', 'Kaduna State'),
(356, 19, 'Kaduna South', 'Kaduna State'),
(357, 19, 'Kagarko', 'Kaduna State'),
(358, 19, 'Kajuru', 'Kaduna State'),
(359, 19, 'Kaura', 'Kaduna State'),
(360, 19, 'Kauru', 'Kaduna State'),
(361, 19, 'Kubau', 'Kaduna State'),
(362, 19, 'Kudan', 'Kaduna State'),
(363, 19, 'Lere', 'Kaduna State'),
(364, 19, 'Makarfi', 'Kaduna State'),
(365, 19, 'Sabon Gari', 'Kaduna State'),
(366, 19, 'Sanga', 'Kaduna State'),
(367, 19, 'Soba', 'Kaduna State'),
(368, 19, 'Zangon Kataf', 'Kaduna State'),
(369, 19, 'Zaria', 'Kaduna State'),
(370, 20, 'Ajingi', 'Kano State'),
(371, 20, 'Albasu', 'Kano State'),
(372, 20, 'Bagwai', 'Kano State'),
(373, 20, 'Bebeji', 'Kano State'),
(374, 20, 'Bichi', 'Kano State'),
(375, 20, 'Bunkure', 'Kano State'),
(376, 20, 'Dala', 'Kano State'),
(377, 20, 'Dambatta', 'Kano State'),
(378, 20, 'Dawakin Kudu', 'Kano State'),
(379, 20, 'Dawakin Tofa', 'Kano State'),
(380, 20, 'Doguwa', 'Kano State'),
(381, 20, 'Fagge', 'Kano State'),
(382, 20, 'Gabasawa', 'Kano State'),
(383, 20, 'Garko', 'Kano State'),
(384, 20, 'Garun Mallam', 'Kano State'),
(385, 20, 'Gaya', 'Kano State'),
(386, 20, 'Gezawa', 'Kano State'),
(387, 20, 'Gwale', 'Kano State'),
(388, 20, 'Gwarzo', 'Kano State'),
(389, 20, 'Kabo', 'Kano State'),
(390, 20, 'Kano Municipal', 'Kano State'),
(391, 20, 'Karaye', 'Kano State'),
(392, 20, 'Kibiya', 'Kano State'),
(393, 20, 'Kiru', 'Kano State'),
(394, 20, 'Kumbotso', 'Kano State'),
(395, 20, 'Kunchi', 'Kano State'),
(396, 20, 'Kura', 'Kano State'),
(397, 20, 'Madobi', 'Kano State'),
(398, 20, 'Makoda', 'Kano State'),
(399, 20, 'Minjibir', 'Kano State'),
(400, 20, 'Nasarawa', 'Kano State'),
(401, 20, 'Rano', 'Kano State'),
(402, 20, 'Rimin Gado', 'Kano State'),
(403, 20, 'Rogo', 'Kano State'),
(404, 20, 'Shanono', 'Kano State'),
(405, 20, 'Sumaila', 'Kano State'),
(406, 20, 'Takai', 'Kano State'),
(407, 20, 'Tarauni', 'Kano State'),
(408, 20, 'Tofa', 'Kano State'),
(409, 20, 'Tsanyawa', 'Kano State'),
(410, 20, 'Tudun Wada', 'Kano State'),
(411, 20, 'Ungogo', 'Kano State'),
(412, 20, 'Warawa', 'Kano State'),
(413, 20, 'Wudil', 'Kano State'),
(414, 21, 'Bakori', 'Katsina State'),
(415, 21, 'Batagarawa', 'Katsina State'),
(416, 21, 'Batsari', 'Katsina State'),
(417, 21, 'Baure', 'Katsina State'),
(418, 21, 'Bindawa', 'Katsina State'),
(419, 21, 'Charanchi', 'Katsina State'),
(420, 21, 'Dandume', 'Katsina State'),
(421, 21, 'Danja', 'Katsina State'),
(422, 21, 'Dan Musa', 'Katsina State'),
(423, 21, 'Daura', 'Katsina State'),
(424, 21, 'Dutsi', 'Katsina State'),
(425, 21, 'Dutsin Ma', 'Katsina State'),
(426, 21, 'Faskari', 'Katsina State'),
(427, 21, 'Funtua', 'Katsina State'),
(428, 21, 'Ingawa', 'Katsina State'),
(429, 21, 'Jibia', 'Katsina State'),
(430, 21, 'Kafur', 'Katsina State'),
(431, 21, 'Kaita', 'Katsina State'),
(432, 21, 'Kankara', 'Katsina State'),
(433, 21, 'Kankia', 'Katsina State'),
(434, 21, 'Katsina', 'Katsina State'),
(435, 21, 'Kurfi', 'Katsina State'),
(436, 21, 'Kusada', 'Katsina State'),
(437, 21, 'Mai\'Adua', 'Katsina State'),
(438, 21, 'Malumfashi', 'Katsina State'),
(439, 21, 'Mani', 'Katsina State'),
(440, 21, 'Mashi', 'Katsina State'),
(441, 21, 'Matazu', 'Katsina State'),
(442, 21, 'Musawa', 'Katsina State'),
(443, 21, 'Rimi', 'Katsina State'),
(444, 21, 'Sabuwa', 'Katsina State'),
(445, 21, 'Safana', 'Katsina State'),
(446, 21, 'Sandamu', 'Katsina State'),
(447, 21, 'Zango', 'Katsina State'),
(448, 22, 'Aleiro', 'Kebbi State'),
(449, 22, 'Arewa Dandi', 'Kebbi State'),
(450, 22, 'Argungu', 'Kebbi State'),
(451, 22, 'Augie', 'Kebbi State'),
(452, 22, 'Bagudo', 'Kebbi State'),
(453, 22, 'Birnin Kebbi', 'Kebbi State'),
(454, 22, 'Bunza', 'Kebbi State'),
(455, 22, 'Dandi', 'Kebbi State'),
(456, 22, 'Fakai', 'Kebbi State'),
(457, 22, 'Gwandu', 'Kebbi State'),
(458, 22, 'Jega', 'Kebbi State'),
(459, 22, 'Kalgo', 'Kebbi State'),
(460, 22, 'Koko/Besse', 'Kebbi State'),
(461, 22, 'Maiyama', 'Kebbi State'),
(462, 22, 'Ngaski', 'Kebbi State'),
(463, 22, 'Sakaba', 'Kebbi State'),
(464, 22, 'Shanga', 'Kebbi State'),
(465, 22, 'Suru', 'Kebbi State'),
(466, 22, 'Wasagu/Danko', 'Kebbi State'),
(467, 22, 'Yauri', 'Kebbi State'),
(468, 22, 'Zuru', 'Kebbi State'),
(469, 23, 'Adavi', 'Kogi State'),
(470, 23, 'Ajaokuta', 'Kogi State'),
(471, 23, 'Ankpa', 'Kogi State'),
(472, 23, 'Bassa', 'Kogi State'),
(473, 23, 'Dekina', 'Kogi State'),
(474, 23, 'Ibaji', 'Kogi State'),
(475, 23, 'Idah', 'Kogi State'),
(476, 23, 'Igalamela Odolu', 'Kogi State'),
(477, 23, 'Ijumu', 'Kogi State'),
(478, 23, 'Kabba/Bunu', 'Kogi State'),
(479, 23, 'Kogi', 'Kogi State'),
(480, 23, 'Lokoja', 'Kogi State'),
(481, 23, 'Mopa Muro', 'Kogi State'),
(482, 23, 'Ofu', 'Kogi State'),
(483, 23, 'Ogori/Magongo', 'Kogi State'),
(484, 23, 'Okehi', 'Kogi State'),
(485, 23, 'Okene', 'Kogi State'),
(486, 23, 'Olamaboro', 'Kogi State'),
(487, 23, 'Omala', 'Kogi State'),
(488, 23, 'Yagba East', 'Kogi State');
INSERT INTO `mytable` (`id`, `stateid`, `lga`, `state`) VALUES
(489, 23, 'Yagba West', 'Kogi State'),
(490, 24, 'Asa', 'Kwara State'),
(491, 24, 'Baruten', 'Kwara State'),
(492, 24, 'Edu', 'Kwara State'),
(493, 24, 'Ekiti', 'Kwara State'),
(494, 24, 'Ifelodun', 'Kwara State'),
(495, 24, 'Ilorin East', 'Kwara State'),
(496, 24, 'Ilorin South', 'Kwara State'),
(497, 24, 'Ilorin West', 'Kwara State'),
(498, 24, 'Irepodun', 'Kwara State'),
(499, 24, 'Isin', 'Kwara State'),
(500, 24, 'Kaiama', 'Kwara State'),
(501, 24, 'Moro', 'Kwara State'),
(502, 24, 'Offa', 'Kwara State'),
(503, 24, 'Oke Ero', 'Kwara State'),
(504, 24, 'Oyun', 'Kwara State'),
(505, 24, 'Pategi', 'Kwara State'),
(506, 25, 'Agege', 'Lagos State'),
(507, 25, 'Ajeromi-Ifelodun', 'Lagos State'),
(508, 25, 'Alimosho', 'Lagos State'),
(509, 25, 'Amuwo-Odofin', 'Lagos State'),
(510, 25, 'Apapa', 'Lagos State'),
(511, 25, 'Badagry', 'Lagos State'),
(512, 25, 'Epe', 'Lagos State'),
(513, 25, 'Eti Osa', 'Lagos State'),
(514, 25, 'Ibeju-Lekki', 'Lagos State'),
(515, 25, 'Ifako-Ijaiye', 'Lagos State'),
(516, 25, 'Ikeja', 'Lagos State'),
(517, 25, 'Ikorodu', 'Lagos State'),
(518, 25, 'Kosofe', 'Lagos State'),
(519, 25, 'Lagos Island', 'Lagos State'),
(520, 25, 'Lagos Mainland', 'Lagos State'),
(521, 25, 'Mushin', 'Lagos State'),
(522, 25, 'Ojo', 'Lagos State'),
(523, 25, 'Oshodi-Isolo', 'Lagos State'),
(524, 25, 'Shomolu', 'Lagos State'),
(525, 25, 'Surulere', 'Lagos State'),
(526, 26, 'Akwanga', 'Nasarawa State'),
(527, 26, 'Awe', 'Nasarawa State'),
(528, 26, 'Doma', 'Nasarawa State'),
(529, 26, 'Karu', 'Nasarawa State'),
(530, 26, 'Keana', 'Nasarawa State'),
(531, 26, 'Keffi', 'Nasarawa State'),
(532, 26, 'Kokona', 'Nasarawa State'),
(533, 26, 'Lafia', 'Nasarawa State'),
(534, 26, 'Nasarawa', 'Nasarawa State'),
(535, 26, 'Nasarawa Egon', 'Nasarawa State'),
(536, 26, 'Obi', 'Nasarawa State'),
(537, 26, 'Toto', 'Nasarawa State'),
(538, 26, 'Wamba', 'Nasarawa State'),
(539, 27, 'Agaie', 'Niger State'),
(540, 27, 'Agwara', 'Niger State'),
(541, 27, 'Bida', 'Niger State'),
(542, 27, 'Borgu', 'Niger State'),
(543, 27, 'Bosso', 'Niger State'),
(544, 27, 'Chanchaga', 'Niger State'),
(545, 27, 'Edati', 'Niger State'),
(546, 27, 'Gbako', 'Niger State'),
(547, 27, 'Gurara', 'Niger State'),
(548, 27, 'Katcha', 'Niger State'),
(549, 27, 'Kontagora', 'Niger State'),
(550, 27, 'Lapai', 'Niger State'),
(551, 27, 'Lavun', 'Niger State'),
(552, 27, 'Magama', 'Niger State'),
(553, 27, 'Mariga', 'Niger State'),
(554, 27, 'Mashegu', 'Niger State'),
(555, 27, 'Mokwa', 'Niger State'),
(556, 27, 'Moya', 'Niger State'),
(557, 27, 'Paikoro', 'Niger State'),
(558, 27, 'Rafi', 'Niger State'),
(559, 27, 'Rijau', 'Niger State'),
(560, 27, 'Shiroro', 'Niger State'),
(561, 27, 'Suleja', 'Niger State'),
(562, 27, 'Tafa', 'Niger State'),
(563, 27, 'Wushishi', 'Niger State'),
(564, 28, 'Abeokuta North', 'Ogun State'),
(565, 28, 'Abeokuta South', 'Ogun State'),
(566, 28, 'Ado-Odo/Ota', 'Ogun State'),
(567, 28, 'Egbado North', 'Ogun State'),
(568, 28, 'Egbado South', 'Ogun State'),
(569, 28, 'Ewekoro', 'Ogun State'),
(570, 28, 'Ifo', 'Ogun State'),
(571, 28, 'Ijebu East', 'Ogun State'),
(572, 28, 'Ijebu North', 'Ogun State'),
(573, 28, 'Ijebu North East', 'Ogun State'),
(574, 28, 'Ijebu Ode', 'Ogun State'),
(575, 28, 'Ikenne', 'Ogun State'),
(576, 28, 'Imeko Afon', 'Ogun State'),
(577, 28, 'Ipokia', 'Ogun State'),
(578, 28, 'Obafemi Owode', 'Ogun State'),
(579, 28, 'Odeda', 'Ogun State'),
(580, 28, 'Odogbolu', 'Ogun State'),
(581, 28, 'Ogun Waterside', 'Ogun State'),
(582, 28, 'Remo North', 'Ogun State'),
(583, 28, 'Shagamu', 'Ogun State'),
(584, 29, 'Akoko North-East', 'Ondo State'),
(585, 29, 'Akoko North-West', 'Ondo State'),
(586, 29, 'Akoko South-West', 'Ondo State'),
(587, 29, 'Akoko South-East', 'Ondo State'),
(588, 29, 'Akure North', 'Ondo State'),
(589, 29, 'Akure South', 'Ondo State'),
(590, 29, 'Ese Odo', 'Ondo State'),
(591, 29, 'Idanre', 'Ondo State'),
(592, 29, 'Ifedore', 'Ondo State'),
(593, 29, 'Ilaje', 'Ondo State'),
(594, 29, 'Ile Oluji/Okeigbo', 'Ondo State'),
(595, 29, 'Irele', 'Ondo State'),
(596, 29, 'Odigbo', 'Ondo State'),
(597, 29, 'Okitipupa', 'Ondo State'),
(598, 29, 'Ondo East', 'Ondo State'),
(599, 29, 'Ondo West', 'Ondo State'),
(600, 29, 'Ose', 'Ondo State'),
(601, 29, 'Owo', 'Ondo State'),
(602, 30, 'Atakunmosa East', 'Osun State'),
(603, 30, 'Atakunmosa West', 'Osun State'),
(604, 30, 'Aiyedaade', 'Osun State'),
(605, 30, 'Aiyedire', 'Osun State'),
(606, 30, 'Boluwaduro', 'Osun State'),
(607, 30, 'Boripe', 'Osun State'),
(608, 30, 'Ede North', 'Osun State'),
(609, 30, 'Ede South', 'Osun State'),
(610, 30, 'Ife Central', 'Osun State'),
(611, 30, 'Ife East', 'Osun State'),
(612, 30, 'Ife North', 'Osun State'),
(613, 30, 'Ife South', 'Osun State'),
(614, 30, 'Egbedore', 'Osun State'),
(615, 30, 'Ejigbo', 'Osun State'),
(616, 30, 'Ifedayo', 'Osun State'),
(617, 30, 'Ifelodun', 'Osun State'),
(618, 30, 'Ila', 'Osun State'),
(619, 30, 'Ilesa East', 'Osun State'),
(620, 30, 'Ilesa West', 'Osun State'),
(621, 30, 'Irepodun', 'Osun State'),
(622, 30, 'Irewole', 'Osun State'),
(623, 30, 'Isokan', 'Osun State'),
(624, 30, 'Iwo', 'Osun State'),
(625, 30, 'Obokun', 'Osun State'),
(626, 30, 'Odo Otin', 'Osun State'),
(627, 30, 'Ola Oluwa', 'Osun State'),
(628, 30, 'Olorunda', 'Osun State'),
(629, 30, 'Oriade', 'Osun State'),
(630, 30, 'Orolu', 'Osun State'),
(631, 30, 'Osogbo', 'Osun State'),
(632, 31, 'Afijio', 'Oyo State'),
(633, 31, 'Akinyele', 'Oyo State'),
(634, 31, 'Atiba', 'Oyo State'),
(635, 31, 'Atisbo', 'Oyo State'),
(636, 31, 'Egbeda', 'Oyo State'),
(637, 31, 'Ibadan North', 'Oyo State'),
(638, 31, 'Ibadan North-East', 'Oyo State'),
(639, 31, 'Ibadan North-West', 'Oyo State'),
(640, 31, 'Ibadan South-East', 'Oyo State'),
(641, 31, 'Ibadan South-West', 'Oyo State'),
(642, 31, 'Ibarapa Central', 'Oyo State'),
(643, 31, 'Ibarapa East', 'Oyo State'),
(644, 31, 'Ibarapa North', 'Oyo State'),
(645, 31, 'Ido', 'Oyo State'),
(646, 31, 'Irepo', 'Oyo State'),
(647, 31, 'Iseyin', 'Oyo State'),
(648, 31, 'Itesiwaju', 'Oyo State'),
(649, 31, 'Iwajowa', 'Oyo State'),
(650, 31, 'Kajola', 'Oyo State'),
(651, 31, 'Lagelu', 'Oyo State'),
(652, 31, 'Ogbomosho North', 'Oyo State'),
(653, 31, 'Ogbomosho South', 'Oyo State'),
(654, 31, 'Ogo Oluwa', 'Oyo State'),
(655, 31, 'Olorunsogo', 'Oyo State'),
(656, 31, 'Oluyole', 'Oyo State'),
(657, 31, 'Ona Ara', 'Oyo State'),
(658, 31, 'Orelope', 'Oyo State'),
(659, 31, 'Ori Ire', 'Oyo State'),
(660, 31, 'Oyo', 'Oyo State'),
(661, 31, 'Oyo East', 'Oyo State'),
(662, 31, 'Saki East', 'Oyo State'),
(663, 31, 'Saki West', 'Oyo State'),
(664, 31, 'Surulere', 'Oyo State'),
(665, 32, 'Bokkos', 'Plateau State'),
(666, 32, 'Barkin Ladi', 'Plateau State'),
(667, 32, 'Bassa', 'Plateau State'),
(668, 32, 'Jos East', 'Plateau State'),
(669, 32, 'Jos North', 'Plateau State'),
(670, 32, 'Jos South', 'Plateau State'),
(671, 32, 'Kanam', 'Plateau State'),
(672, 32, 'Kanke', 'Plateau State'),
(673, 32, 'Langtang South', 'Plateau State'),
(674, 32, 'Langtang North', 'Plateau State'),
(675, 32, 'Mangu', 'Plateau State'),
(676, 32, 'Mikang', 'Plateau State'),
(677, 32, 'Pankshin', 'Plateau State'),
(678, 32, 'Qua\'an Pan', 'Plateau State'),
(679, 32, 'Riyom', 'Plateau State'),
(680, 32, 'Shendam', 'Plateau State'),
(681, 32, 'Wase', 'Plateau State'),
(682, 33, 'Abua/Odual', 'Rivers State'),
(683, 33, 'Ahoada East', 'Rivers State'),
(684, 33, 'Ahoada West', 'Rivers State'),
(685, 33, 'Akuku-Toru', 'Rivers State'),
(686, 33, 'Andoni', 'Rivers State'),
(687, 33, 'Asari-Toru', 'Rivers State'),
(688, 33, 'Bonny', 'Rivers State'),
(689, 33, 'Degema', 'Rivers State'),
(690, 33, 'Eleme', 'Rivers State'),
(691, 33, 'Emuoha', 'Rivers State'),
(692, 33, 'Etche', 'Rivers State'),
(693, 33, 'Gokana', 'Rivers State'),
(694, 33, 'Ikwerre', 'Rivers State'),
(695, 33, 'Khana', 'Rivers State'),
(696, 33, 'Obio/Akpor', 'Rivers State'),
(697, 33, 'Ogba/Egbema/Ndoni', 'Rivers State'),
(698, 33, 'Ogu/Bolo', 'Rivers State'),
(699, 33, 'Okrika', 'Rivers State'),
(700, 33, 'Omuma', 'Rivers State'),
(701, 33, 'Opobo/Nkoro', 'Rivers State'),
(702, 33, 'Oyigbo', 'Rivers State'),
(703, 33, 'Port Harcourt', 'Rivers State'),
(704, 33, 'Tai', 'Rivers State'),
(705, 34, 'Binji', 'Sokoto State'),
(706, 34, 'Bodinga', 'Sokoto State'),
(707, 34, 'Dange Shuni', 'Sokoto State'),
(708, 34, 'Gada', 'Sokoto State'),
(709, 34, 'Goronyo', 'Sokoto State'),
(710, 34, 'Gudu', 'Sokoto State'),
(711, 34, 'Gwadabawa', 'Sokoto State'),
(712, 34, 'Illela', 'Sokoto State'),
(713, 34, 'Isa', 'Sokoto State'),
(714, 34, 'Kebbe', 'Sokoto State'),
(715, 34, 'Kware', 'Sokoto State'),
(716, 34, 'Rabah', 'Sokoto State'),
(717, 34, 'Sabon Birni', 'Sokoto State'),
(718, 34, 'Shagari', 'Sokoto State'),
(719, 34, 'Silame', 'Sokoto State'),
(720, 34, 'Sokoto North', 'Sokoto State'),
(721, 34, 'Sokoto South', 'Sokoto State'),
(722, 34, 'Tambuwal', 'Sokoto State'),
(723, 34, 'Tangaza', 'Sokoto State'),
(724, 34, 'Tureta', 'Sokoto State'),
(725, 34, 'Wamako', 'Sokoto State'),
(726, 34, 'Wurno', 'Sokoto State'),
(727, 34, 'Yabo', 'Sokoto State'),
(728, 35, 'Ardo Kola', 'Taraba State'),
(729, 35, 'Bali', 'Taraba State'),
(730, 35, 'Donga', 'Taraba State'),
(731, 35, 'Gashaka', 'Taraba State'),
(732, 35, 'Gassol', 'Taraba State'),
(733, 35, 'Ibi', 'Taraba State'),
(734, 35, 'Jalingo', 'Taraba State'),
(735, 35, 'Karim Lamido', 'Taraba State'),
(736, 35, 'Kumi', 'Taraba State'),
(737, 35, 'Lau', 'Taraba State'),
(738, 35, 'Sardauna', 'Taraba State'),
(739, 35, 'Takum', 'Taraba State'),
(740, 35, 'Ussa', 'Taraba State'),
(741, 35, 'Wukari', 'Taraba State'),
(742, 35, 'Yorro', 'Taraba State'),
(743, 35, 'Zing', 'Taraba State'),
(744, 36, 'Bade', 'Yobe State'),
(745, 36, 'Bursari', 'Yobe State'),
(746, 36, 'Damaturu', 'Yobe State'),
(747, 36, 'Fika', 'Yobe State'),
(748, 36, 'Fune', 'Yobe State'),
(749, 36, 'Geidam', 'Yobe State'),
(750, 36, 'Gujba', 'Yobe State'),
(751, 36, 'Gulani', 'Yobe State'),
(752, 36, 'Jakusko', 'Yobe State'),
(753, 36, 'Karasuwa', 'Yobe State'),
(754, 36, 'Machina', 'Yobe State'),
(755, 36, 'Nangere', 'Yobe State'),
(756, 36, 'Nguru', 'Yobe State'),
(757, 36, 'Potiskum', 'Yobe State'),
(758, 36, 'Tarmuwa', 'Yobe State'),
(759, 36, 'Yunusari', 'Yobe State'),
(760, 36, 'Yusufari', 'Yobe State'),
(761, 37, 'Anka', 'Zamfara State'),
(762, 37, 'Bakura', 'Zamfara State'),
(763, 37, 'Birnin Magaji/Kiyaw', 'Zamfara State'),
(764, 37, 'Bukkuyum', 'Zamfara State'),
(765, 37, 'Bungudu', 'Zamfara State'),
(766, 37, 'Gummi', 'Zamfara State'),
(767, 37, 'Gusau', 'Zamfara State'),
(768, 37, 'Kaura Namoda', 'Zamfara State'),
(769, 37, 'Maradun', 'Zamfara State'),
(770, 37, 'Maru', 'Zamfara State'),
(771, 37, 'Shinkafi', 'Zamfara State'),
(772, 37, 'Talata Mafara', 'Zamfara State'),
(773, 37, 'Chafe', 'Zamfara State'),
(774, 37, 'Zurmi', 'Zamfara State');

-- --------------------------------------------------------

--
-- Table structure for table `ograde`
--

CREATE TABLE `ograde` (
  `id` int(11) NOT NULL,
  `cusid` varchar(20) NOT NULL,
  `subj` varchar(60) DEFAULT NULL,
  `grdd` varchar(2) DEFAULT NULL,
  `exmm` varchar(100) DEFAULT NULL,
  `dreg` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ograde`
--

INSERT INTO `ograde` (`id`, `cusid`, `subj`, `grdd`, `exmm`, `dreg`) VALUES
(1, 'CUS2100005', 'Commerce', 'B2', 'WAEC', 'Apr 20, 2021 04:58 am'),
(2, 'CUS2100005', 'Biology', 'B2', 'WAEC', 'Apr 20, 2021 04:58 am'),
(3, 'CUS2100005', 'Geography', 'B3', 'WAEC', 'Apr 20, 2021 04:58 am'),
(4, 'CUS2100005', 'Literature', 'B2', 'WAEC', 'Apr 20, 2021 04:58 am'),
(5, 'CUS2100005', 'Capentry', 'A1', 'WAEC', 'Apr 20, 2021 04:58 am'),
(6, 'CUS2100005', 'Use of English Language', 'A1', 'WAEC', 'Apr 20, 2021 04:58 am'),
(7, 'CUS2100005', 'Woodwork', 'A1', 'WAEC', 'Apr 20, 2021 04:58 am'),
(8, 'CUS2100005', 'CRK', 'A1', 'WAEC', 'Apr 20, 2021 04:58 am'),
(9, 'CUS2100005', 'Food & Nutrition', 'B3', 'WAEC', 'Apr 20, 2021 04:58 am'),
(10, 'CUS2100006', 'Accounting', 'A1', 'WAEC', 'Apr 23, 2021 10:56 am'),
(11, 'CUS2100006', 'Biology', 'B2', 'NECO', 'Apr 23, 2021 10:56 am'),
(12, 'CUS2100006', 'Civic Education', 'A1', 'WAEC', 'Apr 23, 2021 10:56 am'),
(13, 'CUS2100006', 'Literature', 'A1', 'WAEC', 'Apr 23, 2021 10:56 am'),
(14, 'CUS2100006', 'Mathematics', 'A1', 'NECO', 'Apr 23, 2021 10:56 am'),
(15, 'CUS2100006', 'Government', 'B2', 'WAEC', 'Apr 23, 2021 10:56 am'),
(16, 'CUS2100006', '', '', '', 'Apr 23, 2021 10:56 am'),
(17, 'CUS2100006', '', '', '', 'Apr 23, 2021 10:56 am'),
(18, 'CUS2100006', '', '', '', 'Apr 23, 2021 10:56 am'),
(19, 'CUS2100007', 'Accounting', 'A1', 'WAEC', 'Apr 23, 2021 04:58 pm'),
(20, 'CUS2100007', 'Capentry', 'A1', 'WAEC', 'Apr 23, 2021 04:58 pm'),
(21, 'CUS2100007', 'Mathematics', 'A1', 'WAEC', 'Apr 23, 2021 04:58 pm'),
(22, 'CUS2100007', 'Government', 'A1', 'NECO', 'Apr 23, 2021 04:58 pm'),
(23, 'CUS2100007', 'History', 'B2', 'NECO', 'Apr 23, 2021 04:58 pm'),
(24, 'CUS2100007', 'Food & Nutrition', 'A1', 'NECO', 'Apr 23, 2021 04:58 pm'),
(25, 'CUS2100007', '', '', '', 'Apr 23, 2021 04:58 pm'),
(26, 'CUS2100007', '', '', '', 'Apr 23, 2021 04:58 pm'),
(27, 'CUS2100007', '', '', '', 'Apr 23, 2021 04:58 pm'),
(28, 'CUS2100009', 'Biology', 'A1', 'NECO', 'Apr 29, 2021 02:43 pm'),
(29, 'CUS2100009', 'Biology', 'B2', 'WAEC', 'Apr 29, 2021 02:43 pm'),
(30, 'CUS2100009', 'Use of English Language', 'A1', 'NECO', 'Apr 29, 2021 02:43 pm'),
(31, 'CUS2100009', 'Mathematics', 'B2', 'NECO', 'Apr 29, 2021 02:43 pm'),
(32, 'CUS2100009', 'Geography', 'B3', 'WAEC', 'Apr 29, 2021 02:43 pm'),
(33, 'CUS2100009', '', '', '', 'Apr 29, 2021 02:43 pm'),
(34, 'CUS2100009', '', '', '', 'Apr 29, 2021 02:43 pm'),
(35, 'CUS2100009', '', '', '', 'Apr 29, 2021 02:43 pm'),
(36, 'CUS2100009', '', '', '', 'Apr 29, 2021 02:43 pm');

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
(13, 'Adewale Rasheed', 'ras@gmail.com', '3000.00', '2021/2022', 'Mar 20, 2021 09:51 pm', 'CUS2100002'),
(14, 'Delepe Yahya', 'yaya@gmail.com', '3000.00', '2021/2022', 'Apr 12, 2021 04:49 pm', 'CUS2100004'),
(15, 'Destiny Amana Dada', 'destiny@yahoo.com', '3000.00', '2021/2022', 'Apr 13, 2021 01:07 pm', 'CUS2100003'),
(21, 'Yusuf lalulde', 'yusuf@gmail.com', '2500.00', '2021/2022', 'Apr 20, 2021 12:47 am', 'CUS2100005'),
(22, 'Oke Abisola', 'bisola_oak@yahoo.com', '2500.00', '2021/2022', 'Apr 23, 2021 10:23 am', 'CUS2100006'),
(23, 'Ajiwere samuel', 'samuelajiwere@yahoo.com', '2500.00', '2021/2022', 'Apr 23, 2021 04:51 pm', 'CUS2100007'),
(24, 'Akinwale johnson', 'akinwalejohnson@yahoo.com', '3000.00', '2021/2022', 'Apr 28, 2021 03:30 pm', 'CUS2100008'),
(25, 'oyemade toyin', 'toyin@yahoo.com', '2500.00', '2021/2022', 'Apr 29, 2021 02:41 pm', 'CUS2100009'),
(26, 'toki tobi', 'tobitoki@yahoo.com', '3000.00', '2021/2022', 'Jun 11, 2021 01:49 pm', 'CUS2100010'),
(27, 'toki tobi', 'tobitoki@yahoo.com', '3000.00', '2021/2022', 'Jun 11, 2021 01:49 pm', NULL),
(28, 'Ajiwere samuel', 'samuelajiwere@yahoo.com', '3000.00', '2021/2022', 'Jun 11, 2021 02:10 pm', NULL),
(29, 'Ajiwere samuel', 'samuelajiwere@yahoo.com', '3000.00', '2021/2022', 'Jun 11, 2021 02:11 pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paylog`
--

CREATE TABLE `paylog` (
  `id` int(11) NOT NULL,
  `stid` int(100) NOT NULL,
  `classname` varchar(200) NOT NULL,
  `classid` int(100) NOT NULL,
  `fulln` varchar(200) NOT NULL,
  `amt` int(100) NOT NULL,
  `sess` varchar(100) NOT NULL,
  `tems` varchar(100) NOT NULL,
  `pos` varchar(200) NOT NULL,
  `dreg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paylog`
--

INSERT INTO `paylog` (`id`, `stid`, `classname`, `classid`, `fulln`, `amt`, `sess`, `tems`, `pos`, `dreg`) VALUES
(1, 1, 'primary 2', 4, 'oyemade tiwalola', 2000, '2021/2022', 'first', 'school fees', 'Sep 29, 2021 04:47 pm'),
(2, 2, 'primary 1', 1, 'oke gabriella', 56000, '2021/2022', 'first', 'Schoolfees', 'Sep 30, 2021 12:53 pm'),
(3, 3, 'primary 1', 1, 'adelowo sheyitan', 35000, '2021/2022', 'second', 'Schoolfees', 'Sep 30, 2021 12:54 pm'),
(4, 2, 'primary 2', 4, 'tabade larry', 36000, '2021/2022', 'second', 'Schoolfees', 'Sep 30, 2021 01:04 pm'),
(5, 3, 'primary 2', 4, 'yekeen toyin', 37000, '2021/2022', 'first', 'Schoolfees', 'Sep 30, 2021 01:05 pm'),
(6, 1, 'primary 2', 2, 'Caroline bushrat', 36000, '2021/2022', 'first', 'Schoolfees', 'Sep 30, 2021 03:02 pm'),
(7, 2, 'primary 2', 2, 'bukky funbi', 56000, '2021/2022', 'second', 'Schoolfees', 'Sep 30, 2021 03:02 pm'),
(8, 3, 'primary 2', 2, 'ayo layo', 36000, '2021/2022', 'second', 'Schoolfees', 'Sep 30, 2021 03:02 pm'),
(9, 6, 'primary 2', 2, 'Akinwale gideon', 36000, '2021/2022', 'first', 'Schoolfees', 'Sep 30, 2021 03:25 pm'),
(10, 1, 'primary 1', 3, 'Ajiwere tomilola', 56000, '2021/2022', 'first', 'Schoolfees', 'Sep 30, 2021 03:55 pm'),
(11, 2, 'primary 1', 3, 'Monique shobowale', 29000, '2021/2022', 'first', 'School fees', 'Oct 4, 2021 02:20 pm'),
(12, 1, 'primary 2', 4, 'selman tunde', 36000, '2021/2022', 'first', 'Schoolfees', 'Oct 5, 2021 10:39 am');

-- --------------------------------------------------------

--
-- Table structure for table `paylogg2`
--

CREATE TABLE `paylogg2` (
  `id` int(11) NOT NULL,
  `classid` int(100) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `amt` varchar(100) NOT NULL,
  `sess` varchar(255) NOT NULL,
  `tems` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `dreg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paylogg2`
--

INSERT INTO `paylogg2` (`id`, `classid`, `classname`, `fulln`, `amt`, `sess`, `tems`, `pos`, `dreg`) VALUES
(1, 1, 'primary 1', 'oyemade tiwalola', '20000', '2021/2022', 'first', 'School fees', 'Oct 4, 2021 01:34 pm'),
(2, 1, 'primary 1', 'oke gabriella', '2000', '2021/2022', 'first', 'School fees', 'Oct 4, 2021 01:35 pm'),
(3, 1, 'primary 1', 'adelowo sheyitan', '2000', '2021/2022', 'first', 'school fees', 'Oct 4, 2021 01:35 pm'),
(4, 4, 'primary 2', 'selman tunde', '23000', '2021/2022', 'first', 'School fees', 'Oct 4, 2021 01:36 pm'),
(7, 4, 'primary 2', 'tabade larry', '23000', '2021/2022', 'first', 'School fees', 'Oct 4, 2021 02:11 pm'),
(8, 4, 'primary 2', 'yekeen toyin', '26000', '20212022', 'First', 'Schoolfee', 'Oct 4, 2021 02:13 pm');

-- --------------------------------------------------------

--
-- Table structure for table `paylogg3`
--

CREATE TABLE `paylogg3` (
  `id` int(11) NOT NULL,
  `classid` int(100) NOT NULL,
  `payidd` varchar(255) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `amt` varchar(100) NOT NULL,
  `sess` varchar(255) NOT NULL,
  `tems` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `dreg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paylogg3`
--

INSERT INTO `paylogg3` (`id`, `classid`, `payidd`, `classname`, `fulln`, `amt`, `sess`, `tems`, `pos`, `dreg`) VALUES
(1, 4, 'INV2100001', 'primary 1', 'Grainge laraba', '28000', '2021/2022', 'first', 'School fees', 'Oct 7, 2021 01:05 pm'),
(2, 4, '', 'primary 1', 'Tayo Adeyemi', '23000', '2021/2022', 'first', 'School fees', 'Oct 7, 2021 01:05 pm'),
(3, 4, '', 'primary 1', 'Dewunmi oke', '20000', '2021/2022', 'second', 'miscellaneous', 'Oct 7, 2021 01:05 pm'),
(7, 5, 'INV2100007', 'primary 2', 'helena Tubo', '26000', '2021/2022', 'first', 'School fees', 'Oct 7, 2021 02:04 pm'),
(8, 4, '', 'primary 1', 'darey adetoyin', '23000', '2021/2022', 'first', 'School fees', 'Oct 8, 2021 10:44 am');

-- --------------------------------------------------------

--
-- Table structure for table `paylogg4`
--

CREATE TABLE `paylogg4` (
  `id` int(11) NOT NULL,
  `classid` int(100) NOT NULL,
  `payidd` varchar(255) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `fulln` varchar(255) NOT NULL,
  `amt` varchar(100) NOT NULL,
  `sess` varchar(255) NOT NULL,
  `tems` varchar(255) NOT NULL,
  `pos` varchar(255) NOT NULL,
  `dreg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paylogg4`
--

INSERT INTO `paylogg4` (`id`, `classid`, `payidd`, `classname`, `fulln`, `amt`, `sess`, `tems`, `pos`, `dreg`) VALUES
(4, 6, 'INV2100004', 'primary 1', 'Akinwale mensah', '35000', '2021/2022', 'first', 'Schoolfees', 'Oct 9, 2021 01:56 pm');

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
  `plicantid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `resultfee`
--

INSERT INTO `resultfee` (`id`, `name`, `email`, `amount`, `session`, `datepaid`, `plicantid`) VALUES
(1, 'Temitope tolu', 'temitope@gmail.com', '10000', '20202021', 'Feb 23, 2021 09:52 pm', '1'),
(2, 'buhari stella', 'temilolu@yahoo.com', '10000', '20202021', 'Feb 26, 2021 12:04 pm', '9'),
(3, 'Adegeyesamson', 'adegeye@yahoo.com', '10000', '20202021', 'Feb 28, 2021 01:30 pm', '13'),
(5, 'oyemade toyin', 'toyin@yahoo.com', '10500', '20202021', 'Apr 30, 2021 04:26 pm', 'CUS2100009'),
(6, 'Oke Abisola', 'bisola_oak@yahoo.com', '10500', '20202021', 'Sep 24, 2021 11:17 am', 'CUS2100006');

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
-- Table structure for table `schoolfeed`
--

CREATE TABLE `schoolfeed` (
  `id` int(11) NOT NULL,
  `classname` varchar(80) NOT NULL,
  `admail` varchar(80) NOT NULL,
  `schoolid` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schoolfeed`
--

INSERT INTO `schoolfeed` (`id`, `classname`, `admail`, `schoolid`) VALUES
(1, 'primary 1', 'smith@yahoo.com', 2),
(2, 'primary 2', 'smith@yahoo.com', 2),
(3, 'primary 3', 'smith@yahoo.com', 2),
(4, 'primary 1', 'tejumola@yahoo.com', 3),
(5, 'primary 2', 'tejumola@yahoo.com', 3),
(6, 'primary 1', 'henrietta@yahoo.com', 4),
(7, 'primary 2', 'henrietta@yahoo.com', 4);

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
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `states` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `states`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue  '),
(8, 'Borno'),
(9, 'Cross River  '),
(10, 'Delta'),
(11, 'Ebonyi '),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'FCT '),
(16, 'Gombe'),
(17, 'Imo'),
(18, 'Jigawa'),
(19, 'Kaduna'),
(20, 'Kano'),
(21, 'Katsina'),
(22, 'Kebbi'),
(23, 'Kogi'),
(24, 'Kwara'),
(25, 'Lagos'),
(26, 'Nasarawa'),
(27, 'Niger'),
(28, 'Ogun'),
(29, 'Ondo'),
(30, 'Osun'),
(31, 'Oyo'),
(32, 'Plateau'),
(33, 'River'),
(34, 'Sokoto'),
(35, 'Taraba '),
(36, 'Yobe'),
(37, 'Zamfara');

-- --------------------------------------------------------

--
-- Table structure for table `student2`
--

CREATE TABLE `student2` (
  `id` int(11) NOT NULL,
  `classid` int(80) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `onames` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `addy` varchar(255) NOT NULL,
  `parentname` varchar(255) NOT NULL,
  `parentno` varchar(255) NOT NULL,
  `parentemail` varchar(255) NOT NULL,
  `parentpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student2`
--

INSERT INTO `student2` (`id`, `classid`, `classname`, `sname`, `onames`, `dob`, `logo`, `addy`, `parentname`, `parentno`, `parentemail`, `parentpass`) VALUES
(1, 1, 'primary 1', 'oyemade', 'tiwalola', '2009-06-29', '1635513431bisola.jpg', '12,fafunwa street, gbagada', 'Mr&Mrs oyemade', '08067432198', 'bisola23_oak@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(2, 1, 'primary 1', 'oke', 'gabriella', '6/7/2022', '', '12,dokunbo street, shomolu-lagos', 'bukunmi', '8067431290', 'gabriel@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(3, 1, 'primary 1', 'adelowo', 'sheyitan', '6/18/2023', '', '13,macaulay street,magodo-lagos', 'tayo', '8067453920', 'sheyitan@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(4, 1, 'primary 1', 'toke maks', 'tofunmi', '6/10/2023', '', 'block 2,lekki phase 1', 'tope', '8045372819', 'tofunmi@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(5, 1, 'primary 1', 'semilore', 'david', '6/12/2024', '', '16,tiwalade street,mushin-lagos', 'tade', '8045321578', 'semilore@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(7, 4, 'primary 2', 'selman', 'tunde', '7/17/2022', '', '12,tellaman  street, shomolu-lagos', 'Mr&Mrs Fashola', '8067451234', 'gabriel678@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(8, 4, 'primary 2', 'tabade', 'larry', '10/18/2023', '', '15,johnson street,magodo-lagos', 'Mr&Mrs Temitayo', '80672314678', 'merci203@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(9, 4, 'primary 2', 'yekeen', 'toyin', '2/23/2023', '', 'block 2,lekki phase 2', 'Mr&Mrs Tope', '8045372215', 'adeosi123@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(10, 4, 'primary 2', 'taiwo', 'adewale', '7/22/2024', '', '16,kinye street,mushin-lagos', 'Mr &Mrs Taiwo', '8045384512', 'funbi23@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(11, 4, 'primary 2', 'hassan', 'timi', '5/12/2024', '', '20,doherty street-lagos', 'Mr & Mrs Hassan', '8023456123', 'tamilore12@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f');

-- --------------------------------------------------------

--
-- Table structure for table `student3`
--

CREATE TABLE `student3` (
  `id` int(11) NOT NULL,
  `classid` int(80) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `onames` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `addy` varchar(255) NOT NULL,
  `parentname` varchar(255) NOT NULL,
  `parentno` varchar(255) NOT NULL,
  `parentemail` varchar(255) NOT NULL,
  `parentpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student3`
--

INSERT INTO `student3` (`id`, `classid`, `classname`, `sname`, `onames`, `dob`, `logo`, `addy`, `parentname`, `parentno`, `parentemail`, `parentpass`) VALUES
(1, 4, 'primary 1', 'Grainge', 'laraba', '2005-02-05', '1633695350IMG_20200319_093743.jpg', '45,durosinmi street ,Shomolu-Lagos.', 'Mr & Mrs Grainge', '08067564823', 'grainge@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(2, 4, 'primary 1', 'Adeyemi', 'tayo', '2021-09-28', '1633695338IMG_20200303_085319.jpg', '45,durosinmi street ,Shomolu-Lagos.', 'Mr & Mrs Adeyemi', '08067564823', 'adeyemi@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(3, 4, 'primary 1', 'oke', 'dewunmi', '2/22/2023', '', 'block 3,lekki phase 1', 'Mr&Mrs dewunmi', '8034251678', 'dewunmi@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(4, 4, 'primary 1', 'darey', 'adetoyin', '7/20/2024', '', '123,kimkola street,mushin-lagos', 'Mr &Mrs darey', '08067452314', 'darey12@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(5, 4, 'primary 1', 'cleopatra', 'simbi', '5/22/2024', '', '23,fasoro street-lagos', 'Mr & Mrs cleopatra', '08056341209', 'cleopatras@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(6, 4, 'primary 1', 'Akinwale', 'balogos', '05/25/2021', '', '67,durosinmi street, shomolu-lagos.', 'Mr & Mrs akinwale', '08034564312', 'akinwale@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(9, 5, 'primary 2', 'stellus', 'hannah', '2004-02-05', '1633695020bisola.jpg', '45,goodluck street ,Shomolu-Lagos.', 'Mr & Mrs Jeremy', '08067564823', 'jeremy@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(10, 5, 'primary 2', 'helena', 'Tubo', '2006-02-05', '1633695303IMG_20200302_071708.jpg', '125,durosinmi street ,Shomolu-Lagos.', 'Mr&Mrs Tubo', '08034564312', 'tuborenny@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f');

-- --------------------------------------------------------

--
-- Table structure for table `student4`
--

CREATE TABLE `student4` (
  `id` int(11) NOT NULL,
  `classid` int(80) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `onames` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `addy` varchar(255) NOT NULL,
  `parentname` varchar(255) NOT NULL,
  `parentno` varchar(255) NOT NULL,
  `parentemail` varchar(255) NOT NULL,
  `parentpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student4`
--

INSERT INTO `student4` (`id`, `classid`, `classname`, `sname`, `onames`, `dob`, `logo`, `addy`, `parentname`, `parentno`, `parentemail`, `parentpass`) VALUES
(1, 6, 'primary 1', 'Akinwale', 'mensah', '2021-09-28', '', '32,Ayannuga street-mushin', 'Mr&Mrs Akinwale', '08034564312', 'tajudeenakinwale@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(2, 6, 'primary 1', 'siuade', 'linda', '2013-09-27', '', '45,Ayannuga street-mushin', 'Mr & Mrs tomori', '08067453612', 'tomori@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f'),
(9, 6, 'primary 1', 'bukkylawal', 'funbi', '6/10/2022', '', 'block 8, Adeagboe , shomolu-lagos', 'Mr&Mrs bukkylawal', '8097563452', 'bukkylawal@yahoo.com', 'e965bca2d76c157ff01b483a6bc4113f');

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
-- Table structure for table `upled`
--

CREATE TABLE `upled` (
  `id` int(11) NOT NULL,
  `cusid` varchar(20) NOT NULL,
  `toup` varchar(50) NOT NULL,
  `lenk` varchar(160) NOT NULL,
  `dreg` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `admissionz`
--
ALTER TABLE `admissionz`
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
-- Indexes for table `ograde`
--
ALTER TABLE `ograde`
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
-- Indexes for table `paylog`
--
ALTER TABLE `paylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paylogg2`
--
ALTER TABLE `paylogg2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paylogg3`
--
ALTER TABLE `paylogg3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paylogg4`
--
ALTER TABLE `paylogg4`
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
-- Indexes for table `schoolfeed`
--
ALTER TABLE `schoolfeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setaz`
--
ALTER TABLE `setaz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student2`
--
ALTER TABLE `student2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student3`
--
ALTER TABLE `student3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student4`
--
ALTER TABLE `student4`
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
-- Indexes for table `upled`
--
ALTER TABLE `upled`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admissionz`
--
ALTER TABLE `admissionz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `jambrecord`
--
ALTER TABLE `jambrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logger`
--
ALTER TABLE `logger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ograde`
--
ALTER TABLE `ograde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `paylog`
--
ALTER TABLE `paylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `paylogg2`
--
ALTER TABLE `paylogg2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paylogg3`
--
ALTER TABLE `paylogg3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paylogg4`
--
ALTER TABLE `paylogg4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `resultfee`
--
ALTER TABLE `resultfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schoolfee`
--
ALTER TABLE `schoolfee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `schoolfeed`
--
ALTER TABLE `schoolfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setaz`
--
ALTER TABLE `setaz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `student2`
--
ALTER TABLE `student2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student3`
--
ALTER TABLE `student3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student4`
--
ALTER TABLE `student4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `upled`
--
ALTER TABLE `upled`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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

-- SQL Dump for AgroCulture DB

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- Database: `agroculture`

-- --------------------------------------------------------

-- Table structure for table `blogdata`
CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `blogdata`
INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(19, 'ThePhenom', 'First Blog', '<p>Its Awesome website</p>', '2018-02-25 13:09:41', 1);

-- --------------------------------------------------------

-- Table structure for table `blogfeedback`
CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `blogfeedback`
INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(19, 'Mast yarr', 'ThePhenom', 'profile0.png', '2018-02-25 13:09:54');

-- --------------------------------------------------------

-- Table structure for table `buyer`
CREATE TABLE `buyer` (
  `bid` int(100) NOT NULL,
  `bname` varchar(100) NOT NULL,
  `busername` varchar(100) NOT NULL,
  `bpassword` varchar(100) NOT NULL,
  `bhash` varchar(100) NOT NULL,
  `bemail` varchar(100) NOT NULL,
  `bmobile` varchar(100) NOT NULL,
  `baddress` text NOT NULL,
  `bactive` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `buyer` (`bid`,`bname`,`busername`,`bpassword`,`bhash`,`bemail`,`bmobile`,`baddress`,`bactive`) VALUES 
(3,`rahul d`,`rahul`,`$2y$10$Zl/9PtFMVz8aHnneM88.EOCTnWi3KR1AGNzPgCADwgiDDTo3MJ7Jy`,`a733fa9b25f33689e2adbe72199f0e62`,`rahuld@gmail.com`,`9444998183`,`pes university`,0),
(4,`deepesh`,`deepesh`,`$2y$10$6JTF8RYzbkkpxW5XlklKY.o9pA65NzIJ5DdsRrPjHj9Jx6lvraIdW`,`58a2fc6ed39fd083f55d4182bf88826d`,`deepesh@gmail.com`,`7486326289`,`PES UNIVERSITY RR CAMPUS BANASHANKARI`,0);
-- --------------------------------------------------------

-- Table structure for table `farmer`
CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT '0',
  `frating` int(11) NOT NULL DEFAULT '0',
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `farmer`
INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(3, 'Kaivalya Hemant Mendki', 'ThePhenom', '$2y$10$22ezmzHRa9c5ycHmVm5RpOnlT4LwFaDZar1XhmLRJQKGrcVRhPgti', '61b4a64be663682e8cb037d9719ad8cd', 'kmendki98@gmail.com', '8600611198', 'abcde', 0, 0, 'png', 0);

-- --------------------------------------------------------

-- Table structure for table `fproduct`
CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `fproduct`
INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `price`, `pimage`, `picStatus`) VALUES
(3, 27, 'Mango', 'Fruit', '<p>Mango raseela</p>', 500, 'Mango3.jpeg', 1),
(3, 28, 'Ladyfinger', 'Vegetable', '<p>Its veggie</p>', 1000, 'Ladyfinger3.jpg', 1),
(3, 29, 'Bajra', 'Grains', '<p>bajre di rti</p>', 400, 'Bajra3.jpg', 1),
(3, 30, 'Banana', 'Fruit', '<p>Jalgaon banana</p>', 400, 'Banana3.jpg', 1),
(3, 31, 'Banana', 'Fruit', '<p>yellaki banana</p>', 150, 'Banana3.jpg', 1);

-- --------------------------------------------------------

-- Table structure for table `likedata`
CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `likedata`
INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(19, 3);

-- --------------------------------------------------------

-- Table structure for table `mycart`
CREATE TABLE `mycart` (
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `mycart`
INSERT INTO `mycart` (`bid`, `pid`) VALUES
(3, 27),
(3, 30);

-- --------------------------------------------------------

-- Table structure for table `review`
CREATE TABLE `review` (
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `rating` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

-- Table structure for table `transaction`
CREATE TABLE `transaction` (
  `tid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `addr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table `transaction`
INSERT INTO `transaction` (`tid`, `bid`, `pid`, `name`, `city`, `mobile`, `email`, `pincode`, `addr`) VALUES
(1, 3, 28, 'sa,j,cns', 'sajc', 'sajch', 'kmendki98@gmail.com', 'sacu', 'ckaskjc');

-- --------------------------------------------------------

-- Indexes for tables
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

ALTER TABLE `buyer`
  MODIFY `bid` int(100) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `bid` (`bid`);

ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT,
  ADD PRIMARY KEY (`tid`);

-- Constraints for `buyer`
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `farmer` (`fid`);

-- Constraints for `likedata`
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);

-- AUTO_INCREMENT for tables
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `transaction`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- Triggers
-- Changing the delimiter temporarily to avoid conflicts
DELIMITER //

CREATE TRIGGER update_farmer_rating 
AFTER INSERT ON transaction 
FOR EACH ROW 
BEGIN
    DECLARE total_transactions INT;
    
    -- Count all transactions for the farmer associated with the new transaction
    SELECT COUNT(*)
    INTO total_transactions
    FROM transaction t
    JOIN fproduct p ON t.pid = p.pid
    WHERE p.fid = (SELECT fid FROM fproduct WHERE pid = NEW.pid);

    -- Update farmer's rating based on the total number of transactions
    UPDATE farmer 
    SET frating = total_transactions 
    WHERE fid = (SELECT fid FROM fproduct WHERE pid = NEW.pid);
END //

-- Reverting the delimiter back to default
DELIMITER ;

-- Stored Procedures

DELIMITER //
CREATE PROCEDURE get_farmer_total_sales(IN farmer_id INT)
BEGIN
    SELECT SUM(price) AS total_sales
    FROM fproduct fp
    JOIN transaction t ON fp.pid = t.pid
    WHERE fp.fid = farmer_id;
END //
DELIMITER ;

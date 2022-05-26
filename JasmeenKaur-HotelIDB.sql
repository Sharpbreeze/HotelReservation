
drop database if exists hotelreservation;

create database hotelreservation;

CREATE TABLE `hotelreservation`.`amenities` (
  `amenityID` INT NOT NULL,
  `Name` VARCHAR(30) NOT NULL,
  `extraCost` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`amenityID`));

CREATE TABLE `hotelreservation`.`guestlist` (
  `guestID` INT NOT NULL,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(30) NOT NULL,
  `address` VARCHAR(50) NOT NULL,
  `city` VARCHAR(30) NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `zipCode` VARCHAR(10) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`guestID`));

CREATE TABLE `hotelreservation`.`reservations` (
  `reservationID` INT NOT NULL,
  `guestID` INT NOT NULL,
  `adults` INT NOT NULL,
  `children` INT NOT NULL,
  `startDate` DATE NOT NULL,
  `endDate` DATE NOT NULL,
  `totalCost` DECIMAL(6,2) NOT NULL,
  PRIMARY KEY (`reservationID`));
  
  CREATE TABLE `hotelreservation`.`room` (
  `roomID` INT NOT NULL,
  `roomNumber` INT NOT NULL,
  `roomTypeID` INT NOT NULL,
  `ADAAccess` TINYINT(1) NOT NULL,
  PRIMARY KEY (`roomID`));
  
  CREATE TABLE `hotelreservation`.`roomtype` (
  `roomTypeID` INT NOT NULL,
  `roomType` VARCHAR(45) NOT NULL,
  `standardOcc` INT NOT NULL,
  `maxOcc` INT NOT NULL,
  `basePrice` DECIMAL(6,2) NOT NULL,
  `extraPersonCost` DECIMAL(6,0) NULL,
  PRIMARY KEY (`roomTypeID`));

CREATE TABLE `hotelreservation`.`roomamenities` (
  `roomID` INT NOT NULL,
  `amenityID` INT NOT NULL,
  PRIMARY KEY (`roomID`, `amenityID`));
  
  CREATE TABLE `hotelreservation`.`roomreservations` (
  `reservationID` INT NOT NULL,
  `roomID` INT NOT NULL,
  PRIMARY KEY (`reservationID`, `roomID`));

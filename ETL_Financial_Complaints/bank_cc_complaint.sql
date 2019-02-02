create database complaint_db;
use complaint_db;
CREATE TABLE `complaint_db`.`financial_product` (
  `ID_Product` INT NOT NULL,
  `Product` VARCHAR(100) NULL,
  `Sub_product` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Product`));
  
  CREATE TABLE `complaint_db`.`complaint_type` (
  `ID_Issue` INT NOT NULL,
  `Issue` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Issue`));
  
  CREATE TABLE `complaint_db`.`financial_company` (
  `ID_Company` INT NOT NULL,
  `Company` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_Company`));
  
  CREATE TABLE `complaint_db`.`bank_complaint` (
  `date_received` DATE NOT NULL,
  `State` CHAR(2) NULL,
  `submitted_via` VARCHAR(20) NULL,
  `date_sent_to_company` DATE NULL,
  `status` VARCHAR(45) NULL,
  `timely_response` CHAR(3) NULL,
  `consumer_disputed` CHAR(3) NULL,
  `complaint_id` BIGINT(10) NOT NULL,
  `ID_product` INT NULL,
  `ID_issue` INT NULL,
  `ID_Company` INT NULL,
  PRIMARY KEY (`complaint_id`));

CREATE TABLE `complaint_db`.`credit_card_complaint` (
  `date_received` DATE NOT NULL,
  `State` CHAR(2) NULL,
  `submitted_via` VARCHAR(20) NULL,
  `date_sent_to_company` DATE NULL,
  `status` VARCHAR(45) NULL,
  `timely_response` CHAR(3) NULL,
  `consumer_disputed` CHAR(3) NULL,
  `complaint_id` BIGINT(10) NOT NULL,
  `ID_product` INT NULL,
  `ID_issue` INT NULL,
  `ID_Company` INT NULL,
  PRIMARY KEY (`complaint_id`));
select b.date_received,
       b.complaint_id,
	   p.product,
	   sub_product,
       t.issue,
       c.company
from bank_complaint b
Join financial_product p
on p.ID_product = b.ID_product
JOIN  complaint_type t
on t.ID_issue = b.ID_issue
JOIN  financial_company c
on c.ID_company = b.ID_company;
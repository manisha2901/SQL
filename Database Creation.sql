CREATE DATABASE IF NOT EXISTS SALES;
USE SALES;
CREATE TABLE sales
(
  purchase_number INT NOT NULL auto_increment,
  date_of_purchase date NOT NULL,
  customer_id INT,
  item_code VARCHAR(10) NOT NULL
  PRIMARY KEY (purchase_number)
  );
  CREATE TABLE Customers
  (
   customer_id INT,
   first_name VARCHAR(255) ,
   last_name VARCHAR(255) ,
   email_address VARCHAR(255) ,
   number_of_complaints INT
   );
   
   DROP TABLE DeltaTest;
   USE SALES;
   SELECT * FROM sales;
   SELECT * FROM sales.sales;
   DROP TABLE sales;
   
   CREATE TABLE Sales
   (
     purchase_number INT NOT NULL auto_increment,
	date_of_purchase date NOT NULL,
	customer_id INT,
    item_code VARCHAR(10) NOT NULL,
  PRIMARY KEY(purchase_number)
 );
 ALTER TABLE Sales
   ADD FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE ;
   ALTER TABLE Sales
   DROP FOREIGN KEY sales_ibfk_1;
  CREATE TABLE customers
  (
   customer_id INT,
   first_name varchar(255),
   last_name varchar(255),
   email_address varchar(255),
   number_of_complaints INT,
   PRIMARY KEY (customer_id)
   );
   DROP TABLE Sales;
   DROP TABLE Customers;
   
CREATE TABLE customers
  (
   customer_id INT ,
   first_name varchar(255),
   last_name varchar(255),
   email_address varchar(255),
   number_of_complaints INT,
 PRIMARY KEY (customer_id) ,
 UNIQUE KEY (email_address)
   );
   
   ALTER TABLE customers
   CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;
   
   INSERT INTO customers (customer_id,first_name,last_name,email_address)
   VALUES (1,'Manisha','Trivedi','manisha.trivedi@gmail.com');
   
   SELECT * FROM customers;
   
   ALTER TABLE customers
   CHANGE column customer_id customer_id INT auto_increment;
   
   INSERT INTO customers (first_name,last_name)
   VALUES ('Harsh','Trivedi')
   
   SELECT * FROM customers;
   
   CREATE TABLE companies
   (
     company_id varchar(255),
     company_name varchar(255) DEFAULT 'X',
     headquarters_phone_number varchar(255),
     UNIQUE KEY (headquarters_phone_number)
     );
     
     DROP TABLE companies;
     
     CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
    UNIQUE KEY (headquarters_phone_number)
);
     
     ALTER TABLE Companies
     CHANGE COLUMN headquarters_phone_number headquarters_phone_number varchar(255) NULL;
     
     ALTER TABLE Companies
     MODIFY headquarters_phone_number varchar(255) NULL;
 
   
   
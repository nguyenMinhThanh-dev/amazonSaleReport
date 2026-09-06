/*
BEFORE USE THIS SCRIPT YOU MUST CREATE SCHEMA NAME BRONZE
HOW TO CREATE: CREATE SCHEMA bronze
You just need create this schema one time

This script creates table , dropping existing table if they already exist
Run this script to re-define DDL structure of "bronze" table
*/

if object_id('bronze.amazon_sale_report','U') is not null
	drop table bronze.amazon_sale_report
create table bronze.amazon_sale_report(
	idx int,
	order_id varchar(50),
	date date,
	status varchar(30),
	fulfillment varchar(25),
	sales_chanel varchar(30),
	ship_service_level varchar(25),
	style varchar(25),
	sku varchar(50),
	category varchar(25),
	size varchar(20),
	asin varchar(50),
	courier_status varchar(25),
	quantity int,
	currency varchar(20),
	amount decimal(18,2),
	ship_city varchar(50),
	ship_state varchar(50),
	ship_postal_code varchar(50),
	ship_country varchar(20),
	b2b varchar(20),
	fulfilled_by varchar(25)
)


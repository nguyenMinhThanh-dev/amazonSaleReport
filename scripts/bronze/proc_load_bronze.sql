/*
Truncate data then
Insert data to the bronze.amazon_sale_report (full load)
*/

truncate table bronze.amazon_sale_report
bulk insert bronze.amazon_sale_report
from 'D:\ecom7\amazonSaleReport_ecom7.csv' --Replace with the local path to your downloaded dataset
with (
	firstrow = 2,
	fieldterminator = ',',
	rowterminator = '0x0a',
	tablock
)

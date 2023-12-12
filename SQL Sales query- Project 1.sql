select * from [Online Retail sales]

--Checking whether we have null values in the data
select * from [Online Retail sales] where InvoiceNo is null

--deleting the null values from primary column
delete from [Online Retail sales] where InvoiceNo is null
select * from [Online Retail sales] where CustomerID is null

--Checking for quantity values
select * from [Online Retail sales] where Quantity <0

-- Updating the quantity column with chnaging the <0 values
update [Online Retail sales] set Quantity=ABS(Quantity) where Quantity <0

--Updating Description to Lower case
update [Online Retail sales] set Description=LOWER(description)

-- Deleting the Invoice no column as it is having duplicates
alter table [Online Retail sales]  drop column invoiceno

--Adding the Invoice no Column again with identity insert
alter table [Online Retail sales] add InvoiceNO int identity(1,1)



Select distinct description from [Online Retail sales]
select distinct quantity from [Online Retail sales]
Alter table [Online Retail sales] add Category Varchar(30)
select * from [Online Retail sales] where quantity <=2

--Creating  A Category Column for smoother Analysis
Update [Online Retail sales] set Category = 'Low Price Gift'  where UnitPrice>0 and unitprice<=300
Update [Online Retail sales] set Category = 'Average Gift'  where UnitPrice>300 and unitprice<=3000
Update [Online Retail sales] set Category = 'High Price Gift'  where UnitPrice>3000 and unitprice<=10000
Update [Online Retail sales] set Category = 'Expensive Gift'  where quantity >=10000

select distinct category from [Online Retail sales]


--Creating Sales column 
alter table [Online Retail sales] add Sales int
Update [Online Retail sales] set UnitPrice=UnitPrice*100
update [Online Retail sales] set Sales =UnitPrice*Quantity






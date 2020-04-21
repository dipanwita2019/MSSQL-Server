/*Exercise - 1:*/

SELECT VendorContactFName, VendorContactLName, VendorName from AP.dbo.Vendors order by 2,1

/*Exercise - 2:*/

select InvoiceNumber AS Number, InvoiceTotal AS Total , PaymentTotal + CreditTotal AS Credits , InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance from 
AP.dbo.Invoices 

/*Exercise - 3:*/


Select VendorContactLName + ',' + VendorContactFName AS FullName from AP.dbo.Vendors order by VendorContactLName,VendorContactFName

/*Exercise - 4:*/


select InvoiceTotal ,InvoiceTotal/10 AS [10 %] , InvoiceTotal + InvoiceTotal/10  AS [PLUS] from AP.dbo.Invoices where InvoiceTotal - CreditTotal - PaymentTotal >1000 order by InvoiceTotal DESC

/*Exercise - 5:*/

select InvoiceNumber AS Number, InvoiceTotal AS Total , PaymentTotal + CreditTotal AS Credits , InvoiceTotal - (PaymentTotal + CreditTotal) AS Balance from 
AP.dbo.Invoices where InvoiceTotal BETWEEN 500 and 10000 


/*Exercise - 6:*/

Select VendorContactLName + ',' + VendorContactFName AS FullName from AP.dbo.Vendors where left(VendorContactLName,1) in ('A','B','C', 'D') order by VendorContactLName,VendorContactFName 


/*Exercise - 7:*/








CREATE TABLE [dbo].[Table]
(
	[customerID] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [customerName] VARCHAR(100) NOT NULL, 
    [password] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(50) NULL, 
    [phoneNum] VARCHAR(50) NULL
)

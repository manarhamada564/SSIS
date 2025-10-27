CREATE DATABASE SSIS;
GO
use SSIS;
GO
CREATE TABLE Source_Table (
    FinanceKey INT,
    DateKey INT,
    OrganizationKey INT,
    DepartmentGroupKey INT,
    ScenarioKey INT,
    AccountKey INT,
    Amount DECIMAL(10, 2),
    Date DATETIME
);
GO
INSERT INTO Source_Table (FinanceKey, DateKey, OrganizationKey, DepartmentGroupKey, ScenarioKey, AccountKey, Amount, Date)
VALUES 
(1, 20101229, 3, 1, 1, 60, 22080, '2010-12-29 00:00:00'),
(2, 20101229, 3, 1, 2, 60, 20200, '2010-12-29 00:00:00'),
(3, 20101229, 3, 1, 2, 61, 2000, '2010-12-29 00:00:00'),
(4, 20101229, 3, 1, 1, 61, 2208, '2010-12-29 00:00:00'),
(5, 20101229, 3, 1, 1, 62, 1546, '2010-12-29 00:00:00'),
(6, 20101229, 3, 1, 2, 62, 1800, '2010-12-29 00:00:00'),
(7, 20101229, 3, 1, 2, 65, 380, '2010-12-29 00:00:00'),
(8, 20101229, 3, 1, 1, 65, 378, '2010-12-29 00:00:00'),
(9, 20101229, 3, 1, 1, 66, 344, '2010-12-29 00:00:00'),
(10, 20101229, 3, 1, 2, 66, 380, '2010-12-29 00:00:00');
GO
CREATE TABLE Target_Table (
    FinanceKey INT,
    DateKey INT,
    OrganizationKey INT,
    DepartmentGroupKey INT,
    ScenarioKey INT,
    AccountKey INT,
    Amount DECIMAL(10, 2),
    Date DATETIME,
    IsDeleted BIT
);
GO
SELECT FinanceKey, DateKey, OrganizationKey, DepartmentGroupKey, ScenarioKey, AccountKey, Amount, Date FROM source_table;
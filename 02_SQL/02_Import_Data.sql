USE ManufacturingAnalytics;
GO

-- Import Production Lines
BULK INSERT dbo.ProductionLines
FROM 'C:\ManufacturingProject_CSVs\ProductionLines.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    FORMAT = 'CSV'
);

-- Import Vehicle Models
BULK INSERT dbo.VehicleModels
FROM 'C:\ManufacturingProject_CSVs\VehicleModels.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    FORMAT = 'CSV'
);

-- Import Defect Categories
BULK INSERT dbo.DefectCategories
FROM 'C:\ManufacturingProject_CSVs\DefectCategories.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    FORMAT = 'CSV'
);

-- Import Production Runs
BULK INSERT dbo.ProductionRuns
FROM 'C:\ManufacturingProject_CSVs\ProductionRuns.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    FORMAT = 'CSV'
);

-- Import Defect Records
BULK INSERT dbo.DefectRecords
FROM 'C:\ManufacturingProject_CSVs\DefectRecords.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    CODEPAGE = '65001',
    FORMAT = 'CSV'
);
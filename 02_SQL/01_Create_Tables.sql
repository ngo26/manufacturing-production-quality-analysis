USE ManufacturingAnalytics;
GO

CREATE TABLE ProductionLines (
    LineID INT PRIMARY KEY,
    LineName VARCHAR(100) NOT NULL,
    Department VARCHAR(50) NOT NULL
);

CREATE TABLE VehicleModels (
    ModelID INT PRIMARY KEY,
    ModelName VARCHAR(100) NOT NULL,
    VehicleClass VARCHAR(50) NOT NULL
);

CREATE TABLE DefectCategories (
    DefectCategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);

CREATE TABLE ProductionRuns (
    ProductionID INT PRIMARY KEY,
    ProductionDate DATE NOT NULL,
    LineID INT NOT NULL,
    ModelID INT NOT NULL,
    UnitsProduced INT NOT NULL,
    UnitsInspected INT NOT NULL,
    UnitsPassed INT NOT NULL,
    UnitsFailed INT NOT NULL,

    FOREIGN KEY (LineID) REFERENCES ProductionLines(LineID),
    FOREIGN KEY (ModelID) REFERENCES VehicleModels(ModelID)
);

CREATE TABLE DefectRecords (
    DefectID INT PRIMARY KEY,
    ProductionID INT NOT NULL,
    DefectCategoryID INT NOT NULL,
    DefectCount INT NOT NULL,

    FOREIGN KEY (ProductionID) REFERENCES ProductionRuns(ProductionID),
    FOREIGN KEY (DefectCategoryID) REFERENCES DefectCategories(DefectCategoryID)
);
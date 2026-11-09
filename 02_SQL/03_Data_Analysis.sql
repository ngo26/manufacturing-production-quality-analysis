-- 1. Overall Production and Quality Performance

SELECT
    SUM(UnitsProduced) AS TotalUnitsProduced,
    SUM(UnitsPassed) AS TotalUnitsPassed,
    SUM(UnitsFailed) AS TotalUnitsFailed,
    CAST(
        SUM(UnitsFailed) * 100.0 / SUM(UnitsProduced)
        AS DECIMAL(5,2)
    ) AS FailureRatePercent
FROM dbo.ProductionRuns;

-- 2. Production Line Performance

SELECT
    pl.LineName,
    SUM(pr.UnitsProduced) AS TotalUnitsProduced,
    SUM(pr.UnitsFailed) AS TotalUnitsFailed,
    CAST(
        SUM(pr.UnitsFailed) * 100.0 / SUM(pr.UnitsProduced)
        AS DECIMAL(5,2)
    ) AS FailureRatePercent
FROM dbo.ProductionRuns pr
JOIN dbo.ProductionLines pl
    ON pr.LineID = pl.LineID
GROUP BY pl.LineName
ORDER BY FailureRatePercent DESC;

-- 3. Defect Analysis by Category

SELECT
    dc.CategoryName,
    SUM(dr.DefectCount) AS TotalDefects
FROM dbo.DefectRecords dr
JOIN dbo.DefectCategories dc
    ON dr.DefectCategoryID = dc.DefectCategoryID
GROUP BY dc.CategoryName
ORDER BY TotalDefects DESC;

-- 4. Defects by Production Line and Category

SELECT
    pl.LineName,
    dc.CategoryName,
    SUM(dr.DefectCount) AS TotalDefects
FROM dbo.DefectRecords dr
JOIN dbo.ProductionRuns pr
    ON dr.ProductionID = pr.ProductionID
JOIN dbo.ProductionLines pl
    ON pr.LineID = pl.LineID
JOIN dbo.DefectCategories dc
    ON dr.DefectCategoryID = dc.DefectCategoryID
GROUP BY
    pl.LineName,
    dc.CategoryName
ORDER BY
    pl.LineName,
    TotalDefects DESC;

-- 5. Monthly Production and Failure Trends

SELECT
    YEAR(ProductionDate) AS ProductionYear,
    MONTH(ProductionDate) AS ProductionMonth,
    SUM(UnitsProduced) AS TotalUnitsProduced,
    SUM(UnitsFailed) AS TotalUnitsFailed,
    CAST(
        SUM(UnitsFailed) * 100.0 / SUM(UnitsProduced)
        AS DECIMAL(5,2)
    ) AS FailureRatePercent
FROM dbo.ProductionRuns
GROUP BY
    YEAR(ProductionDate),
    MONTH(ProductionDate)
ORDER BY
    ProductionYear,
    ProductionMonth;

-- 6. Vehicle Model Quality Performance

SELECT
    vm.ModelName,
    vm.VehicleClass,
    SUM(pr.UnitsProduced) AS TotalUnitsProduced,
    SUM(pr.UnitsFailed) AS TotalUnitsFailed,
    CAST(
        SUM(pr.UnitsFailed) * 100.0 / SUM(pr.UnitsProduced)
        AS DECIMAL(5,2)
    ) AS FailureRatePercent
FROM dbo.ProductionRuns pr
JOIN dbo.VehicleModels vm
    ON pr.ModelID = vm.ModelID
GROUP BY
    vm.ModelName,
    vm.VehicleClass
ORDER BY
    FailureRatePercent DESC;

-- 7. Vehicle Class Quality Performance

SELECT
    vm.VehicleClass,
    SUM(pr.UnitsProduced) AS TotalUnitsProduced,
    SUM(pr.UnitsFailed) AS TotalUnitsFailed,
    CAST(
        SUM(pr.UnitsFailed) * 100.0 / SUM(pr.UnitsProduced)
        AS DECIMAL(5,2)
    ) AS FailureRatePercent
FROM dbo.ProductionRuns pr
JOIN dbo.VehicleModels vm
    ON pr.ModelID = vm.ModelID
GROUP BY vm.VehicleClass
ORDER BY FailureRatePercent DESC;

-- 8. Defects by Vehicle Model and Category

SELECT
    vm.ModelName,
    dc.CategoryName,
    SUM(dr.DefectCount) AS TotalDefects
FROM dbo.DefectRecords dr
JOIN dbo.ProductionRuns pr
    ON dr.ProductionID = pr.ProductionID
JOIN dbo.VehicleModels vm
    ON pr.ModelID = vm.ModelID
JOIN dbo.DefectCategories dc
    ON dr.DefectCategoryID = dc.DefectCategoryID
GROUP BY
    vm.ModelName,
    dc.CategoryName
ORDER BY
    vm.ModelName,
    TotalDefects DESC;
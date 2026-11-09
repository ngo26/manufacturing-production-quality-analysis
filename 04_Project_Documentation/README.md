# Manufacturing Production & Quality Analysis

## Project Overview

This project analyzes manufacturing production and quality performance using Excel, Microsoft SQL Server, SSMS, and Tableau.

The goal was to evaluate production output, identify quality trends, compare failure rates across production lines and vehicle models, and analyze defect categories.

The project demonstrates data cleaning, data validation, relational database design, SQL querying, data analysis, and interactive dashboard development.

**Dataset:** All data is synthetic and was created for portfolio and learning purposes. It does not represent actual company production data.

## Tools & Technologies

### Microsoft Excel
- Inspected and organized datasets.
- Applied validation formulas to check for duplicate records, missing values, and inconsistent production quantities.
- Used COUNTIF formulas to verify IDs against reference tables.

### Microsoft SQL Server and SQL Server Management Studio (SSMS)
- Designed a relational database with five related tables.
- Imported 1,194 records into the database.
- Wrote SQL queries using JOINs, aggregations, GROUP BY, ORDER BY, and date functions to analyze production and quality performance.

### Tableau Desktop
- Connected Tableau to the SQL Server database.
- Developed KPI cards and visualizations to track production output, failure rates, and defect trends.
- Created an interactive dashboard with a production line filter.

## Dataset Overview

The project uses five related tables containing a total of 1,194 synthetic records.

| Table | Records | Description |
|---|---:|---|
| ProductionRuns | 360 | Production output and quality results |
| DefectRecords | 819 | Defect counts by production run and category |
| ProductionLines | 5 | Production line reference data |
| VehicleModels | 4 | Vehicle model and vehicle class information |
| DefectCategories | 6 | Defect category reference data |
| **Total** | **1,194** | |

The dataset covers production activity from January through December 2025.

## SQL Analysis

Eight SQL analyses were developed to examine:

1. Overall production and quality performance.
2. Production line performance.
3. Defect counts by category.
4. Defects by production line and category.
5. Monthly production and failure trends.
6. Vehicle model quality performance.
7. Quality performance by vehicle class.
8. Defects by vehicle model and category.

## Key Findings

- **Total units produced:** 24,695
- **Total units passed:** 23,574
- **Total units failed:** 1,121
- **Overall failure rate:** 4.54%
- **Highest production line failure rate:** Paint Line at 6.54%.
- **Lowest production line failure rate:** Final Inspection at 2.60%.
- **Most common defect category:** Assembly Fit with 261 defects.
- **Second most common defect category:** Paint Finish with 258 defects.
- **Highest monthly failure rate:** November at 5.52%.
- **Lowest monthly failure rate:** September at 3.82%.
- **Highest vehicle model failure rate:** Model Alpha at 5.27%.
- **Lowest vehicle model failure rate:** Model Delta at 4.01%.
- **Heavy Duty failure rate:** 4.75%.
- **Medium Duty failure rate:** 4.32%.

## Tableau Dashboard

The interactive Tableau dashboard includes:

- KPI cards for total units produced, passed, failed, and overall failure rate.
- Monthly failure rate trends.
- Failure rate comparisons across production lines.
- Failure rate comparisons across vehicle models.
- Defect counts by category.
- An interactive production line filter.

## Project Structure

```text
Manufacturing_Production_Quality_Analysis/
│
├── 01_Data/
│   ├── Manufacturing_Production_Quality_Starter.xlsx
│   ├── ProductionRuns.csv
│   ├── DefectRecords.csv
│   ├── ProductionLines.csv
│   ├── VehicleModels.csv
│   └── DefectCategories.csv
│
├── 02_SQL/
│   ├── 01_Create_Tables.sql
│   ├── 02_Import_Data.sql
│   └── 03_Data_Analysis.sql
│
├── 03_Tableau/
│   ├── Manufacturing_Production_Quality_Dashboard.twb
│   └── Manufacturing_Production_Quality_Dashboard.twbx
│
└── 04_Project_Documentation/
    └── README.md
```

## Limitations

- All data is synthetic and intended for demonstration and learning purposes.
- Findings do not represent actual manufacturing or company performance.
- Defect counts and units failed are aligned by the dataset's design. Defect totals should not be interpreted as distinct defective units.
- The analysis is descriptive and identifies patterns and differences but does not establish the causes of failures.

## Skills Demonstrated

Excel data validation, SQL, relational database design, data analysis, data cleaning, Tableau visualization, dashboard development, and communicating analytical findings.









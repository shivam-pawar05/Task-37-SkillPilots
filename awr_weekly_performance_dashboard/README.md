# Weekly Performance-Monitoring Dashboard in Power BI using AWR Data

## Objective
Create a weekly performance dashboard using AWR-derived data, with visuals for CPU, I/O, and wait events, then publish it for stakeholder access.

## Contents
- `data/awr_performance_sample.csv`: generated demonstration data, NOT real Oracle AWR output.
- `powerbi/dashboard_build_guide.md`: import, visuals, slicers, validation, and publishing steps.
- `powerbi/measures.dax`: example DAX measures.
- `sql/awr_export_reference.sql`: DBA-oriented query references.
- `docs/weekly_report_template.md`: weekly report checklist.

## Four implementation steps
1. Export approved AWR-derived data to CSV.
2. Import the CSV into Power BI.
3. Design visuals for CPU, I/O, and wait events.
4. Publish the dashboard for stakeholder access.

## Important
Oracle AWR / Diagnostics Pack use may require an appropriate Oracle Diagnostics Pack license. Confirm licensing, permissions, and extraction approach with the DBA. The supplied CSV is synthetic sample data and must not be treated as production measurements.

## Quick start
Open Power BI Desktop > Get Data > Text/CSV > select `data/awr_performance_sample.csv`. Follow the dashboard guide. Save your report as a `.pbix` from Power BI Desktop.

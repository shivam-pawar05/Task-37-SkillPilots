# Power BI Dashboard Build Guide

## Import
1. Open Power BI Desktop.
2. Select Home > Get Data > Text/CSV.
3. Select `data/awr_performance_sample.csv`.
4. Set `snapshot_time` to Date/Time; CPU, I/O, and wait-time columns to Decimal Number; `wait_event` to Text.
5. Select Close & Apply.

## Suggested visuals
- KPI card: Average CPU utilization (%).
- KPI card: Average I/O operations per second.
- Line chart: CPU utilization over time.
- Line chart: I/O operations per second over time.
- Bar chart: Total wait time by wait event.
- Table: snapshot time, CPU %, I/O rate, wait event, wait time.
- Slicers: date/week and wait event.

## DAX measures
Copy measures from `measures.dax` into Power BI's New Measure editor. Replace the table name if Power BI names the imported table differently.

## Validate
Check date range, missing values, row counts, slicer interactions, and selected totals against the source CSV. Replace synthetic data with an approved AWR-derived extract before operational use.

## Publish
1. Save as `Weekly_Performance_Monitoring.pbix`.
2. Select Home > Publish and sign in.
3. Select the approved workspace.
4. Configure credentials/refresh if needed.
5. Share with authorized stakeholders using workspace/report permissions.

This ZIP does not contain a prebuilt PBIX file; create and save the PBIX using Power BI Desktop.

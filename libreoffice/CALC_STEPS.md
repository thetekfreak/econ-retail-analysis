# LibreOffice Calc prep (save as `fred_clean.ods` and export `data/fred_clean.csv`)
1. Open `data/fred_monthly.csv`. Format column A as dates.
2. Add `retail_growth` = `=(B3/B2-1)*100` (month-over-month %), fill down.
3. Add `d_unrate` = `=C3-C2` and `d_fedfunds` = `=D3-D2`.
4. Summary block: `=AVERAGE()`, `=STDEV()`, `=CORREL()` for each pair.
5. Insert line charts for each series. Record row count here: TODO

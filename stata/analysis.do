* Retail sales growth regression. Run from repo root: do stata/analysis.do
clear all
import delimited "data/fred_monthly.csv", clear
gen mdate = mofd(date(date, "YMD"))
format mdate %tm
tsset mdate
gen retail_growth = 100 * (rsafs / L.rsafs - 1)
gen d_unrate = D.unrate
gen d_fedfunds = D.fedfunds
summarize retail_growth unrate fedfunds
regress retail_growth d_unrate d_fedfunds, robust
estat bgodfrey, lags(1/6)
predict resid, residuals
tsline resid, title("OLS residuals")
graph export "report/stata_residuals.png", replace
* Optional: ssc install estout, then esttab using report/ols.rtf

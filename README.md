# Retail Sales vs. Unemployment and Rates (FRED data)

Monthly U.S. data from FRED, prepped in LibreOffice Calc, modeled in Stata (OLS) and EViews (VAR forecast).

| Step | Tool | File |
|---|---|---|
| Download + merge | Python (optional) or Calc | `python/fetch_fred.py`, `libreoffice/` |
| Regression | Stata | `stata/analysis.do` |
| VAR + 12-month forecast | EViews | `eviews/var_forecast.prg` |
| Report | LibreOffice Writer | `report/` |

## Series (FRED IDs)
- `RSAFS` Advance Retail Sales, `UNRATE` Unemployment Rate, `FEDFUNDS` Federal Funds Rate

## Findings (fill in from your actual output, don't pre-write)
- Date range / rows: TODO
- OLS coefficients and R-squared: TODO
- Forecast and error: TODO

Data source: Federal Reserve Bank of St. Louis, FRED.

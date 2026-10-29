' VAR model and 12-month forecast. Run in EViews: File > Open > Program, then Run.
wfopen(type=text) "data\fred_monthly.csv" @freq m
series retail_growth = 100 * (rsafs / rsafs(-1) - 1)
series d_unrate = d(unrate)
series d_fedfunds = d(fedfunds)
' Unit root checks
retail_growth.uroot(adf)
d_unrate.uroot(adf)
d_fedfunds.uroot(adf)
' VAR with lag order chosen from the lag-length table
var v1.ls 1 4 retail_growth d_unrate d_fedfunds
v1.laglen(12)
' 12-month forecast
pagestruct(end=@last+12)
v1.makemodel(m1)
m1.solve
plot retail_growth retail_growth_0

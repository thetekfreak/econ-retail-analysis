"""Download FRED series and merge to data/fred_monthly.csv (no API key needed).
Usage: python fetch_fred.py
"""
import csv, io, urllib.request
SERIES = ["RSAFS", "UNRATE", "FEDFUNDS"]
START = "2010-01-01"
data = {}
for s in SERIES:
    url = f"https://fred.stlouisfed.org/graph/fredgraph.csv?id={s}&cosd={START}"
    rows = csv.reader(io.StringIO(urllib.request.urlopen(url).read().decode()))
    next(rows)
    for d, v in rows:
        if v not in (".", ""):
            data.setdefault(d, {})[s] = v
with open("../data/fred_monthly.csv", "w", newline="") as f:
    w = csv.writer(f)
    w.writerow(["date"] + [s.lower() for s in SERIES])
    for d in sorted(data):
        if all(s in data[d] for s in SERIES):
            w.writerow([d] + [data[d][s] for s in SERIES])
print("wrote", len(data), "dates")

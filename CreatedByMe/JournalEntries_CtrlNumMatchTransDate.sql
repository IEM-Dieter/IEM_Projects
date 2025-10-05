SELECT *
FROM ledger_mst
WHERE DATEPART(Year, trans_date) = 2025
AND DATEPART(Month, trans_date) = 6
AND control_period > 6;

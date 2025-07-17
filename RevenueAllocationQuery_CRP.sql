USE [UPASS_App]

DECLARE	  @StartDate			DATE = '2025-01-01'
		, @EndDate				DATE = '2025-05-30'

SELECT	  g.co_num
		, SUM(dom_amount) AS acct_total
	FROM _IEM_glco_table g
		JOIN ledger_mst l
			ON l.trans_num = g.trans_num
		WHERE l.acct IN ('40000', '50000', '50300', '58000', '58500')
				AND CAST(l.trans_date AS DATE) BETWEEN @StartDate AND @EndDate
			GROUP BY g.co_num
				HAVING ABS (SUM(dom_amount) )>1
					ORDER BY g.co_num
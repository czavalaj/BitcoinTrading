CREATE VIEW cryptoPrices AS 
SELECT
	id, 
	CAST(timestampp AS DATE) as tradingDate,
	id_coin,
	priceUSD,
	AVG(priceUSD) OVER (ORDER BY timestampp ASC
		ROWS BETWEEN 120 PRECEDING AND CURRENT ROW) AS moving_avg
FROM cryptoPrices_st
GO
# Bitcoin Trading
The finance team needs to analyze the behavior of bitcoin to know if it is feasible to invest in that currency.
The task is to obtain this information in an automated way and be prepared for sudden changes that must be made at the moment. 

The CoinGecko API allows us to retrieve cryptocurrency data such as price, volume, market cap, and exchange data from CoinGecko using code.

We are going develop an automated and scalable process to obtain the average of each 5 days (moving average) of the price of bitcoin in the first quarter of 2022.

## Process

1. Get a list of all coins with id, name and symbol using crypto API (https://www.coingecko.com/api/documentations/v3#/). File: **dataCollect**.

image.png

2. Get a price of bitcoin in usd and by date of the fisrts quarter of 2022. File: **dataCollect**, **dbSQLServer**, **dataTransformation** and **windowView**

image.png

3. Consume the data previously persisted in the database to make a window/partition function for every 5 days and visualize in a graph.

## Visualization 
https://public.tableau.com/views/BitcoinTrading_16565770435430/Dashboard1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link
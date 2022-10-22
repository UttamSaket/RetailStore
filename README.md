# RetailStore
Project on a Retail companies having 45 stores across country and facing issues with inventory

Using graphs in R :

Firstly, I created Box plot to observe if weekly sales affcted by unemployment rate? There are 45 stores and I have created 5 groups @ 9 stroes each to have clutter free graph. 

![image](https://user-images.githubusercontent.com/116080504/197348901-b8e7f62a-b311-4fb5-890e-3105571313e1.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Then, Line chart is created using GGPlot in R to observe if the weekly sales show a seasonal trend & when? Subsequently
to find out what could be the reason?

![image](https://user-images.githubusercontent.com/116080504/197349287-3a951fa7-0c65-4bec-aa8f-5fe99a1596d5.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Again, I created Line chart to notice does temperature affect the weekly sales in any manner? This time, I have grouped all 45 staores in 9 groups for better & clean graph.

![image](https://user-images.githubusercontent.com/116080504/197349373-f7988699-3248-4a2a-b982-020be7a78f5d.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Again, I created Line chart using geom line to see how is the CPI affecting the weekly sales of variuos stores?

![image](https://user-images.githubusercontent.com/116080504/197349701-68873a6e-4796-4bf7-a19b-2ddce7dc4d61.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Now, in order to forecast the sales, I have filtered out the sales data of store no. 1 & converted the data frame into time series data.
Now, plotting the time series data.

![image](https://user-images.githubusercontent.com/116080504/197350366-d47cbced-3a62-4f87-8ae4-2d4f43e84c22.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Removing seasonality (variance) from the above time series data and plotting the same with a trend line.

![image](https://user-images.githubusercontent.com/116080504/197350513-0520be2a-f3f5-431a-88a3-049c1ee757df.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Now, the element of trend is also removed from the time series data. The trend line in the graph shows that there is equal distance between the trend line (mean) and the data points. Hence, it is confirmed that mean is not a function of time here.

![image](https://user-images.githubusercontent.com/116080504/197350596-198a56c7-175a-4d98-b7a8-5ee00fbfe821.png)

----------------------------------------------------------------------------------------------------------------------------------------------

Now, plotting ACF to get the value of "q", an essential element to calculate before applying ARIMA model in forcasting sales.

![image](https://user-images.githubusercontent.com/116080504/197350836-5bd5990d-8b91-4c34-87b7-bd22ee93470c.png)

----------------------------------------------------------------------------------------------------------------------------------------------
Also, plotting PACF to get the value of "p", another essential element to calculate before applying ARIMA model in forcasting sales.

![image](https://user-images.githubusercontent.com/116080504/197350989-81a3bd90-cc42-4225-baf8-47beee933fab.png)

----------------------------------------------------------------------------------------------------------------------------------------------
Finally, graph is ready with the forecasted sales value of store no. 1 in dotted line along with the historical sales data in bold line.

![image](https://user-images.githubusercontent.com/116080504/197351660-210f5bae-a5af-412b-8645-41e957d68e7f.png)






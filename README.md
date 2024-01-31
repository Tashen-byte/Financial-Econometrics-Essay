# This repository contains my submission of the essay assignment for the Financial Econometrics 871 module
The final essay document can be found above, _Essay.pdf_, which needs to be marked.

All my work to reach the final product can be found in the _Essay_ folder above, created using the _Texevier_ function in R. 
## Essay Folder Breakdown
- The _ReadMe.rmd_ file contains my logical flow of how I interpreted the project. This same thought process will be provided below.
- The _data_ folder contains the relevant data for the topic of interest.
- The _code_ folder contains all the code that was sourced in the final essay. The majority of these scripts were sourced in the essay.

I encourage the reader to read through the _ReadMe.rmd_ file in the _Essay_ folder, as it contains additional information about why certain data wrangling processes was completed.

Next, I will be providing a run-through of each section of the paper and what I did to the data.
# Introduction
Here I simply provide a concise breakdown of what the paper contains and what it aims to achieve.
No data handling was done here.

# South Africa
I felt that some background information needed to be provided to the reader about the state of South Africa. This supports the need for the MV-GARCH model to be used, as volatility in this nation is often high and unexpected.
Once again, not data handling was done here.

# Literature Review
This section appraises the research that has been completed in this field - financial variance estimation. Acknowledgement needs to be made to the founders of the ARCH and GARCH models, and the researchers who have utilised these models for variance estimations. Hassan and Malik's paper serves as the basis for my paper, as they utilise the BEKK parametrisation to understand sector volatility in the USA. 
I have checked several journals and have not found any papers that have utilised this method for understanding South Africa's sector volatility. 
No data handling was done here. 

# Data
The _ReadMe.rmd_ markdown file in the _Essay_ folder provides the code that was used for the rest of the paper. 
The _LCL_Stock_Returns_ data set was used in this paper, as it contained an abundance of daily local equity returns that could be grouped by _Superindustryname_Pty_, which is better known as Sector. The property Secotr label was replaced 
The _Returns_ column in the data set gave the daily returns for each unique equity listed. The returns calculation must've been calculated on the difference between the closing prices each day.
In the ReadMe file, this section includes the Period, NA's, Returns, Graph and Time Series headers. I will cover what was accomplished in each section. 

### Period
The data set had to be reduced, due to computational limitations. I restricted the data set to work with the daily returns from 2013-2023. 

### NA's
The _Returns_ column contained a lot of missing values. 
The code in the first check of this section filters for all the missing data pieces and creates another column to give the year that it is present. This logic is followed by the second chunk, in this section, as I now want to see how many pieces of data are missing in the reduced data set. 
There is a maximum of 5 years worth of missing data for some local equities listed. Due to equities being listed and de-listed over time, it does not make sense to fill these missing values with data, as this will give a value for equity that is not listed. This was my reasoning for simply excluding all the missing data. 
Following this reasoning, the last chunk filters put all the nA's and convert all the _Property_ names in the _Superindustryname_Pty_ to _Financials_. This leaves three sectors in the data set in the _Superindustryname_Pty_ column, namely Financials, Industrials and Resources. 

### Returns
Since the _Returns_ column provides the daily change in the listed price of each listed equity, I want to establish the daily change in price for each sector. Logically, it makes sense to track the change in price for each sector over time, as sector price changes could be due to sector-specific volatility. Therefore, tracking the overall change in price for each sector can help identify shocks to the sector. The first chunk in this section creates the cumulative return of each industry's change in daily price. 
The last chunk updates the data set. It does this by taking the difference in the daily cumulative returns for the entire period. This allows one to track the change in price over time. 

### Graph
A graph is needed to illustrate the difference in the daily cumulative returns. This can be viewed in Figure 2 in the Essay. However, each sector contained a handful of outliers that made the graph overlook all the data. To deal with this, the outliers were capped for the purpose of viewing the change in sector price for the period. This restricted data set can be viewed in Figure 2 in the Essay. 
The ReadMe file contains the standard deviation, as a motivation for why the outliers were capped at 13. The restricted and unrestricted data sets were saved and carried through the entire essay.

### Time Series
Under the **Data** section of the essay, I wanted to add a descriptive table about the data sets. To achieve this, the data needed to be converted to a time series format. Once this was completed for both data sets, descriptive Tables 4.1 and 4.2 were added to the essay. The code for these tables was saved in the _code_ folder, as it needed to be sourced in the essay. 

Furthermore, the MarchTest was done on both time series data sets to identify if the MV-GARCH model is necessary (this is mentioned in the essay). Significant p-values in both tests indicate that the BEKK11 model can be used. 
The BEKK11 functions are commented in the chunk, as running through both of these functions took a painful amount of time. You may definitely run through the code, but please be warned about the time it takes. 

# Empircal Results
This section of the paper provides the BEKK results in tables 5.1 and 5.2. The output from the models was manually saved in the data frame and saved in the _code_ folder. However, I copied the all of this output into the texevier file. 
This section discusses the empirical results from both tables and is the crux of the paper.

# Conclusion
The conclusion summarises the findings of the paper and provides suggestions for further research on this paper. 



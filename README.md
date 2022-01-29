# Playstore_data_analysis

## Overview
1. In this project, the distribution of applications in relation to categories and genres and whether they're paid or free is explored.
2. Information on the most downloaded, rated and reviewed apps are obtained.
3. Derived conclusions can help app developers understand the possible reach and reception their application can get.

## Objectives
The aim is to build dashboards to visualise the distribution of application downloads, purchases and reviews across categories and genres.

## Deliverables
Demand: dashboard that summarises application downloads
Value: Understand which apps, categories and genres are the most popular in terms of downloads.
Deliverable: dashboard visualising disribution of downloads across genres and categories containing metrics related to download numbers.

Demand: dashboard with information on money spent on applications and review activity of applications.
Value: Understand which are the groups where money is spent the most as well as the customer activities in terms of reviews.
Deliverable: dashboard visualising disribution of amount spent and total reviews (per application)  across genres and categories.

## Data Preparation
Data was obtained from googleplaystores.csv dataset from kaggle. (INFORMATION ON TIME OF DATA RETRIEVAL)

The data transformation and cleaning was done in PostgreSQL. Data with null values were removed for columns with few null values. Rating column contained large amount of null values and they were replaced with zeros. There were certain columns such as price and installs, where numerical information was in text format (with some additional string values). The string values were removed and the data were converted to double precision type. The data was exported into a new table (playstore_data_final) which was then exported to Tableau for visualisation.

The SQL queries can be found here (LINK).

## Data Visualisation
Data visualisation was done in Tableau. The necessary dashboards were designed.

<!--- app download dashboard embed  --->

https://public.tableau.com/views/APPDOWNLOADSDASHBOARD/appdownloadsdb?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link


<!--- app performance dashboard embed  --->

https://public.tableau.com/views/APPPERFORMANCEDASHBOARD/appperf_db?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

## Conclusions
1. The category with the most downloads is Games and the genre with the most downloads is Communication.
2. Subway Surfers (Game) followed by Instagram are the most downloaded applications.
3. Only 7.36% of the apps are paid.
4. The category were the most money is spent is Finance and the genre were the most money is spent is Finance.
5. Instagram is the most reviewed application.
6. Games category has the most reviews.
7. Communication genre has the most reviews.
8. Categories and genres are loosely similar.

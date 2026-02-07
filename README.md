# Siobhan Gallacher
## Portfolio
---
Ratings Analysis Spreadsheet and Dashboard 
---

## Business Problem

The business has spreadsheet listing product review and rating information but needs this to be displayed in a clear, visualised way. Their reviews lack consistency, with numerous 1 star ratings and 5 star ratings. They want to clearly visualise their average review per product category and see any other factors which could affect review ratings.

## Spreadsheet Overview

The raw spreadsheet has various columns that could be used to clarify and understand ratings. 
First, I cleaned the data by checking for duplicates, adjusting column widths and checking data such as dates are formatted correctly. For clarity, I changed the ‘Total Sales’ and ‘Sales Price’ to a currency value.I then applied a filter as a means to sort information within the columns, and using this, I checked for any blanks or null values within the individual columns. 

Ratings are shown in the column on a 1 to 5 score so I decided to add a column labelling them as various categories: Excellent, Good, Average, Poor, Unsatisfactory. I did this using an if statement (=IFS(N2=1,"Unsatisfactory",N2=2,"Below Average",N2=3,"Average",N2=4,"Good", N2=5,"Excellent".)) Following this, I added conditional formatting to the ratings column, using different colours for each number as a way to read and visualise data clearly. I then created a new table to show the total number of reviews per rating category using a COUNTIF formula =COUNTIF(N2:N7395,5.) The data shows an average review of 3.51, with 2194 ‘Excellent,’ 2236 ‘Good,’ 1171 ‘Average,’ 760 ‘Poor’ and 1087 ‘Unsatisfactory.’ We can see that, whilst there is a high number of Excellent and Good Reviews, we also have a high number of Average and Unsatisfactory Ratings. These mixed reviews are showing that there are other issues, potentially varying product quality, delivery issues etc which could be creating a mixed experience amongst customers. 

To further understand the ratings data, I added a new column to show the review average per product category, using an AVERAGEIF formula =AVERAGEIF(E2:E7395,"Clothing",N2:N7395.) This can help the business understand the performance of products and pinpoint whether individual product categories are underperforming, hence affecting the rating. We can see from the data that each product category averages close to 3.5 as an average review, showing that the mixed customer feedback and reception is across all products.

To further pinpoint the issue, I looked at the international shipping column to see whether delivery issues could change ratings. To do so, I used an AVERAGEIF formula =AVERAGEIF(I2:I7395,"Yes",N2:N7395) and created an average for items with international shipping and another without. The average for shipping is 3.51, whilst without shipping is 3.49. With very similar averages, we can see that there doesn’t seem to be any shipping issues, such as delays, affecting the customer experience. 

To break down the data, I created an average rating by month as this could show if any issues within any individual months have brought ratings down. First, I created a list of months from the date column =DATE(YEAR(D90),MONTH(D90),1) then an average rating for each of these months in the following formula format: =AVERAGEIFS(N2:N7395,D2:D7395,">="&DATE(2023,11,1),D2:D7395,"<"&DATE(2023,12,1)) The lowest monthly average is 3.38 and highest is 3.67, hence very similar throughout the year long period. The lowest rated month is the first month and the highest is the last but numbers fluctuate in the months in between, slightly rising and falling, therefore we aren’t seeing a steady gradual rise. As data is similar across the months, we can see that customers have had a similar experience across the year and there aren’t any individual months suddenly dropping the rating. If ratings were high throughout the year (an average of over 4) but perhaps 2 or 3 individual months acted as anomalies with an average of (2 or below) this would show an irregular pattern and an issue within these individual months. As reviews are consistent, we can see that customers have a mixed experience throughout the year. 

I then decided to create some columns relating to average rating across order value and quantity purchased that could later be visualised. I added a column separating purchase value into 6 categories: $0-99, 100-199, 200-299, 300-399, 400–499 and 500+ and created a joining column for average value for each category =AVERAGEIF(M2:M7395,"<100",N2:N7395.) I did the same for order quantity (1,2,3,4,5) and an average review score for each =AVERAGEIF(L2:L7395,"1",N2:N7395)

## Pivot Tables
To begin visualising the data, I created pivot tables to later be converted to graphs/charts on the dashboard. 
Total number of reviews (count) per ratings category (excellent, good, average, poor, unsatisfactory
Average review per month with a filter
Average order per product category
Average order per sales value range
Average order by purchase quantity 
Average review with/without international shipping

## Dashboard
To visualise the data, I converted the pivot tables into charts and graphs. 
For the total reviews per rating category, I created a pie chart as this visualises the data as a percentage of a whole, allowing the user to see the exact percentage breakdowns and the relationship of the individual rating to the whole. 
I also created a bar graph showing the total number of reviews per rating category to clearly show the numbers of each individual amount and allow this to be broken down by month using a slicer. 
For total reviews per product category, I created a pie chart, enabling the user to see the percentage of each product category in relation to other categories. 
To clearly show the numbers of average reviews per sales amount, I created a bar chart. As numbers for this data is similar across ranges, the bar chart clearly illustrates this information
I also chose a bar chart for a graph showing reviews with and without international shipping. This shows the equal sales values between the two.
For the final graph, I created a line graph for average review per purchase quantity.
I then added a slicer to show month by month breakdown and two areas to show the total number of reviews for the year and average review for the year.


## Conclusion
The ratings information for the 12 month period is now visualised in the dashboard and clearly represented across a number of graphs that show how ratings are broken down across months and product categories. Individual factors, such as monthly averages and international shipping, and whether they affect the data is also illustrated throughout the dashboard. 


[Reviews Project.xlsx](https://github.com/user-attachments/files/25154253/Reviews.Project.xlsx)
[Project Overview.docx](https://github.com/user-attachments/files/25154254/Project.Overview.docx)



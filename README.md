# Siobhan Gallacher
## Portfolio
---
# **Project 1: Understanding Consumer Behavior and Target Audience using SQL and PowerBi**

***SQL and PowerBi Project***

## Business Problem

The business wants to better understand their customer base and consumer behavior when making purchases. They want to have a clearer idea of their target audience by understanding the demographics of customers making purchases and gain clarity on how customers make purchases on the website 

## SQL: Understanding the Customer Base and Consumer Behavior 
I started by inputting the csv into sqlite and exploring the tables to understand the data available. I can see there are 2 tables and various columns for age, location, product category, gender, purchase amount, payment method, device used and returning customer

### *Age ranges and Gender*

First, I found the number of male and female customers across the whole website then ran min, max and average age queries by male and female to understand the gender and age demographics of customers. 

<img width="291" height="287" alt="Screenshot 2026-02-10 8 33 55 PM" src="https://github.com/user-attachments/assets/b080f487-4a26-49d8-9e12-ad7aa35d94a2" />
<img width="291" height="287" alt="Screenshot 2026-02-10 8 36 04 PM" src="https://github.com/user-attachments/assets/5f2cc9c6-f966-4fbc-9f05-9300ea9921ae" />
<img width="291" height="287" alt="Screenshot 2026-02-10 8 36 57 PM" src="https://github.com/user-attachments/assets/9d3670aa-d774-48d1-86ae-6159411b1320" />


### *Customer Location*
To gain more clarity on the consumer base, I ran a number of queries relating to customer location. I ran count queries to find the number of customers per country then broke this down further into average age per customer by country.

<img width="291" height="287" alt="Screenshot 2026-02-10 8 45 21 PM" src="https://github.com/user-attachments/assets/2e5d54c3-87a9-4f4d-aaf0-3dfcfde84faa" />
<img width="291" height="287" alt="Screenshot 2026-02-10 8 46 01 PM" src="https://github.com/user-attachments/assets/21236fd7-591a-4da7-85d5-586ef17ba50a" />

### *Payment Methods*

I counted the number of purchases made with cash, credit card, debit card and Paypal, then the average purchase amount for each payment method. Following this, I broke the data down further by counting the number of purchases for each payment method by the device used (tablet, mobile, desktop.)

<img width="291" height="287" alt="Screenshot 2026-02-10 9 00 59 PM" src="https://github.com/user-attachments/assets/aaf04720-3d28-48b2-af17-bb27fa1fd26f" />
<img width="291" height="287" alt="Screenshot 2026-02-10 9 02 54 PM" src="https://github.com/user-attachments/assets/48255f6b-5c52-4410-bc1e-2cde4b41cbdb" />
<img width="291" height="287" alt="Screenshot 2026-02-10 9 03 34 PM" src="https://github.com/user-attachments/assets/ecf4b6b9-3202-4c55-94f9-89180dd04016" />


### *Purchase Amounts*
I looked at the average purchase amount per individual product category. Then, to be able to use the data from the two tables, I then joined the Customer and Product tables together. This allowed me to find total and average purchase value per country. In addition, I looked at the total spend by each individual product category per country. 

<img width="337" height="287" alt="Screenshot 2026-02-10 9 07 52 PM" src="https://github.com/user-attachments/assets/427f6f10-2af5-4c8e-9aa1-5727c8e6c3bb" />
<img width="291" height="287" alt="Screenshot 2026-02-10 9 09 03 PM" src="https://github.com/user-attachments/assets/5651ad2b-9e1b-446f-ba40-c481dc79017a" />
<img width="291" height="287" alt="Screenshot 2026-02-10 9 09 30 PM" src="https://github.com/user-attachments/assets/67e4a1fd-0f0b-4238-9d38-e398fcd2171c" />
<img width="291" height="287" alt="Screenshot 2026-02-10 9 10 08 PM" src="https://github.com/user-attachments/assets/33e417fe-0362-4fb3-9f14-32c6e80b776a" />

### *Returning Customers*
To analyse customer return rates, I counted the number of return customers per product category and the total per country. 

<img width="337" height="287" alt="Screenshot 2026-02-10 9 15 42 PM" src="https://github.com/user-attachments/assets/a01dc0e5-1aa2-4abc-a4e9-e0c16909ccd4" />

### *SQL Views* 
Country Analysis: This view collated data showing average age, total spend, average spend and number of returning customers per country. 
Payment and Device Used: Data in this table showed the number of purchases per payment method and per device used. 
Product Analytics: Focusing on product category, this view displayed data total spend, average spend, average age, gender and returning customers per product category. 
Country and Product Analytics: To display data showing the number of purchases per product category by country, I created a separate view. 
Total Analyytics: As a final view, I collected data showing the total number of customers and gender by country. 

<img width="448" height="244" alt="Screenshot 2026-02-10 9 25 01 PM" src="https://github.com/user-attachments/assets/bb3850ff-a0e7-46b2-a859-2255eb7f0ba6" />
<img width="448" height="210" alt="Screenshot 2026-02-10 9 25 21 PM" src="https://github.com/user-attachments/assets/285aecce-5326-4cc2-8c95-e98def5a0e3d" />
<img width="448" height="241" alt="Screenshot 2026-02-10 9 25 45 PM" src="https://github.com/user-attachments/assets/2a3820ac-d959-4424-b21b-ff30b33b4c90" />
<img width="448" height="241" alt="Screenshot 2026-02-10 9 24 32 PM" src="https://github.com/user-attachments/assets/b08fe40f-d7af-4de2-b0c2-ecc1f3cfb1ce" />









---
Project 2: Ratings Analysis Spreadsheet and Dashboard 
---
Excel Project 

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



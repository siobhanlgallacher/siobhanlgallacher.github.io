# Siobhan Gallacher
## Portfolio
---
# **Project 1: Customer Churn using Excel and Power Bi**

***Excel and PowerBi Project***

<img width="945" height="533" alt="Screenshot 2026-02-20 11 48 47 PM" src="https://github.com/user-attachments/assets/0a323ff2-0fc8-4e66-bb50-67d1f0c4eb29" />


## Business Problem
A business with a subscription-based service wants to see their customer churn from the last three years and understand the potential causes of customer loss.

## Analysing the Data
Upon reviewing the data, I can see a column for the type of subscription plan, customer start date, months as a customer, churn (yes/no), average weekly usage and number of support tickets. This data can be utilised to answer questions such as:
* How many customers have churned across the total 3 year period?
* How many customers have churned per month?
* How does weekly usage affect churn rate?
* How does the number of support tickets impact churn rate?
* How does the churn rate change across subscription type?
* How does duration as a customer impact churn rate, and when does churn typically happen?

## Excel 
***Data Cleaning and Formatting***

I started by analysing the information within excel, checking for blanks, formatting issues and errors. 
* Duplicated the spreadsheet to keep a separate version of the raw data 
* Checked for duplicates and ensured users haven’t been added more than once
* Arranged column width
* Added a filter to each column and checked for typing errors, spelling issues, duplicated category names, inconsistent dates and        ensured each column contained relevant information
* Checked that all columns had correct formatting for dates, currency, text etc
* Renamed columns of clarity 
* I decided to change the 'Yes' and 'No' from the 'Customer Churn' column into 'Active' and 'Inactive' as this makes it easier to        understand when later visualising. ‘Yes’ or ‘No’ could be ambiguous and confusing when presented in a graph.

***Data Exploration***
* The salary row is originally formatted to show '699,' however I want this to be a currency, formatted as 6.99. I created a new         column and divided cell contents by 100. In the new column, =D2/100 and then Ctrl D to copy the formula down. I then changed format    to currency.
* To emphasise customer churn, I added conditional formatting. This clearly highlights whether the customer is still active or has       churned. 
* From the ‘Subscription Start Date,’ I created a ‘Subscription Start Month/Year’ column. The mmm-yyyy format, and collating data by     month, means that churn by month can be analysed and allows for easier visualisation later, as opposed to a dd/mm/yyyy format which    would create a large amount of data. 
* I decided to categorise "Days Since Last Login," into ranges for clarity. I added a new column with the formula, =IFS(M2>=50,"50-60    Days", M2>=40,"40-50 Days", M2>=30, "30-40 Days", M2>=20, "20-30 Days", M2>=10, "10-20 Days", M2>=1, "1-10 Days")
* To later visualise data relating to customer usage hours by customer churn, I categorised the average weekly usage column into         ranges using an IFS formula =IFS(G2>=20,"20-25", G2>=15,"15-20", G2>=10,"10-15", G2>=5,"5-10", G2>=1,"1-5", G2<1,"Less than 1")
* I applied conditional formatting to the "Number of Support Tickets" columns, highlighting the customers with a high number of          support tickets.
* To see churn by month, I created a customer exit month column. I used an IF formula alongside EDATE to add months from the 'Months     as a Customer' column to their start date if 'Churned.' I kept the current customers blank to avoid text and dates in the same         column =IF(B2="Inactive", EDATE(D2,K2), "")

## Power Bi
To visualise the data collected, I created a dashboard within PowerBi.
* Within Power Bi, I have a calendar table covering the three years of data. The calendar links to active and churned customers, and per month, will show the number of customers active within the month and the number of customers who have churned at any time in that month. 
* I created three slicers: Month/Year, Subscription Plan, and Year only. The Month/Year slicer allows graph data to be visualised for a single month. Subscription Plan allows data in the graphs to be adjusted per subscription type. The Year slicer allows the user to see data per individual year. 
* Churn Rate: The percentage of churn rate per month is displayed in a line graph to show trend over time. This could be filtered by slicer to show individual years. 
* Customer Churn by Month: The data for total churn by month is displayed in a column graph in order to see individual months clearly and see comparison. 
* Churned and Active Customers by Subscription Plan: For this data, I used a column graph with an individual column for active and churned customers for each plan type. I have clear data labels on this graph and the side by side columns visualise comparison between active and churned numbers. 
* Churned Customers by Number of Support Tickets: Within excel, the data showed some customers with as high as 8 support tickets. As this is something that could potentially affect whether a customer could churn, I represented this in a visual. I created a column graph to clearly show the numbers per number of tickets. 
* Churn Customers per Months as a Customer: To show how the number of churned customers changes throughout customer duration and when churn is most likely to happen, I created a line graph. This shows trend over time and comparison of months.
* Churned Customers by Weekly Usage: In excel, I grouped the average hours into ranges for easier visualisation. I presented the data in a bar graph to show the comparison between ranges and present the effect of usage on whether a customer will churn
* I also have three cards: Active Customers, Churned Customers, Total Customers. These cards show the number of customers and both the active and churned cards change to when using the slicers. 

## Data Insights 

***Churn Rate by Month***
* Across the overall data range, the churn rate has been falling consistently since June 2025. The highest churn was between February 2023 and March 2023.
* In 2023, churn increased overall from 1.52% to 5.59% which large amount of fluctuation between months
* In 2024, churn decreased but still finished with a relatively high 4.4% (down from 6.77%)
* In 2025, churn also decreased from 5.27% to 0.84%. All subscription plans show an overall decrease in 2025 but the Basic Plan is the only subscription type with a slight increase from November to December (still an decrease overall.)
* The data suggests that the churn rate is falling based on latest figures

***Customer Churn by Month***
* From February 2023 to January 2024, aside from one month, churn increases month on month
* In January 2024, churn is 75 and in January 2025 84 customers leave. Churn is high in these two months and there is lots of fluctuation in the months between
* April 2025 to December 2025 is an almost consistent fall in churn

***Active and Churned Customers by Subscription Plan***
* Across the data range, Premium has the highest total customers but also the highest churn. Standard has the highest number of active customers and lowest churn across the three years
* Premium has the lowest churn in 2025 but numbers are very similar across the three plans. 

***Churned Customers by Number of Support Tickets***
* When looking at the data as a whole, and the years 2023 and 2024 individually, customer churn happens most frequently in customers with 6 support tickets. 
* In the overall data, high numbers of customers churn with 6-8 tickets, yet in 2025 alone, churn actually decreases after 6 tickets. 
* By subscription plan, the Premium plan has the highest total tickets and the highest number of customers with 8 tickets. Premium also has the most customers with 6,7 and 8 tickets combined. This could explain why Premium has a higher churn rate.

***Churned Customers by Months as a Customer***
* Overall, churn happens the most in months 3, 6 and 9
* In 2023, it happened most in month 2 but gradually dropped after month 6. Month 2 is highest for Basic and Premium but Month 3 is highest for Standard.
* In 2024, occurred most in months 3,6,9. Basic is highest in month 6, Premium in month 3 and Standard in month 9.
* In 2025, churn happened most in month 12 and the data shows an almost-consistent upward trend throughout the year. Looking at plan type, Premium is highest in month 12 but Basic and Standard are actually highest in month 11
* Across the 3 years, most Basic customers are lost in month 6, Premium in month 3 and Standard in month 9. 

***Churned Customers by Average Weekly Usage***
* Across the 3 years, customers with a weekly usage of 1-5 hours churn the most but those with 20-25 hours (the highest quantity represented) churn second most.
* In 2023, most customer churn is at 15-20 hours of usage. 
* In 2024, churn is highest in customers using the service between 1-5 hours
* In 2025, customers using the service between 20-25 hours per week on average have the highest churn
* Plan type by individual year shows a similar lack of pattern. The basic plan does show 1-5 hours with highest churn in 2023 and 2024, and 10-15 hours in 2025, suggesting churn in the basic plan happens most with customers using the service for a small amount of time per week. In both, Standard and Premium 1-5 hours is the highest or second highest in almost all years.

## Conclusion

The data shows that the churn rate increased in 2023 but fell in 2024 and 2025, with December 2025 having the lowest number of churned customers. The Premium plan has the highest number of customers in total but it also has the highest churn, whilst Standard has the highest number of active customers at present and the lowest churn overall. The data also suggests that more customers churn with 5+ support tickets and Premium has the most support tickets overall. Churn happened the most in months 3, 6 and 9 but, in 2025, it occurred the most in month 12. I would assume that, potentially, in years 2023 and 2024, the subscription length was 3, 6 or 9 months and perhaps this changed in 2025. Alternatively, there might have been a discount on 12 month plans. Across the 3 years, customers with a weekly usage of 1-5 hours churn the most but those with 20-25 hours churn second most.

## Actionable Steps

Based on the data, we can see that the Premium plan has the highest churn rate and that churn happens most frequently in month two. We can see that the Premium plan has a high number of support tickets overall and a high number of customers with 6+ tickets. To prevent this high churn rate and early churn, it’s important to bring down the number of support tickets and also do further analysis into what specifically is happening in month two. With a higher monthly fee, it could be the case that customers are more likely to churn early, so ensuring customer satisfaction is important, especially in the early months when churn is happening the most. I would suggest that enabling customer ratings or creating a ‘reason for exit’ questionnaire would also help understand the reasons for churn in month two.
In the latest data, churn happens the most in month 12 so perhaps introducing a discount for renewal in this month would bring this figure down.
We also see that churn happens the most within customers falling into the 1-5 hours of weekly usage category, therefore encouraging customer usage is important to bringing churn figures down. Notifications, emails, new features and a personalised service could all help to increase usage. 



[Customer Subsciptions CSV.xlsx](https://github.com/user-attachments/files/25454113/Customer.Subsciptions.CSV.xlsx)

<img width="1366" height="508" alt="Screenshot 2026-02-20 11 52 37 PM" src="https://github.com/user-attachments/assets/ad70d502-50b5-4702-9a1b-9973589bbf62" />

<img width="1366" height="504" alt="Screenshot 2026-02-20 11 53 12 PM" src="https://github.com/user-attachments/assets/6f65dc41-9683-49e1-a059-cb1bad88ca12" />





# **Project 2: Understanding Consumer Behavior and Target Audience using SQL and PowerBi**

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

<img width="679" height="210" alt="Screenshot 2026-02-10 9 25 21 PM" src="https://github.com/user-attachments/assets/cb7f0fcb-3be9-432c-aabd-33c56399d259" />
<img width="512" height="342" alt="Screenshot 2026-02-10 9 09 03 PM" src="https://github.com/user-attachments/assets/c737473b-eca7-4aa9-918c-78ceb2cb6525" />
<img width="520" height="344" alt="Screenshot 2026-02-10 9 09 30 PM" src="https://github.com/user-attachments/assets/5e1cf2b1-c17e-4900-8a57-c474be350d02" />
<img width="531" height="331" alt="Screenshot 2026-02-10 9 10 08 PM" src="https://github.com/user-attachments/assets/2e922e36-e7ae-4553-8dc7-3b48fbecaebd" />


### *Returning Customers*
To analyse customer return rates, I counted the number of return customers per product category and the total per country. 
<img width="552" height="333" alt="Screenshot 2026-02-10 9 15 42 PM" src="https://github.com/user-attachments/assets/1bccc7d9-fd0a-4698-81fc-73f189fa90a9" />



### *SQL Views* 
Country Analysis: This view collated data showing average age, total spend, average spend and number of returning customers per country. 
Payment and Device Used: Data in this table showed the number of purchases per payment method and per device used. 
Product Analytics: Focusing on product category, this view displayed data total spend, average spend, average age, gender and returning customers per product category. 
Country and Product Analytics: To display data showing the number of purchases per product category by country, I created a separate view. 
Total Analyytics: As a final view, I collected data showing the total number of customers and gender by country. 

<img width="448" height="244" alt="Screenshot 2026-02-10 9 25 01 PM" src="https://github.com/user-attachments/assets/bb3850ff-a0e7-46b2-a859-2255eb7f0ba6" />
<img width="448" height="210" alt="Screenshot 2026-02-10 9 25 21 PM" src="https://github.com/user-attachments/assets/285aecce-5326-4cc2-8c95-e98def5a0e3d" />
<img width="448" height="241" alt="Screenshot 2026-02-10 9 25 45 PM" src="https://github.com/user-attachments/assets/2a3820ac-d959-4424-b21b-ff30b33b4c90" />
<img width="248" height="241" alt="Screenshot 2026-02-10 9 24 32 PM" src="https://github.com/user-attachments/assets/b08fe40f-d7af-4de2-b0c2-ecc1f3cfb1ce" />

## PowerBi: Visualising Data

To visualise the data collected, I created three dashboards within PowerBi.

### *County Analytics* 
The first dashboard displays a slicer and six graphs, helping the business understand gender, age range and location of the consumer

* Average Customer Age By Country: A bar to clearly illustrate the ages
* Average Purchase Amount by Country: A funnel graph which gives clarity on individual numbers and allows for comparison. 
* Total Spend by Country: A pie chart which gives the business the ability to see individual country spend in comparison to the whole
* Total Returning Customers by Country: A bar graph that allows for clarity in viewing individual numbers 
* Total Customers per Country: A doughnut graph showing each country in relation to the total
* Total Male and Female Customers per Country: A clustered bar graph which show clear comparison of genders
* A slicer to filter by country
  
  <img width="1187" height="528" alt="Screenshot 2026-02-10 9 42 18 PM" src="https://github.com/user-attachments/assets/716e9dde-8fe0-4ab0-888d-b0df3cf999aa" />

This dashboard provides the business with clear information with regards to their customer base in each country, allowing them to further understand their target market. They can now see age ranges and number of customers per gender, giving them clarity on their customer base and potentially how marketing should be adjusted across countries to engage with the target consumer. 
* We can see that the UK has 50 female customers compared to 34 male and similarly, Canada also has more female customers, with a ratio of 42:38. However, in every other country, male customers outnumber females, as much as 33 females to 45 males in Germany. This illustrates how the customer base varies across different countries and this may need to factor into marketing and advertising approaches. 
* The average customer age per country illustrates a similarity between countries, with 4 countries sharing an average age of 43. This allows the business to see who their key age demographic is in their target customer base.
* Total and average spend per country recognises the US as the highest spending market. Combining this with the data from total customers per country, we can see that the highest number of customers also come from the US. Data from these sections could be used by the company to see the performance of marketing spend across countries and analyse ROI. 
* From the Returning Customers graph, the business can see that Canada has the highest whilst Australia has the lowest number. This is interesting when combined with the data from ‘Total Customers’ as Canada is 5th out of the 6 countries, yet has the highest number of return consumers. Furthermore, Australia has the penultimate highest number of total customers yet ranks last in returning customers. The customer experience in Australia compared to Canada could then be further analysed by pulling data relating to reviews and ratings. 

### *Product Analytics* 

The second dashboard visualises data on the performance of individual product categories and further analyses the customer base within individual categories. 

* Average Customer Age by Product Category: A bar chart to clearly display numbers
* Total Spend per Product Category: A doughnut graph splitting categories into sections and displaying each segment in relation to the total spend
* Average Spend by Product Category: A pie chart to show each category in relation to the total
* Gender of Customers per Product Category: A clustered bar graph to allow for comparison of genders
* Total Returning Customers per Product Category: A funnel graph allowing for easy viewing of individual numbers and comparison across categories
* Total Customers per Country by Product Category: A clustered bar graph to show each category clearly, alongside the numbers for each country
* A slicer for product category

<img width="1228" height="525" alt="Screenshot 2026-02-10 9 46 58 PM" src="https://github.com/user-attachments/assets/3e911bea-6420-40b9-ace0-d3cdc63c4f7e" />

This dashboard allows the business to easily see the data on performance of each product category and understand who their customer base is within each category.

* Similar to ‘Average Age by Country,’ Average Age per Product Category shows similar numbers across the 6 countries. This gives the business a clear idea of age demographics        purchasing in each product category and who their target market is.
* Total Spend per Product Category shows the business that ‘Home’ is bringing in the highest revenue whilst ‘Sports’ brings in the least. 
* Average Spend per Product Category has the same first three product categories as Total Spend
* Gender of Customers per Category shows whether males or females are the largest customer base per product category. We can see that male customers outnumber females in Sports,     Electronics and Books, whilst female customers purchase more in the Home and Clothing groups. 
* Return Customers shows us that Home has the highest number (and has the highest total spend) whilst Clothing has the least. This is interesting as Clothing is the second highest   revenue. Also, Sports comes in second with returning customers but has the lowest total spend. Therefore, we can see that analysis relating to customer experience across           categories, and issues affecting this, needs to be done.
* Total Spend per Product Category by Country shows us the performance of individual product categories. We can see that 4 of the 6 countries have different highest performing       categories, with only the US and Canada sharing Home as the highest revenue product group. In Australia, Electronics is most popular, whilst, in the UK, Sports receives the most   orders. India has Clothing as the top category and Germany has Books as most popular. This differentiation in consumer behavior is an important factor for the business to          consider when understanding their product performance and target consumer base across locations. 

### *Payment Analytics* 

To illustrate consumer behavior on the website with regards to payment, I created a dashboard displaying payment methods and device used analysis

* Number of Cash Purchases by Country: A bar chart with data values to clearly show individual numbers
* Number of Credit Card Purchases by Country: A column graph displaying clear figures per country
* Number of Debit Card Purchases by Country; A bar chart to focus display exact numbers 
* Number of Paypal Purchases by Country: A column graph displaying figures per country
* Number of Desktop Purchases by Country: A pie chart to show number per country in relation to the total number 
* Number of Mobile Purchases by Country: A doughnut graph to analyse each individual country compared to the total
* Number of Tablet Purchases by Country: A pie chart which allows the viewer to compare values easily
* A slicer for individual countries

<img width="1238" height="524" alt="Screenshot 2026-02-10 9 53 16 PM" src="https://github.com/user-attachments/assets/aae242d3-2e6d-4897-b1b2-845887b5d145" />

The data collated here provides the business with insight as to how the consumer chooses to make purchases, including preferred payment methods across countries and which device is most popular.
* In the USA and India, Credit Cards are the most popular payment choice. It’s also joint top for the UK, alongside Debit Cards.
* Debit Cards are the top choice of Germany and Canada but the least common choice in Australia
* Cash isn’t the most popular choice in any country but it is the least popular in the USA and India
* Most Australian customers are using PayPal but it ranks least popular for the UK and Canada. 
* Overall, the highest number of purchases come from debit cards and the least from PayPal.
* Mobile is the most common device used, with desktop being least common
* In Canada, Desktop is used most often. However, it’s the least popular device in Germany, USA and India. 
* In the USA, Australia and Germany, Mobile is the most common device used. In the UK, this device is least common
* Tablets are used most in India and the UK but least in Australia and Canada. 

## Conclusion

The data collected allows the business to better understand their customer base and provides them with insight which could be used for marketing or advertising decisions. This data also provides a basis for understanding where further analysis could be done, for example, we can see that returning customers rank low in the ‘Clothing’ product category yet it is second highest in revenue. Understanding this is important for future sales revenue so the business may decide to enable reviews and feedback going forward to allow for future analysis. The visualisation models also provide a better understanding with regards to consumer patterns and behavior relating to payment decisions. 

## Files
[SQL Database](PortfolioCustomerDatabase.sqlite)
[SQL Queries](Portfolio_SQL_Queries.sql)
[SQL Schema](Portfolio_Database_Schema.sql)




---
# Project 3: Ratings Analysis Spreadsheet and Dashboard 
---
Excel Project 

## Business Problem

The business has spreadsheet listing product review and rating information but needs this to be displayed in a clear, visualised way. Their reviews lack consistency, with numerous 1 star ratings and 5 star ratings. They want to clearly visualise their average review per product category and see any other factors which could affect review ratings.

### *Spreadsheet Overview*

The raw spreadsheet has various columns that could be used to clarify and understand ratings. 
First, I cleaned the data by checking for duplicates, adjusting column widths and checking data such as dates are formatted correctly. For clarity, I changed the ‘Total Sales’ and ‘Sales Price’ to a currency value.I then applied a filter as a means to sort information within the columns, and using this, I checked for any blanks or null values within the individual columns. 

Ratings are shown in the column on a 1 to 5 score so I decided to add a column labelling them as various categories: Excellent, Good, Average, Poor, Unsatisfactory. I did this using an if statement (=IFS(N2=1,"Unsatisfactory",N2=2,"Below Average",N2=3,"Average",N2=4,"Good", N2=5,"Excellent".)) Following this, I added conditional formatting to the ratings column, using different colours for each number as a way to read and visualise data clearly. I then created a new table to show the total number of reviews per rating category using a COUNTIF formula =COUNTIF(N2:N7395,5.) The data shows an average review of 3.51, with 2194 ‘Excellent,’ 2236 ‘Good,’ 1171 ‘Average,’ 760 ‘Poor’ and 1087 ‘Unsatisfactory.’ We can see that, whilst there is a high number of Excellent and Good Reviews, we also have a high number of Average and Unsatisfactory Ratings. These mixed reviews are showing that there are other issues, potentially varying product quality, delivery issues etc which could be creating a mixed experience amongst customers. 

To further understand the ratings data, I added a new column to show the review average per product category, using an AVERAGEIF formula =AVERAGEIF(E2:E7395,"Clothing",N2:N7395.) This can help the business understand the performance of products and pinpoint whether individual product categories are underperforming, hence affecting the rating. We can see from the data that each product category averages close to 3.5 as an average review, showing that the mixed customer feedback and reception is across all products.

To further pinpoint the issue, I looked at the international shipping column to see whether delivery issues could change ratings. To do so, I used an AVERAGEIF formula =AVERAGEIF(I2:I7395,"Yes",N2:N7395) and created an average for items with international shipping and another without. The average for shipping is 3.51, whilst without shipping is 3.49. With very similar averages, we can see that there doesn’t seem to be any shipping issues, such as delays, affecting the customer experience. 

To break down the data, I created an average rating by month as this could show if any issues within any individual months have brought ratings down. First, I created a list of months from the date column =DATE(YEAR(D90),MONTH(D90),1) then an average rating for each of these months in the following formula format: =AVERAGEIFS(N2:N7395,D2:D7395,">="&DATE(2023,11,1),D2:D7395,"<"&DATE(2023,12,1)) The lowest monthly average is 3.38 and highest is 3.67, hence very similar throughout the year long period. The lowest rated month is the first month and the highest is the last but numbers fluctuate in the months in between, slightly rising and falling, therefore we aren’t seeing a steady gradual rise. As data is similar across the months, we can see that customers have had a similar experience across the year and there aren’t any individual months suddenly dropping the rating. If ratings were high throughout the year (an average of over 4) but perhaps 2 or 3 individual months acted as anomalies with an average of (2 or below) this would show an irregular pattern and an issue within these individual months. As reviews are consistent, we can see that customers have a mixed experience throughout the year. 

I then decided to create some columns relating to average rating across order value and quantity purchased that could later be visualised. I added a column separating purchase value into 6 categories: $0-99, 100-199, 200-299, 300-399, 400–499 and 500+ and created a joining column for average value for each category =AVERAGEIF(M2:M7395,"<100",N2:N7395.) I did the same for order quantity (1,2,3,4,5) and an average review score for each =AVERAGEIF(L2:L7395,"1",N2:N7395)

<img width="1364" height="514" alt="Screenshot 2026-02-10 9 59 45 PM" src="https://github.com/user-attachments/assets/c37caf4b-5b21-4149-9e75-ddee50e77630" />
<img width="1350" height="308" alt="Screenshot 2026-02-10 10 29 46 PM" src="https://github.com/user-attachments/assets/71a46525-822f-4dfd-a6b0-ea2ce44e71f8" />
<img width="1366" height="258" alt="Screenshot 2026-02-10 10 29 58 PM" src="https://github.com/user-attachments/assets/bf96af31-dffe-412c-99bb-14f5759c4bf4" />


### *Pivot Tables*
To begin visualising the data, I created pivot tables to later be converted to graphs/charts on the dashboard. 
Total number of reviews (count) per ratings category (excellent, good, average, poor, unsatisfactory
Average review per month with a filter
Average order per product category
Average order per sales value range
Average order by purchase quantity 
Average review with and without international shipping

<img width="1358" height="534" alt="Screenshot 2026-02-10 10 34 00 PM" src="https://github.com/user-attachments/assets/6f7985eb-43e9-4a7b-876a-beacbf1ed22f" />



### *Dashboard*
To visualise the data, I converted the pivot tables into charts and graphs. 
For the total reviews per rating category, I created a pie chart as this visualises the data as a percentage of a whole, allowing the user to see the exact percentage breakdowns and the relationship of the individual rating to the whole. 
I also created a bar graph showing the total number of reviews per rating category to clearly show the numbers of each individual amount and allow this to be broken down by month using a slicer. 
For total reviews per product category, I created a pie chart, enabling the user to see the percentage of each product category in relation to other categories. 
To clearly show the numbers of average reviews per sales amount, I created a bar chart. As numbers for this data is similar across ranges, the bar chart clearly illustrates this information
I also chose a bar chart for a graph showing reviews with and without international shipping. This shows the equal sales values between the two.
For the final graph, I created a line graph for average review per purchase quantity.
I then added a slicer to show month by month breakdown and two areas to show the total number of reviews for the year and average review for the year.

<img width="801" height="431" alt="Screenshot 2026-02-10 10 35 22 PM" src="https://github.com/user-attachments/assets/b9d4526d-85b2-4e85-8170-3d3e5e0eed6a" />



## Conclusion
The ratings information for the 12 month period is now visualised in the dashboard and clearly represented across a number of graphs that show how ratings are broken down across months and product categories. Individual factors, such as monthly averages and international shipping, and whether they affect the data is also illustrated throughout the dashboard. 

[Portfolio Project- Reviews Spreadsheet.xlsx](https://github.com/user-attachments/files/25221699/Portfolio.Project-.Reviews.Spreadsheet.xlsx)

[Project Overview.docx](https://github.com/user-attachments/files/25154254/Project.Overview.docx)



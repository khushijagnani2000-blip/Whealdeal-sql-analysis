# Whealdeal sql analysis
WhealDeal is a car company analyzed using SQL to evaluate and optimize stock management. The project focuses on understanding vehicle inventory, tracking stock levels, and identifying key trends to ensure efficient operations and balanced supply for improved business performance
WhealDeal – Car Sales Data Analysis using SQL
Project Overview

This project focuses on analyzing car sales data to uncover insights related to pricing, manufacturer trends, fuel types, and model performance. The primary objective is to understand market patterns and derive meaningful insights that could guide business and inventory decisions for a car dealership or automotive marketplace.

Dataset Description

The dataset contains detailed information about car sales, including attributes such as:

Manufacturer

Model

Price

Mileage

Fuel Type

Engine Size

Year of Manufacture

Each record represents an individual car with specific attributes, allowing for both descriptive and comparative analysis across different manufacturers and models.

Objective

The main goal of this analysis is to use SQL to explore, clean, and analyze the car sales data to identify key patterns such as:

Price variations across manufacturers and fuel types.

Popular manufacturing years and vehicle trends.

Mileage and engine size correlations with price.

Market segmentation between affordable and luxury vehicles.

Tools and Technologies Used

SQL – For data analysis, querying, and generating insights.

MySQL Workbench – Used as the SQL execution and visualization environment.

Microsoft Excel – Used for initial data exploration and dataset preparation.

Analytical Approach

The analysis was conducted using SQL through a structured approach that included:

Data exploration using SELECT, DISTINCT, and ORDER BY statements.

Aggregation and grouping using GROUP BY, AVG(), MAX(), and MIN() functions to find trends in pricing, mileage, and fuel type.

Conditional analysis using WHERE, AND, and OR clauses to filter data (for example, analyzing cars manufactured after 2015).

Ranking and comparison queries using subqueries and self-joins to compare car models within the same manufacturer.

Use of JOIN operations to simulate real-world relational data scenarios.

Query optimization and logical structuring for clear, reproducible analysis.

Key Insights

Most cars in the dataset were manufactured before 2015, reflecting a market leaning toward older models.

Hybrid vehicles had the highest average prices compared to petrol and diesel cars.

Luxury manufacturers such as Porsche and BMW dominated the premium price range, while Ford, Toyota, and VW were leading in affordability.

Higher-mileage cars tended to be more affordable, showing a clear trade-off between usage and price.

Engine size and price showed a positive correlation, with larger engines generally found in more expensive vehicles.

Recommendations

Based on the findings, the following strategic recommendations are suggested:

Expand inventory with newer models (post-2015) to attract buyers seeking updated vehicles.

Emphasize hybrid and eco-friendly cars to meet increasing demand for sustainable options.

Maintain a balanced strategy between budget-friendly and luxury vehicles to cater to a broader market.

Use brand-level insights for targeted marketing — affordability campaigns for mass-market brands and exclusivity for premium ones.

Conclusion

The SQL-based analysis of the WheelDeal car sales dataset provided valuable insights into pricing, brand segmentation, and market trends. The findings highlight opportunities for data-driven decision-making in inventory management, pricing strategy, and marketing focus. This project demonstrates how SQL can be effectively used to explore and interpret real-world business data with clarity and precision.

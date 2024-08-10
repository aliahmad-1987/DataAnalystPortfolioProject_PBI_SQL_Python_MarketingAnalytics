-- SQL Query to categorize products based on their price

SELECT 
    ProductID,  -- Selects the unique identifier for each product
    ProductName,  -- Selects the name of each product
    Price,  -- Selects the price of each product
	-- Category, -- Selects the product category for each product

    CASE -- Categorizes the products into price categories: Low, Medium, or High
        WHEN Price < 50 THEN 'Low'  -- If the price is less than 50, categorize as 'Low'
        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'  -- If the price is between 50 and 200 (inclusive), categorize as 'Medium'
        ELSE 'High'  -- If the price is greater than 200, categorize as 'High'
    END AS PriceCategory  -- Names the new column as PriceCategory

FROM 
    dbo.products;  -- Specifies the source table from which to select the data

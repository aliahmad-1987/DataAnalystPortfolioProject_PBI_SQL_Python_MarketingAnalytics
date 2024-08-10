-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information

SELECT 
    c.CustomerID,  -- Selects the unique identifier for each customer
    c.CustomerName,  -- Selects the name of each customer
    c.Email,  -- Selects the email of each customer
    c.Gender,  -- Selects the gender of each customer
    c.Age,  -- Selects the age of each customer
    g.Country,  -- Selects the country from the geography table to enrich customer data
    g.City  -- Selects the city from the geography table to enrich customer data
FROM 
    dbo.customers as c  -- Specifies the alias 'c' for the dim_customers table
LEFT JOIN
-- RIGHT JOIN
-- INNER JOIN
-- FULL OUTER JOIN
    dbo.geography g  -- Specifies the alias 'g' for the dim_geography table
ON 
    c.GeographyID = g.GeographyID;  -- Joins the two tables on the GeographyID field to match customers with their geographic information

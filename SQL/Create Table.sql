SELECT column_name
FROM information_schema.columns
WHERE table_name = 'customers'
ORDER BY ordinal_position;

COPY customers (
    customerid,
    surname,
    creditscore,
    geography,
    gender,
    age,
    tenure,
    balance,
    numofproducts,
    hascrcard,
    isactivemember,
    estimatedsalary,
    exited
)
-- Replace with the full path to Data/Clean_and_merged_Bank_churn.csv on your machine
FROM '/path/to/Data/Clean_and_merged_Bank_churn.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ','
);

Select Count(*) From customers;
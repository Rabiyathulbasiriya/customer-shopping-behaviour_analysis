-- =====================================================
-- PROJECT: CUSTOMER SHOPPING BEHAVIOUR ANALYSIS
-- TOOL: MySQL
-- DATASET: Customer Shopping Behaviour
-- =====================================================


-- 1. TOTAL NUMBER OF CUSTOMERS

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM shopping_data;


-- 2. TOTAL SALES

SELECT ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data;


-- 3. CATEGORY-WISE SALES

SELECT
    category,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY category
ORDER BY total_sales DESC;


-- 4. GENDER-WISE SALES

SELECT
    gender,
    COUNT(*) AS total_purchases,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY gender;


-- 5. TOP 10 PURCHASED ITEMS

SELECT
    item_purchased,
    COUNT(*) AS purchase_count
FROM shopping_data
GROUP BY item_purchased
ORDER BY purchase_count DESC
LIMIT 10;


-- 6. AVERAGE PURCHASE AMOUNT

SELECT
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM shopping_data;


-- 7. LOCATION-WISE SALES

SELECT
    location,
    COUNT(*) AS total_purchases,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY location
ORDER BY total_sales DESC;


-- 8. SUBSCRIPTION STATUS ANALYSIS

SELECT
    subscription_status,
    COUNT(DISTINCT customer_id) AS total_customers,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY subscription_status;


-- 9. DISCOUNT ANALYSIS

SELECT
    discount_applied,
    COUNT(*) AS total_purchases,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY discount_applied;


-- 10. PAYMENT METHOD ANALYSIS

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY payment_method
ORDER BY total_transactions DESC;


-- 11. PURCHASE FREQUENCY ANALYSIS

SELECT
    frequency_of_purchases,
    COUNT(*) AS total_purchases,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY frequency_of_purchases
ORDER BY total_purchases DESC;


-- 12. SEASON-WISE SALES ANALYSIS

SELECT
    season,
    COUNT(*) AS total_purchases,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY season
ORDER BY total_sales DESC;


-- 13. CATEGORY-WISE AVERAGE REVIEW RATING

SELECT
    category,
    ROUND(AVG(review_rating), 2) AS average_review_rating
FROM shopping_data
GROUP BY category
ORDER BY average_review_rating DESC;


-- 14. TOP 10 HIGHEST-SPENDING CUSTOMERS

SELECT
    customer_id,
    ROUND(SUM(purchase_amount), 2) AS total_spending
FROM shopping_data
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;


-- 15. PREVIOUS PURCHASES ANALYSIS

SELECT
    previous_purchases,
    COUNT(*) AS customer_count,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM shopping_data
GROUP BY previous_purchases
ORDER BY previous_purchases DESC;


-- 16. CATEGORY-WISE CUSTOMER COUNT

SELECT
    category,
    COUNT(DISTINCT customer_id) AS total_customers
FROM shopping_data
GROUP BY category
ORDER BY total_customers DESC;


-- 17. AGE-WISE PURCHASE ANALYSIS

SELECT
    age,
    COUNT(*) AS total_purchases,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM shopping_data
GROUP BY age
ORDER BY age;


-- 18. PROMO CODE ANALYSIS

SELECT
    promo_code_used,
    COUNT(*) AS total_purchases,
    ROUND(SUM(purchase_amount), 2) AS total_sales
FROM shopping_data
GROUP BY promo_code_used;


-- 19. SHIPPING TYPE ANALYSIS

SELECT
    shipping_type,
    COUNT(*) AS total_orders,
    ROUND(AVG(purchase_amount), 2) AS average_purchase_amount
FROM shopping_data
GROUP BY shipping_type
ORDER BY total_orders DESC;


-- 20. OVERALL AVERAGE REVIEW RATING

SELECT
    ROUND(AVG(review_rating), 2) AS average_review_rating
FROM shopping_data;


-- =====================================================
-- END OF CUSTOMER SHOPPING BEHAVIOUR ANALYSIS
-- =====================================================
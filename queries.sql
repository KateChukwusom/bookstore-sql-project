 -- Calculate total revenue from book sales
 SELECT SUM(b.price * s.quantity) AS totakl_revenue
 FROM sales s
 JOIN books b ON s.book_id = b.id;

-- Top customer by total spend
SELECT c.name, SUM(b.price * s.quantity) AS total_spent
FROM sales s
JOIN customer c on s.customer_id = c.id
JOIN books b ON s.book_id = b.id
GROUP BY c.name
ORDER BY total_spent DESC; 

-- Most sold book
SELECT b.title, SUM(s.quantity) AS Total_quantity
FROM books b
JOIN sales s ON b.id = s.book_id
GROUP BY b.title
ORDER BY Total_quantity DESC; 